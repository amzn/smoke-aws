// Copyright 2018-2019 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
// DynamoDBInvocationsReporting.swift
// DynamoDBClient
//

import Foundation
import SmokeAWSCore
import SmokeAWSHttp
import DynamoDBModel

/**
 Operation reporting for the DynamoDBModel.
 */
public struct DynamoDBInvocationsReporting<InvocationReportingType: SmokeAWSInvocationReporting> {
    let batchGetItem: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let batchWriteItem: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createBackup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createGlobalTable: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createTable: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteBackup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteItem: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteTable: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeBackup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeContinuousBackups: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeContributorInsights: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeEndpoints: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeGlobalTable: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeGlobalTableSettings: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeLimits: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeTable: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeTableReplicaAutoScaling: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeTimeToLive: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getItem: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listBackups: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listContributorInsights: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listGlobalTables: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listTables: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listTagsOfResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putItem: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let query: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let restoreTableFromBackup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let restoreTableToPointInTime: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let scan: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let tagResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let transactGetItems: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let transactWriteItems: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let untagResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let updateContinuousBackups: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let updateContributorInsights: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let updateGlobalTable: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let updateGlobalTableSettings: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let updateItem: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let updateTable: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let updateTableReplicaAutoScaling: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let updateTimeToLive: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>

    public init(reporting: InvocationReportingType, operationsReporting: DynamoDBOperationsReporting) {
        self.batchGetItem = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.batchGetItem)
        self.batchWriteItem = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.batchWriteItem)
        self.createBackup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createBackup)
        self.createGlobalTable = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createGlobalTable)
        self.createTable = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createTable)
        self.deleteBackup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteBackup)
        self.deleteItem = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteItem)
        self.deleteTable = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteTable)
        self.describeBackup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeBackup)
        self.describeContinuousBackups = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeContinuousBackups)
        self.describeContributorInsights = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeContributorInsights)
        self.describeEndpoints = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeEndpoints)
        self.describeGlobalTable = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeGlobalTable)
        self.describeGlobalTableSettings = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeGlobalTableSettings)
        self.describeLimits = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeLimits)
        self.describeTable = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeTable)
        self.describeTableReplicaAutoScaling = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeTableReplicaAutoScaling)
        self.describeTimeToLive = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeTimeToLive)
        self.getItem = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getItem)
        self.listBackups = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listBackups)
        self.listContributorInsights = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listContributorInsights)
        self.listGlobalTables = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listGlobalTables)
        self.listTables = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listTables)
        self.listTagsOfResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listTagsOfResource)
        self.putItem = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putItem)
        self.query = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.query)
        self.restoreTableFromBackup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.restoreTableFromBackup)
        self.restoreTableToPointInTime = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.restoreTableToPointInTime)
        self.scan = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.scan)
        self.tagResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.tagResource)
        self.transactGetItems = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.transactGetItems)
        self.transactWriteItems = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.transactWriteItems)
        self.untagResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.untagResource)
        self.updateContinuousBackups = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.updateContinuousBackups)
        self.updateContributorInsights = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.updateContributorInsights)
        self.updateGlobalTable = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.updateGlobalTable)
        self.updateGlobalTableSettings = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.updateGlobalTableSettings)
        self.updateItem = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.updateItem)
        self.updateTable = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.updateTable)
        self.updateTableReplicaAutoScaling = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.updateTableReplicaAutoScaling)
        self.updateTimeToLive = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.updateTimeToLive)
    }
}
