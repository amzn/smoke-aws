// Copyright 2018-2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//
//  CloudWatchPendingMetricsQueue.swift
//  SmokeAWSMetrics
//

import Foundation
import CloudWatchClient
import CloudWatchModel
import Logging

private func iso8601DateFormatter() -> DateFormatter {
    let formatter = DateFormatter()
    formatter.calendar = Calendar(identifier: .iso8601)
    formatter.locale = Locale(identifier: "en_US_POSIX")
    formatter.timeZone = TimeZone(secondsFromGMT: 0)
    formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSXXXXX"
    return formatter
}

internal extension Date {
    var iso8601: String {
        return iso8601DateFormatter().string(from: self)
    }
}

internal enum CloudWatchPendingMetricsQueueError: Error {
    case shutdownAttemptOnUnstartedQueue
}

private struct Entry {
    let namespace: String
    let data: MetricDatum
}

private struct QueueShutdownDetails {
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    let awaitingContinuations: [UnsafeContinuation<Void, Error>]
#endif
}

internal class CloudWatchPendingMetricsQueue: @unchecked Sendable {
    private var pendingEntries: [Entry]
    private let logger: Logger
    private let cloudWatchClient: CloudWatchClientProtocol
    private let shutdownDispatchGroup: DispatchGroup
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    private var shutdownWaitingContinuations: [UnsafeContinuation<Void, Error>] = []
#endif
    
    private let accessQueue = DispatchQueue(label: "com.amazon.SmokeAWSMetrics.CloudWatchPendingMetricsQueue.accessQueue")
    private let queueConsumingTaskIntervalInSeconds = 2
    // CloudWatch has a limit of 20 Dataums per request
    // https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_limits.html
    private let maximumDataumsPerRequest = 20
    
    enum State {
        case initialized
        case running
        case shuttingDown
        case shutDown
    }
    private var state: State = .initialized
    private var stateLock: NSLock = NSLock()
    
    init(cloudWatchClient: CloudWatchClientProtocol, logger: Logger) {
        self.pendingEntries = []
        self.cloudWatchClient = cloudWatchClient
        self.logger = logger
        
        self.shutdownDispatchGroup = DispatchGroup()
        // enter the DispatchGroup during initialization so waiting for the
        // shutdown of an initalized or started queue will wait
        shutdownDispatchGroup.enter()
    }
    
    /**
     Starts the submission queue.
     */
    func start() throws {
        guard updateOnStart() else {
            // nothing to do; already started
            return
        }
        
        submitQueueConsumingTask()
        
        self.logger.info("CloudWatchPendingMetricsQueue started.")
    }
    
    /**
     Initiates the process of shutting down the queue.
     */
    func shutdown() throws {
        _ = try updateOnShutdownStart()
    }
    
    /**
     Blocks until the queue has been shutdown.
     */
    func waitUntilShutdown() throws {
        if !isShutdown() {
            shutdownDispatchGroup.wait()
        }
    }
    
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    public func untilShutdown() async throws {
        return try await withUnsafeThrowingContinuation { cont in
            if !isShutdownOtherwiseAddContinuation(newContinuation: cont) {
                // continuation will be resumed when the server shuts down
            } else {
                // server is already shutdown
                cont.resume(returning: ())
            }
        }
    }
#endif
    
    func submit(namespace: String, data: MetricDatum) {
        let entry = Entry(namespace: namespace, data: data)
        
        self.accessQueue.async {
            self.pendingEntries.append(entry)
        }
    }
    
    
    private func submitQueueConsumingTask() {
        let deadline = DispatchTime.now() + .seconds(queueConsumingTaskIntervalInSeconds)
        
        let newWorker = { [unowned self] in
            let queueShutdownDetails = self.isShuttingDown()
            let isQueueShuttingDown = (queueShutdownDetails != nil)
            
            // if another queue consuming task should be scheduled
            if !isQueueShuttingDown {
                self.submitQueueConsumingTask()
            }
            
            let currentPendingEntries = self.pendingEntries
            self.pendingEntries = []
            
            if !currentPendingEntries.isEmpty {
                // transform the list of pending entries into a map keyed by namespace
                var namespacedEntryMap: [String: [MetricDatum]] = [:]
                currentPendingEntries.forEach { entry in
                    if var dataList = namespacedEntryMap[entry.namespace] {
                        dataList.append(entry.data)
                        namespacedEntryMap[entry.namespace] = dataList
                    } else {
                        namespacedEntryMap[entry.namespace] = [entry.data]
                    }
                }
                
                // for each namespace, kick off calls to CloudWatch
                namespacedEntryMap.forEach { (namespace, dataList) in
                    let chunkedList = dataList.chunked(by: self.maximumDataumsPerRequest)
                    
                    chunkedList.forEach { dataListChunk in
                        let input = PutMetricDataInput(metricData: dataListChunk, namespace: namespace)
                        do {
                            try self.cloudWatchClient.putMetricDataAsync(input: input, completion: { error in
                                if let error = error {
                                    self.logger.error("Unable to submit metrics to CloudWatch: \(String(describing: error))")
                                }
                            })
                        } catch {
                            self.logger.error("Unable to submit metrics to CloudWatch: \(String(describing: error))")
                        }
                    }
                }
            }
            
            // shutdown the queue if required
            if let queueShutdownDetails = queueShutdownDetails {
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
                // resume any continuations
                queueShutdownDetails.awaitingContinuations.forEach { $0.resume(returning: ()) }
#endif
                
                self.updateStateOnShutdownComplete()
                
                // release any waiters for shutdown
                self.shutdownDispatchGroup.leave()
            }
            
        }
        
        self.accessQueue.asyncAfter(deadline: deadline, qos: .unspecified,
                                            flags: [], execute: newWorker)
    }
    
    
    
    /**
     Updates the Lifecycle state on a start request.

     - Returns: if the start request should be acted upon (and the queue started).
                Will be false if the queue is already running, shutting down or has completed shutting down.
     */
    private func updateOnStart() -> Bool {
        stateLock.lock()
        defer {
            stateLock.unlock()
        }
        
        if case .initialized = state {
            state = .running
            
            return true
        }
        
        return false
    }
    
    /**
     Updates the Lifecycle state on a shutdown request.

     - Returns: if the shutdown request should be acted upon (and the queue shutdown).
                Will be false if the queue is already shutting down or has completed shutting down.
     - Throws: if the queue has never been started.
     */
    private func updateOnShutdownStart() throws -> Bool {
        stateLock.lock()
        defer {
            stateLock.unlock()
        }
        
        let doShutdownServer: Bool
        switch state {
        case .initialized:
            throw CloudWatchPendingMetricsQueueError.shutdownAttemptOnUnstartedQueue
        case .running:
            state = .shuttingDown
            
            doShutdownServer = true
        case .shuttingDown, .shutDown:
            // nothing to do; already shutting down or shutdown
            doShutdownServer = false
        }
        
        return doShutdownServer
    }
    
    /**
     Updates the Lifecycle state on shutdown completion.
     */
    private func updateStateOnShutdownComplete() {
        stateLock.lock()
        defer {
            stateLock.unlock()
        }
        
        guard case .shuttingDown = state else {
            fatalError("CloudWatchPendingMetricsQueue shutdown completed when in unexpected state: \(state)")
        }
        state = .shutDown
    }
    
    /**
     Indicates if the queue is currently shutdown.

     - Returns: if the queue is currently shutdown.
     */
    private func isShutdown() -> Bool {
        stateLock.lock()
        defer {
            stateLock.unlock()
        }
        
        if case .shutDown = state {
            return true
        }
        
        return false
    }
    
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    public func isShutdownOtherwiseAddContinuation(newContinuation: UnsafeContinuation<Void, Error>) -> Bool {
        stateLock.lock()
        defer {
            stateLock.unlock()
        }
        
        if case .shutDown = state {
            return true
        }
        
        self.shutdownWaitingContinuations.append(newContinuation)
        
        return false
    }
#endif
    
    /**
     Indicates if the queue is currently shutting down.

     - Returns: if the queue is currently shutting down.
     */
    private func isShuttingDown() -> QueueShutdownDetails? {
        stateLock.lock()
        defer {
            stateLock.unlock()
        }
        
        if case .shuttingDown = state {
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
            let waitingContinuations = self.shutdownWaitingContinuations
            self.shutdownWaitingContinuations = []
        
            return QueueShutdownDetails(awaitingContinuations: waitingContinuations)
#else
            return QueueShutdownDetails()
#endif
        }
        
        return nil
    }
}

extension Array {
    func chunked(by chunkSize: Int) -> [[Element]] {
        return stride(from: 0, to: self.count, by: chunkSize).map {
            Array(self[$0..<Swift.min($0 + chunkSize, self.count)])
        }
    }
}
