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
// DynamoDBModelOperations.swift
// DynamoDBModel
//

import Foundation

/**
 Operation enumeration for the DynamoDBModel.
 */
public enum DynamoDBModelOperations: String, Hashable, CustomStringConvertible {
    case batchExecuteStatement = "BatchExecuteStatement"
    case batchGetItem = "BatchGetItem"
    case batchWriteItem = "BatchWriteItem"
    case createBackup = "CreateBackup"
    case createGlobalTable = "CreateGlobalTable"
    case createTable = "CreateTable"
    case deleteBackup = "DeleteBackup"
    case deleteItem = "DeleteItem"
    case deleteTable = "DeleteTable"
    case describeBackup = "DescribeBackup"
    case describeContinuousBackups = "DescribeContinuousBackups"
    case describeContributorInsights = "DescribeContributorInsights"
    case describeEndpoints = "DescribeEndpoints"
    case describeExport = "DescribeExport"
    case describeGlobalTable = "DescribeGlobalTable"
    case describeGlobalTableSettings = "DescribeGlobalTableSettings"
    case describeKinesisStreamingDestination = "DescribeKinesisStreamingDestination"
    case describeLimits = "DescribeLimits"
    case describeTable = "DescribeTable"
    case describeTableReplicaAutoScaling = "DescribeTableReplicaAutoScaling"
    case describeTimeToLive = "DescribeTimeToLive"
    case disableKinesisStreamingDestination = "DisableKinesisStreamingDestination"
    case enableKinesisStreamingDestination = "EnableKinesisStreamingDestination"
    case executeStatement = "ExecuteStatement"
    case executeTransaction = "ExecuteTransaction"
    case exportTableToPointInTime = "ExportTableToPointInTime"
    case getItem = "GetItem"
    case listBackups = "ListBackups"
    case listContributorInsights = "ListContributorInsights"
    case listExports = "ListExports"
    case listGlobalTables = "ListGlobalTables"
    case listTables = "ListTables"
    case listTagsOfResource = "ListTagsOfResource"
    case putItem = "PutItem"
    case query = "Query"
    case restoreTableFromBackup = "RestoreTableFromBackup"
    case restoreTableToPointInTime = "RestoreTableToPointInTime"
    case scan = "Scan"
    case tagResource = "TagResource"
    case transactGetItems = "TransactGetItems"
    case transactWriteItems = "TransactWriteItems"
    case untagResource = "UntagResource"
    case updateContinuousBackups = "UpdateContinuousBackups"
    case updateContributorInsights = "UpdateContributorInsights"
    case updateGlobalTable = "UpdateGlobalTable"
    case updateGlobalTableSettings = "UpdateGlobalTableSettings"
    case updateItem = "UpdateItem"
    case updateTable = "UpdateTable"
    case updateTableReplicaAutoScaling = "UpdateTableReplicaAutoScaling"
    case updateTimeToLive = "UpdateTimeToLive"

    public var description: String {
        return rawValue
    }

    public var operationPath: String {
        switch self {
        case .batchExecuteStatement:
            return "/"
        case .batchGetItem:
            return "/"
        case .batchWriteItem:
            return "/"
        case .createBackup:
            return "/"
        case .createGlobalTable:
            return "/"
        case .createTable:
            return "/"
        case .deleteBackup:
            return "/"
        case .deleteItem:
            return "/"
        case .deleteTable:
            return "/"
        case .describeBackup:
            return "/"
        case .describeContinuousBackups:
            return "/"
        case .describeContributorInsights:
            return "/"
        case .describeEndpoints:
            return "/"
        case .describeExport:
            return "/"
        case .describeGlobalTable:
            return "/"
        case .describeGlobalTableSettings:
            return "/"
        case .describeKinesisStreamingDestination:
            return "/"
        case .describeLimits:
            return "/"
        case .describeTable:
            return "/"
        case .describeTableReplicaAutoScaling:
            return "/"
        case .describeTimeToLive:
            return "/"
        case .disableKinesisStreamingDestination:
            return "/"
        case .enableKinesisStreamingDestination:
            return "/"
        case .executeStatement:
            return "/"
        case .executeTransaction:
            return "/"
        case .exportTableToPointInTime:
            return "/"
        case .getItem:
            return "/"
        case .listBackups:
            return "/"
        case .listContributorInsights:
            return "/"
        case .listExports:
            return "/"
        case .listGlobalTables:
            return "/"
        case .listTables:
            return "/"
        case .listTagsOfResource:
            return "/"
        case .putItem:
            return "/"
        case .query:
            return "/"
        case .restoreTableFromBackup:
            return "/"
        case .restoreTableToPointInTime:
            return "/"
        case .scan:
            return "/"
        case .tagResource:
            return "/"
        case .transactGetItems:
            return "/"
        case .transactWriteItems:
            return "/"
        case .untagResource:
            return "/"
        case .updateContinuousBackups:
            return "/"
        case .updateContributorInsights:
            return "/"
        case .updateGlobalTable:
            return "/"
        case .updateGlobalTableSettings:
            return "/"
        case .updateItem:
            return "/"
        case .updateTable:
            return "/"
        case .updateTableReplicaAutoScaling:
            return "/"
        case .updateTimeToLive:
            return "/"
        }
    }
}
