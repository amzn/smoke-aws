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
// DynamoDBInvocationsReporting.swift
// DynamoDBClient
//

import Foundation
import SmokeHTTPClient
import SmokeAWSHttp
import DynamoDBModel

/**
 Invocations reporting for the DynamoDBModel.
 */
public struct DynamoDBInvocationsReporting<InvocationReportingType: HTTPClientCoreInvocationReporting & Sendable> {
    public let batchExecuteStatement: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let batchGetItem: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let batchWriteItem: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createBackup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createGlobalTable: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createTable: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteBackup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteItem: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteTable: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeBackup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeContinuousBackups: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeContributorInsights: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeEndpoints: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeExport: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeGlobalTable: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeGlobalTableSettings: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeKinesisStreamingDestination: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeLimits: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeTable: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeTableReplicaAutoScaling: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let describeTimeToLive: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let disableKinesisStreamingDestination: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let enableKinesisStreamingDestination: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let executeStatement: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let executeTransaction: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let exportTableToPointInTime: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getItem: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listBackups: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listContributorInsights: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listExports: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listGlobalTables: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listTables: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listTagsOfResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let putItem: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let query: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let restoreTableFromBackup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let restoreTableToPointInTime: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let scan: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let tagResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let transactGetItems: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let transactWriteItems: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let untagResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let updateContinuousBackups: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let updateContributorInsights: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let updateGlobalTable: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let updateGlobalTableSettings: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let updateItem: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let updateTable: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let updateTableReplicaAutoScaling: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let updateTimeToLive: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>

    public init(reporting: InvocationReportingType, operationsReporting: DynamoDBOperationsReporting) {
        self.batchExecuteStatement = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.batchExecuteStatement)
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
        self.describeExport = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeExport)
        self.describeGlobalTable = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeGlobalTable)
        self.describeGlobalTableSettings = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeGlobalTableSettings)
        self.describeKinesisStreamingDestination = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeKinesisStreamingDestination)
        self.describeLimits = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeLimits)
        self.describeTable = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeTable)
        self.describeTableReplicaAutoScaling = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeTableReplicaAutoScaling)
        self.describeTimeToLive = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeTimeToLive)
        self.disableKinesisStreamingDestination = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.disableKinesisStreamingDestination)
        self.enableKinesisStreamingDestination = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.enableKinesisStreamingDestination)
        self.executeStatement = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.executeStatement)
        self.executeTransaction = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.executeTransaction)
        self.exportTableToPointInTime = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.exportTableToPointInTime)
        self.getItem = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getItem)
        self.listBackups = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listBackups)
        self.listContributorInsights = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listContributorInsights)
        self.listExports = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listExports)
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
