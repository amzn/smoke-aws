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
//  CloudWatchMetricsFactoryV2.swift
//  SmokeAWSMetrics
//

#if compiler(>=5.7)

import Metrics
import CloudWatchClient
import CloudWatchModel
import Logging

// ensure that metrics are batched no longer than 2 seconds
public let defaultMaximumSubmissionIntervalInMilliseconds = 2000

// by default throttle calls to Cloudwatch at 200 (1000/5) tps
// Standard service quota is 500 tps
// https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_limits.html
public let defaultMinimumSubmissionIntervalInMilliseconds = 5

// CloudWatch has a limit of 20 Dataums per request
// https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_limits.html
public let defaultMaximumDataumsPerRequest = 20

/**
 Class conforming to `MetricsFactory` that emits CloudWatch metrics.
 */
@available(macOS 13.0, *)
public class CloudWatchMetricsFactoryV2: MetricsFactory {
    private let cloudWatchClient: CloudWatchClientProtocol
    private let cloudWatchPendingMetricsQueue: CloudWatchPendingMetricsQueueV2
    private let logger: Logger
    
    private let namespaceDimension = "Namespace"
    private let operationNameDimension = "Operation Name"
    private let metricNameDimension = "Metric Name"
    
    private let unknownMetricName = "Unknown Metric"
    private let unknownNamespace = "Unknown Namespace"
    
    public init(cloudWatchClient: CloudWatchClientProtocol,
                maximumDataumsPerRequest: Int = defaultMaximumDataumsPerRequest,
                maximumSubmissionInterval: Duration = .milliseconds(defaultMaximumSubmissionIntervalInMilliseconds),
                minimumSubmissionInterval: Duration = .milliseconds(defaultMinimumSubmissionIntervalInMilliseconds),
                logger: Logger?) {
        self.cloudWatchClient = cloudWatchClient
        
        if let logger = logger {
            self.logger = logger
        } else {
            self.logger = Self.logger
        }
        
        self.cloudWatchPendingMetricsQueue = CloudWatchPendingMetricsQueueV2(cloudWatchClient: self.cloudWatchClient,
                                                                             maximumDataumsPerRequest: maximumDataumsPerRequest,
                                                                             maximumSubmissionInterval: maximumSubmissionInterval,
                                                                             minimumSubmissionInterval: minimumSubmissionInterval,
                                                                             logger: self.logger)
    }
    
    public func start() async {
        await self.cloudWatchPendingMetricsQueue.start()
    }
    
    public func shutdownAndWait() async throws {
        try await self.cloudWatchPendingMetricsQueue.shutdown()
        
        try await self.cloudWatchPendingMetricsQueue.untilShutdown()
    }
    
    public static var logger: Logger {
        var newLogger = Logger(label: "com.amazon.SmokeAWS.SmokeAWSMetrics.CloudWatchMetricsFactory")
        newLogger[metadataKey: "lifecycle"] = "CloudWatchMetricsFactory"
        
        return newLogger
    }
    
    public func makeCounter(label: String, dimensions: [(String, String)]) -> CounterHandler {
        let (metricName, namespace, cloudWatchDimensions) = getAttributes(dimensions: dimensions)
        
        return CloudWatchCounterHandler(cloudWatchPendingMetricsQueue: self.cloudWatchPendingMetricsQueue, metricName: metricName,
                                        namespace: namespace, dimensions: cloudWatchDimensions, logger: self.logger)
    }
    
    public func makeRecorder(label: String, dimensions: [(String, String)], aggregate: Bool) -> RecorderHandler {
        let (metricName, namespace, cloudWatchDimensions) = getAttributes(dimensions: dimensions)
        
        return CloudWatchRecorderHandler(cloudWatchPendingMetricsQueue: self.cloudWatchPendingMetricsQueue, metricName: metricName,
                                         namespace: namespace, dimensions: cloudWatchDimensions, logger: self.logger)
    }
    
    public func makeTimer(label: String, dimensions: [(String, String)]) -> TimerHandler {
        let (metricName, namespace, cloudWatchDimensions) = getAttributes(dimensions: dimensions)
        
        return CloudWatchTimerHandler(cloudWatchPendingMetricsQueue: self.cloudWatchPendingMetricsQueue, metricName: metricName,
                                      namespace: namespace, dimensions: cloudWatchDimensions, logger: self.logger)
    }
    
    public func destroyCounter(_ handler: CounterHandler) {
        // nothing to do
    }
    
    public func destroyRecorder(_ handler: RecorderHandler) {
        // nothing to do
    }
    
    public func destroyTimer(_ handler: TimerHandler) {
        // nothing to do
    }
    
    private func getAttributes(dimensions: [(String, String)]) -> (metricName: String, namespace: String, cloudWatchDimensions: [Dimension]?) {
        var dimensionsMap: [String: String] = [:]
        dimensions.forEach { (key, value) in
            dimensionsMap[key] = value
        }
        
        let metricName: String
        if let theMetricName = dimensionsMap[metricNameDimension] {
            metricName = theMetricName
            
            // don't include this in the cloudWatchDimensions
            dimensionsMap[metricNameDimension] = nil
        } else {
            metricName = unknownMetricName
        }
        
        let namespace: String
        if let theNamespace = dimensionsMap[namespaceDimension] {
            namespace = theNamespace
            
            // don't include this in the cloudWatchDimensions
            dimensionsMap[namespaceDimension] = nil
        } else {
            namespace = unknownNamespace
        }
        
        
        let cloudWatchDimensions = dimensionsMap.map { (key, value) in
            return Dimension(name: key, value: value)
        }
        
        return (metricName, namespace, !cloudWatchDimensions.isEmpty ? cloudWatchDimensions : nil)
    }
}
#endif
