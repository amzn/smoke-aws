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
// ThrowingDynamoDBClient.swift
// DynamoDBClient
//

import Foundation
import DynamoDBModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the DynamoDB service that by default always throws from its methods.
 */
public struct ThrowingDynamoDBClient: DynamoDBClientProtocol {
    let error: DynamoDBError
    let batchExecuteStatementAsyncOverride: BatchExecuteStatementAsyncType?
    let batchExecuteStatementSyncOverride: BatchExecuteStatementSyncType?
    let batchGetItemAsyncOverride: BatchGetItemAsyncType?
    let batchGetItemSyncOverride: BatchGetItemSyncType?
    let batchWriteItemAsyncOverride: BatchWriteItemAsyncType?
    let batchWriteItemSyncOverride: BatchWriteItemSyncType?
    let createBackupAsyncOverride: CreateBackupAsyncType?
    let createBackupSyncOverride: CreateBackupSyncType?
    let createGlobalTableAsyncOverride: CreateGlobalTableAsyncType?
    let createGlobalTableSyncOverride: CreateGlobalTableSyncType?
    let createTableAsyncOverride: CreateTableAsyncType?
    let createTableSyncOverride: CreateTableSyncType?
    let deleteBackupAsyncOverride: DeleteBackupAsyncType?
    let deleteBackupSyncOverride: DeleteBackupSyncType?
    let deleteItemAsyncOverride: DeleteItemAsyncType?
    let deleteItemSyncOverride: DeleteItemSyncType?
    let deleteTableAsyncOverride: DeleteTableAsyncType?
    let deleteTableSyncOverride: DeleteTableSyncType?
    let describeBackupAsyncOverride: DescribeBackupAsyncType?
    let describeBackupSyncOverride: DescribeBackupSyncType?
    let describeContinuousBackupsAsyncOverride: DescribeContinuousBackupsAsyncType?
    let describeContinuousBackupsSyncOverride: DescribeContinuousBackupsSyncType?
    let describeContributorInsightsAsyncOverride: DescribeContributorInsightsAsyncType?
    let describeContributorInsightsSyncOverride: DescribeContributorInsightsSyncType?
    let describeEndpointsAsyncOverride: DescribeEndpointsAsyncType?
    let describeEndpointsSyncOverride: DescribeEndpointsSyncType?
    let describeExportAsyncOverride: DescribeExportAsyncType?
    let describeExportSyncOverride: DescribeExportSyncType?
    let describeGlobalTableAsyncOverride: DescribeGlobalTableAsyncType?
    let describeGlobalTableSyncOverride: DescribeGlobalTableSyncType?
    let describeGlobalTableSettingsAsyncOverride: DescribeGlobalTableSettingsAsyncType?
    let describeGlobalTableSettingsSyncOverride: DescribeGlobalTableSettingsSyncType?
    let describeImportAsyncOverride: DescribeImportAsyncType?
    let describeImportSyncOverride: DescribeImportSyncType?
    let describeKinesisStreamingDestinationAsyncOverride: DescribeKinesisStreamingDestinationAsyncType?
    let describeKinesisStreamingDestinationSyncOverride: DescribeKinesisStreamingDestinationSyncType?
    let describeLimitsAsyncOverride: DescribeLimitsAsyncType?
    let describeLimitsSyncOverride: DescribeLimitsSyncType?
    let describeTableAsyncOverride: DescribeTableAsyncType?
    let describeTableSyncOverride: DescribeTableSyncType?
    let describeTableReplicaAutoScalingAsyncOverride: DescribeTableReplicaAutoScalingAsyncType?
    let describeTableReplicaAutoScalingSyncOverride: DescribeTableReplicaAutoScalingSyncType?
    let describeTimeToLiveAsyncOverride: DescribeTimeToLiveAsyncType?
    let describeTimeToLiveSyncOverride: DescribeTimeToLiveSyncType?
    let disableKinesisStreamingDestinationAsyncOverride: DisableKinesisStreamingDestinationAsyncType?
    let disableKinesisStreamingDestinationSyncOverride: DisableKinesisStreamingDestinationSyncType?
    let enableKinesisStreamingDestinationAsyncOverride: EnableKinesisStreamingDestinationAsyncType?
    let enableKinesisStreamingDestinationSyncOverride: EnableKinesisStreamingDestinationSyncType?
    let executeStatementAsyncOverride: ExecuteStatementAsyncType?
    let executeStatementSyncOverride: ExecuteStatementSyncType?
    let executeTransactionAsyncOverride: ExecuteTransactionAsyncType?
    let executeTransactionSyncOverride: ExecuteTransactionSyncType?
    let exportTableToPointInTimeAsyncOverride: ExportTableToPointInTimeAsyncType?
    let exportTableToPointInTimeSyncOverride: ExportTableToPointInTimeSyncType?
    let getItemAsyncOverride: GetItemAsyncType?
    let getItemSyncOverride: GetItemSyncType?
    let importTableAsyncOverride: ImportTableAsyncType?
    let importTableSyncOverride: ImportTableSyncType?
    let listBackupsAsyncOverride: ListBackupsAsyncType?
    let listBackupsSyncOverride: ListBackupsSyncType?
    let listContributorInsightsAsyncOverride: ListContributorInsightsAsyncType?
    let listContributorInsightsSyncOverride: ListContributorInsightsSyncType?
    let listExportsAsyncOverride: ListExportsAsyncType?
    let listExportsSyncOverride: ListExportsSyncType?
    let listGlobalTablesAsyncOverride: ListGlobalTablesAsyncType?
    let listGlobalTablesSyncOverride: ListGlobalTablesSyncType?
    let listImportsAsyncOverride: ListImportsAsyncType?
    let listImportsSyncOverride: ListImportsSyncType?
    let listTablesAsyncOverride: ListTablesAsyncType?
    let listTablesSyncOverride: ListTablesSyncType?
    let listTagsOfResourceAsyncOverride: ListTagsOfResourceAsyncType?
    let listTagsOfResourceSyncOverride: ListTagsOfResourceSyncType?
    let putItemAsyncOverride: PutItemAsyncType?
    let putItemSyncOverride: PutItemSyncType?
    let queryAsyncOverride: QueryAsyncType?
    let querySyncOverride: QuerySyncType?
    let restoreTableFromBackupAsyncOverride: RestoreTableFromBackupAsyncType?
    let restoreTableFromBackupSyncOverride: RestoreTableFromBackupSyncType?
    let restoreTableToPointInTimeAsyncOverride: RestoreTableToPointInTimeAsyncType?
    let restoreTableToPointInTimeSyncOverride: RestoreTableToPointInTimeSyncType?
    let scanAsyncOverride: ScanAsyncType?
    let scanSyncOverride: ScanSyncType?
    let tagResourceAsyncOverride: TagResourceAsyncType?
    let tagResourceSyncOverride: TagResourceSyncType?
    let transactGetItemsAsyncOverride: TransactGetItemsAsyncType?
    let transactGetItemsSyncOverride: TransactGetItemsSyncType?
    let transactWriteItemsAsyncOverride: TransactWriteItemsAsyncType?
    let transactWriteItemsSyncOverride: TransactWriteItemsSyncType?
    let untagResourceAsyncOverride: UntagResourceAsyncType?
    let untagResourceSyncOverride: UntagResourceSyncType?
    let updateContinuousBackupsAsyncOverride: UpdateContinuousBackupsAsyncType?
    let updateContinuousBackupsSyncOverride: UpdateContinuousBackupsSyncType?
    let updateContributorInsightsAsyncOverride: UpdateContributorInsightsAsyncType?
    let updateContributorInsightsSyncOverride: UpdateContributorInsightsSyncType?
    let updateGlobalTableAsyncOverride: UpdateGlobalTableAsyncType?
    let updateGlobalTableSyncOverride: UpdateGlobalTableSyncType?
    let updateGlobalTableSettingsAsyncOverride: UpdateGlobalTableSettingsAsyncType?
    let updateGlobalTableSettingsSyncOverride: UpdateGlobalTableSettingsSyncType?
    let updateItemAsyncOverride: UpdateItemAsyncType?
    let updateItemSyncOverride: UpdateItemSyncType?
    let updateTableAsyncOverride: UpdateTableAsyncType?
    let updateTableSyncOverride: UpdateTableSyncType?
    let updateTableReplicaAutoScalingAsyncOverride: UpdateTableReplicaAutoScalingAsyncType?
    let updateTableReplicaAutoScalingSyncOverride: UpdateTableReplicaAutoScalingSyncType?
    let updateTimeToLiveAsyncOverride: UpdateTimeToLiveAsyncType?
    let updateTimeToLiveSyncOverride: UpdateTimeToLiveSyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(error: DynamoDBError,
            batchExecuteStatementAsync: BatchExecuteStatementAsyncType? = nil,
            batchExecuteStatementSync: BatchExecuteStatementSyncType? = nil,
            batchGetItemAsync: BatchGetItemAsyncType? = nil,
            batchGetItemSync: BatchGetItemSyncType? = nil,
            batchWriteItemAsync: BatchWriteItemAsyncType? = nil,
            batchWriteItemSync: BatchWriteItemSyncType? = nil,
            createBackupAsync: CreateBackupAsyncType? = nil,
            createBackupSync: CreateBackupSyncType? = nil,
            createGlobalTableAsync: CreateGlobalTableAsyncType? = nil,
            createGlobalTableSync: CreateGlobalTableSyncType? = nil,
            createTableAsync: CreateTableAsyncType? = nil,
            createTableSync: CreateTableSyncType? = nil,
            deleteBackupAsync: DeleteBackupAsyncType? = nil,
            deleteBackupSync: DeleteBackupSyncType? = nil,
            deleteItemAsync: DeleteItemAsyncType? = nil,
            deleteItemSync: DeleteItemSyncType? = nil,
            deleteTableAsync: DeleteTableAsyncType? = nil,
            deleteTableSync: DeleteTableSyncType? = nil,
            describeBackupAsync: DescribeBackupAsyncType? = nil,
            describeBackupSync: DescribeBackupSyncType? = nil,
            describeContinuousBackupsAsync: DescribeContinuousBackupsAsyncType? = nil,
            describeContinuousBackupsSync: DescribeContinuousBackupsSyncType? = nil,
            describeContributorInsightsAsync: DescribeContributorInsightsAsyncType? = nil,
            describeContributorInsightsSync: DescribeContributorInsightsSyncType? = nil,
            describeEndpointsAsync: DescribeEndpointsAsyncType? = nil,
            describeEndpointsSync: DescribeEndpointsSyncType? = nil,
            describeExportAsync: DescribeExportAsyncType? = nil,
            describeExportSync: DescribeExportSyncType? = nil,
            describeGlobalTableAsync: DescribeGlobalTableAsyncType? = nil,
            describeGlobalTableSync: DescribeGlobalTableSyncType? = nil,
            describeGlobalTableSettingsAsync: DescribeGlobalTableSettingsAsyncType? = nil,
            describeGlobalTableSettingsSync: DescribeGlobalTableSettingsSyncType? = nil,
            describeImportAsync: DescribeImportAsyncType? = nil,
            describeImportSync: DescribeImportSyncType? = nil,
            describeKinesisStreamingDestinationAsync: DescribeKinesisStreamingDestinationAsyncType? = nil,
            describeKinesisStreamingDestinationSync: DescribeKinesisStreamingDestinationSyncType? = nil,
            describeLimitsAsync: DescribeLimitsAsyncType? = nil,
            describeLimitsSync: DescribeLimitsSyncType? = nil,
            describeTableAsync: DescribeTableAsyncType? = nil,
            describeTableSync: DescribeTableSyncType? = nil,
            describeTableReplicaAutoScalingAsync: DescribeTableReplicaAutoScalingAsyncType? = nil,
            describeTableReplicaAutoScalingSync: DescribeTableReplicaAutoScalingSyncType? = nil,
            describeTimeToLiveAsync: DescribeTimeToLiveAsyncType? = nil,
            describeTimeToLiveSync: DescribeTimeToLiveSyncType? = nil,
            disableKinesisStreamingDestinationAsync: DisableKinesisStreamingDestinationAsyncType? = nil,
            disableKinesisStreamingDestinationSync: DisableKinesisStreamingDestinationSyncType? = nil,
            enableKinesisStreamingDestinationAsync: EnableKinesisStreamingDestinationAsyncType? = nil,
            enableKinesisStreamingDestinationSync: EnableKinesisStreamingDestinationSyncType? = nil,
            executeStatementAsync: ExecuteStatementAsyncType? = nil,
            executeStatementSync: ExecuteStatementSyncType? = nil,
            executeTransactionAsync: ExecuteTransactionAsyncType? = nil,
            executeTransactionSync: ExecuteTransactionSyncType? = nil,
            exportTableToPointInTimeAsync: ExportTableToPointInTimeAsyncType? = nil,
            exportTableToPointInTimeSync: ExportTableToPointInTimeSyncType? = nil,
            getItemAsync: GetItemAsyncType? = nil,
            getItemSync: GetItemSyncType? = nil,
            importTableAsync: ImportTableAsyncType? = nil,
            importTableSync: ImportTableSyncType? = nil,
            listBackupsAsync: ListBackupsAsyncType? = nil,
            listBackupsSync: ListBackupsSyncType? = nil,
            listContributorInsightsAsync: ListContributorInsightsAsyncType? = nil,
            listContributorInsightsSync: ListContributorInsightsSyncType? = nil,
            listExportsAsync: ListExportsAsyncType? = nil,
            listExportsSync: ListExportsSyncType? = nil,
            listGlobalTablesAsync: ListGlobalTablesAsyncType? = nil,
            listGlobalTablesSync: ListGlobalTablesSyncType? = nil,
            listImportsAsync: ListImportsAsyncType? = nil,
            listImportsSync: ListImportsSyncType? = nil,
            listTablesAsync: ListTablesAsyncType? = nil,
            listTablesSync: ListTablesSyncType? = nil,
            listTagsOfResourceAsync: ListTagsOfResourceAsyncType? = nil,
            listTagsOfResourceSync: ListTagsOfResourceSyncType? = nil,
            putItemAsync: PutItemAsyncType? = nil,
            putItemSync: PutItemSyncType? = nil,
            queryAsync: QueryAsyncType? = nil,
            querySync: QuerySyncType? = nil,
            restoreTableFromBackupAsync: RestoreTableFromBackupAsyncType? = nil,
            restoreTableFromBackupSync: RestoreTableFromBackupSyncType? = nil,
            restoreTableToPointInTimeAsync: RestoreTableToPointInTimeAsyncType? = nil,
            restoreTableToPointInTimeSync: RestoreTableToPointInTimeSyncType? = nil,
            scanAsync: ScanAsyncType? = nil,
            scanSync: ScanSyncType? = nil,
            tagResourceAsync: TagResourceAsyncType? = nil,
            tagResourceSync: TagResourceSyncType? = nil,
            transactGetItemsAsync: TransactGetItemsAsyncType? = nil,
            transactGetItemsSync: TransactGetItemsSyncType? = nil,
            transactWriteItemsAsync: TransactWriteItemsAsyncType? = nil,
            transactWriteItemsSync: TransactWriteItemsSyncType? = nil,
            untagResourceAsync: UntagResourceAsyncType? = nil,
            untagResourceSync: UntagResourceSyncType? = nil,
            updateContinuousBackupsAsync: UpdateContinuousBackupsAsyncType? = nil,
            updateContinuousBackupsSync: UpdateContinuousBackupsSyncType? = nil,
            updateContributorInsightsAsync: UpdateContributorInsightsAsyncType? = nil,
            updateContributorInsightsSync: UpdateContributorInsightsSyncType? = nil,
            updateGlobalTableAsync: UpdateGlobalTableAsyncType? = nil,
            updateGlobalTableSync: UpdateGlobalTableSyncType? = nil,
            updateGlobalTableSettingsAsync: UpdateGlobalTableSettingsAsyncType? = nil,
            updateGlobalTableSettingsSync: UpdateGlobalTableSettingsSyncType? = nil,
            updateItemAsync: UpdateItemAsyncType? = nil,
            updateItemSync: UpdateItemSyncType? = nil,
            updateTableAsync: UpdateTableAsyncType? = nil,
            updateTableSync: UpdateTableSyncType? = nil,
            updateTableReplicaAutoScalingAsync: UpdateTableReplicaAutoScalingAsyncType? = nil,
            updateTableReplicaAutoScalingSync: UpdateTableReplicaAutoScalingSyncType? = nil,
            updateTimeToLiveAsync: UpdateTimeToLiveAsyncType? = nil,
            updateTimeToLiveSync: UpdateTimeToLiveSyncType? = nil) {
        self.error = error
        self.batchExecuteStatementAsyncOverride = batchExecuteStatementAsync
        self.batchExecuteStatementSyncOverride = batchExecuteStatementSync
        self.batchGetItemAsyncOverride = batchGetItemAsync
        self.batchGetItemSyncOverride = batchGetItemSync
        self.batchWriteItemAsyncOverride = batchWriteItemAsync
        self.batchWriteItemSyncOverride = batchWriteItemSync
        self.createBackupAsyncOverride = createBackupAsync
        self.createBackupSyncOverride = createBackupSync
        self.createGlobalTableAsyncOverride = createGlobalTableAsync
        self.createGlobalTableSyncOverride = createGlobalTableSync
        self.createTableAsyncOverride = createTableAsync
        self.createTableSyncOverride = createTableSync
        self.deleteBackupAsyncOverride = deleteBackupAsync
        self.deleteBackupSyncOverride = deleteBackupSync
        self.deleteItemAsyncOverride = deleteItemAsync
        self.deleteItemSyncOverride = deleteItemSync
        self.deleteTableAsyncOverride = deleteTableAsync
        self.deleteTableSyncOverride = deleteTableSync
        self.describeBackupAsyncOverride = describeBackupAsync
        self.describeBackupSyncOverride = describeBackupSync
        self.describeContinuousBackupsAsyncOverride = describeContinuousBackupsAsync
        self.describeContinuousBackupsSyncOverride = describeContinuousBackupsSync
        self.describeContributorInsightsAsyncOverride = describeContributorInsightsAsync
        self.describeContributorInsightsSyncOverride = describeContributorInsightsSync
        self.describeEndpointsAsyncOverride = describeEndpointsAsync
        self.describeEndpointsSyncOverride = describeEndpointsSync
        self.describeExportAsyncOverride = describeExportAsync
        self.describeExportSyncOverride = describeExportSync
        self.describeGlobalTableAsyncOverride = describeGlobalTableAsync
        self.describeGlobalTableSyncOverride = describeGlobalTableSync
        self.describeGlobalTableSettingsAsyncOverride = describeGlobalTableSettingsAsync
        self.describeGlobalTableSettingsSyncOverride = describeGlobalTableSettingsSync
        self.describeImportAsyncOverride = describeImportAsync
        self.describeImportSyncOverride = describeImportSync
        self.describeKinesisStreamingDestinationAsyncOverride = describeKinesisStreamingDestinationAsync
        self.describeKinesisStreamingDestinationSyncOverride = describeKinesisStreamingDestinationSync
        self.describeLimitsAsyncOverride = describeLimitsAsync
        self.describeLimitsSyncOverride = describeLimitsSync
        self.describeTableAsyncOverride = describeTableAsync
        self.describeTableSyncOverride = describeTableSync
        self.describeTableReplicaAutoScalingAsyncOverride = describeTableReplicaAutoScalingAsync
        self.describeTableReplicaAutoScalingSyncOverride = describeTableReplicaAutoScalingSync
        self.describeTimeToLiveAsyncOverride = describeTimeToLiveAsync
        self.describeTimeToLiveSyncOverride = describeTimeToLiveSync
        self.disableKinesisStreamingDestinationAsyncOverride = disableKinesisStreamingDestinationAsync
        self.disableKinesisStreamingDestinationSyncOverride = disableKinesisStreamingDestinationSync
        self.enableKinesisStreamingDestinationAsyncOverride = enableKinesisStreamingDestinationAsync
        self.enableKinesisStreamingDestinationSyncOverride = enableKinesisStreamingDestinationSync
        self.executeStatementAsyncOverride = executeStatementAsync
        self.executeStatementSyncOverride = executeStatementSync
        self.executeTransactionAsyncOverride = executeTransactionAsync
        self.executeTransactionSyncOverride = executeTransactionSync
        self.exportTableToPointInTimeAsyncOverride = exportTableToPointInTimeAsync
        self.exportTableToPointInTimeSyncOverride = exportTableToPointInTimeSync
        self.getItemAsyncOverride = getItemAsync
        self.getItemSyncOverride = getItemSync
        self.importTableAsyncOverride = importTableAsync
        self.importTableSyncOverride = importTableSync
        self.listBackupsAsyncOverride = listBackupsAsync
        self.listBackupsSyncOverride = listBackupsSync
        self.listContributorInsightsAsyncOverride = listContributorInsightsAsync
        self.listContributorInsightsSyncOverride = listContributorInsightsSync
        self.listExportsAsyncOverride = listExportsAsync
        self.listExportsSyncOverride = listExportsSync
        self.listGlobalTablesAsyncOverride = listGlobalTablesAsync
        self.listGlobalTablesSyncOverride = listGlobalTablesSync
        self.listImportsAsyncOverride = listImportsAsync
        self.listImportsSyncOverride = listImportsSync
        self.listTablesAsyncOverride = listTablesAsync
        self.listTablesSyncOverride = listTablesSync
        self.listTagsOfResourceAsyncOverride = listTagsOfResourceAsync
        self.listTagsOfResourceSyncOverride = listTagsOfResourceSync
        self.putItemAsyncOverride = putItemAsync
        self.putItemSyncOverride = putItemSync
        self.queryAsyncOverride = queryAsync
        self.querySyncOverride = querySync
        self.restoreTableFromBackupAsyncOverride = restoreTableFromBackupAsync
        self.restoreTableFromBackupSyncOverride = restoreTableFromBackupSync
        self.restoreTableToPointInTimeAsyncOverride = restoreTableToPointInTimeAsync
        self.restoreTableToPointInTimeSyncOverride = restoreTableToPointInTimeSync
        self.scanAsyncOverride = scanAsync
        self.scanSyncOverride = scanSync
        self.tagResourceAsyncOverride = tagResourceAsync
        self.tagResourceSyncOverride = tagResourceSync
        self.transactGetItemsAsyncOverride = transactGetItemsAsync
        self.transactGetItemsSyncOverride = transactGetItemsSync
        self.transactWriteItemsAsyncOverride = transactWriteItemsAsync
        self.transactWriteItemsSyncOverride = transactWriteItemsSync
        self.untagResourceAsyncOverride = untagResourceAsync
        self.untagResourceSyncOverride = untagResourceSync
        self.updateContinuousBackupsAsyncOverride = updateContinuousBackupsAsync
        self.updateContinuousBackupsSyncOverride = updateContinuousBackupsSync
        self.updateContributorInsightsAsyncOverride = updateContributorInsightsAsync
        self.updateContributorInsightsSyncOverride = updateContributorInsightsSync
        self.updateGlobalTableAsyncOverride = updateGlobalTableAsync
        self.updateGlobalTableSyncOverride = updateGlobalTableSync
        self.updateGlobalTableSettingsAsyncOverride = updateGlobalTableSettingsAsync
        self.updateGlobalTableSettingsSyncOverride = updateGlobalTableSettingsSync
        self.updateItemAsyncOverride = updateItemAsync
        self.updateItemSyncOverride = updateItemSync
        self.updateTableAsyncOverride = updateTableAsync
        self.updateTableSyncOverride = updateTableSync
        self.updateTableReplicaAutoScalingAsyncOverride = updateTableReplicaAutoScalingAsync
        self.updateTableReplicaAutoScalingSyncOverride = updateTableReplicaAutoScalingSync
        self.updateTimeToLiveAsyncOverride = updateTimeToLiveAsync
        self.updateTimeToLiveSyncOverride = updateTimeToLiveSync
    }

    /**
     Invokes the BatchExecuteStatement operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchExecuteStatementInput object being passed to this operation.
         - completion: The BatchExecuteStatementOutput object or an error will be passed to this 
           callback when the operation is complete. The BatchExecuteStatementOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, requestLimitExceeded.
     */
    public func batchExecuteStatementAsync(
            input: DynamoDBModel.BatchExecuteStatementInput, 
            completion: @escaping (Result<DynamoDBModel.BatchExecuteStatementOutput, DynamoDBError>) -> ()) throws {
        if let batchExecuteStatementAsyncOverride = batchExecuteStatementAsyncOverride {
            return try batchExecuteStatementAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the BatchExecuteStatement operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchExecuteStatementInput object being passed to this operation.
     - Returns: The BatchExecuteStatementOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, requestLimitExceeded.
     */
    public func batchExecuteStatementSync(
            input: DynamoDBModel.BatchExecuteStatementInput) throws -> DynamoDBModel.BatchExecuteStatementOutput {
        if let batchExecuteStatementSyncOverride = batchExecuteStatementSyncOverride {
            return try batchExecuteStatementSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the BatchGetItem operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchGetItemInput object being passed to this operation.
         - completion: The BatchGetItemOutput object or an error will be passed to this 
           callback when the operation is complete. The BatchGetItemOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    public func batchGetItemAsync(
            input: DynamoDBModel.BatchGetItemInput, 
            completion: @escaping (Result<DynamoDBModel.BatchGetItemOutput, DynamoDBError>) -> ()) throws {
        if let batchGetItemAsyncOverride = batchGetItemAsyncOverride {
            return try batchGetItemAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the BatchGetItem operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchGetItemInput object being passed to this operation.
     - Returns: The BatchGetItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    public func batchGetItemSync(
            input: DynamoDBModel.BatchGetItemInput) throws -> DynamoDBModel.BatchGetItemOutput {
        if let batchGetItemSyncOverride = batchGetItemSyncOverride {
            return try batchGetItemSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the BatchWriteItem operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchWriteItemInput object being passed to this operation.
         - completion: The BatchWriteItemOutput object or an error will be passed to this 
           callback when the operation is complete. The BatchWriteItemOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    public func batchWriteItemAsync(
            input: DynamoDBModel.BatchWriteItemInput, 
            completion: @escaping (Result<DynamoDBModel.BatchWriteItemOutput, DynamoDBError>) -> ()) throws {
        if let batchWriteItemAsyncOverride = batchWriteItemAsyncOverride {
            return try batchWriteItemAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the BatchWriteItem operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchWriteItemInput object being passed to this operation.
     - Returns: The BatchWriteItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    public func batchWriteItemSync(
            input: DynamoDBModel.BatchWriteItemInput) throws -> DynamoDBModel.BatchWriteItemOutput {
        if let batchWriteItemSyncOverride = batchWriteItemSyncOverride {
            return try batchWriteItemSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateBackup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateBackupInput object being passed to this operation.
         - completion: The CreateBackupOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateBackupOutput
           object will be validated before being returned to caller.
           The possible errors are: backupInUse, continuousBackupsUnavailable, internalServer, limitExceeded, tableInUse, tableNotFound.
     */
    public func createBackupAsync(
            input: DynamoDBModel.CreateBackupInput, 
            completion: @escaping (Result<DynamoDBModel.CreateBackupOutput, DynamoDBError>) -> ()) throws {
        if let createBackupAsyncOverride = createBackupAsyncOverride {
            return try createBackupAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateBackup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateBackupInput object being passed to this operation.
     - Returns: The CreateBackupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: backupInUse, continuousBackupsUnavailable, internalServer, limitExceeded, tableInUse, tableNotFound.
     */
    public func createBackupSync(
            input: DynamoDBModel.CreateBackupInput) throws -> DynamoDBModel.CreateBackupOutput {
        if let createBackupSyncOverride = createBackupSyncOverride {
            return try createBackupSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateGlobalTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateGlobalTableInput object being passed to this operation.
         - completion: The CreateGlobalTableOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateGlobalTableOutput
           object will be validated before being returned to caller.
           The possible errors are: globalTableAlreadyExists, internalServer, limitExceeded, tableNotFound.
     */
    public func createGlobalTableAsync(
            input: DynamoDBModel.CreateGlobalTableInput, 
            completion: @escaping (Result<DynamoDBModel.CreateGlobalTableOutput, DynamoDBError>) -> ()) throws {
        if let createGlobalTableAsyncOverride = createGlobalTableAsyncOverride {
            return try createGlobalTableAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateGlobalTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateGlobalTableInput object being passed to this operation.
     - Returns: The CreateGlobalTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalTableAlreadyExists, internalServer, limitExceeded, tableNotFound.
     */
    public func createGlobalTableSync(
            input: DynamoDBModel.CreateGlobalTableInput) throws -> DynamoDBModel.CreateGlobalTableOutput {
        if let createGlobalTableSyncOverride = createGlobalTableSyncOverride {
            return try createGlobalTableSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTableInput object being passed to this operation.
         - completion: The CreateTableOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateTableOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, limitExceeded, resourceInUse.
     */
    public func createTableAsync(
            input: DynamoDBModel.CreateTableInput, 
            completion: @escaping (Result<DynamoDBModel.CreateTableOutput, DynamoDBError>) -> ()) throws {
        if let createTableAsyncOverride = createTableAsyncOverride {
            return try createTableAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTableInput object being passed to this operation.
     - Returns: The CreateTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse.
     */
    public func createTableSync(
            input: DynamoDBModel.CreateTableInput) throws -> DynamoDBModel.CreateTableOutput {
        if let createTableSyncOverride = createTableSyncOverride {
            return try createTableSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteBackup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBackupInput object being passed to this operation.
         - completion: The DeleteBackupOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteBackupOutput
           object will be validated before being returned to caller.
           The possible errors are: backupInUse, backupNotFound, internalServer, limitExceeded.
     */
    public func deleteBackupAsync(
            input: DynamoDBModel.DeleteBackupInput, 
            completion: @escaping (Result<DynamoDBModel.DeleteBackupOutput, DynamoDBError>) -> ()) throws {
        if let deleteBackupAsyncOverride = deleteBackupAsyncOverride {
            return try deleteBackupAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteBackup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBackupInput object being passed to this operation.
     - Returns: The DeleteBackupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: backupInUse, backupNotFound, internalServer, limitExceeded.
     */
    public func deleteBackupSync(
            input: DynamoDBModel.DeleteBackupInput) throws -> DynamoDBModel.DeleteBackupOutput {
        if let deleteBackupSyncOverride = deleteBackupSyncOverride {
            return try deleteBackupSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteItem operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteItemInput object being passed to this operation.
         - completion: The DeleteItemOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteItemOutput
           object will be validated before being returned to caller.
           The possible errors are: conditionalCheckFailed, internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionConflict.
     */
    public func deleteItemAsync(
            input: DynamoDBModel.DeleteItemInput, 
            completion: @escaping (Result<DynamoDBModel.DeleteItemOutput, DynamoDBError>) -> ()) throws {
        if let deleteItemAsyncOverride = deleteItemAsyncOverride {
            return try deleteItemAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteItem operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteItemInput object being passed to this operation.
     - Returns: The DeleteItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conditionalCheckFailed, internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionConflict.
     */
    public func deleteItemSync(
            input: DynamoDBModel.DeleteItemInput) throws -> DynamoDBModel.DeleteItemOutput {
        if let deleteItemSyncOverride = deleteItemSyncOverride {
            return try deleteItemSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTableInput object being passed to this operation.
         - completion: The DeleteTableOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteTableOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    public func deleteTableAsync(
            input: DynamoDBModel.DeleteTableInput, 
            completion: @escaping (Result<DynamoDBModel.DeleteTableOutput, DynamoDBError>) -> ()) throws {
        if let deleteTableAsyncOverride = deleteTableAsyncOverride {
            return try deleteTableAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTableInput object being passed to this operation.
     - Returns: The DeleteTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    public func deleteTableSync(
            input: DynamoDBModel.DeleteTableInput) throws -> DynamoDBModel.DeleteTableOutput {
        if let deleteTableSyncOverride = deleteTableSyncOverride {
            return try deleteTableSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeBackup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeBackupInput object being passed to this operation.
         - completion: The DescribeBackupOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeBackupOutput
           object will be validated before being returned to caller.
           The possible errors are: backupNotFound, internalServer.
     */
    public func describeBackupAsync(
            input: DynamoDBModel.DescribeBackupInput, 
            completion: @escaping (Result<DynamoDBModel.DescribeBackupOutput, DynamoDBError>) -> ()) throws {
        if let describeBackupAsyncOverride = describeBackupAsyncOverride {
            return try describeBackupAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeBackup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeBackupInput object being passed to this operation.
     - Returns: The DescribeBackupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: backupNotFound, internalServer.
     */
    public func describeBackupSync(
            input: DynamoDBModel.DescribeBackupInput) throws -> DynamoDBModel.DescribeBackupOutput {
        if let describeBackupSyncOverride = describeBackupSyncOverride {
            return try describeBackupSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeContinuousBackups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeContinuousBackupsInput object being passed to this operation.
         - completion: The DescribeContinuousBackupsOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeContinuousBackupsOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, tableNotFound.
     */
    public func describeContinuousBackupsAsync(
            input: DynamoDBModel.DescribeContinuousBackupsInput, 
            completion: @escaping (Result<DynamoDBModel.DescribeContinuousBackupsOutput, DynamoDBError>) -> ()) throws {
        if let describeContinuousBackupsAsyncOverride = describeContinuousBackupsAsyncOverride {
            return try describeContinuousBackupsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeContinuousBackups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeContinuousBackupsInput object being passed to this operation.
     - Returns: The DescribeContinuousBackupsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, tableNotFound.
     */
    public func describeContinuousBackupsSync(
            input: DynamoDBModel.DescribeContinuousBackupsInput) throws -> DynamoDBModel.DescribeContinuousBackupsOutput {
        if let describeContinuousBackupsSyncOverride = describeContinuousBackupsSyncOverride {
            return try describeContinuousBackupsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeContributorInsights operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeContributorInsightsInput object being passed to this operation.
         - completion: The DescribeContributorInsightsOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeContributorInsightsOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound.
     */
    public func describeContributorInsightsAsync(
            input: DynamoDBModel.DescribeContributorInsightsInput, 
            completion: @escaping (Result<DynamoDBModel.DescribeContributorInsightsOutput, DynamoDBError>) -> ()) throws {
        if let describeContributorInsightsAsyncOverride = describeContributorInsightsAsyncOverride {
            return try describeContributorInsightsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeContributorInsights operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeContributorInsightsInput object being passed to this operation.
     - Returns: The DescribeContributorInsightsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    public func describeContributorInsightsSync(
            input: DynamoDBModel.DescribeContributorInsightsInput) throws -> DynamoDBModel.DescribeContributorInsightsOutput {
        if let describeContributorInsightsSyncOverride = describeContributorInsightsSyncOverride {
            return try describeContributorInsightsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeEndpoints operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEndpointsRequest object being passed to this operation.
         - completion: The DescribeEndpointsResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeEndpointsResponse
           object will be validated before being returned to caller.
     */
    public func describeEndpointsAsync(
            input: DynamoDBModel.DescribeEndpointsRequest, 
            completion: @escaping (Result<DynamoDBModel.DescribeEndpointsResponse, DynamoDBError>) -> ()) throws {
        if let describeEndpointsAsyncOverride = describeEndpointsAsyncOverride {
            return try describeEndpointsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeEndpoints operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEndpointsRequest object being passed to this operation.
     - Returns: The DescribeEndpointsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeEndpointsSync(
            input: DynamoDBModel.DescribeEndpointsRequest) throws -> DynamoDBModel.DescribeEndpointsResponse {
        if let describeEndpointsSyncOverride = describeEndpointsSyncOverride {
            return try describeEndpointsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeExport operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeExportInput object being passed to this operation.
         - completion: The DescribeExportOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeExportOutput
           object will be validated before being returned to caller.
           The possible errors are: exportNotFound, internalServer, limitExceeded.
     */
    public func describeExportAsync(
            input: DynamoDBModel.DescribeExportInput, 
            completion: @escaping (Result<DynamoDBModel.DescribeExportOutput, DynamoDBError>) -> ()) throws {
        if let describeExportAsyncOverride = describeExportAsyncOverride {
            return try describeExportAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeExport operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeExportInput object being passed to this operation.
     - Returns: The DescribeExportOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: exportNotFound, internalServer, limitExceeded.
     */
    public func describeExportSync(
            input: DynamoDBModel.DescribeExportInput) throws -> DynamoDBModel.DescribeExportOutput {
        if let describeExportSyncOverride = describeExportSyncOverride {
            return try describeExportSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeGlobalTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeGlobalTableInput object being passed to this operation.
         - completion: The DescribeGlobalTableOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeGlobalTableOutput
           object will be validated before being returned to caller.
           The possible errors are: globalTableNotFound, internalServer.
     */
    public func describeGlobalTableAsync(
            input: DynamoDBModel.DescribeGlobalTableInput, 
            completion: @escaping (Result<DynamoDBModel.DescribeGlobalTableOutput, DynamoDBError>) -> ()) throws {
        if let describeGlobalTableAsyncOverride = describeGlobalTableAsyncOverride {
            return try describeGlobalTableAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeGlobalTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeGlobalTableInput object being passed to this operation.
     - Returns: The DescribeGlobalTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalTableNotFound, internalServer.
     */
    public func describeGlobalTableSync(
            input: DynamoDBModel.DescribeGlobalTableInput) throws -> DynamoDBModel.DescribeGlobalTableOutput {
        if let describeGlobalTableSyncOverride = describeGlobalTableSyncOverride {
            return try describeGlobalTableSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeGlobalTableSettings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeGlobalTableSettingsInput object being passed to this operation.
         - completion: The DescribeGlobalTableSettingsOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeGlobalTableSettingsOutput
           object will be validated before being returned to caller.
           The possible errors are: globalTableNotFound, internalServer.
     */
    public func describeGlobalTableSettingsAsync(
            input: DynamoDBModel.DescribeGlobalTableSettingsInput, 
            completion: @escaping (Result<DynamoDBModel.DescribeGlobalTableSettingsOutput, DynamoDBError>) -> ()) throws {
        if let describeGlobalTableSettingsAsyncOverride = describeGlobalTableSettingsAsyncOverride {
            return try describeGlobalTableSettingsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeGlobalTableSettings operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeGlobalTableSettingsInput object being passed to this operation.
     - Returns: The DescribeGlobalTableSettingsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalTableNotFound, internalServer.
     */
    public func describeGlobalTableSettingsSync(
            input: DynamoDBModel.DescribeGlobalTableSettingsInput) throws -> DynamoDBModel.DescribeGlobalTableSettingsOutput {
        if let describeGlobalTableSettingsSyncOverride = describeGlobalTableSettingsSyncOverride {
            return try describeGlobalTableSettingsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeImport operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeImportInput object being passed to this operation.
         - completion: The DescribeImportOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeImportOutput
           object will be validated before being returned to caller.
           The possible errors are: importNotFound.
     */
    public func describeImportAsync(
            input: DynamoDBModel.DescribeImportInput, 
            completion: @escaping (Result<DynamoDBModel.DescribeImportOutput, DynamoDBError>) -> ()) throws {
        if let describeImportAsyncOverride = describeImportAsyncOverride {
            return try describeImportAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeImport operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeImportInput object being passed to this operation.
     - Returns: The DescribeImportOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: importNotFound.
     */
    public func describeImportSync(
            input: DynamoDBModel.DescribeImportInput) throws -> DynamoDBModel.DescribeImportOutput {
        if let describeImportSyncOverride = describeImportSyncOverride {
            return try describeImportSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeKinesisStreamingDestination operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeKinesisStreamingDestinationInput object being passed to this operation.
         - completion: The DescribeKinesisStreamingDestinationOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeKinesisStreamingDestinationOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound.
     */
    public func describeKinesisStreamingDestinationAsync(
            input: DynamoDBModel.DescribeKinesisStreamingDestinationInput, 
            completion: @escaping (Result<DynamoDBModel.DescribeKinesisStreamingDestinationOutput, DynamoDBError>) -> ()) throws {
        if let describeKinesisStreamingDestinationAsyncOverride = describeKinesisStreamingDestinationAsyncOverride {
            return try describeKinesisStreamingDestinationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeKinesisStreamingDestination operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeKinesisStreamingDestinationInput object being passed to this operation.
     - Returns: The DescribeKinesisStreamingDestinationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    public func describeKinesisStreamingDestinationSync(
            input: DynamoDBModel.DescribeKinesisStreamingDestinationInput) throws -> DynamoDBModel.DescribeKinesisStreamingDestinationOutput {
        if let describeKinesisStreamingDestinationSyncOverride = describeKinesisStreamingDestinationSyncOverride {
            return try describeKinesisStreamingDestinationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeLimits operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeLimitsInput object being passed to this operation.
         - completion: The DescribeLimitsOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeLimitsOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer.
     */
    public func describeLimitsAsync(
            input: DynamoDBModel.DescribeLimitsInput, 
            completion: @escaping (Result<DynamoDBModel.DescribeLimitsOutput, DynamoDBError>) -> ()) throws {
        if let describeLimitsAsyncOverride = describeLimitsAsyncOverride {
            return try describeLimitsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeLimits operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeLimitsInput object being passed to this operation.
     - Returns: The DescribeLimitsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer.
     */
    public func describeLimitsSync(
            input: DynamoDBModel.DescribeLimitsInput) throws -> DynamoDBModel.DescribeLimitsOutput {
        if let describeLimitsSyncOverride = describeLimitsSyncOverride {
            return try describeLimitsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTableInput object being passed to this operation.
         - completion: The DescribeTableOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeTableOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound.
     */
    public func describeTableAsync(
            input: DynamoDBModel.DescribeTableInput, 
            completion: @escaping (Result<DynamoDBModel.DescribeTableOutput, DynamoDBError>) -> ()) throws {
        if let describeTableAsyncOverride = describeTableAsyncOverride {
            return try describeTableAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTableInput object being passed to this operation.
     - Returns: The DescribeTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    public func describeTableSync(
            input: DynamoDBModel.DescribeTableInput) throws -> DynamoDBModel.DescribeTableOutput {
        if let describeTableSyncOverride = describeTableSyncOverride {
            return try describeTableSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeTableReplicaAutoScaling operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTableReplicaAutoScalingInput object being passed to this operation.
         - completion: The DescribeTableReplicaAutoScalingOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeTableReplicaAutoScalingOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound.
     */
    public func describeTableReplicaAutoScalingAsync(
            input: DynamoDBModel.DescribeTableReplicaAutoScalingInput, 
            completion: @escaping (Result<DynamoDBModel.DescribeTableReplicaAutoScalingOutput, DynamoDBError>) -> ()) throws {
        if let describeTableReplicaAutoScalingAsyncOverride = describeTableReplicaAutoScalingAsyncOverride {
            return try describeTableReplicaAutoScalingAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeTableReplicaAutoScaling operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTableReplicaAutoScalingInput object being passed to this operation.
     - Returns: The DescribeTableReplicaAutoScalingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    public func describeTableReplicaAutoScalingSync(
            input: DynamoDBModel.DescribeTableReplicaAutoScalingInput) throws -> DynamoDBModel.DescribeTableReplicaAutoScalingOutput {
        if let describeTableReplicaAutoScalingSyncOverride = describeTableReplicaAutoScalingSyncOverride {
            return try describeTableReplicaAutoScalingSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeTimeToLive operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTimeToLiveInput object being passed to this operation.
         - completion: The DescribeTimeToLiveOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeTimeToLiveOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound.
     */
    public func describeTimeToLiveAsync(
            input: DynamoDBModel.DescribeTimeToLiveInput, 
            completion: @escaping (Result<DynamoDBModel.DescribeTimeToLiveOutput, DynamoDBError>) -> ()) throws {
        if let describeTimeToLiveAsyncOverride = describeTimeToLiveAsyncOverride {
            return try describeTimeToLiveAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DescribeTimeToLive operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTimeToLiveInput object being passed to this operation.
     - Returns: The DescribeTimeToLiveOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    public func describeTimeToLiveSync(
            input: DynamoDBModel.DescribeTimeToLiveInput) throws -> DynamoDBModel.DescribeTimeToLiveOutput {
        if let describeTimeToLiveSyncOverride = describeTimeToLiveSyncOverride {
            return try describeTimeToLiveSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DisableKinesisStreamingDestination operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated KinesisStreamingDestinationInput object being passed to this operation.
         - completion: The KinesisStreamingDestinationOutput object or an error will be passed to this 
           callback when the operation is complete. The KinesisStreamingDestinationOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    public func disableKinesisStreamingDestinationAsync(
            input: DynamoDBModel.KinesisStreamingDestinationInput, 
            completion: @escaping (Result<DynamoDBModel.KinesisStreamingDestinationOutput, DynamoDBError>) -> ()) throws {
        if let disableKinesisStreamingDestinationAsyncOverride = disableKinesisStreamingDestinationAsyncOverride {
            return try disableKinesisStreamingDestinationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DisableKinesisStreamingDestination operation waiting for the response before returning.

     - Parameters:
         - input: The validated KinesisStreamingDestinationInput object being passed to this operation.
     - Returns: The KinesisStreamingDestinationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    public func disableKinesisStreamingDestinationSync(
            input: DynamoDBModel.KinesisStreamingDestinationInput) throws -> DynamoDBModel.KinesisStreamingDestinationOutput {
        if let disableKinesisStreamingDestinationSyncOverride = disableKinesisStreamingDestinationSyncOverride {
            return try disableKinesisStreamingDestinationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the EnableKinesisStreamingDestination operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated KinesisStreamingDestinationInput object being passed to this operation.
         - completion: The KinesisStreamingDestinationOutput object or an error will be passed to this 
           callback when the operation is complete. The KinesisStreamingDestinationOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    public func enableKinesisStreamingDestinationAsync(
            input: DynamoDBModel.KinesisStreamingDestinationInput, 
            completion: @escaping (Result<DynamoDBModel.KinesisStreamingDestinationOutput, DynamoDBError>) -> ()) throws {
        if let enableKinesisStreamingDestinationAsyncOverride = enableKinesisStreamingDestinationAsyncOverride {
            return try enableKinesisStreamingDestinationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the EnableKinesisStreamingDestination operation waiting for the response before returning.

     - Parameters:
         - input: The validated KinesisStreamingDestinationInput object being passed to this operation.
     - Returns: The KinesisStreamingDestinationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    public func enableKinesisStreamingDestinationSync(
            input: DynamoDBModel.KinesisStreamingDestinationInput) throws -> DynamoDBModel.KinesisStreamingDestinationOutput {
        if let enableKinesisStreamingDestinationSyncOverride = enableKinesisStreamingDestinationSyncOverride {
            return try enableKinesisStreamingDestinationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ExecuteStatement operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ExecuteStatementInput object being passed to this operation.
         - completion: The ExecuteStatementOutput object or an error will be passed to this 
           callback when the operation is complete. The ExecuteStatementOutput
           object will be validated before being returned to caller.
           The possible errors are: conditionalCheckFailed, duplicateItem, internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionConflict.
     */
    public func executeStatementAsync(
            input: DynamoDBModel.ExecuteStatementInput, 
            completion: @escaping (Result<DynamoDBModel.ExecuteStatementOutput, DynamoDBError>) -> ()) throws {
        if let executeStatementAsyncOverride = executeStatementAsyncOverride {
            return try executeStatementAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ExecuteStatement operation waiting for the response before returning.

     - Parameters:
         - input: The validated ExecuteStatementInput object being passed to this operation.
     - Returns: The ExecuteStatementOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conditionalCheckFailed, duplicateItem, internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionConflict.
     */
    public func executeStatementSync(
            input: DynamoDBModel.ExecuteStatementInput) throws -> DynamoDBModel.ExecuteStatementOutput {
        if let executeStatementSyncOverride = executeStatementSyncOverride {
            return try executeStatementSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ExecuteTransaction operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ExecuteTransactionInput object being passed to this operation.
         - completion: The ExecuteTransactionOutput object or an error will be passed to this 
           callback when the operation is complete. The ExecuteTransactionOutput
           object will be validated before being returned to caller.
           The possible errors are: idempotentParameterMismatch, internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionCanceled, transactionInProgress.
     */
    public func executeTransactionAsync(
            input: DynamoDBModel.ExecuteTransactionInput, 
            completion: @escaping (Result<DynamoDBModel.ExecuteTransactionOutput, DynamoDBError>) -> ()) throws {
        if let executeTransactionAsyncOverride = executeTransactionAsyncOverride {
            return try executeTransactionAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ExecuteTransaction operation waiting for the response before returning.

     - Parameters:
         - input: The validated ExecuteTransactionInput object being passed to this operation.
     - Returns: The ExecuteTransactionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: idempotentParameterMismatch, internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionCanceled, transactionInProgress.
     */
    public func executeTransactionSync(
            input: DynamoDBModel.ExecuteTransactionInput) throws -> DynamoDBModel.ExecuteTransactionOutput {
        if let executeTransactionSyncOverride = executeTransactionSyncOverride {
            return try executeTransactionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ExportTableToPointInTime operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ExportTableToPointInTimeInput object being passed to this operation.
         - completion: The ExportTableToPointInTimeOutput object or an error will be passed to this 
           callback when the operation is complete. The ExportTableToPointInTimeOutput
           object will be validated before being returned to caller.
           The possible errors are: exportConflict, internalServer, invalidExportTime, limitExceeded, pointInTimeRecoveryUnavailable, tableNotFound.
     */
    public func exportTableToPointInTimeAsync(
            input: DynamoDBModel.ExportTableToPointInTimeInput, 
            completion: @escaping (Result<DynamoDBModel.ExportTableToPointInTimeOutput, DynamoDBError>) -> ()) throws {
        if let exportTableToPointInTimeAsyncOverride = exportTableToPointInTimeAsyncOverride {
            return try exportTableToPointInTimeAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ExportTableToPointInTime operation waiting for the response before returning.

     - Parameters:
         - input: The validated ExportTableToPointInTimeInput object being passed to this operation.
     - Returns: The ExportTableToPointInTimeOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: exportConflict, internalServer, invalidExportTime, limitExceeded, pointInTimeRecoveryUnavailable, tableNotFound.
     */
    public func exportTableToPointInTimeSync(
            input: DynamoDBModel.ExportTableToPointInTimeInput) throws -> DynamoDBModel.ExportTableToPointInTimeOutput {
        if let exportTableToPointInTimeSyncOverride = exportTableToPointInTimeSyncOverride {
            return try exportTableToPointInTimeSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetItem operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetItemInput object being passed to this operation.
         - completion: The GetItemOutput object or an error will be passed to this 
           callback when the operation is complete. The GetItemOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    public func getItemAsync(
            input: DynamoDBModel.GetItemInput, 
            completion: @escaping (Result<DynamoDBModel.GetItemOutput, DynamoDBError>) -> ()) throws {
        if let getItemAsyncOverride = getItemAsyncOverride {
            return try getItemAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetItem operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetItemInput object being passed to this operation.
     - Returns: The GetItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    public func getItemSync(
            input: DynamoDBModel.GetItemInput) throws -> DynamoDBModel.GetItemOutput {
        if let getItemSyncOverride = getItemSyncOverride {
            return try getItemSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ImportTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ImportTableInput object being passed to this operation.
         - completion: The ImportTableOutput object or an error will be passed to this 
           callback when the operation is complete. The ImportTableOutput
           object will be validated before being returned to caller.
           The possible errors are: importConflict, limitExceeded, resourceInUse.
     */
    public func importTableAsync(
            input: DynamoDBModel.ImportTableInput, 
            completion: @escaping (Result<DynamoDBModel.ImportTableOutput, DynamoDBError>) -> ()) throws {
        if let importTableAsyncOverride = importTableAsyncOverride {
            return try importTableAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ImportTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated ImportTableInput object being passed to this operation.
     - Returns: The ImportTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: importConflict, limitExceeded, resourceInUse.
     */
    public func importTableSync(
            input: DynamoDBModel.ImportTableInput) throws -> DynamoDBModel.ImportTableOutput {
        if let importTableSyncOverride = importTableSyncOverride {
            return try importTableSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListBackups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListBackupsInput object being passed to this operation.
         - completion: The ListBackupsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListBackupsOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer.
     */
    public func listBackupsAsync(
            input: DynamoDBModel.ListBackupsInput, 
            completion: @escaping (Result<DynamoDBModel.ListBackupsOutput, DynamoDBError>) -> ()) throws {
        if let listBackupsAsyncOverride = listBackupsAsyncOverride {
            return try listBackupsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListBackups operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListBackupsInput object being passed to this operation.
     - Returns: The ListBackupsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer.
     */
    public func listBackupsSync(
            input: DynamoDBModel.ListBackupsInput) throws -> DynamoDBModel.ListBackupsOutput {
        if let listBackupsSyncOverride = listBackupsSyncOverride {
            return try listBackupsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListContributorInsights operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListContributorInsightsInput object being passed to this operation.
         - completion: The ListContributorInsightsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListContributorInsightsOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound.
     */
    public func listContributorInsightsAsync(
            input: DynamoDBModel.ListContributorInsightsInput, 
            completion: @escaping (Result<DynamoDBModel.ListContributorInsightsOutput, DynamoDBError>) -> ()) throws {
        if let listContributorInsightsAsyncOverride = listContributorInsightsAsyncOverride {
            return try listContributorInsightsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListContributorInsights operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListContributorInsightsInput object being passed to this operation.
     - Returns: The ListContributorInsightsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    public func listContributorInsightsSync(
            input: DynamoDBModel.ListContributorInsightsInput) throws -> DynamoDBModel.ListContributorInsightsOutput {
        if let listContributorInsightsSyncOverride = listContributorInsightsSyncOverride {
            return try listContributorInsightsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListExports operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListExportsInput object being passed to this operation.
         - completion: The ListExportsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListExportsOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, limitExceeded.
     */
    public func listExportsAsync(
            input: DynamoDBModel.ListExportsInput, 
            completion: @escaping (Result<DynamoDBModel.ListExportsOutput, DynamoDBError>) -> ()) throws {
        if let listExportsAsyncOverride = listExportsAsyncOverride {
            return try listExportsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListExports operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListExportsInput object being passed to this operation.
     - Returns: The ListExportsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded.
     */
    public func listExportsSync(
            input: DynamoDBModel.ListExportsInput) throws -> DynamoDBModel.ListExportsOutput {
        if let listExportsSyncOverride = listExportsSyncOverride {
            return try listExportsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListGlobalTables operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListGlobalTablesInput object being passed to this operation.
         - completion: The ListGlobalTablesOutput object or an error will be passed to this 
           callback when the operation is complete. The ListGlobalTablesOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer.
     */
    public func listGlobalTablesAsync(
            input: DynamoDBModel.ListGlobalTablesInput, 
            completion: @escaping (Result<DynamoDBModel.ListGlobalTablesOutput, DynamoDBError>) -> ()) throws {
        if let listGlobalTablesAsyncOverride = listGlobalTablesAsyncOverride {
            return try listGlobalTablesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListGlobalTables operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListGlobalTablesInput object being passed to this operation.
     - Returns: The ListGlobalTablesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer.
     */
    public func listGlobalTablesSync(
            input: DynamoDBModel.ListGlobalTablesInput) throws -> DynamoDBModel.ListGlobalTablesOutput {
        if let listGlobalTablesSyncOverride = listGlobalTablesSyncOverride {
            return try listGlobalTablesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListImports operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListImportsInput object being passed to this operation.
         - completion: The ListImportsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListImportsOutput
           object will be validated before being returned to caller.
           The possible errors are: limitExceeded.
     */
    public func listImportsAsync(
            input: DynamoDBModel.ListImportsInput, 
            completion: @escaping (Result<DynamoDBModel.ListImportsOutput, DynamoDBError>) -> ()) throws {
        if let listImportsAsyncOverride = listImportsAsyncOverride {
            return try listImportsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListImports operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListImportsInput object being passed to this operation.
     - Returns: The ListImportsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: limitExceeded.
     */
    public func listImportsSync(
            input: DynamoDBModel.ListImportsInput) throws -> DynamoDBModel.ListImportsOutput {
        if let listImportsSyncOverride = listImportsSyncOverride {
            return try listImportsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListTables operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTablesInput object being passed to this operation.
         - completion: The ListTablesOutput object or an error will be passed to this 
           callback when the operation is complete. The ListTablesOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer.
     */
    public func listTablesAsync(
            input: DynamoDBModel.ListTablesInput, 
            completion: @escaping (Result<DynamoDBModel.ListTablesOutput, DynamoDBError>) -> ()) throws {
        if let listTablesAsyncOverride = listTablesAsyncOverride {
            return try listTablesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListTables operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTablesInput object being passed to this operation.
     - Returns: The ListTablesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer.
     */
    public func listTablesSync(
            input: DynamoDBModel.ListTablesInput) throws -> DynamoDBModel.ListTablesOutput {
        if let listTablesSyncOverride = listTablesSyncOverride {
            return try listTablesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListTagsOfResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsOfResourceInput object being passed to this operation.
         - completion: The ListTagsOfResourceOutput object or an error will be passed to this 
           callback when the operation is complete. The ListTagsOfResourceOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound.
     */
    public func listTagsOfResourceAsync(
            input: DynamoDBModel.ListTagsOfResourceInput, 
            completion: @escaping (Result<DynamoDBModel.ListTagsOfResourceOutput, DynamoDBError>) -> ()) throws {
        if let listTagsOfResourceAsyncOverride = listTagsOfResourceAsyncOverride {
            return try listTagsOfResourceAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListTagsOfResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsOfResourceInput object being passed to this operation.
     - Returns: The ListTagsOfResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    public func listTagsOfResourceSync(
            input: DynamoDBModel.ListTagsOfResourceInput) throws -> DynamoDBModel.ListTagsOfResourceOutput {
        if let listTagsOfResourceSyncOverride = listTagsOfResourceSyncOverride {
            return try listTagsOfResourceSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutItem operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutItemInput object being passed to this operation.
         - completion: The PutItemOutput object or an error will be passed to this 
           callback when the operation is complete. The PutItemOutput
           object will be validated before being returned to caller.
           The possible errors are: conditionalCheckFailed, internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionConflict.
     */
    public func putItemAsync(
            input: DynamoDBModel.PutItemInput, 
            completion: @escaping (Result<DynamoDBModel.PutItemOutput, DynamoDBError>) -> ()) throws {
        if let putItemAsyncOverride = putItemAsyncOverride {
            return try putItemAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the PutItem operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutItemInput object being passed to this operation.
     - Returns: The PutItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conditionalCheckFailed, internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionConflict.
     */
    public func putItemSync(
            input: DynamoDBModel.PutItemInput) throws -> DynamoDBModel.PutItemOutput {
        if let putItemSyncOverride = putItemSyncOverride {
            return try putItemSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the Query operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated QueryInput object being passed to this operation.
         - completion: The QueryOutput object or an error will be passed to this 
           callback when the operation is complete. The QueryOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    public func queryAsync(
            input: DynamoDBModel.QueryInput, 
            completion: @escaping (Result<DynamoDBModel.QueryOutput, DynamoDBError>) -> ()) throws {
        if let queryAsyncOverride = queryAsyncOverride {
            return try queryAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the Query operation waiting for the response before returning.

     - Parameters:
         - input: The validated QueryInput object being passed to this operation.
     - Returns: The QueryOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    public func querySync(
            input: DynamoDBModel.QueryInput) throws -> DynamoDBModel.QueryOutput {
        if let querySyncOverride = querySyncOverride {
            return try querySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the RestoreTableFromBackup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreTableFromBackupInput object being passed to this operation.
         - completion: The RestoreTableFromBackupOutput object or an error will be passed to this 
           callback when the operation is complete. The RestoreTableFromBackupOutput
           object will be validated before being returned to caller.
           The possible errors are: backupInUse, backupNotFound, internalServer, limitExceeded, tableAlreadyExists, tableInUse.
     */
    public func restoreTableFromBackupAsync(
            input: DynamoDBModel.RestoreTableFromBackupInput, 
            completion: @escaping (Result<DynamoDBModel.RestoreTableFromBackupOutput, DynamoDBError>) -> ()) throws {
        if let restoreTableFromBackupAsyncOverride = restoreTableFromBackupAsyncOverride {
            return try restoreTableFromBackupAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the RestoreTableFromBackup operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreTableFromBackupInput object being passed to this operation.
     - Returns: The RestoreTableFromBackupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: backupInUse, backupNotFound, internalServer, limitExceeded, tableAlreadyExists, tableInUse.
     */
    public func restoreTableFromBackupSync(
            input: DynamoDBModel.RestoreTableFromBackupInput) throws -> DynamoDBModel.RestoreTableFromBackupOutput {
        if let restoreTableFromBackupSyncOverride = restoreTableFromBackupSyncOverride {
            return try restoreTableFromBackupSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the RestoreTableToPointInTime operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreTableToPointInTimeInput object being passed to this operation.
         - completion: The RestoreTableToPointInTimeOutput object or an error will be passed to this 
           callback when the operation is complete. The RestoreTableToPointInTimeOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, invalidRestoreTime, limitExceeded, pointInTimeRecoveryUnavailable, tableAlreadyExists, tableInUse, tableNotFound.
     */
    public func restoreTableToPointInTimeAsync(
            input: DynamoDBModel.RestoreTableToPointInTimeInput, 
            completion: @escaping (Result<DynamoDBModel.RestoreTableToPointInTimeOutput, DynamoDBError>) -> ()) throws {
        if let restoreTableToPointInTimeAsyncOverride = restoreTableToPointInTimeAsyncOverride {
            return try restoreTableToPointInTimeAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the RestoreTableToPointInTime operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreTableToPointInTimeInput object being passed to this operation.
     - Returns: The RestoreTableToPointInTimeOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, invalidRestoreTime, limitExceeded, pointInTimeRecoveryUnavailable, tableAlreadyExists, tableInUse, tableNotFound.
     */
    public func restoreTableToPointInTimeSync(
            input: DynamoDBModel.RestoreTableToPointInTimeInput) throws -> DynamoDBModel.RestoreTableToPointInTimeOutput {
        if let restoreTableToPointInTimeSyncOverride = restoreTableToPointInTimeSyncOverride {
            return try restoreTableToPointInTimeSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the Scan operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ScanInput object being passed to this operation.
         - completion: The ScanOutput object or an error will be passed to this 
           callback when the operation is complete. The ScanOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    public func scanAsync(
            input: DynamoDBModel.ScanInput, 
            completion: @escaping (Result<DynamoDBModel.ScanOutput, DynamoDBError>) -> ()) throws {
        if let scanAsyncOverride = scanAsyncOverride {
            return try scanAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the Scan operation waiting for the response before returning.

     - Parameters:
         - input: The validated ScanInput object being passed to this operation.
     - Returns: The ScanOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    public func scanSync(
            input: DynamoDBModel.ScanInput) throws -> DynamoDBModel.ScanOutput {
        if let scanSyncOverride = scanSyncOverride {
            return try scanSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the TagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    public func tagResourceAsync(
            input: DynamoDBModel.TagResourceInput, 
            completion: @escaping (DynamoDBError?) -> ()) throws {
        if let tagResourceAsyncOverride = tagResourceAsyncOverride {
            return try tagResourceAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    public func tagResourceSync(
            input: DynamoDBModel.TagResourceInput) throws {
        if let tagResourceSyncOverride = tagResourceSyncOverride {
            return try tagResourceSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the TransactGetItems operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TransactGetItemsInput object being passed to this operation.
         - completion: The TransactGetItemsOutput object or an error will be passed to this 
           callback when the operation is complete. The TransactGetItemsOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionCanceled.
     */
    public func transactGetItemsAsync(
            input: DynamoDBModel.TransactGetItemsInput, 
            completion: @escaping (Result<DynamoDBModel.TransactGetItemsOutput, DynamoDBError>) -> ()) throws {
        if let transactGetItemsAsyncOverride = transactGetItemsAsyncOverride {
            return try transactGetItemsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the TransactGetItems operation waiting for the response before returning.

     - Parameters:
         - input: The validated TransactGetItemsInput object being passed to this operation.
     - Returns: The TransactGetItemsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionCanceled.
     */
    public func transactGetItemsSync(
            input: DynamoDBModel.TransactGetItemsInput) throws -> DynamoDBModel.TransactGetItemsOutput {
        if let transactGetItemsSyncOverride = transactGetItemsSyncOverride {
            return try transactGetItemsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the TransactWriteItems operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TransactWriteItemsInput object being passed to this operation.
         - completion: The TransactWriteItemsOutput object or an error will be passed to this 
           callback when the operation is complete. The TransactWriteItemsOutput
           object will be validated before being returned to caller.
           The possible errors are: idempotentParameterMismatch, internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionCanceled, transactionInProgress.
     */
    public func transactWriteItemsAsync(
            input: DynamoDBModel.TransactWriteItemsInput, 
            completion: @escaping (Result<DynamoDBModel.TransactWriteItemsOutput, DynamoDBError>) -> ()) throws {
        if let transactWriteItemsAsyncOverride = transactWriteItemsAsyncOverride {
            return try transactWriteItemsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the TransactWriteItems operation waiting for the response before returning.

     - Parameters:
         - input: The validated TransactWriteItemsInput object being passed to this operation.
     - Returns: The TransactWriteItemsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: idempotentParameterMismatch, internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionCanceled, transactionInProgress.
     */
    public func transactWriteItemsSync(
            input: DynamoDBModel.TransactWriteItemsInput) throws -> DynamoDBModel.TransactWriteItemsOutput {
        if let transactWriteItemsSyncOverride = transactWriteItemsSyncOverride {
            return try transactWriteItemsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the UntagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    public func untagResourceAsync(
            input: DynamoDBModel.UntagResourceInput, 
            completion: @escaping (DynamoDBError?) -> ()) throws {
        if let untagResourceAsyncOverride = untagResourceAsyncOverride {
            return try untagResourceAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    public func untagResourceSync(
            input: DynamoDBModel.UntagResourceInput) throws {
        if let untagResourceSyncOverride = untagResourceSyncOverride {
            return try untagResourceSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the UpdateContinuousBackups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateContinuousBackupsInput object being passed to this operation.
         - completion: The UpdateContinuousBackupsOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateContinuousBackupsOutput
           object will be validated before being returned to caller.
           The possible errors are: continuousBackupsUnavailable, internalServer, tableNotFound.
     */
    public func updateContinuousBackupsAsync(
            input: DynamoDBModel.UpdateContinuousBackupsInput, 
            completion: @escaping (Result<DynamoDBModel.UpdateContinuousBackupsOutput, DynamoDBError>) -> ()) throws {
        if let updateContinuousBackupsAsyncOverride = updateContinuousBackupsAsyncOverride {
            return try updateContinuousBackupsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the UpdateContinuousBackups operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateContinuousBackupsInput object being passed to this operation.
     - Returns: The UpdateContinuousBackupsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: continuousBackupsUnavailable, internalServer, tableNotFound.
     */
    public func updateContinuousBackupsSync(
            input: DynamoDBModel.UpdateContinuousBackupsInput) throws -> DynamoDBModel.UpdateContinuousBackupsOutput {
        if let updateContinuousBackupsSyncOverride = updateContinuousBackupsSyncOverride {
            return try updateContinuousBackupsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the UpdateContributorInsights operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateContributorInsightsInput object being passed to this operation.
         - completion: The UpdateContributorInsightsOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateContributorInsightsOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound.
     */
    public func updateContributorInsightsAsync(
            input: DynamoDBModel.UpdateContributorInsightsInput, 
            completion: @escaping (Result<DynamoDBModel.UpdateContributorInsightsOutput, DynamoDBError>) -> ()) throws {
        if let updateContributorInsightsAsyncOverride = updateContributorInsightsAsyncOverride {
            return try updateContributorInsightsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the UpdateContributorInsights operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateContributorInsightsInput object being passed to this operation.
     - Returns: The UpdateContributorInsightsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    public func updateContributorInsightsSync(
            input: DynamoDBModel.UpdateContributorInsightsInput) throws -> DynamoDBModel.UpdateContributorInsightsOutput {
        if let updateContributorInsightsSyncOverride = updateContributorInsightsSyncOverride {
            return try updateContributorInsightsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the UpdateGlobalTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateGlobalTableInput object being passed to this operation.
         - completion: The UpdateGlobalTableOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateGlobalTableOutput
           object will be validated before being returned to caller.
           The possible errors are: globalTableNotFound, internalServer, replicaAlreadyExists, replicaNotFound, tableNotFound.
     */
    public func updateGlobalTableAsync(
            input: DynamoDBModel.UpdateGlobalTableInput, 
            completion: @escaping (Result<DynamoDBModel.UpdateGlobalTableOutput, DynamoDBError>) -> ()) throws {
        if let updateGlobalTableAsyncOverride = updateGlobalTableAsyncOverride {
            return try updateGlobalTableAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the UpdateGlobalTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateGlobalTableInput object being passed to this operation.
     - Returns: The UpdateGlobalTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalTableNotFound, internalServer, replicaAlreadyExists, replicaNotFound, tableNotFound.
     */
    public func updateGlobalTableSync(
            input: DynamoDBModel.UpdateGlobalTableInput) throws -> DynamoDBModel.UpdateGlobalTableOutput {
        if let updateGlobalTableSyncOverride = updateGlobalTableSyncOverride {
            return try updateGlobalTableSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the UpdateGlobalTableSettings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateGlobalTableSettingsInput object being passed to this operation.
         - completion: The UpdateGlobalTableSettingsOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateGlobalTableSettingsOutput
           object will be validated before being returned to caller.
           The possible errors are: globalTableNotFound, indexNotFound, internalServer, limitExceeded, replicaNotFound, resourceInUse.
     */
    public func updateGlobalTableSettingsAsync(
            input: DynamoDBModel.UpdateGlobalTableSettingsInput, 
            completion: @escaping (Result<DynamoDBModel.UpdateGlobalTableSettingsOutput, DynamoDBError>) -> ()) throws {
        if let updateGlobalTableSettingsAsyncOverride = updateGlobalTableSettingsAsyncOverride {
            return try updateGlobalTableSettingsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the UpdateGlobalTableSettings operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateGlobalTableSettingsInput object being passed to this operation.
     - Returns: The UpdateGlobalTableSettingsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalTableNotFound, indexNotFound, internalServer, limitExceeded, replicaNotFound, resourceInUse.
     */
    public func updateGlobalTableSettingsSync(
            input: DynamoDBModel.UpdateGlobalTableSettingsInput) throws -> DynamoDBModel.UpdateGlobalTableSettingsOutput {
        if let updateGlobalTableSettingsSyncOverride = updateGlobalTableSettingsSyncOverride {
            return try updateGlobalTableSettingsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the UpdateItem operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateItemInput object being passed to this operation.
         - completion: The UpdateItemOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateItemOutput
           object will be validated before being returned to caller.
           The possible errors are: conditionalCheckFailed, internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionConflict.
     */
    public func updateItemAsync(
            input: DynamoDBModel.UpdateItemInput, 
            completion: @escaping (Result<DynamoDBModel.UpdateItemOutput, DynamoDBError>) -> ()) throws {
        if let updateItemAsyncOverride = updateItemAsyncOverride {
            return try updateItemAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the UpdateItem operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateItemInput object being passed to this operation.
     - Returns: The UpdateItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conditionalCheckFailed, internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionConflict.
     */
    public func updateItemSync(
            input: DynamoDBModel.UpdateItemInput) throws -> DynamoDBModel.UpdateItemOutput {
        if let updateItemSyncOverride = updateItemSyncOverride {
            return try updateItemSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the UpdateTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateTableInput object being passed to this operation.
         - completion: The UpdateTableOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateTableOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    public func updateTableAsync(
            input: DynamoDBModel.UpdateTableInput, 
            completion: @escaping (Result<DynamoDBModel.UpdateTableOutput, DynamoDBError>) -> ()) throws {
        if let updateTableAsyncOverride = updateTableAsyncOverride {
            return try updateTableAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the UpdateTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateTableInput object being passed to this operation.
     - Returns: The UpdateTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    public func updateTableSync(
            input: DynamoDBModel.UpdateTableInput) throws -> DynamoDBModel.UpdateTableOutput {
        if let updateTableSyncOverride = updateTableSyncOverride {
            return try updateTableSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the UpdateTableReplicaAutoScaling operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateTableReplicaAutoScalingInput object being passed to this operation.
         - completion: The UpdateTableReplicaAutoScalingOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateTableReplicaAutoScalingOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    public func updateTableReplicaAutoScalingAsync(
            input: DynamoDBModel.UpdateTableReplicaAutoScalingInput, 
            completion: @escaping (Result<DynamoDBModel.UpdateTableReplicaAutoScalingOutput, DynamoDBError>) -> ()) throws {
        if let updateTableReplicaAutoScalingAsyncOverride = updateTableReplicaAutoScalingAsyncOverride {
            return try updateTableReplicaAutoScalingAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the UpdateTableReplicaAutoScaling operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateTableReplicaAutoScalingInput object being passed to this operation.
     - Returns: The UpdateTableReplicaAutoScalingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    public func updateTableReplicaAutoScalingSync(
            input: DynamoDBModel.UpdateTableReplicaAutoScalingInput) throws -> DynamoDBModel.UpdateTableReplicaAutoScalingOutput {
        if let updateTableReplicaAutoScalingSyncOverride = updateTableReplicaAutoScalingSyncOverride {
            return try updateTableReplicaAutoScalingSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the UpdateTimeToLive operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateTimeToLiveInput object being passed to this operation.
         - completion: The UpdateTimeToLiveOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateTimeToLiveOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    public func updateTimeToLiveAsync(
            input: DynamoDBModel.UpdateTimeToLiveInput, 
            completion: @escaping (Result<DynamoDBModel.UpdateTimeToLiveOutput, DynamoDBError>) -> ()) throws {
        if let updateTimeToLiveAsyncOverride = updateTimeToLiveAsyncOverride {
            return try updateTimeToLiveAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the UpdateTimeToLive operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateTimeToLiveInput object being passed to this operation.
     - Returns: The UpdateTimeToLiveOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    public func updateTimeToLiveSync(
            input: DynamoDBModel.UpdateTimeToLiveInput) throws -> DynamoDBModel.UpdateTimeToLiveOutput {
        if let updateTimeToLiveSyncOverride = updateTimeToLiveSyncOverride {
            return try updateTimeToLiveSyncOverride(input)
        }

        throw error
    }
}
