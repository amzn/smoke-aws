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
public struct ThrowingDynamoDBClient<ClientInvocationReportingType: SmokeAWSInvocationReporting>: DynamoDBClientProtocol {
    let error: HTTPClientError
    let batchGetItemAsyncOverride: BatchGetItemAsyncType<ClientInvocationReportingType>?
    let batchGetItemSyncOverride: BatchGetItemSyncType<ClientInvocationReportingType>?
    let batchWriteItemAsyncOverride: BatchWriteItemAsyncType<ClientInvocationReportingType>?
    let batchWriteItemSyncOverride: BatchWriteItemSyncType<ClientInvocationReportingType>?
    let createBackupAsyncOverride: CreateBackupAsyncType<ClientInvocationReportingType>?
    let createBackupSyncOverride: CreateBackupSyncType<ClientInvocationReportingType>?
    let createGlobalTableAsyncOverride: CreateGlobalTableAsyncType<ClientInvocationReportingType>?
    let createGlobalTableSyncOverride: CreateGlobalTableSyncType<ClientInvocationReportingType>?
    let createTableAsyncOverride: CreateTableAsyncType<ClientInvocationReportingType>?
    let createTableSyncOverride: CreateTableSyncType<ClientInvocationReportingType>?
    let deleteBackupAsyncOverride: DeleteBackupAsyncType<ClientInvocationReportingType>?
    let deleteBackupSyncOverride: DeleteBackupSyncType<ClientInvocationReportingType>?
    let deleteItemAsyncOverride: DeleteItemAsyncType<ClientInvocationReportingType>?
    let deleteItemSyncOverride: DeleteItemSyncType<ClientInvocationReportingType>?
    let deleteTableAsyncOverride: DeleteTableAsyncType<ClientInvocationReportingType>?
    let deleteTableSyncOverride: DeleteTableSyncType<ClientInvocationReportingType>?
    let describeBackupAsyncOverride: DescribeBackupAsyncType<ClientInvocationReportingType>?
    let describeBackupSyncOverride: DescribeBackupSyncType<ClientInvocationReportingType>?
    let describeContinuousBackupsAsyncOverride: DescribeContinuousBackupsAsyncType<ClientInvocationReportingType>?
    let describeContinuousBackupsSyncOverride: DescribeContinuousBackupsSyncType<ClientInvocationReportingType>?
    let describeContributorInsightsAsyncOverride: DescribeContributorInsightsAsyncType<ClientInvocationReportingType>?
    let describeContributorInsightsSyncOverride: DescribeContributorInsightsSyncType<ClientInvocationReportingType>?
    let describeEndpointsAsyncOverride: DescribeEndpointsAsyncType<ClientInvocationReportingType>?
    let describeEndpointsSyncOverride: DescribeEndpointsSyncType<ClientInvocationReportingType>?
    let describeGlobalTableAsyncOverride: DescribeGlobalTableAsyncType<ClientInvocationReportingType>?
    let describeGlobalTableSyncOverride: DescribeGlobalTableSyncType<ClientInvocationReportingType>?
    let describeGlobalTableSettingsAsyncOverride: DescribeGlobalTableSettingsAsyncType<ClientInvocationReportingType>?
    let describeGlobalTableSettingsSyncOverride: DescribeGlobalTableSettingsSyncType<ClientInvocationReportingType>?
    let describeLimitsAsyncOverride: DescribeLimitsAsyncType<ClientInvocationReportingType>?
    let describeLimitsSyncOverride: DescribeLimitsSyncType<ClientInvocationReportingType>?
    let describeTableAsyncOverride: DescribeTableAsyncType<ClientInvocationReportingType>?
    let describeTableSyncOverride: DescribeTableSyncType<ClientInvocationReportingType>?
    let describeTableReplicaAutoScalingAsyncOverride: DescribeTableReplicaAutoScalingAsyncType<ClientInvocationReportingType>?
    let describeTableReplicaAutoScalingSyncOverride: DescribeTableReplicaAutoScalingSyncType<ClientInvocationReportingType>?
    let describeTimeToLiveAsyncOverride: DescribeTimeToLiveAsyncType<ClientInvocationReportingType>?
    let describeTimeToLiveSyncOverride: DescribeTimeToLiveSyncType<ClientInvocationReportingType>?
    let getItemAsyncOverride: GetItemAsyncType<ClientInvocationReportingType>?
    let getItemSyncOverride: GetItemSyncType<ClientInvocationReportingType>?
    let listBackupsAsyncOverride: ListBackupsAsyncType<ClientInvocationReportingType>?
    let listBackupsSyncOverride: ListBackupsSyncType<ClientInvocationReportingType>?
    let listContributorInsightsAsyncOverride: ListContributorInsightsAsyncType<ClientInvocationReportingType>?
    let listContributorInsightsSyncOverride: ListContributorInsightsSyncType<ClientInvocationReportingType>?
    let listGlobalTablesAsyncOverride: ListGlobalTablesAsyncType<ClientInvocationReportingType>?
    let listGlobalTablesSyncOverride: ListGlobalTablesSyncType<ClientInvocationReportingType>?
    let listTablesAsyncOverride: ListTablesAsyncType<ClientInvocationReportingType>?
    let listTablesSyncOverride: ListTablesSyncType<ClientInvocationReportingType>?
    let listTagsOfResourceAsyncOverride: ListTagsOfResourceAsyncType<ClientInvocationReportingType>?
    let listTagsOfResourceSyncOverride: ListTagsOfResourceSyncType<ClientInvocationReportingType>?
    let putItemAsyncOverride: PutItemAsyncType<ClientInvocationReportingType>?
    let putItemSyncOverride: PutItemSyncType<ClientInvocationReportingType>?
    let queryAsyncOverride: QueryAsyncType<ClientInvocationReportingType>?
    let querySyncOverride: QuerySyncType<ClientInvocationReportingType>?
    let restoreTableFromBackupAsyncOverride: RestoreTableFromBackupAsyncType<ClientInvocationReportingType>?
    let restoreTableFromBackupSyncOverride: RestoreTableFromBackupSyncType<ClientInvocationReportingType>?
    let restoreTableToPointInTimeAsyncOverride: RestoreTableToPointInTimeAsyncType<ClientInvocationReportingType>?
    let restoreTableToPointInTimeSyncOverride: RestoreTableToPointInTimeSyncType<ClientInvocationReportingType>?
    let scanAsyncOverride: ScanAsyncType<ClientInvocationReportingType>?
    let scanSyncOverride: ScanSyncType<ClientInvocationReportingType>?
    let tagResourceAsyncOverride: TagResourceAsyncType<ClientInvocationReportingType>?
    let tagResourceSyncOverride: TagResourceSyncType<ClientInvocationReportingType>?
    let transactGetItemsAsyncOverride: TransactGetItemsAsyncType<ClientInvocationReportingType>?
    let transactGetItemsSyncOverride: TransactGetItemsSyncType<ClientInvocationReportingType>?
    let transactWriteItemsAsyncOverride: TransactWriteItemsAsyncType<ClientInvocationReportingType>?
    let transactWriteItemsSyncOverride: TransactWriteItemsSyncType<ClientInvocationReportingType>?
    let untagResourceAsyncOverride: UntagResourceAsyncType<ClientInvocationReportingType>?
    let untagResourceSyncOverride: UntagResourceSyncType<ClientInvocationReportingType>?
    let updateContinuousBackupsAsyncOverride: UpdateContinuousBackupsAsyncType<ClientInvocationReportingType>?
    let updateContinuousBackupsSyncOverride: UpdateContinuousBackupsSyncType<ClientInvocationReportingType>?
    let updateContributorInsightsAsyncOverride: UpdateContributorInsightsAsyncType<ClientInvocationReportingType>?
    let updateContributorInsightsSyncOverride: UpdateContributorInsightsSyncType<ClientInvocationReportingType>?
    let updateGlobalTableAsyncOverride: UpdateGlobalTableAsyncType<ClientInvocationReportingType>?
    let updateGlobalTableSyncOverride: UpdateGlobalTableSyncType<ClientInvocationReportingType>?
    let updateGlobalTableSettingsAsyncOverride: UpdateGlobalTableSettingsAsyncType<ClientInvocationReportingType>?
    let updateGlobalTableSettingsSyncOverride: UpdateGlobalTableSettingsSyncType<ClientInvocationReportingType>?
    let updateItemAsyncOverride: UpdateItemAsyncType<ClientInvocationReportingType>?
    let updateItemSyncOverride: UpdateItemSyncType<ClientInvocationReportingType>?
    let updateTableAsyncOverride: UpdateTableAsyncType<ClientInvocationReportingType>?
    let updateTableSyncOverride: UpdateTableSyncType<ClientInvocationReportingType>?
    let updateTableReplicaAutoScalingAsyncOverride: UpdateTableReplicaAutoScalingAsyncType<ClientInvocationReportingType>?
    let updateTableReplicaAutoScalingSyncOverride: UpdateTableReplicaAutoScalingSyncType<ClientInvocationReportingType>?
    let updateTimeToLiveAsyncOverride: UpdateTimeToLiveAsyncType<ClientInvocationReportingType>?
    let updateTimeToLiveSyncOverride: UpdateTimeToLiveSyncType<ClientInvocationReportingType>?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(error: HTTPClientError,
            batchGetItemAsync: BatchGetItemAsyncType<ClientInvocationReportingType>? = nil,
            batchGetItemSync: BatchGetItemSyncType<ClientInvocationReportingType>? = nil,
            batchWriteItemAsync: BatchWriteItemAsyncType<ClientInvocationReportingType>? = nil,
            batchWriteItemSync: BatchWriteItemSyncType<ClientInvocationReportingType>? = nil,
            createBackupAsync: CreateBackupAsyncType<ClientInvocationReportingType>? = nil,
            createBackupSync: CreateBackupSyncType<ClientInvocationReportingType>? = nil,
            createGlobalTableAsync: CreateGlobalTableAsyncType<ClientInvocationReportingType>? = nil,
            createGlobalTableSync: CreateGlobalTableSyncType<ClientInvocationReportingType>? = nil,
            createTableAsync: CreateTableAsyncType<ClientInvocationReportingType>? = nil,
            createTableSync: CreateTableSyncType<ClientInvocationReportingType>? = nil,
            deleteBackupAsync: DeleteBackupAsyncType<ClientInvocationReportingType>? = nil,
            deleteBackupSync: DeleteBackupSyncType<ClientInvocationReportingType>? = nil,
            deleteItemAsync: DeleteItemAsyncType<ClientInvocationReportingType>? = nil,
            deleteItemSync: DeleteItemSyncType<ClientInvocationReportingType>? = nil,
            deleteTableAsync: DeleteTableAsyncType<ClientInvocationReportingType>? = nil,
            deleteTableSync: DeleteTableSyncType<ClientInvocationReportingType>? = nil,
            describeBackupAsync: DescribeBackupAsyncType<ClientInvocationReportingType>? = nil,
            describeBackupSync: DescribeBackupSyncType<ClientInvocationReportingType>? = nil,
            describeContinuousBackupsAsync: DescribeContinuousBackupsAsyncType<ClientInvocationReportingType>? = nil,
            describeContinuousBackupsSync: DescribeContinuousBackupsSyncType<ClientInvocationReportingType>? = nil,
            describeContributorInsightsAsync: DescribeContributorInsightsAsyncType<ClientInvocationReportingType>? = nil,
            describeContributorInsightsSync: DescribeContributorInsightsSyncType<ClientInvocationReportingType>? = nil,
            describeEndpointsAsync: DescribeEndpointsAsyncType<ClientInvocationReportingType>? = nil,
            describeEndpointsSync: DescribeEndpointsSyncType<ClientInvocationReportingType>? = nil,
            describeGlobalTableAsync: DescribeGlobalTableAsyncType<ClientInvocationReportingType>? = nil,
            describeGlobalTableSync: DescribeGlobalTableSyncType<ClientInvocationReportingType>? = nil,
            describeGlobalTableSettingsAsync: DescribeGlobalTableSettingsAsyncType<ClientInvocationReportingType>? = nil,
            describeGlobalTableSettingsSync: DescribeGlobalTableSettingsSyncType<ClientInvocationReportingType>? = nil,
            describeLimitsAsync: DescribeLimitsAsyncType<ClientInvocationReportingType>? = nil,
            describeLimitsSync: DescribeLimitsSyncType<ClientInvocationReportingType>? = nil,
            describeTableAsync: DescribeTableAsyncType<ClientInvocationReportingType>? = nil,
            describeTableSync: DescribeTableSyncType<ClientInvocationReportingType>? = nil,
            describeTableReplicaAutoScalingAsync: DescribeTableReplicaAutoScalingAsyncType<ClientInvocationReportingType>? = nil,
            describeTableReplicaAutoScalingSync: DescribeTableReplicaAutoScalingSyncType<ClientInvocationReportingType>? = nil,
            describeTimeToLiveAsync: DescribeTimeToLiveAsyncType<ClientInvocationReportingType>? = nil,
            describeTimeToLiveSync: DescribeTimeToLiveSyncType<ClientInvocationReportingType>? = nil,
            getItemAsync: GetItemAsyncType<ClientInvocationReportingType>? = nil,
            getItemSync: GetItemSyncType<ClientInvocationReportingType>? = nil,
            listBackupsAsync: ListBackupsAsyncType<ClientInvocationReportingType>? = nil,
            listBackupsSync: ListBackupsSyncType<ClientInvocationReportingType>? = nil,
            listContributorInsightsAsync: ListContributorInsightsAsyncType<ClientInvocationReportingType>? = nil,
            listContributorInsightsSync: ListContributorInsightsSyncType<ClientInvocationReportingType>? = nil,
            listGlobalTablesAsync: ListGlobalTablesAsyncType<ClientInvocationReportingType>? = nil,
            listGlobalTablesSync: ListGlobalTablesSyncType<ClientInvocationReportingType>? = nil,
            listTablesAsync: ListTablesAsyncType<ClientInvocationReportingType>? = nil,
            listTablesSync: ListTablesSyncType<ClientInvocationReportingType>? = nil,
            listTagsOfResourceAsync: ListTagsOfResourceAsyncType<ClientInvocationReportingType>? = nil,
            listTagsOfResourceSync: ListTagsOfResourceSyncType<ClientInvocationReportingType>? = nil,
            putItemAsync: PutItemAsyncType<ClientInvocationReportingType>? = nil,
            putItemSync: PutItemSyncType<ClientInvocationReportingType>? = nil,
            queryAsync: QueryAsyncType<ClientInvocationReportingType>? = nil,
            querySync: QuerySyncType<ClientInvocationReportingType>? = nil,
            restoreTableFromBackupAsync: RestoreTableFromBackupAsyncType<ClientInvocationReportingType>? = nil,
            restoreTableFromBackupSync: RestoreTableFromBackupSyncType<ClientInvocationReportingType>? = nil,
            restoreTableToPointInTimeAsync: RestoreTableToPointInTimeAsyncType<ClientInvocationReportingType>? = nil,
            restoreTableToPointInTimeSync: RestoreTableToPointInTimeSyncType<ClientInvocationReportingType>? = nil,
            scanAsync: ScanAsyncType<ClientInvocationReportingType>? = nil,
            scanSync: ScanSyncType<ClientInvocationReportingType>? = nil,
            tagResourceAsync: TagResourceAsyncType<ClientInvocationReportingType>? = nil,
            tagResourceSync: TagResourceSyncType<ClientInvocationReportingType>? = nil,
            transactGetItemsAsync: TransactGetItemsAsyncType<ClientInvocationReportingType>? = nil,
            transactGetItemsSync: TransactGetItemsSyncType<ClientInvocationReportingType>? = nil,
            transactWriteItemsAsync: TransactWriteItemsAsyncType<ClientInvocationReportingType>? = nil,
            transactWriteItemsSync: TransactWriteItemsSyncType<ClientInvocationReportingType>? = nil,
            untagResourceAsync: UntagResourceAsyncType<ClientInvocationReportingType>? = nil,
            untagResourceSync: UntagResourceSyncType<ClientInvocationReportingType>? = nil,
            updateContinuousBackupsAsync: UpdateContinuousBackupsAsyncType<ClientInvocationReportingType>? = nil,
            updateContinuousBackupsSync: UpdateContinuousBackupsSyncType<ClientInvocationReportingType>? = nil,
            updateContributorInsightsAsync: UpdateContributorInsightsAsyncType<ClientInvocationReportingType>? = nil,
            updateContributorInsightsSync: UpdateContributorInsightsSyncType<ClientInvocationReportingType>? = nil,
            updateGlobalTableAsync: UpdateGlobalTableAsyncType<ClientInvocationReportingType>? = nil,
            updateGlobalTableSync: UpdateGlobalTableSyncType<ClientInvocationReportingType>? = nil,
            updateGlobalTableSettingsAsync: UpdateGlobalTableSettingsAsyncType<ClientInvocationReportingType>? = nil,
            updateGlobalTableSettingsSync: UpdateGlobalTableSettingsSyncType<ClientInvocationReportingType>? = nil,
            updateItemAsync: UpdateItemAsyncType<ClientInvocationReportingType>? = nil,
            updateItemSync: UpdateItemSyncType<ClientInvocationReportingType>? = nil,
            updateTableAsync: UpdateTableAsyncType<ClientInvocationReportingType>? = nil,
            updateTableSync: UpdateTableSyncType<ClientInvocationReportingType>? = nil,
            updateTableReplicaAutoScalingAsync: UpdateTableReplicaAutoScalingAsyncType<ClientInvocationReportingType>? = nil,
            updateTableReplicaAutoScalingSync: UpdateTableReplicaAutoScalingSyncType<ClientInvocationReportingType>? = nil,
            updateTimeToLiveAsync: UpdateTimeToLiveAsyncType<ClientInvocationReportingType>? = nil,
            updateTimeToLiveSync: UpdateTimeToLiveSyncType<ClientInvocationReportingType>? = nil) {
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
    public func batchGetItemAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.BatchGetItemInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.BatchGetItemOutput, HTTPClientError>) -> ()) throws {
        if let batchGetItemAsyncOverrideNonOptional = batchGetItemAsyncOverride {
            if let batchGetItemAsyncOverrideTyped = batchGetItemAsyncOverrideNonOptional
                    as? BatchGetItemAsyncType<InvocationReportingType> {
                return try batchGetItemAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func batchGetItemSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.BatchGetItemInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.BatchGetItemOutput {
        if let batchGetItemSyncOverrideNonOptional = batchGetItemSyncOverride {
            if let batchGetItemSyncOverrideTyped = batchGetItemSyncOverrideNonOptional
                    as? BatchGetItemSyncType<InvocationReportingType> {
                return try batchGetItemSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func batchWriteItemAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.BatchWriteItemInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.BatchWriteItemOutput, HTTPClientError>) -> ()) throws {
        if let batchWriteItemAsyncOverrideNonOptional = batchWriteItemAsyncOverride {
            if let batchWriteItemAsyncOverrideTyped = batchWriteItemAsyncOverrideNonOptional
                    as? BatchWriteItemAsyncType<InvocationReportingType> {
                return try batchWriteItemAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func batchWriteItemSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.BatchWriteItemInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.BatchWriteItemOutput {
        if let batchWriteItemSyncOverrideNonOptional = batchWriteItemSyncOverride {
            if let batchWriteItemSyncOverrideTyped = batchWriteItemSyncOverrideNonOptional
                    as? BatchWriteItemSyncType<InvocationReportingType> {
                return try batchWriteItemSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func createBackupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.CreateBackupInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.CreateBackupOutput, HTTPClientError>) -> ()) throws {
        if let createBackupAsyncOverrideNonOptional = createBackupAsyncOverride {
            if let createBackupAsyncOverrideTyped = createBackupAsyncOverrideNonOptional
                    as? CreateBackupAsyncType<InvocationReportingType> {
                return try createBackupAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func createBackupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.CreateBackupInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.CreateBackupOutput {
        if let createBackupSyncOverrideNonOptional = createBackupSyncOverride {
            if let createBackupSyncOverrideTyped = createBackupSyncOverrideNonOptional
                    as? CreateBackupSyncType<InvocationReportingType> {
                return try createBackupSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func createGlobalTableAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.CreateGlobalTableInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.CreateGlobalTableOutput, HTTPClientError>) -> ()) throws {
        if let createGlobalTableAsyncOverrideNonOptional = createGlobalTableAsyncOverride {
            if let createGlobalTableAsyncOverrideTyped = createGlobalTableAsyncOverrideNonOptional
                    as? CreateGlobalTableAsyncType<InvocationReportingType> {
                return try createGlobalTableAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func createGlobalTableSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.CreateGlobalTableInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.CreateGlobalTableOutput {
        if let createGlobalTableSyncOverrideNonOptional = createGlobalTableSyncOverride {
            if let createGlobalTableSyncOverrideTyped = createGlobalTableSyncOverrideNonOptional
                    as? CreateGlobalTableSyncType<InvocationReportingType> {
                return try createGlobalTableSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func createTableAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.CreateTableInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.CreateTableOutput, HTTPClientError>) -> ()) throws {
        if let createTableAsyncOverrideNonOptional = createTableAsyncOverride {
            if let createTableAsyncOverrideTyped = createTableAsyncOverrideNonOptional
                    as? CreateTableAsyncType<InvocationReportingType> {
                return try createTableAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func createTableSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.CreateTableInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.CreateTableOutput {
        if let createTableSyncOverrideNonOptional = createTableSyncOverride {
            if let createTableSyncOverrideTyped = createTableSyncOverrideNonOptional
                    as? CreateTableSyncType<InvocationReportingType> {
                return try createTableSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func deleteBackupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DeleteBackupInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.DeleteBackupOutput, HTTPClientError>) -> ()) throws {
        if let deleteBackupAsyncOverrideNonOptional = deleteBackupAsyncOverride {
            if let deleteBackupAsyncOverrideTyped = deleteBackupAsyncOverrideNonOptional
                    as? DeleteBackupAsyncType<InvocationReportingType> {
                return try deleteBackupAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func deleteBackupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DeleteBackupInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.DeleteBackupOutput {
        if let deleteBackupSyncOverrideNonOptional = deleteBackupSyncOverride {
            if let deleteBackupSyncOverrideTyped = deleteBackupSyncOverrideNonOptional
                    as? DeleteBackupSyncType<InvocationReportingType> {
                return try deleteBackupSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func deleteItemAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DeleteItemInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.DeleteItemOutput, HTTPClientError>) -> ()) throws {
        if let deleteItemAsyncOverrideNonOptional = deleteItemAsyncOverride {
            if let deleteItemAsyncOverrideTyped = deleteItemAsyncOverrideNonOptional
                    as? DeleteItemAsyncType<InvocationReportingType> {
                return try deleteItemAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func deleteItemSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DeleteItemInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.DeleteItemOutput {
        if let deleteItemSyncOverrideNonOptional = deleteItemSyncOverride {
            if let deleteItemSyncOverrideTyped = deleteItemSyncOverrideNonOptional
                    as? DeleteItemSyncType<InvocationReportingType> {
                return try deleteItemSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func deleteTableAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DeleteTableInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.DeleteTableOutput, HTTPClientError>) -> ()) throws {
        if let deleteTableAsyncOverrideNonOptional = deleteTableAsyncOverride {
            if let deleteTableAsyncOverrideTyped = deleteTableAsyncOverrideNonOptional
                    as? DeleteTableAsyncType<InvocationReportingType> {
                return try deleteTableAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func deleteTableSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DeleteTableInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.DeleteTableOutput {
        if let deleteTableSyncOverrideNonOptional = deleteTableSyncOverride {
            if let deleteTableSyncOverrideTyped = deleteTableSyncOverrideNonOptional
                    as? DeleteTableSyncType<InvocationReportingType> {
                return try deleteTableSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func describeBackupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeBackupInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.DescribeBackupOutput, HTTPClientError>) -> ()) throws {
        if let describeBackupAsyncOverrideNonOptional = describeBackupAsyncOverride {
            if let describeBackupAsyncOverrideTyped = describeBackupAsyncOverrideNonOptional
                    as? DescribeBackupAsyncType<InvocationReportingType> {
                return try describeBackupAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func describeBackupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeBackupInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.DescribeBackupOutput {
        if let describeBackupSyncOverrideNonOptional = describeBackupSyncOverride {
            if let describeBackupSyncOverrideTyped = describeBackupSyncOverrideNonOptional
                    as? DescribeBackupSyncType<InvocationReportingType> {
                return try describeBackupSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func describeContinuousBackupsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeContinuousBackupsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.DescribeContinuousBackupsOutput, HTTPClientError>) -> ()) throws {
        if let describeContinuousBackupsAsyncOverrideNonOptional = describeContinuousBackupsAsyncOverride {
            if let describeContinuousBackupsAsyncOverrideTyped = describeContinuousBackupsAsyncOverrideNonOptional
                    as? DescribeContinuousBackupsAsyncType<InvocationReportingType> {
                return try describeContinuousBackupsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func describeContinuousBackupsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeContinuousBackupsInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.DescribeContinuousBackupsOutput {
        if let describeContinuousBackupsSyncOverrideNonOptional = describeContinuousBackupsSyncOverride {
            if let describeContinuousBackupsSyncOverrideTyped = describeContinuousBackupsSyncOverrideNonOptional
                    as? DescribeContinuousBackupsSyncType<InvocationReportingType> {
                return try describeContinuousBackupsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func describeContributorInsightsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeContributorInsightsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.DescribeContributorInsightsOutput, HTTPClientError>) -> ()) throws {
        if let describeContributorInsightsAsyncOverrideNonOptional = describeContributorInsightsAsyncOverride {
            if let describeContributorInsightsAsyncOverrideTyped = describeContributorInsightsAsyncOverrideNonOptional
                    as? DescribeContributorInsightsAsyncType<InvocationReportingType> {
                return try describeContributorInsightsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func describeContributorInsightsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeContributorInsightsInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.DescribeContributorInsightsOutput {
        if let describeContributorInsightsSyncOverrideNonOptional = describeContributorInsightsSyncOverride {
            if let describeContributorInsightsSyncOverrideTyped = describeContributorInsightsSyncOverrideNonOptional
                    as? DescribeContributorInsightsSyncType<InvocationReportingType> {
                return try describeContributorInsightsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func describeEndpointsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeEndpointsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.DescribeEndpointsResponse, HTTPClientError>) -> ()) throws {
        if let describeEndpointsAsyncOverrideNonOptional = describeEndpointsAsyncOverride {
            if let describeEndpointsAsyncOverrideTyped = describeEndpointsAsyncOverrideNonOptional
                    as? DescribeEndpointsAsyncType<InvocationReportingType> {
                return try describeEndpointsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func describeEndpointsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeEndpointsRequest,
            reporting: InvocationReportingType) throws -> DynamoDBModel.DescribeEndpointsResponse {
        if let describeEndpointsSyncOverrideNonOptional = describeEndpointsSyncOverride {
            if let describeEndpointsSyncOverrideTyped = describeEndpointsSyncOverrideNonOptional
                    as? DescribeEndpointsSyncType<InvocationReportingType> {
                return try describeEndpointsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func describeGlobalTableAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeGlobalTableInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.DescribeGlobalTableOutput, HTTPClientError>) -> ()) throws {
        if let describeGlobalTableAsyncOverrideNonOptional = describeGlobalTableAsyncOverride {
            if let describeGlobalTableAsyncOverrideTyped = describeGlobalTableAsyncOverrideNonOptional
                    as? DescribeGlobalTableAsyncType<InvocationReportingType> {
                return try describeGlobalTableAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func describeGlobalTableSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeGlobalTableInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.DescribeGlobalTableOutput {
        if let describeGlobalTableSyncOverrideNonOptional = describeGlobalTableSyncOverride {
            if let describeGlobalTableSyncOverrideTyped = describeGlobalTableSyncOverrideNonOptional
                    as? DescribeGlobalTableSyncType<InvocationReportingType> {
                return try describeGlobalTableSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func describeGlobalTableSettingsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeGlobalTableSettingsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.DescribeGlobalTableSettingsOutput, HTTPClientError>) -> ()) throws {
        if let describeGlobalTableSettingsAsyncOverrideNonOptional = describeGlobalTableSettingsAsyncOverride {
            if let describeGlobalTableSettingsAsyncOverrideTyped = describeGlobalTableSettingsAsyncOverrideNonOptional
                    as? DescribeGlobalTableSettingsAsyncType<InvocationReportingType> {
                return try describeGlobalTableSettingsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func describeGlobalTableSettingsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeGlobalTableSettingsInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.DescribeGlobalTableSettingsOutput {
        if let describeGlobalTableSettingsSyncOverrideNonOptional = describeGlobalTableSettingsSyncOverride {
            if let describeGlobalTableSettingsSyncOverrideTyped = describeGlobalTableSettingsSyncOverrideNonOptional
                    as? DescribeGlobalTableSettingsSyncType<InvocationReportingType> {
                return try describeGlobalTableSettingsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func describeLimitsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeLimitsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.DescribeLimitsOutput, HTTPClientError>) -> ()) throws {
        if let describeLimitsAsyncOverrideNonOptional = describeLimitsAsyncOverride {
            if let describeLimitsAsyncOverrideTyped = describeLimitsAsyncOverrideNonOptional
                    as? DescribeLimitsAsyncType<InvocationReportingType> {
                return try describeLimitsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func describeLimitsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeLimitsInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.DescribeLimitsOutput {
        if let describeLimitsSyncOverrideNonOptional = describeLimitsSyncOverride {
            if let describeLimitsSyncOverrideTyped = describeLimitsSyncOverrideNonOptional
                    as? DescribeLimitsSyncType<InvocationReportingType> {
                return try describeLimitsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func describeTableAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeTableInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.DescribeTableOutput, HTTPClientError>) -> ()) throws {
        if let describeTableAsyncOverrideNonOptional = describeTableAsyncOverride {
            if let describeTableAsyncOverrideTyped = describeTableAsyncOverrideNonOptional
                    as? DescribeTableAsyncType<InvocationReportingType> {
                return try describeTableAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func describeTableSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeTableInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.DescribeTableOutput {
        if let describeTableSyncOverrideNonOptional = describeTableSyncOverride {
            if let describeTableSyncOverrideTyped = describeTableSyncOverrideNonOptional
                    as? DescribeTableSyncType<InvocationReportingType> {
                return try describeTableSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func describeTableReplicaAutoScalingAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeTableReplicaAutoScalingInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.DescribeTableReplicaAutoScalingOutput, HTTPClientError>) -> ()) throws {
        if let describeTableReplicaAutoScalingAsyncOverrideNonOptional = describeTableReplicaAutoScalingAsyncOverride {
            if let describeTableReplicaAutoScalingAsyncOverrideTyped = describeTableReplicaAutoScalingAsyncOverrideNonOptional
                    as? DescribeTableReplicaAutoScalingAsyncType<InvocationReportingType> {
                return try describeTableReplicaAutoScalingAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func describeTableReplicaAutoScalingSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeTableReplicaAutoScalingInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.DescribeTableReplicaAutoScalingOutput {
        if let describeTableReplicaAutoScalingSyncOverrideNonOptional = describeTableReplicaAutoScalingSyncOverride {
            if let describeTableReplicaAutoScalingSyncOverrideTyped = describeTableReplicaAutoScalingSyncOverrideNonOptional
                    as? DescribeTableReplicaAutoScalingSyncType<InvocationReportingType> {
                return try describeTableReplicaAutoScalingSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func describeTimeToLiveAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeTimeToLiveInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.DescribeTimeToLiveOutput, HTTPClientError>) -> ()) throws {
        if let describeTimeToLiveAsyncOverrideNonOptional = describeTimeToLiveAsyncOverride {
            if let describeTimeToLiveAsyncOverrideTyped = describeTimeToLiveAsyncOverrideNonOptional
                    as? DescribeTimeToLiveAsyncType<InvocationReportingType> {
                return try describeTimeToLiveAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func describeTimeToLiveSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeTimeToLiveInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.DescribeTimeToLiveOutput {
        if let describeTimeToLiveSyncOverrideNonOptional = describeTimeToLiveSyncOverride {
            if let describeTimeToLiveSyncOverrideTyped = describeTimeToLiveSyncOverrideNonOptional
                    as? DescribeTimeToLiveSyncType<InvocationReportingType> {
                return try describeTimeToLiveSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getItemAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.GetItemInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.GetItemOutput, HTTPClientError>) -> ()) throws {
        if let getItemAsyncOverrideNonOptional = getItemAsyncOverride {
            if let getItemAsyncOverrideTyped = getItemAsyncOverrideNonOptional
                    as? GetItemAsyncType<InvocationReportingType> {
                return try getItemAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getItemSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.GetItemInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.GetItemOutput {
        if let getItemSyncOverrideNonOptional = getItemSyncOverride {
            if let getItemSyncOverrideTyped = getItemSyncOverrideNonOptional
                    as? GetItemSyncType<InvocationReportingType> {
                return try getItemSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listBackupsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.ListBackupsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.ListBackupsOutput, HTTPClientError>) -> ()) throws {
        if let listBackupsAsyncOverrideNonOptional = listBackupsAsyncOverride {
            if let listBackupsAsyncOverrideTyped = listBackupsAsyncOverrideNonOptional
                    as? ListBackupsAsyncType<InvocationReportingType> {
                return try listBackupsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listBackupsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.ListBackupsInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.ListBackupsOutput {
        if let listBackupsSyncOverrideNonOptional = listBackupsSyncOverride {
            if let listBackupsSyncOverrideTyped = listBackupsSyncOverrideNonOptional
                    as? ListBackupsSyncType<InvocationReportingType> {
                return try listBackupsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listContributorInsightsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.ListContributorInsightsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.ListContributorInsightsOutput, HTTPClientError>) -> ()) throws {
        if let listContributorInsightsAsyncOverrideNonOptional = listContributorInsightsAsyncOverride {
            if let listContributorInsightsAsyncOverrideTyped = listContributorInsightsAsyncOverrideNonOptional
                    as? ListContributorInsightsAsyncType<InvocationReportingType> {
                return try listContributorInsightsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listContributorInsightsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.ListContributorInsightsInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.ListContributorInsightsOutput {
        if let listContributorInsightsSyncOverrideNonOptional = listContributorInsightsSyncOverride {
            if let listContributorInsightsSyncOverrideTyped = listContributorInsightsSyncOverrideNonOptional
                    as? ListContributorInsightsSyncType<InvocationReportingType> {
                return try listContributorInsightsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listGlobalTablesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.ListGlobalTablesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.ListGlobalTablesOutput, HTTPClientError>) -> ()) throws {
        if let listGlobalTablesAsyncOverrideNonOptional = listGlobalTablesAsyncOverride {
            if let listGlobalTablesAsyncOverrideTyped = listGlobalTablesAsyncOverrideNonOptional
                    as? ListGlobalTablesAsyncType<InvocationReportingType> {
                return try listGlobalTablesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listGlobalTablesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.ListGlobalTablesInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.ListGlobalTablesOutput {
        if let listGlobalTablesSyncOverrideNonOptional = listGlobalTablesSyncOverride {
            if let listGlobalTablesSyncOverrideTyped = listGlobalTablesSyncOverrideNonOptional
                    as? ListGlobalTablesSyncType<InvocationReportingType> {
                return try listGlobalTablesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listTablesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.ListTablesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.ListTablesOutput, HTTPClientError>) -> ()) throws {
        if let listTablesAsyncOverrideNonOptional = listTablesAsyncOverride {
            if let listTablesAsyncOverrideTyped = listTablesAsyncOverrideNonOptional
                    as? ListTablesAsyncType<InvocationReportingType> {
                return try listTablesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listTablesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.ListTablesInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.ListTablesOutput {
        if let listTablesSyncOverrideNonOptional = listTablesSyncOverride {
            if let listTablesSyncOverrideTyped = listTablesSyncOverrideNonOptional
                    as? ListTablesSyncType<InvocationReportingType> {
                return try listTablesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listTagsOfResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.ListTagsOfResourceInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.ListTagsOfResourceOutput, HTTPClientError>) -> ()) throws {
        if let listTagsOfResourceAsyncOverrideNonOptional = listTagsOfResourceAsyncOverride {
            if let listTagsOfResourceAsyncOverrideTyped = listTagsOfResourceAsyncOverrideNonOptional
                    as? ListTagsOfResourceAsyncType<InvocationReportingType> {
                return try listTagsOfResourceAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listTagsOfResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.ListTagsOfResourceInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.ListTagsOfResourceOutput {
        if let listTagsOfResourceSyncOverrideNonOptional = listTagsOfResourceSyncOverride {
            if let listTagsOfResourceSyncOverrideTyped = listTagsOfResourceSyncOverrideNonOptional
                    as? ListTagsOfResourceSyncType<InvocationReportingType> {
                return try listTagsOfResourceSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putItemAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.PutItemInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.PutItemOutput, HTTPClientError>) -> ()) throws {
        if let putItemAsyncOverrideNonOptional = putItemAsyncOverride {
            if let putItemAsyncOverrideTyped = putItemAsyncOverrideNonOptional
                    as? PutItemAsyncType<InvocationReportingType> {
                return try putItemAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putItemSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.PutItemInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.PutItemOutput {
        if let putItemSyncOverrideNonOptional = putItemSyncOverride {
            if let putItemSyncOverrideTyped = putItemSyncOverrideNonOptional
                    as? PutItemSyncType<InvocationReportingType> {
                return try putItemSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func queryAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.QueryInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.QueryOutput, HTTPClientError>) -> ()) throws {
        if let queryAsyncOverrideNonOptional = queryAsyncOverride {
            if let queryAsyncOverrideTyped = queryAsyncOverrideNonOptional
                    as? QueryAsyncType<InvocationReportingType> {
                return try queryAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func querySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.QueryInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.QueryOutput {
        if let querySyncOverrideNonOptional = querySyncOverride {
            if let querySyncOverrideTyped = querySyncOverrideNonOptional
                    as? QuerySyncType<InvocationReportingType> {
                return try querySyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func restoreTableFromBackupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.RestoreTableFromBackupInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.RestoreTableFromBackupOutput, HTTPClientError>) -> ()) throws {
        if let restoreTableFromBackupAsyncOverrideNonOptional = restoreTableFromBackupAsyncOverride {
            if let restoreTableFromBackupAsyncOverrideTyped = restoreTableFromBackupAsyncOverrideNonOptional
                    as? RestoreTableFromBackupAsyncType<InvocationReportingType> {
                return try restoreTableFromBackupAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func restoreTableFromBackupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.RestoreTableFromBackupInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.RestoreTableFromBackupOutput {
        if let restoreTableFromBackupSyncOverrideNonOptional = restoreTableFromBackupSyncOverride {
            if let restoreTableFromBackupSyncOverrideTyped = restoreTableFromBackupSyncOverrideNonOptional
                    as? RestoreTableFromBackupSyncType<InvocationReportingType> {
                return try restoreTableFromBackupSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func restoreTableToPointInTimeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.RestoreTableToPointInTimeInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.RestoreTableToPointInTimeOutput, HTTPClientError>) -> ()) throws {
        if let restoreTableToPointInTimeAsyncOverrideNonOptional = restoreTableToPointInTimeAsyncOverride {
            if let restoreTableToPointInTimeAsyncOverrideTyped = restoreTableToPointInTimeAsyncOverrideNonOptional
                    as? RestoreTableToPointInTimeAsyncType<InvocationReportingType> {
                return try restoreTableToPointInTimeAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func restoreTableToPointInTimeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.RestoreTableToPointInTimeInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.RestoreTableToPointInTimeOutput {
        if let restoreTableToPointInTimeSyncOverrideNonOptional = restoreTableToPointInTimeSyncOverride {
            if let restoreTableToPointInTimeSyncOverrideTyped = restoreTableToPointInTimeSyncOverrideNonOptional
                    as? RestoreTableToPointInTimeSyncType<InvocationReportingType> {
                return try restoreTableToPointInTimeSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func scanAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.ScanInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.ScanOutput, HTTPClientError>) -> ()) throws {
        if let scanAsyncOverrideNonOptional = scanAsyncOverride {
            if let scanAsyncOverrideTyped = scanAsyncOverrideNonOptional
                    as? ScanAsyncType<InvocationReportingType> {
                return try scanAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func scanSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.ScanInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.ScanOutput {
        if let scanSyncOverrideNonOptional = scanSyncOverride {
            if let scanSyncOverrideTyped = scanSyncOverrideNonOptional
                    as? ScanSyncType<InvocationReportingType> {
                return try scanSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func tagResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.TagResourceInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let tagResourceAsyncOverrideNonOptional = tagResourceAsyncOverride {
            if let tagResourceAsyncOverrideTyped = tagResourceAsyncOverrideNonOptional
                    as? TagResourceAsyncType<InvocationReportingType> {
                return try tagResourceAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    public func tagResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.TagResourceInput,
            reporting: InvocationReportingType) throws {
        if let tagResourceSyncOverrideNonOptional = tagResourceSyncOverride {
            if let tagResourceSyncOverrideTyped = tagResourceSyncOverrideNonOptional
                    as? TagResourceSyncType<InvocationReportingType> {
                return try tagResourceSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func transactGetItemsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.TransactGetItemsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.TransactGetItemsOutput, HTTPClientError>) -> ()) throws {
        if let transactGetItemsAsyncOverrideNonOptional = transactGetItemsAsyncOverride {
            if let transactGetItemsAsyncOverrideTyped = transactGetItemsAsyncOverrideNonOptional
                    as? TransactGetItemsAsyncType<InvocationReportingType> {
                return try transactGetItemsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func transactGetItemsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.TransactGetItemsInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.TransactGetItemsOutput {
        if let transactGetItemsSyncOverrideNonOptional = transactGetItemsSyncOverride {
            if let transactGetItemsSyncOverrideTyped = transactGetItemsSyncOverrideNonOptional
                    as? TransactGetItemsSyncType<InvocationReportingType> {
                return try transactGetItemsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func transactWriteItemsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.TransactWriteItemsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.TransactWriteItemsOutput, HTTPClientError>) -> ()) throws {
        if let transactWriteItemsAsyncOverrideNonOptional = transactWriteItemsAsyncOverride {
            if let transactWriteItemsAsyncOverrideTyped = transactWriteItemsAsyncOverrideNonOptional
                    as? TransactWriteItemsAsyncType<InvocationReportingType> {
                return try transactWriteItemsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func transactWriteItemsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.TransactWriteItemsInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.TransactWriteItemsOutput {
        if let transactWriteItemsSyncOverrideNonOptional = transactWriteItemsSyncOverride {
            if let transactWriteItemsSyncOverrideTyped = transactWriteItemsSyncOverrideNonOptional
                    as? TransactWriteItemsSyncType<InvocationReportingType> {
                return try transactWriteItemsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func untagResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.UntagResourceInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let untagResourceAsyncOverrideNonOptional = untagResourceAsyncOverride {
            if let untagResourceAsyncOverrideTyped = untagResourceAsyncOverrideNonOptional
                    as? UntagResourceAsyncType<InvocationReportingType> {
                return try untagResourceAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    public func untagResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.UntagResourceInput,
            reporting: InvocationReportingType) throws {
        if let untagResourceSyncOverrideNonOptional = untagResourceSyncOverride {
            if let untagResourceSyncOverrideTyped = untagResourceSyncOverrideNonOptional
                    as? UntagResourceSyncType<InvocationReportingType> {
                return try untagResourceSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func updateContinuousBackupsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.UpdateContinuousBackupsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.UpdateContinuousBackupsOutput, HTTPClientError>) -> ()) throws {
        if let updateContinuousBackupsAsyncOverrideNonOptional = updateContinuousBackupsAsyncOverride {
            if let updateContinuousBackupsAsyncOverrideTyped = updateContinuousBackupsAsyncOverrideNonOptional
                    as? UpdateContinuousBackupsAsyncType<InvocationReportingType> {
                return try updateContinuousBackupsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func updateContinuousBackupsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.UpdateContinuousBackupsInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.UpdateContinuousBackupsOutput {
        if let updateContinuousBackupsSyncOverrideNonOptional = updateContinuousBackupsSyncOverride {
            if let updateContinuousBackupsSyncOverrideTyped = updateContinuousBackupsSyncOverrideNonOptional
                    as? UpdateContinuousBackupsSyncType<InvocationReportingType> {
                return try updateContinuousBackupsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func updateContributorInsightsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.UpdateContributorInsightsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.UpdateContributorInsightsOutput, HTTPClientError>) -> ()) throws {
        if let updateContributorInsightsAsyncOverrideNonOptional = updateContributorInsightsAsyncOverride {
            if let updateContributorInsightsAsyncOverrideTyped = updateContributorInsightsAsyncOverrideNonOptional
                    as? UpdateContributorInsightsAsyncType<InvocationReportingType> {
                return try updateContributorInsightsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func updateContributorInsightsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.UpdateContributorInsightsInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.UpdateContributorInsightsOutput {
        if let updateContributorInsightsSyncOverrideNonOptional = updateContributorInsightsSyncOverride {
            if let updateContributorInsightsSyncOverrideTyped = updateContributorInsightsSyncOverrideNonOptional
                    as? UpdateContributorInsightsSyncType<InvocationReportingType> {
                return try updateContributorInsightsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func updateGlobalTableAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.UpdateGlobalTableInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.UpdateGlobalTableOutput, HTTPClientError>) -> ()) throws {
        if let updateGlobalTableAsyncOverrideNonOptional = updateGlobalTableAsyncOverride {
            if let updateGlobalTableAsyncOverrideTyped = updateGlobalTableAsyncOverrideNonOptional
                    as? UpdateGlobalTableAsyncType<InvocationReportingType> {
                return try updateGlobalTableAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func updateGlobalTableSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.UpdateGlobalTableInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.UpdateGlobalTableOutput {
        if let updateGlobalTableSyncOverrideNonOptional = updateGlobalTableSyncOverride {
            if let updateGlobalTableSyncOverrideTyped = updateGlobalTableSyncOverrideNonOptional
                    as? UpdateGlobalTableSyncType<InvocationReportingType> {
                return try updateGlobalTableSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func updateGlobalTableSettingsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.UpdateGlobalTableSettingsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.UpdateGlobalTableSettingsOutput, HTTPClientError>) -> ()) throws {
        if let updateGlobalTableSettingsAsyncOverrideNonOptional = updateGlobalTableSettingsAsyncOverride {
            if let updateGlobalTableSettingsAsyncOverrideTyped = updateGlobalTableSettingsAsyncOverrideNonOptional
                    as? UpdateGlobalTableSettingsAsyncType<InvocationReportingType> {
                return try updateGlobalTableSettingsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func updateGlobalTableSettingsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.UpdateGlobalTableSettingsInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.UpdateGlobalTableSettingsOutput {
        if let updateGlobalTableSettingsSyncOverrideNonOptional = updateGlobalTableSettingsSyncOverride {
            if let updateGlobalTableSettingsSyncOverrideTyped = updateGlobalTableSettingsSyncOverrideNonOptional
                    as? UpdateGlobalTableSettingsSyncType<InvocationReportingType> {
                return try updateGlobalTableSettingsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func updateItemAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.UpdateItemInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.UpdateItemOutput, HTTPClientError>) -> ()) throws {
        if let updateItemAsyncOverrideNonOptional = updateItemAsyncOverride {
            if let updateItemAsyncOverrideTyped = updateItemAsyncOverrideNonOptional
                    as? UpdateItemAsyncType<InvocationReportingType> {
                return try updateItemAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func updateItemSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.UpdateItemInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.UpdateItemOutput {
        if let updateItemSyncOverrideNonOptional = updateItemSyncOverride {
            if let updateItemSyncOverrideTyped = updateItemSyncOverrideNonOptional
                    as? UpdateItemSyncType<InvocationReportingType> {
                return try updateItemSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func updateTableAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.UpdateTableInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.UpdateTableOutput, HTTPClientError>) -> ()) throws {
        if let updateTableAsyncOverrideNonOptional = updateTableAsyncOverride {
            if let updateTableAsyncOverrideTyped = updateTableAsyncOverrideNonOptional
                    as? UpdateTableAsyncType<InvocationReportingType> {
                return try updateTableAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func updateTableSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.UpdateTableInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.UpdateTableOutput {
        if let updateTableSyncOverrideNonOptional = updateTableSyncOverride {
            if let updateTableSyncOverrideTyped = updateTableSyncOverrideNonOptional
                    as? UpdateTableSyncType<InvocationReportingType> {
                return try updateTableSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func updateTableReplicaAutoScalingAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.UpdateTableReplicaAutoScalingInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.UpdateTableReplicaAutoScalingOutput, HTTPClientError>) -> ()) throws {
        if let updateTableReplicaAutoScalingAsyncOverrideNonOptional = updateTableReplicaAutoScalingAsyncOverride {
            if let updateTableReplicaAutoScalingAsyncOverrideTyped = updateTableReplicaAutoScalingAsyncOverrideNonOptional
                    as? UpdateTableReplicaAutoScalingAsyncType<InvocationReportingType> {
                return try updateTableReplicaAutoScalingAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func updateTableReplicaAutoScalingSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.UpdateTableReplicaAutoScalingInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.UpdateTableReplicaAutoScalingOutput {
        if let updateTableReplicaAutoScalingSyncOverrideNonOptional = updateTableReplicaAutoScalingSyncOverride {
            if let updateTableReplicaAutoScalingSyncOverrideTyped = updateTableReplicaAutoScalingSyncOverrideNonOptional
                    as? UpdateTableReplicaAutoScalingSyncType<InvocationReportingType> {
                return try updateTableReplicaAutoScalingSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func updateTimeToLiveAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.UpdateTimeToLiveInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.UpdateTimeToLiveOutput, HTTPClientError>) -> ()) throws {
        if let updateTimeToLiveAsyncOverrideNonOptional = updateTimeToLiveAsyncOverride {
            if let updateTimeToLiveAsyncOverrideTyped = updateTimeToLiveAsyncOverrideNonOptional
                    as? UpdateTimeToLiveAsyncType<InvocationReportingType> {
                return try updateTimeToLiveAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func updateTimeToLiveSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.UpdateTimeToLiveInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.UpdateTimeToLiveOutput {
        if let updateTimeToLiveSyncOverrideNonOptional = updateTimeToLiveSyncOverride {
            if let updateTimeToLiveSyncOverrideTyped = updateTimeToLiveSyncOverrideNonOptional
                    as? UpdateTimeToLiveSyncType<InvocationReportingType> {
                return try updateTimeToLiveSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }
}
