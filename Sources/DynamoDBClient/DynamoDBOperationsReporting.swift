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
// DynamoDBOperationsReporting.swift
// DynamoDBClient
//

import Foundation
import SmokeAWSCore
import DynamoDBModel

/**
 Operation reporting for the DynamoDBModel.
 */
public struct DynamoDBOperationsReporting {
    public let batchExecuteStatement: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let batchGetItem: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let batchWriteItem: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let createBackup: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let createGlobalTable: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let createTable: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let deleteBackup: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let deleteItem: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let deleteTable: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let describeBackup: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let describeContinuousBackups: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let describeContributorInsights: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let describeEndpoints: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let describeExport: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let describeGlobalTable: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let describeGlobalTableSettings: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let describeKinesisStreamingDestination: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let describeLimits: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let describeTable: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let describeTableReplicaAutoScaling: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let describeTimeToLive: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let disableKinesisStreamingDestination: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let enableKinesisStreamingDestination: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let executeStatement: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let executeTransaction: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let exportTableToPointInTime: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let getItem: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let listBackups: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let listContributorInsights: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let listExports: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let listGlobalTables: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let listTables: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let listTagsOfResource: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let putItem: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let query: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let restoreTableFromBackup: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let restoreTableToPointInTime: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let scan: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let tagResource: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let transactGetItems: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let transactWriteItems: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let untagResource: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let updateContinuousBackups: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let updateContributorInsights: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let updateGlobalTable: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let updateGlobalTableSettings: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let updateItem: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let updateTable: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let updateTableReplicaAutoScaling: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    public let updateTimeToLive: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>

    public init(clientName: String, reportingConfiguration: SmokeAWSClientReportingConfiguration<DynamoDBModelOperations>) {
        self.batchExecuteStatement = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .batchExecuteStatement, configuration: reportingConfiguration)
        self.batchGetItem = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .batchGetItem, configuration: reportingConfiguration)
        self.batchWriteItem = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .batchWriteItem, configuration: reportingConfiguration)
        self.createBackup = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createBackup, configuration: reportingConfiguration)
        self.createGlobalTable = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createGlobalTable, configuration: reportingConfiguration)
        self.createTable = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createTable, configuration: reportingConfiguration)
        self.deleteBackup = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteBackup, configuration: reportingConfiguration)
        self.deleteItem = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteItem, configuration: reportingConfiguration)
        self.deleteTable = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteTable, configuration: reportingConfiguration)
        self.describeBackup = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeBackup, configuration: reportingConfiguration)
        self.describeContinuousBackups = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeContinuousBackups, configuration: reportingConfiguration)
        self.describeContributorInsights = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeContributorInsights, configuration: reportingConfiguration)
        self.describeEndpoints = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeEndpoints, configuration: reportingConfiguration)
        self.describeExport = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeExport, configuration: reportingConfiguration)
        self.describeGlobalTable = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeGlobalTable, configuration: reportingConfiguration)
        self.describeGlobalTableSettings = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeGlobalTableSettings, configuration: reportingConfiguration)
        self.describeKinesisStreamingDestination = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeKinesisStreamingDestination, configuration: reportingConfiguration)
        self.describeLimits = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeLimits, configuration: reportingConfiguration)
        self.describeTable = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeTable, configuration: reportingConfiguration)
        self.describeTableReplicaAutoScaling = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeTableReplicaAutoScaling, configuration: reportingConfiguration)
        self.describeTimeToLive = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeTimeToLive, configuration: reportingConfiguration)
        self.disableKinesisStreamingDestination = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .disableKinesisStreamingDestination, configuration: reportingConfiguration)
        self.enableKinesisStreamingDestination = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .enableKinesisStreamingDestination, configuration: reportingConfiguration)
        self.executeStatement = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .executeStatement, configuration: reportingConfiguration)
        self.executeTransaction = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .executeTransaction, configuration: reportingConfiguration)
        self.exportTableToPointInTime = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .exportTableToPointInTime, configuration: reportingConfiguration)
        self.getItem = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getItem, configuration: reportingConfiguration)
        self.listBackups = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listBackups, configuration: reportingConfiguration)
        self.listContributorInsights = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listContributorInsights, configuration: reportingConfiguration)
        self.listExports = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listExports, configuration: reportingConfiguration)
        self.listGlobalTables = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listGlobalTables, configuration: reportingConfiguration)
        self.listTables = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listTables, configuration: reportingConfiguration)
        self.listTagsOfResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listTagsOfResource, configuration: reportingConfiguration)
        self.putItem = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putItem, configuration: reportingConfiguration)
        self.query = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .query, configuration: reportingConfiguration)
        self.restoreTableFromBackup = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .restoreTableFromBackup, configuration: reportingConfiguration)
        self.restoreTableToPointInTime = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .restoreTableToPointInTime, configuration: reportingConfiguration)
        self.scan = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .scan, configuration: reportingConfiguration)
        self.tagResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .tagResource, configuration: reportingConfiguration)
        self.transactGetItems = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .transactGetItems, configuration: reportingConfiguration)
        self.transactWriteItems = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .transactWriteItems, configuration: reportingConfiguration)
        self.untagResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .untagResource, configuration: reportingConfiguration)
        self.updateContinuousBackups = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .updateContinuousBackups, configuration: reportingConfiguration)
        self.updateContributorInsights = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .updateContributorInsights, configuration: reportingConfiguration)
        self.updateGlobalTable = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .updateGlobalTable, configuration: reportingConfiguration)
        self.updateGlobalTableSettings = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .updateGlobalTableSettings, configuration: reportingConfiguration)
        self.updateItem = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .updateItem, configuration: reportingConfiguration)
        self.updateTable = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .updateTable, configuration: reportingConfiguration)
        self.updateTableReplicaAutoScaling = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .updateTableReplicaAutoScaling, configuration: reportingConfiguration)
        self.updateTimeToLive = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .updateTimeToLive, configuration: reportingConfiguration)
    }
}
