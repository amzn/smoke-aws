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
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment type_body_length
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
    let error: HTTPClientError
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
    let describeGlobalTableAsyncOverride: DescribeGlobalTableAsyncType?
    let describeGlobalTableSyncOverride: DescribeGlobalTableSyncType?
    let describeGlobalTableSettingsAsyncOverride: DescribeGlobalTableSettingsAsyncType?
    let describeGlobalTableSettingsSyncOverride: DescribeGlobalTableSettingsSyncType?
    let describeLimitsAsyncOverride: DescribeLimitsAsyncType?
    let describeLimitsSyncOverride: DescribeLimitsSyncType?
    let describeTableAsyncOverride: DescribeTableAsyncType?
    let describeTableSyncOverride: DescribeTableSyncType?
    let describeTableReplicaAutoScalingAsyncOverride: DescribeTableReplicaAutoScalingAsyncType?
    let describeTableReplicaAutoScalingSyncOverride: DescribeTableReplicaAutoScalingSyncType?
    let describeTimeToLiveAsyncOverride: DescribeTimeToLiveAsyncType?
    let describeTimeToLiveSyncOverride: DescribeTimeToLiveSyncType?
    let getItemAsyncOverride: GetItemAsyncType?
    let getItemSyncOverride: GetItemSyncType?
    let listBackupsAsyncOverride: ListBackupsAsyncType?
    let listBackupsSyncOverride: ListBackupsSyncType?
    let listContributorInsightsAsyncOverride: ListContributorInsightsAsyncType?
    let listContributorInsightsSyncOverride: ListContributorInsightsSyncType?
    let listGlobalTablesAsyncOverride: ListGlobalTablesAsyncType?
    let listGlobalTablesSyncOverride: ListGlobalTablesSyncType?
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
    public init(error: HTTPClientError,
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
            describeGlobalTableAsync: DescribeGlobalTableAsyncType? = nil,
            describeGlobalTableSync: DescribeGlobalTableSyncType? = nil,
            describeGlobalTableSettingsAsync: DescribeGlobalTableSettingsAsyncType? = nil,
            describeGlobalTableSettingsSync: DescribeGlobalTableSettingsSyncType? = nil,
            describeLimitsAsync: DescribeLimitsAsyncType? = nil,
            describeLimitsSync: DescribeLimitsSyncType? = nil,
            describeTableAsync: DescribeTableAsyncType? = nil,
            describeTableSync: DescribeTableSyncType? = nil,
            describeTableReplicaAutoScalingAsync: DescribeTableReplicaAutoScalingAsyncType? = nil,
            describeTableReplicaAutoScalingSync: DescribeTableReplicaAutoScalingSyncType? = nil,
            describeTimeToLiveAsync: DescribeTimeToLiveAsyncType? = nil,
            describeTimeToLiveSync: DescribeTimeToLiveSyncType? = nil,
            getItemAsync: GetItemAsyncType? = nil,
            getItemSync: GetItemSyncType? = nil,
            listBackupsAsync: ListBackupsAsyncType? = nil,
            listBackupsSync: ListBackupsSyncType? = nil,
            listContributorInsightsAsync: ListContributorInsightsAsyncType? = nil,
            listContributorInsightsSync: ListContributorInsightsSyncType? = nil,
            listGlobalTablesAsync: ListGlobalTablesAsyncType? = nil,
            listGlobalTablesSync: ListGlobalTablesSyncType? = nil,
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
        self.describeGlobalTableAsyncOverride = describeGlobalTableAsync
        self.describeGlobalTableSyncOverride = describeGlobalTableSync
        self.describeGlobalTableSettingsAsyncOverride = describeGlobalTableSettingsAsync
        self.describeGlobalTableSettingsSyncOverride = describeGlobalTableSettingsSync
        self.describeLimitsAsyncOverride = describeLimitsAsync
        self.describeLimitsSyncOverride = describeLimitsSync
        self.describeTableAsyncOverride = describeTableAsync
        self.describeTableSyncOverride = describeTableSync
        self.describeTableReplicaAutoScalingAsyncOverride = describeTableReplicaAutoScalingAsync
        self.describeTableReplicaAutoScalingSyncOverride = describeTableReplicaAutoScalingSync
        self.describeTimeToLiveAsyncOverride = describeTimeToLiveAsync
        self.describeTimeToLiveSyncOverride = describeTimeToLiveSync
        self.getItemAsyncOverride = getItemAsync
        self.getItemSyncOverride = getItemSync
        self.listBackupsAsyncOverride = listBackupsAsync
        self.listBackupsSyncOverride = listBackupsSync
        self.listContributorInsightsAsyncOverride = listContributorInsightsAsync
        self.listContributorInsightsSyncOverride = listContributorInsightsSync
        self.listGlobalTablesAsyncOverride = listGlobalTablesAsync
        self.listGlobalTablesSyncOverride = listGlobalTablesSync
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
            completion: @escaping (Result<DynamoDBModel.BatchGetItemOutput, HTTPClientError>) -> ()) throws {
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
            completion: @escaping (Result<DynamoDBModel.BatchWriteItemOutput, HTTPClientError>) -> ()) throws {
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
            completion: @escaping (Result<DynamoDBModel.CreateBackupOutput, HTTPClientError>) -> ()) throws {
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
            completion: @escaping (Result<DynamoDBModel.CreateGlobalTableOutput, HTTPClientError>) -> ()) throws {
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
            completion: @escaping (Result<DynamoDBModel.CreateTableOutput, HTTPClientError>) -> ()) throws {
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
            completion: @escaping (Result<DynamoDBModel.DeleteBackupOutput, HTTPClientError>) -> ()) throws {
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
            completion: @escaping (Result<DynamoDBModel.DeleteItemOutput, HTTPClientError>) -> ()) throws {
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
            completion: @escaping (Result<DynamoDBModel.DeleteTableOutput, HTTPClientError>) -> ()) throws {
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
            completion: @escaping (Result<DynamoDBModel.DescribeBackupOutput, HTTPClientError>) -> ()) throws {
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
            completion: @escaping (Result<DynamoDBModel.DescribeContinuousBackupsOutput, HTTPClientError>) -> ()) throws {
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
            completion: @escaping (Result<DynamoDBModel.DescribeContributorInsightsOutput, HTTPClientError>) -> ()) throws {
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
            completion: @escaping (Result<DynamoDBModel.DescribeEndpointsResponse, HTTPClientError>) -> ()) throws {
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
            completion: @escaping (Result<DynamoDBModel.DescribeGlobalTableOutput, HTTPClientError>) -> ()) throws {
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
            completion: @escaping (Result<DynamoDBModel.DescribeGlobalTableSettingsOutput, HTTPClientError>) -> ()) throws {
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
            completion: @escaping (Result<DynamoDBModel.DescribeLimitsOutput, HTTPClientError>) -> ()) throws {
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
            completion: @escaping (Result<DynamoDBModel.DescribeTableOutput, HTTPClientError>) -> ()) throws {
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
            completion: @escaping (Result<DynamoDBModel.DescribeTableReplicaAutoScalingOutput, HTTPClientError>) -> ()) throws {
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
            completion: @escaping (Result<DynamoDBModel.DescribeTimeToLiveOutput, HTTPClientError>) -> ()) throws {
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
            completion: @escaping (Result<DynamoDBModel.GetItemOutput, HTTPClientError>) -> ()) throws {
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
            completion: @escaping (Result<DynamoDBModel.ListBackupsOutput, HTTPClientError>) -> ()) throws {
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
            completion: @escaping (Result<DynamoDBModel.ListContributorInsightsOutput, HTTPClientError>) -> ()) throws {
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
            completion: @escaping (Result<DynamoDBModel.ListGlobalTablesOutput, HTTPClientError>) -> ()) throws {
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
            completion: @escaping (Result<DynamoDBModel.ListTablesOutput, HTTPClientError>) -> ()) throws {
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
            completion: @escaping (Result<DynamoDBModel.ListTagsOfResourceOutput, HTTPClientError>) -> ()) throws {
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
            completion: @escaping (Result<DynamoDBModel.PutItemOutput, HTTPClientError>) -> ()) throws {
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
            completion: @escaping (Result<DynamoDBModel.QueryOutput, HTTPClientError>) -> ()) throws {
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
            completion: @escaping (Result<DynamoDBModel.RestoreTableFromBackupOutput, HTTPClientError>) -> ()) throws {
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
            completion: @escaping (Result<DynamoDBModel.RestoreTableToPointInTimeOutput, HTTPClientError>) -> ()) throws {
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
            completion: @escaping (Result<DynamoDBModel.ScanOutput, HTTPClientError>) -> ()) throws {
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
            completion: @escaping (Swift.Error?) -> ()) throws {
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
            completion: @escaping (Result<DynamoDBModel.TransactGetItemsOutput, HTTPClientError>) -> ()) throws {
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
            completion: @escaping (Result<DynamoDBModel.TransactWriteItemsOutput, HTTPClientError>) -> ()) throws {
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
            completion: @escaping (Swift.Error?) -> ()) throws {
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
            completion: @escaping (Result<DynamoDBModel.UpdateContinuousBackupsOutput, HTTPClientError>) -> ()) throws {
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
            completion: @escaping (Result<DynamoDBModel.UpdateContributorInsightsOutput, HTTPClientError>) -> ()) throws {
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
            completion: @escaping (Result<DynamoDBModel.UpdateGlobalTableOutput, HTTPClientError>) -> ()) throws {
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
            completion: @escaping (Result<DynamoDBModel.UpdateGlobalTableSettingsOutput, HTTPClientError>) -> ()) throws {
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
            completion: @escaping (Result<DynamoDBModel.UpdateItemOutput, HTTPClientError>) -> ()) throws {
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
            completion: @escaping (Result<DynamoDBModel.UpdateTableOutput, HTTPClientError>) -> ()) throws {
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
            completion: @escaping (Result<DynamoDBModel.UpdateTableReplicaAutoScalingOutput, HTTPClientError>) -> ()) throws {
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
            completion: @escaping (Result<DynamoDBModel.UpdateTimeToLiveOutput, HTTPClientError>) -> ()) throws {
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
