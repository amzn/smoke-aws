// Copyright 2018-2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
//  SmokeAWSHTTPClientInvocationReporting.swift
//  SmokeAWSHttp
//

import Foundation
import SmokeHTTPClient
import SmokeAWSCore
import Logging
import Metrics

public struct SmokeAWSHTTPClientInvocationReporting<InvocationReportingType: SmokeAWSInvocationReporting>: HTTPClientInvocationReporting {
    public typealias TraceContextType = InvocationReportingType.TraceContextType
    
    private let smokeAWSInvocationReporting: InvocationReportingType
    private let smokeAWSOperationReporting: SmokeAWSOperationReporting
    
    public init(smokeAWSInvocationReporting: InvocationReportingType,
                smokeAWSOperationReporting: SmokeAWSOperationReporting) {
        self.smokeAWSInvocationReporting = smokeAWSInvocationReporting
        self.smokeAWSOperationReporting = smokeAWSOperationReporting
    }
    
    public var logger: Logging.Logger {
        return smokeAWSInvocationReporting.logger
    }
    
    public var internalRequestId: String {
        return smokeAWSInvocationReporting.internalRequestId
    }
    
    public var traceContext: InvocationReportingType.TraceContextType {
        return smokeAWSInvocationReporting.traceContext
    }
    
    public var successCounter: Metrics.Counter? {
        return smokeAWSOperationReporting.successCounter
    }
    
    public var failure5XXCounter: Metrics.Counter? {
        return smokeAWSOperationReporting.failure5XXCounter
    }
    
    public var failure4XXCounter: Metrics.Counter? {
        return smokeAWSOperationReporting.failure4XXCounter
    }
    
    public var retryCountRecorder: Metrics.Recorder? {
        return smokeAWSOperationReporting.retryCountRecorder
    }
    
    public var latencyTimer: Metrics.Timer? {
        return smokeAWSOperationReporting.latencyTimer
    }
}
