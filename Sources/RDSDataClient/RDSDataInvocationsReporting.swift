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
// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment
// -- Generated Code; do not edit --
//
// RDSDataInvocationsReporting.swift
// RDSDataClient
//

import Foundation
import SmokeHTTPClient
import SmokeAWSHttp
import RDSDataModel

/**
 Operation reporting for the RDSDataModel.
 */
public struct RDSDataInvocationsReporting<InvocationReportingType: HTTPClientCoreInvocationReporting> {
    let batchExecuteStatement: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let beginTransaction: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let commitTransaction: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let executeSql: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let executeStatement: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let rollbackTransaction: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>

    public init(reporting: InvocationReportingType, operationsReporting: RDSDataOperationsReporting) {
        self.batchExecuteStatement = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.batchExecuteStatement)
        self.beginTransaction = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.beginTransaction)
        self.commitTransaction = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.commitTransaction)
        self.executeSql = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.executeSql)
        self.executeStatement = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.executeStatement)
        self.rollbackTransaction = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.rollbackTransaction)
    }
}
