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
//  MockInvocationReporting.swift
//  SmokeAWSCore
//

import Foundation
import SmokeHTTPClient
import Logging

/**
  A type conforming to the `SmokeAWSInvocationReporting` protocol, predominantly for testing.
 */
public struct MockInvocationReporting: SmokeAWSInvocationReporting {
    public let logger: Logger
    public var internalRequestId: String
    public var traceContext: MockInvocationTraceContext
    
    public init(
            logger: Logger = Logger(label: "com.amazon.SmokeAWSCore.MockInvocationReporting"),
            internalRequestId: String = "internalRequestId",
            traceContext: MockInvocationTraceContext = .init()) {
        self.logger = logger
        self.internalRequestId = internalRequestId
        self.traceContext = traceContext
    }
}
