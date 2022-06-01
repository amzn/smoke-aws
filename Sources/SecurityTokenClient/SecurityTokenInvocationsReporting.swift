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
// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment
// swiftlint:disable type_body_length function_body_length generic_type_name cyclomatic_complexity
// -- Generated Code; do not edit --
//
// SecurityTokenInvocationsReporting.swift
// SecurityTokenClient
//

import Foundation
import SmokeHTTPClient
import SmokeAWSHttp
import SecurityTokenModel

/**
 Invocations reporting for the SecurityTokenModel.
 */
public struct SecurityTokenInvocationsReporting<InvocationReportingType: HTTPClientCoreInvocationReporting> {
    public let assumeRole: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let assumeRoleWithSAML: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let assumeRoleWithWebIdentity: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let decodeAuthorizationMessage: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getAccessKeyInfo: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getCallerIdentity: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getFederationToken: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getSessionToken: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>

    public init(reporting: InvocationReportingType, operationsReporting: SecurityTokenOperationsReporting) {
        self.assumeRole = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.assumeRole)
        self.assumeRoleWithSAML = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.assumeRoleWithSAML)
        self.assumeRoleWithWebIdentity = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.assumeRoleWithWebIdentity)
        self.decodeAuthorizationMessage = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.decodeAuthorizationMessage)
        self.getAccessKeyInfo = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getAccessKeyInfo)
        self.getCallerIdentity = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getCallerIdentity)
        self.getFederationToken = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getFederationToken)
        self.getSessionToken = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getSessionToken)
    }
}
