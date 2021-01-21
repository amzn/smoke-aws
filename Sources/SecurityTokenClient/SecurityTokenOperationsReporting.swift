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
// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment
// swiftlint:disable type_body_length function_body_length generic_type_name cyclomatic_complexity
// -- Generated Code; do not edit --
//
// SecurityTokenOperationsReporting.swift
// SecurityTokenClient
//

import Foundation
import SmokeAWSCore
import SecurityTokenModel

/**
 Operation reporting for the SecurityTokenModel.
 */
public struct SecurityTokenOperationsReporting {
    let assumeRole: StandardSmokeAWSOperationReporting<SecurityTokenModelOperations>
    let assumeRoleWithSAML: StandardSmokeAWSOperationReporting<SecurityTokenModelOperations>
    let assumeRoleWithWebIdentity: StandardSmokeAWSOperationReporting<SecurityTokenModelOperations>
    let decodeAuthorizationMessage: StandardSmokeAWSOperationReporting<SecurityTokenModelOperations>
    let getAccessKeyInfo: StandardSmokeAWSOperationReporting<SecurityTokenModelOperations>
    let getCallerIdentity: StandardSmokeAWSOperationReporting<SecurityTokenModelOperations>
    let getFederationToken: StandardSmokeAWSOperationReporting<SecurityTokenModelOperations>
    let getSessionToken: StandardSmokeAWSOperationReporting<SecurityTokenModelOperations>

    public init(clientName: String, reportingConfiguration: SmokeAWSClientReportingConfiguration<SecurityTokenModelOperations>) {
        self.assumeRole = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .assumeRole, configuration: reportingConfiguration)
        self.assumeRoleWithSAML = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .assumeRoleWithSAML, configuration: reportingConfiguration)
        self.assumeRoleWithWebIdentity = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .assumeRoleWithWebIdentity, configuration: reportingConfiguration)
        self.decodeAuthorizationMessage = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .decodeAuthorizationMessage, configuration: reportingConfiguration)
        self.getAccessKeyInfo = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getAccessKeyInfo, configuration: reportingConfiguration)
        self.getCallerIdentity = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getCallerIdentity, configuration: reportingConfiguration)
        self.getFederationToken = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getFederationToken, configuration: reportingConfiguration)
        self.getSessionToken = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getSessionToken, configuration: reportingConfiguration)
    }
}
