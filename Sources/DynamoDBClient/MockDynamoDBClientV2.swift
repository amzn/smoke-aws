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
// MockDynamoDBClientV2.swift
// DynamoDBClient
//

import Foundation
import DynamoDBModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the DynamoDB service by default returns the `__default` property of its return type.
 */
public struct MockDynamoDBClientV2: DynamoDBClientProtocolV2 {
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    let batchExecuteStatementOverride: BatchExecuteStatementFunctionType?
    let batchGetItemOverride: BatchGetItemFunctionType?
    let batchWriteItemOverride: BatchWriteItemFunctionType?
    let createBackupOverride: CreateBackupFunctionType?
    let createGlobalTableOverride: CreateGlobalTableFunctionType?
    let createTableOverride: CreateTableFunctionType?
    let deleteBackupOverride: DeleteBackupFunctionType?
    let deleteItemOverride: DeleteItemFunctionType?
    let deleteTableOverride: DeleteTableFunctionType?
    let describeBackupOverride: DescribeBackupFunctionType?
    let describeContinuousBackupsOverride: DescribeContinuousBackupsFunctionType?
    let describeContributorInsightsOverride: DescribeContributorInsightsFunctionType?
    let describeEndpointsOverride: DescribeEndpointsFunctionType?
    let describeExportOverride: DescribeExportFunctionType?
    let describeGlobalTableOverride: DescribeGlobalTableFunctionType?
    let describeGlobalTableSettingsOverride: DescribeGlobalTableSettingsFunctionType?
    let describeImportOverride: DescribeImportFunctionType?
    let describeKinesisStreamingDestinationOverride: DescribeKinesisStreamingDestinationFunctionType?
    let describeLimitsOverride: DescribeLimitsFunctionType?
    let describeTableOverride: DescribeTableFunctionType?
    let describeTableReplicaAutoScalingOverride: DescribeTableReplicaAutoScalingFunctionType?
    let describeTimeToLiveOverride: DescribeTimeToLiveFunctionType?
    let disableKinesisStreamingDestinationOverride: DisableKinesisStreamingDestinationFunctionType?
    let enableKinesisStreamingDestinationOverride: EnableKinesisStreamingDestinationFunctionType?
    let executeStatementOverride: ExecuteStatementFunctionType?
    let executeTransactionOverride: ExecuteTransactionFunctionType?
    let exportTableToPointInTimeOverride: ExportTableToPointInTimeFunctionType?
    let getItemOverride: GetItemFunctionType?
    let importTableOverride: ImportTableFunctionType?
    let listBackupsOverride: ListBackupsFunctionType?
    let listContributorInsightsOverride: ListContributorInsightsFunctionType?
    let listExportsOverride: ListExportsFunctionType?
    let listGlobalTablesOverride: ListGlobalTablesFunctionType?
    let listImportsOverride: ListImportsFunctionType?
    let listTablesOverride: ListTablesFunctionType?
    let listTagsOfResourceOverride: ListTagsOfResourceFunctionType?
    let putItemOverride: PutItemFunctionType?
    let queryOverride: QueryFunctionType?
    let restoreTableFromBackupOverride: RestoreTableFromBackupFunctionType?
    let restoreTableToPointInTimeOverride: RestoreTableToPointInTimeFunctionType?
    let scanOverride: ScanFunctionType?
    let tagResourceOverride: TagResourceFunctionType?
    let transactGetItemsOverride: TransactGetItemsFunctionType?
    let transactWriteItemsOverride: TransactWriteItemsFunctionType?
    let untagResourceOverride: UntagResourceFunctionType?
    let updateContinuousBackupsOverride: UpdateContinuousBackupsFunctionType?
    let updateContributorInsightsOverride: UpdateContributorInsightsFunctionType?
    let updateGlobalTableOverride: UpdateGlobalTableFunctionType?
    let updateGlobalTableSettingsOverride: UpdateGlobalTableSettingsFunctionType?
    let updateItemOverride: UpdateItemFunctionType?
    let updateTableOverride: UpdateTableFunctionType?
    let updateTableReplicaAutoScalingOverride: UpdateTableReplicaAutoScalingFunctionType?
    let updateTimeToLiveOverride: UpdateTimeToLiveFunctionType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            batchExecuteStatement: BatchExecuteStatementFunctionType? = nil,
            batchGetItem: BatchGetItemFunctionType? = nil,
            batchWriteItem: BatchWriteItemFunctionType? = nil,
            createBackup: CreateBackupFunctionType? = nil,
            createGlobalTable: CreateGlobalTableFunctionType? = nil,
            createTable: CreateTableFunctionType? = nil,
            deleteBackup: DeleteBackupFunctionType? = nil,
            deleteItem: DeleteItemFunctionType? = nil,
            deleteTable: DeleteTableFunctionType? = nil,
            describeBackup: DescribeBackupFunctionType? = nil,
            describeContinuousBackups: DescribeContinuousBackupsFunctionType? = nil,
            describeContributorInsights: DescribeContributorInsightsFunctionType? = nil,
            describeEndpoints: DescribeEndpointsFunctionType? = nil,
            describeExport: DescribeExportFunctionType? = nil,
            describeGlobalTable: DescribeGlobalTableFunctionType? = nil,
            describeGlobalTableSettings: DescribeGlobalTableSettingsFunctionType? = nil,
            describeImport: DescribeImportFunctionType? = nil,
            describeKinesisStreamingDestination: DescribeKinesisStreamingDestinationFunctionType? = nil,
            describeLimits: DescribeLimitsFunctionType? = nil,
            describeTable: DescribeTableFunctionType? = nil,
            describeTableReplicaAutoScaling: DescribeTableReplicaAutoScalingFunctionType? = nil,
            describeTimeToLive: DescribeTimeToLiveFunctionType? = nil,
            disableKinesisStreamingDestination: DisableKinesisStreamingDestinationFunctionType? = nil,
            enableKinesisStreamingDestination: EnableKinesisStreamingDestinationFunctionType? = nil,
            executeStatement: ExecuteStatementFunctionType? = nil,
            executeTransaction: ExecuteTransactionFunctionType? = nil,
            exportTableToPointInTime: ExportTableToPointInTimeFunctionType? = nil,
            getItem: GetItemFunctionType? = nil,
            importTable: ImportTableFunctionType? = nil,
            listBackups: ListBackupsFunctionType? = nil,
            listContributorInsights: ListContributorInsightsFunctionType? = nil,
            listExports: ListExportsFunctionType? = nil,
            listGlobalTables: ListGlobalTablesFunctionType? = nil,
            listImports: ListImportsFunctionType? = nil,
            listTables: ListTablesFunctionType? = nil,
            listTagsOfResource: ListTagsOfResourceFunctionType? = nil,
            putItem: PutItemFunctionType? = nil,
            query: QueryFunctionType? = nil,
            restoreTableFromBackup: RestoreTableFromBackupFunctionType? = nil,
            restoreTableToPointInTime: RestoreTableToPointInTimeFunctionType? = nil,
            scan: ScanFunctionType? = nil,
            tagResource: TagResourceFunctionType? = nil,
            transactGetItems: TransactGetItemsFunctionType? = nil,
            transactWriteItems: TransactWriteItemsFunctionType? = nil,
            untagResource: UntagResourceFunctionType? = nil,
            updateContinuousBackups: UpdateContinuousBackupsFunctionType? = nil,
            updateContributorInsights: UpdateContributorInsightsFunctionType? = nil,
            updateGlobalTable: UpdateGlobalTableFunctionType? = nil,
            updateGlobalTableSettings: UpdateGlobalTableSettingsFunctionType? = nil,
            updateItem: UpdateItemFunctionType? = nil,
            updateTable: UpdateTableFunctionType? = nil,
            updateTableReplicaAutoScaling: UpdateTableReplicaAutoScalingFunctionType? = nil,
            updateTimeToLive: UpdateTimeToLiveFunctionType? = nil) {
        self.batchExecuteStatementOverride = batchExecuteStatement
        self.batchGetItemOverride = batchGetItem
        self.batchWriteItemOverride = batchWriteItem
        self.createBackupOverride = createBackup
        self.createGlobalTableOverride = createGlobalTable
        self.createTableOverride = createTable
        self.deleteBackupOverride = deleteBackup
        self.deleteItemOverride = deleteItem
        self.deleteTableOverride = deleteTable
        self.describeBackupOverride = describeBackup
        self.describeContinuousBackupsOverride = describeContinuousBackups
        self.describeContributorInsightsOverride = describeContributorInsights
        self.describeEndpointsOverride = describeEndpoints
        self.describeExportOverride = describeExport
        self.describeGlobalTableOverride = describeGlobalTable
        self.describeGlobalTableSettingsOverride = describeGlobalTableSettings
        self.describeImportOverride = describeImport
        self.describeKinesisStreamingDestinationOverride = describeKinesisStreamingDestination
        self.describeLimitsOverride = describeLimits
        self.describeTableOverride = describeTable
        self.describeTableReplicaAutoScalingOverride = describeTableReplicaAutoScaling
        self.describeTimeToLiveOverride = describeTimeToLive
        self.disableKinesisStreamingDestinationOverride = disableKinesisStreamingDestination
        self.enableKinesisStreamingDestinationOverride = enableKinesisStreamingDestination
        self.executeStatementOverride = executeStatement
        self.executeTransactionOverride = executeTransaction
        self.exportTableToPointInTimeOverride = exportTableToPointInTime
        self.getItemOverride = getItem
        self.importTableOverride = importTable
        self.listBackupsOverride = listBackups
        self.listContributorInsightsOverride = listContributorInsights
        self.listExportsOverride = listExports
        self.listGlobalTablesOverride = listGlobalTables
        self.listImportsOverride = listImports
        self.listTablesOverride = listTables
        self.listTagsOfResourceOverride = listTagsOfResource
        self.putItemOverride = putItem
        self.queryOverride = query
        self.restoreTableFromBackupOverride = restoreTableFromBackup
        self.restoreTableToPointInTimeOverride = restoreTableToPointInTime
        self.scanOverride = scan
        self.tagResourceOverride = tagResource
        self.transactGetItemsOverride = transactGetItems
        self.transactWriteItemsOverride = transactWriteItems
        self.untagResourceOverride = untagResource
        self.updateContinuousBackupsOverride = updateContinuousBackups
        self.updateContributorInsightsOverride = updateContributorInsights
        self.updateGlobalTableOverride = updateGlobalTable
        self.updateGlobalTableSettingsOverride = updateGlobalTableSettings
        self.updateItemOverride = updateItem
        self.updateTableOverride = updateTable
        self.updateTableReplicaAutoScalingOverride = updateTableReplicaAutoScaling
        self.updateTimeToLiveOverride = updateTimeToLive
    }

    /**
     Invokes the BatchExecuteStatement operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated BatchExecuteStatementInput object being passed to this operation.
     - Returns: The BatchExecuteStatementOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, requestLimitExceeded.
     */
    public func batchExecuteStatement(
            input: DynamoDBModel.BatchExecuteStatementInput) async throws -> DynamoDBModel.BatchExecuteStatementOutput {
        if let batchExecuteStatementOverride = batchExecuteStatementOverride {
            return try await batchExecuteStatementOverride(input)
        }

        return BatchExecuteStatementOutput.__default
    }

    /**
     Invokes the BatchGetItem operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated BatchGetItemInput object being passed to this operation.
     - Returns: The BatchGetItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    public func batchGetItem(
            input: DynamoDBModel.BatchGetItemInput) async throws -> DynamoDBModel.BatchGetItemOutput {
        if let batchGetItemOverride = batchGetItemOverride {
            return try await batchGetItemOverride(input)
        }

        return BatchGetItemOutput.__default
    }

    /**
     Invokes the BatchWriteItem operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated BatchWriteItemInput object being passed to this operation.
     - Returns: The BatchWriteItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    public func batchWriteItem(
            input: DynamoDBModel.BatchWriteItemInput) async throws -> DynamoDBModel.BatchWriteItemOutput {
        if let batchWriteItemOverride = batchWriteItemOverride {
            return try await batchWriteItemOverride(input)
        }

        return BatchWriteItemOutput.__default
    }

    /**
     Invokes the CreateBackup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateBackupInput object being passed to this operation.
     - Returns: The CreateBackupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: backupInUse, continuousBackupsUnavailable, internalServer, limitExceeded, tableInUse, tableNotFound.
     */
    public func createBackup(
            input: DynamoDBModel.CreateBackupInput) async throws -> DynamoDBModel.CreateBackupOutput {
        if let createBackupOverride = createBackupOverride {
            return try await createBackupOverride(input)
        }

        return CreateBackupOutput.__default
    }

    /**
     Invokes the CreateGlobalTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateGlobalTableInput object being passed to this operation.
     - Returns: The CreateGlobalTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalTableAlreadyExists, internalServer, limitExceeded, tableNotFound.
     */
    public func createGlobalTable(
            input: DynamoDBModel.CreateGlobalTableInput) async throws -> DynamoDBModel.CreateGlobalTableOutput {
        if let createGlobalTableOverride = createGlobalTableOverride {
            return try await createGlobalTableOverride(input)
        }

        return CreateGlobalTableOutput.__default
    }

    /**
     Invokes the CreateTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateTableInput object being passed to this operation.
     - Returns: The CreateTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse.
     */
    public func createTable(
            input: DynamoDBModel.CreateTableInput) async throws -> DynamoDBModel.CreateTableOutput {
        if let createTableOverride = createTableOverride {
            return try await createTableOverride(input)
        }

        return CreateTableOutput.__default
    }

    /**
     Invokes the DeleteBackup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteBackupInput object being passed to this operation.
     - Returns: The DeleteBackupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: backupInUse, backupNotFound, internalServer, limitExceeded.
     */
    public func deleteBackup(
            input: DynamoDBModel.DeleteBackupInput) async throws -> DynamoDBModel.DeleteBackupOutput {
        if let deleteBackupOverride = deleteBackupOverride {
            return try await deleteBackupOverride(input)
        }

        return DeleteBackupOutput.__default
    }

    /**
     Invokes the DeleteItem operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteItemInput object being passed to this operation.
     - Returns: The DeleteItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conditionalCheckFailed, internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionConflict.
     */
    public func deleteItem(
            input: DynamoDBModel.DeleteItemInput) async throws -> DynamoDBModel.DeleteItemOutput {
        if let deleteItemOverride = deleteItemOverride {
            return try await deleteItemOverride(input)
        }

        return DeleteItemOutput.__default
    }

    /**
     Invokes the DeleteTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteTableInput object being passed to this operation.
     - Returns: The DeleteTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    public func deleteTable(
            input: DynamoDBModel.DeleteTableInput) async throws -> DynamoDBModel.DeleteTableOutput {
        if let deleteTableOverride = deleteTableOverride {
            return try await deleteTableOverride(input)
        }

        return DeleteTableOutput.__default
    }

    /**
     Invokes the DescribeBackup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeBackupInput object being passed to this operation.
     - Returns: The DescribeBackupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: backupNotFound, internalServer.
     */
    public func describeBackup(
            input: DynamoDBModel.DescribeBackupInput) async throws -> DynamoDBModel.DescribeBackupOutput {
        if let describeBackupOverride = describeBackupOverride {
            return try await describeBackupOverride(input)
        }

        return DescribeBackupOutput.__default
    }

    /**
     Invokes the DescribeContinuousBackups operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeContinuousBackupsInput object being passed to this operation.
     - Returns: The DescribeContinuousBackupsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, tableNotFound.
     */
    public func describeContinuousBackups(
            input: DynamoDBModel.DescribeContinuousBackupsInput) async throws -> DynamoDBModel.DescribeContinuousBackupsOutput {
        if let describeContinuousBackupsOverride = describeContinuousBackupsOverride {
            return try await describeContinuousBackupsOverride(input)
        }

        return DescribeContinuousBackupsOutput.__default
    }

    /**
     Invokes the DescribeContributorInsights operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeContributorInsightsInput object being passed to this operation.
     - Returns: The DescribeContributorInsightsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    public func describeContributorInsights(
            input: DynamoDBModel.DescribeContributorInsightsInput) async throws -> DynamoDBModel.DescribeContributorInsightsOutput {
        if let describeContributorInsightsOverride = describeContributorInsightsOverride {
            return try await describeContributorInsightsOverride(input)
        }

        return DescribeContributorInsightsOutput.__default
    }

    /**
     Invokes the DescribeEndpoints operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeEndpointsRequest object being passed to this operation.
     - Returns: The DescribeEndpointsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeEndpoints(
            input: DynamoDBModel.DescribeEndpointsRequest) async throws -> DynamoDBModel.DescribeEndpointsResponse {
        if let describeEndpointsOverride = describeEndpointsOverride {
            return try await describeEndpointsOverride(input)
        }

        return DescribeEndpointsResponse.__default
    }

    /**
     Invokes the DescribeExport operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeExportInput object being passed to this operation.
     - Returns: The DescribeExportOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: exportNotFound, internalServer, limitExceeded.
     */
    public func describeExport(
            input: DynamoDBModel.DescribeExportInput) async throws -> DynamoDBModel.DescribeExportOutput {
        if let describeExportOverride = describeExportOverride {
            return try await describeExportOverride(input)
        }

        return DescribeExportOutput.__default
    }

    /**
     Invokes the DescribeGlobalTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeGlobalTableInput object being passed to this operation.
     - Returns: The DescribeGlobalTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalTableNotFound, internalServer.
     */
    public func describeGlobalTable(
            input: DynamoDBModel.DescribeGlobalTableInput) async throws -> DynamoDBModel.DescribeGlobalTableOutput {
        if let describeGlobalTableOverride = describeGlobalTableOverride {
            return try await describeGlobalTableOverride(input)
        }

        return DescribeGlobalTableOutput.__default
    }

    /**
     Invokes the DescribeGlobalTableSettings operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeGlobalTableSettingsInput object being passed to this operation.
     - Returns: The DescribeGlobalTableSettingsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalTableNotFound, internalServer.
     */
    public func describeGlobalTableSettings(
            input: DynamoDBModel.DescribeGlobalTableSettingsInput) async throws -> DynamoDBModel.DescribeGlobalTableSettingsOutput {
        if let describeGlobalTableSettingsOverride = describeGlobalTableSettingsOverride {
            return try await describeGlobalTableSettingsOverride(input)
        }

        return DescribeGlobalTableSettingsOutput.__default
    }

    /**
     Invokes the DescribeImport operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeImportInput object being passed to this operation.
     - Returns: The DescribeImportOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: importNotFound.
     */
    public func describeImport(
            input: DynamoDBModel.DescribeImportInput) async throws -> DynamoDBModel.DescribeImportOutput {
        if let describeImportOverride = describeImportOverride {
            return try await describeImportOverride(input)
        }

        return DescribeImportOutput.__default
    }

    /**
     Invokes the DescribeKinesisStreamingDestination operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeKinesisStreamingDestinationInput object being passed to this operation.
     - Returns: The DescribeKinesisStreamingDestinationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    public func describeKinesisStreamingDestination(
            input: DynamoDBModel.DescribeKinesisStreamingDestinationInput) async throws -> DynamoDBModel.DescribeKinesisStreamingDestinationOutput {
        if let describeKinesisStreamingDestinationOverride = describeKinesisStreamingDestinationOverride {
            return try await describeKinesisStreamingDestinationOverride(input)
        }

        return DescribeKinesisStreamingDestinationOutput.__default
    }

    /**
     Invokes the DescribeLimits operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeLimitsInput object being passed to this operation.
     - Returns: The DescribeLimitsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer.
     */
    public func describeLimits(
            input: DynamoDBModel.DescribeLimitsInput) async throws -> DynamoDBModel.DescribeLimitsOutput {
        if let describeLimitsOverride = describeLimitsOverride {
            return try await describeLimitsOverride(input)
        }

        return DescribeLimitsOutput.__default
    }

    /**
     Invokes the DescribeTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTableInput object being passed to this operation.
     - Returns: The DescribeTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    public func describeTable(
            input: DynamoDBModel.DescribeTableInput) async throws -> DynamoDBModel.DescribeTableOutput {
        if let describeTableOverride = describeTableOverride {
            return try await describeTableOverride(input)
        }

        return DescribeTableOutput.__default
    }

    /**
     Invokes the DescribeTableReplicaAutoScaling operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTableReplicaAutoScalingInput object being passed to this operation.
     - Returns: The DescribeTableReplicaAutoScalingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    public func describeTableReplicaAutoScaling(
            input: DynamoDBModel.DescribeTableReplicaAutoScalingInput) async throws -> DynamoDBModel.DescribeTableReplicaAutoScalingOutput {
        if let describeTableReplicaAutoScalingOverride = describeTableReplicaAutoScalingOverride {
            return try await describeTableReplicaAutoScalingOverride(input)
        }

        return DescribeTableReplicaAutoScalingOutput.__default
    }

    /**
     Invokes the DescribeTimeToLive operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTimeToLiveInput object being passed to this operation.
     - Returns: The DescribeTimeToLiveOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    public func describeTimeToLive(
            input: DynamoDBModel.DescribeTimeToLiveInput) async throws -> DynamoDBModel.DescribeTimeToLiveOutput {
        if let describeTimeToLiveOverride = describeTimeToLiveOverride {
            return try await describeTimeToLiveOverride(input)
        }

        return DescribeTimeToLiveOutput.__default
    }

    /**
     Invokes the DisableKinesisStreamingDestination operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated KinesisStreamingDestinationInput object being passed to this operation.
     - Returns: The KinesisStreamingDestinationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    public func disableKinesisStreamingDestination(
            input: DynamoDBModel.KinesisStreamingDestinationInput) async throws -> DynamoDBModel.KinesisStreamingDestinationOutput {
        if let disableKinesisStreamingDestinationOverride = disableKinesisStreamingDestinationOverride {
            return try await disableKinesisStreamingDestinationOverride(input)
        }

        return KinesisStreamingDestinationOutput.__default
    }

    /**
     Invokes the EnableKinesisStreamingDestination operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated KinesisStreamingDestinationInput object being passed to this operation.
     - Returns: The KinesisStreamingDestinationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    public func enableKinesisStreamingDestination(
            input: DynamoDBModel.KinesisStreamingDestinationInput) async throws -> DynamoDBModel.KinesisStreamingDestinationOutput {
        if let enableKinesisStreamingDestinationOverride = enableKinesisStreamingDestinationOverride {
            return try await enableKinesisStreamingDestinationOverride(input)
        }

        return KinesisStreamingDestinationOutput.__default
    }

    /**
     Invokes the ExecuteStatement operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ExecuteStatementInput object being passed to this operation.
     - Returns: The ExecuteStatementOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conditionalCheckFailed, duplicateItem, internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionConflict.
     */
    public func executeStatement(
            input: DynamoDBModel.ExecuteStatementInput) async throws -> DynamoDBModel.ExecuteStatementOutput {
        if let executeStatementOverride = executeStatementOverride {
            return try await executeStatementOverride(input)
        }

        return ExecuteStatementOutput.__default
    }

    /**
     Invokes the ExecuteTransaction operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ExecuteTransactionInput object being passed to this operation.
     - Returns: The ExecuteTransactionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: idempotentParameterMismatch, internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionCanceled, transactionInProgress.
     */
    public func executeTransaction(
            input: DynamoDBModel.ExecuteTransactionInput) async throws -> DynamoDBModel.ExecuteTransactionOutput {
        if let executeTransactionOverride = executeTransactionOverride {
            return try await executeTransactionOverride(input)
        }

        return ExecuteTransactionOutput.__default
    }

    /**
     Invokes the ExportTableToPointInTime operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ExportTableToPointInTimeInput object being passed to this operation.
     - Returns: The ExportTableToPointInTimeOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: exportConflict, internalServer, invalidExportTime, limitExceeded, pointInTimeRecoveryUnavailable, tableNotFound.
     */
    public func exportTableToPointInTime(
            input: DynamoDBModel.ExportTableToPointInTimeInput) async throws -> DynamoDBModel.ExportTableToPointInTimeOutput {
        if let exportTableToPointInTimeOverride = exportTableToPointInTimeOverride {
            return try await exportTableToPointInTimeOverride(input)
        }

        return ExportTableToPointInTimeOutput.__default
    }

    /**
     Invokes the GetItem operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetItemInput object being passed to this operation.
     - Returns: The GetItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    public func getItem(
            input: DynamoDBModel.GetItemInput) async throws -> DynamoDBModel.GetItemOutput {
        if let getItemOverride = getItemOverride {
            return try await getItemOverride(input)
        }

        return GetItemOutput.__default
    }

    /**
     Invokes the ImportTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ImportTableInput object being passed to this operation.
     - Returns: The ImportTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: importConflict, limitExceeded, resourceInUse.
     */
    public func importTable(
            input: DynamoDBModel.ImportTableInput) async throws -> DynamoDBModel.ImportTableOutput {
        if let importTableOverride = importTableOverride {
            return try await importTableOverride(input)
        }

        return ImportTableOutput.__default
    }

    /**
     Invokes the ListBackups operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListBackupsInput object being passed to this operation.
     - Returns: The ListBackupsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer.
     */
    public func listBackups(
            input: DynamoDBModel.ListBackupsInput) async throws -> DynamoDBModel.ListBackupsOutput {
        if let listBackupsOverride = listBackupsOverride {
            return try await listBackupsOverride(input)
        }

        return ListBackupsOutput.__default
    }

    /**
     Invokes the ListContributorInsights operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListContributorInsightsInput object being passed to this operation.
     - Returns: The ListContributorInsightsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    public func listContributorInsights(
            input: DynamoDBModel.ListContributorInsightsInput) async throws -> DynamoDBModel.ListContributorInsightsOutput {
        if let listContributorInsightsOverride = listContributorInsightsOverride {
            return try await listContributorInsightsOverride(input)
        }

        return ListContributorInsightsOutput.__default
    }

    /**
     Invokes the ListExports operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListExportsInput object being passed to this operation.
     - Returns: The ListExportsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded.
     */
    public func listExports(
            input: DynamoDBModel.ListExportsInput) async throws -> DynamoDBModel.ListExportsOutput {
        if let listExportsOverride = listExportsOverride {
            return try await listExportsOverride(input)
        }

        return ListExportsOutput.__default
    }

    /**
     Invokes the ListGlobalTables operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListGlobalTablesInput object being passed to this operation.
     - Returns: The ListGlobalTablesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer.
     */
    public func listGlobalTables(
            input: DynamoDBModel.ListGlobalTablesInput) async throws -> DynamoDBModel.ListGlobalTablesOutput {
        if let listGlobalTablesOverride = listGlobalTablesOverride {
            return try await listGlobalTablesOverride(input)
        }

        return ListGlobalTablesOutput.__default
    }

    /**
     Invokes the ListImports operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListImportsInput object being passed to this operation.
     - Returns: The ListImportsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: limitExceeded.
     */
    public func listImports(
            input: DynamoDBModel.ListImportsInput) async throws -> DynamoDBModel.ListImportsOutput {
        if let listImportsOverride = listImportsOverride {
            return try await listImportsOverride(input)
        }

        return ListImportsOutput.__default
    }

    /**
     Invokes the ListTables operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTablesInput object being passed to this operation.
     - Returns: The ListTablesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer.
     */
    public func listTables(
            input: DynamoDBModel.ListTablesInput) async throws -> DynamoDBModel.ListTablesOutput {
        if let listTablesOverride = listTablesOverride {
            return try await listTablesOverride(input)
        }

        return ListTablesOutput.__default
    }

    /**
     Invokes the ListTagsOfResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTagsOfResourceInput object being passed to this operation.
     - Returns: The ListTagsOfResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    public func listTagsOfResource(
            input: DynamoDBModel.ListTagsOfResourceInput) async throws -> DynamoDBModel.ListTagsOfResourceOutput {
        if let listTagsOfResourceOverride = listTagsOfResourceOverride {
            return try await listTagsOfResourceOverride(input)
        }

        return ListTagsOfResourceOutput.__default
    }

    /**
     Invokes the PutItem operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutItemInput object being passed to this operation.
     - Returns: The PutItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conditionalCheckFailed, internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionConflict.
     */
    public func putItem(
            input: DynamoDBModel.PutItemInput) async throws -> DynamoDBModel.PutItemOutput {
        if let putItemOverride = putItemOverride {
            return try await putItemOverride(input)
        }

        return PutItemOutput.__default
    }

    /**
     Invokes the Query operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated QueryInput object being passed to this operation.
     - Returns: The QueryOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    public func query(
            input: DynamoDBModel.QueryInput) async throws -> DynamoDBModel.QueryOutput {
        if let queryOverride = queryOverride {
            return try await queryOverride(input)
        }

        return QueryOutput.__default
    }

    /**
     Invokes the RestoreTableFromBackup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RestoreTableFromBackupInput object being passed to this operation.
     - Returns: The RestoreTableFromBackupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: backupInUse, backupNotFound, internalServer, limitExceeded, tableAlreadyExists, tableInUse.
     */
    public func restoreTableFromBackup(
            input: DynamoDBModel.RestoreTableFromBackupInput) async throws -> DynamoDBModel.RestoreTableFromBackupOutput {
        if let restoreTableFromBackupOverride = restoreTableFromBackupOverride {
            return try await restoreTableFromBackupOverride(input)
        }

        return RestoreTableFromBackupOutput.__default
    }

    /**
     Invokes the RestoreTableToPointInTime operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RestoreTableToPointInTimeInput object being passed to this operation.
     - Returns: The RestoreTableToPointInTimeOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, invalidRestoreTime, limitExceeded, pointInTimeRecoveryUnavailable, tableAlreadyExists, tableInUse, tableNotFound.
     */
    public func restoreTableToPointInTime(
            input: DynamoDBModel.RestoreTableToPointInTimeInput) async throws -> DynamoDBModel.RestoreTableToPointInTimeOutput {
        if let restoreTableToPointInTimeOverride = restoreTableToPointInTimeOverride {
            return try await restoreTableToPointInTimeOverride(input)
        }

        return RestoreTableToPointInTimeOutput.__default
    }

    /**
     Invokes the Scan operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ScanInput object being passed to this operation.
     - Returns: The ScanOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    public func scan(
            input: DynamoDBModel.ScanInput) async throws -> DynamoDBModel.ScanOutput {
        if let scanOverride = scanOverride {
            return try await scanOverride(input)
        }

        return ScanOutput.__default
    }

    /**
     Invokes the TagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    public func tagResource(
            input: DynamoDBModel.TagResourceInput) async throws {
        if let tagResourceOverride = tagResourceOverride {
            return try await tagResourceOverride(input)
        }

    }

    /**
     Invokes the TransactGetItems operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TransactGetItemsInput object being passed to this operation.
     - Returns: The TransactGetItemsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionCanceled.
     */
    public func transactGetItems(
            input: DynamoDBModel.TransactGetItemsInput) async throws -> DynamoDBModel.TransactGetItemsOutput {
        if let transactGetItemsOverride = transactGetItemsOverride {
            return try await transactGetItemsOverride(input)
        }

        return TransactGetItemsOutput.__default
    }

    /**
     Invokes the TransactWriteItems operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TransactWriteItemsInput object being passed to this operation.
     - Returns: The TransactWriteItemsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: idempotentParameterMismatch, internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionCanceled, transactionInProgress.
     */
    public func transactWriteItems(
            input: DynamoDBModel.TransactWriteItemsInput) async throws -> DynamoDBModel.TransactWriteItemsOutput {
        if let transactWriteItemsOverride = transactWriteItemsOverride {
            return try await transactWriteItemsOverride(input)
        }

        return TransactWriteItemsOutput.__default
    }

    /**
     Invokes the UntagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    public func untagResource(
            input: DynamoDBModel.UntagResourceInput) async throws {
        if let untagResourceOverride = untagResourceOverride {
            return try await untagResourceOverride(input)
        }

    }

    /**
     Invokes the UpdateContinuousBackups operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateContinuousBackupsInput object being passed to this operation.
     - Returns: The UpdateContinuousBackupsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: continuousBackupsUnavailable, internalServer, tableNotFound.
     */
    public func updateContinuousBackups(
            input: DynamoDBModel.UpdateContinuousBackupsInput) async throws -> DynamoDBModel.UpdateContinuousBackupsOutput {
        if let updateContinuousBackupsOverride = updateContinuousBackupsOverride {
            return try await updateContinuousBackupsOverride(input)
        }

        return UpdateContinuousBackupsOutput.__default
    }

    /**
     Invokes the UpdateContributorInsights operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateContributorInsightsInput object being passed to this operation.
     - Returns: The UpdateContributorInsightsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    public func updateContributorInsights(
            input: DynamoDBModel.UpdateContributorInsightsInput) async throws -> DynamoDBModel.UpdateContributorInsightsOutput {
        if let updateContributorInsightsOverride = updateContributorInsightsOverride {
            return try await updateContributorInsightsOverride(input)
        }

        return UpdateContributorInsightsOutput.__default
    }

    /**
     Invokes the UpdateGlobalTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateGlobalTableInput object being passed to this operation.
     - Returns: The UpdateGlobalTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalTableNotFound, internalServer, replicaAlreadyExists, replicaNotFound, tableNotFound.
     */
    public func updateGlobalTable(
            input: DynamoDBModel.UpdateGlobalTableInput) async throws -> DynamoDBModel.UpdateGlobalTableOutput {
        if let updateGlobalTableOverride = updateGlobalTableOverride {
            return try await updateGlobalTableOverride(input)
        }

        return UpdateGlobalTableOutput.__default
    }

    /**
     Invokes the UpdateGlobalTableSettings operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateGlobalTableSettingsInput object being passed to this operation.
     - Returns: The UpdateGlobalTableSettingsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalTableNotFound, indexNotFound, internalServer, limitExceeded, replicaNotFound, resourceInUse.
     */
    public func updateGlobalTableSettings(
            input: DynamoDBModel.UpdateGlobalTableSettingsInput) async throws -> DynamoDBModel.UpdateGlobalTableSettingsOutput {
        if let updateGlobalTableSettingsOverride = updateGlobalTableSettingsOverride {
            return try await updateGlobalTableSettingsOverride(input)
        }

        return UpdateGlobalTableSettingsOutput.__default
    }

    /**
     Invokes the UpdateItem operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateItemInput object being passed to this operation.
     - Returns: The UpdateItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conditionalCheckFailed, internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionConflict.
     */
    public func updateItem(
            input: DynamoDBModel.UpdateItemInput) async throws -> DynamoDBModel.UpdateItemOutput {
        if let updateItemOverride = updateItemOverride {
            return try await updateItemOverride(input)
        }

        return UpdateItemOutput.__default
    }

    /**
     Invokes the UpdateTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateTableInput object being passed to this operation.
     - Returns: The UpdateTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    public func updateTable(
            input: DynamoDBModel.UpdateTableInput) async throws -> DynamoDBModel.UpdateTableOutput {
        if let updateTableOverride = updateTableOverride {
            return try await updateTableOverride(input)
        }

        return UpdateTableOutput.__default
    }

    /**
     Invokes the UpdateTableReplicaAutoScaling operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateTableReplicaAutoScalingInput object being passed to this operation.
     - Returns: The UpdateTableReplicaAutoScalingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    public func updateTableReplicaAutoScaling(
            input: DynamoDBModel.UpdateTableReplicaAutoScalingInput) async throws -> DynamoDBModel.UpdateTableReplicaAutoScalingOutput {
        if let updateTableReplicaAutoScalingOverride = updateTableReplicaAutoScalingOverride {
            return try await updateTableReplicaAutoScalingOverride(input)
        }

        return UpdateTableReplicaAutoScalingOutput.__default
    }

    /**
     Invokes the UpdateTimeToLive operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateTimeToLiveInput object being passed to this operation.
     - Returns: The UpdateTimeToLiveOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    public func updateTimeToLive(
            input: DynamoDBModel.UpdateTimeToLiveInput) async throws -> DynamoDBModel.UpdateTimeToLiveOutput {
        if let updateTimeToLiveOverride = updateTimeToLiveOverride {
            return try await updateTimeToLiveOverride(input)
        }

        return UpdateTimeToLiveOutput.__default
    }
#endif
}
