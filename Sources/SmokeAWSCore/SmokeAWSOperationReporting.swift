// Copyright 2018-2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
//  SmokeAWSOperationReporting.swift
//  SmokeAWSCore
//

import Foundation
import Metrics

/**
 A context related to reporting on the invocation of a SmokeAWS operation.
 */
public protocol SmokeAWSOperationReporting {
    
    /// The `Metrics.Counter` to record the success of this invocation.
    var successCounter: Metrics.Counter? { get }
    
    /// The `Metrics.Counter` to record the failure of this invocation.
    var failure5XXCounter: Metrics.Counter? { get }
    
    /// The `Metrics.Counter` to record the failure of this invocation.
    var failure4XXCounter: Metrics.Counter? { get }
    
    /// The `Metrics.Recorder` to record the number of retries that occurred as part of this invocation.
    var retryCountRecorder: Metrics.Recorder? { get }
    
    /// The `Metrics.Recorder` to record the duration of this invocation.
    var latencyTimer: Metrics.Timer? { get }
}

public struct StandardSmokeAWSOperationReporting<OperationIdentifer: Hashable & CustomStringConvertible>: SmokeAWSOperationReporting {
    public let successCounter: Metrics.Counter?
    public let failure5XXCounter: Metrics.Counter?
    public let failure4XXCounter: Metrics.Counter?
    public let retryCountRecorder: Recorder?
    public let latencyTimer: Metrics.Timer?
    
    private let namespaceDimension = "Namespace"
    private let operationNameDimension = "Operation Name"
    private let metricNameDimension = "Metric Name"
    
    private let successCountMetric = "successCount"
    private let failure5XXCountMetric = "failure5XXCount"
    private let failure4XXCountMetric = "failure4XXCount"
    private let retryCountMetric = "retryCount"
    private let latencyTimeMetric = "latencyTime"
    
    public init(clientName: String, operation: OperationIdentifer, configuration: SmokeAWSClientReportingConfiguration<OperationIdentifer>) {
        let operationName = operation.description
        
        if configuration.reportSuccessForOperation(operation) {
            let successCounterDimensions = [(namespaceDimension, clientName),
                                            (operationNameDimension, operationName),
                                            (metricNameDimension, successCountMetric)]
            successCounter = Counter(label: "\(clientName).\(operationName).\(successCountMetric)",
                                     dimensions: successCounterDimensions)
        } else {
            successCounter = nil
        }
        
        if configuration.reportFailure5XXForOperation(operation) {
            let failure5XXCounterDimensions = [(namespaceDimension, clientName),
                                               (operationNameDimension, operationName),
                                               (metricNameDimension, failure5XXCountMetric)]
            failure5XXCounter = Counter(label: "\(clientName).\(operationName).\(failure5XXCountMetric)",
                                        dimensions: failure5XXCounterDimensions)
        } else {
            failure5XXCounter = nil
        }
        
        if configuration.reportFailure4XXForOperation(operation) {
            let failure4XXCounterDimensions = [(namespaceDimension, clientName),
                                               (operationNameDimension, operationName),
                                               (metricNameDimension, failure4XXCountMetric)]
            failure4XXCounter = Counter(label: "\(clientName).\(operationName).\(failure4XXCountMetric)",
                                        dimensions: failure4XXCounterDimensions)
        } else {
            failure4XXCounter = nil
        }
        
        if configuration.reportRetryCountForOperation(operation) {
            let retryCountDimensions = [(namespaceDimension, clientName),
                                        (operationNameDimension, operationName),
                                        (metricNameDimension, retryCountMetric)]
            retryCountRecorder = Metrics.Recorder(label: "\(clientName).\(operationName).\(retryCountMetric)",
                                                  dimensions: retryCountDimensions)
        } else {
            retryCountRecorder = nil
        }
        
        if configuration.reportLatencyForOperation(operation) {
            let latencyTimeDimensions = [(namespaceDimension, clientName),
                                         (operationNameDimension, operationName),
                                         (metricNameDimension, latencyTimeMetric)]
            latencyTimer = Metrics.Timer(label: "\(clientName).\(operationName).\(latencyTimeMetric)",
                                         dimensions: latencyTimeDimensions)
        } else {
            latencyTimer = nil
        }
    }
}
