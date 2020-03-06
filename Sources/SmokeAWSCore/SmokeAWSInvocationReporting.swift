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
//  SmokeAWSInvocationReporting.swift
//  SmokeAWSCore
//

import Foundation
import Logging
import SmokeHTTPClient

/**
 A context related to reporting on the invocation of the HTTPClient.
 */
public protocol SmokeAWSInvocationReporting {
    associatedtype TraceContextType: InvocationTraceContext
    
    /// The `Logging.Logger` to use for logging for this invocation.
    var logger: Logging.Logger { get }
    
    /// The internal Request Id associated with this invocation.
    var internalRequestId: String { get }
    
    /// The trace context associated with this invocation.
    var traceContext: TraceContextType { get }
}
