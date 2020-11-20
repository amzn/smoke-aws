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
    let batchGetItem: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let batchWriteItem: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let createBackup: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let createGlobalTable: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let createTable: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let deleteBackup: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let deleteItem: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let deleteTable: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let describeBackup: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let describeContinuousBackups: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let describeContributorInsights: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let describeEndpoints: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let describeExport: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let describeGlobalTable: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let describeGlobalTableSettings: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let describeLimits: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let describeTable: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let describeTableReplicaAutoScaling: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let describeTimeToLive: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let exportTableToPointInTime: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let getItem: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let listBackups: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let listContributorInsights: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let listExports: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let listGlobalTables: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let listTables: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let listTagsOfResource: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let putItem: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let query: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let restoreTableFromBackup: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let restoreTableToPointInTime: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let scan: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let tagResource: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let transactGetItems: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let transactWriteItems: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let untagResource: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let updateContinuousBackups: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let updateContributorInsights: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let updateGlobalTable: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let updateGlobalTableSettings: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let updateItem: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let updateTable: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let updateTableReplicaAutoScaling: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>
    let updateTimeToLive: StandardSmokeAWSOperationReporting<DynamoDBModelOperations>

    public init(clientName: String, reportingConfiguration: SmokeAWSClientReportingConfiguration<DynamoDBModelOperations>) {
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
        self.describeLimits = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeLimits, configuration: reportingConfiguration)
        self.describeTable = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeTable, configuration: reportingConfiguration)
        self.describeTableReplicaAutoScaling = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeTableReplicaAutoScaling, configuration: reportingConfiguration)
        self.describeTimeToLive = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeTimeToLive, configuration: reportingConfiguration)
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
