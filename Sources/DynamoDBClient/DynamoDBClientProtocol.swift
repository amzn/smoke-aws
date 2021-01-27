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
// DynamoDBClientProtocol.swift
// DynamoDBClient
//

import Foundation
import DynamoDBModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Client Protocol for the DynamoDB service.
 */
public protocol DynamoDBClientProtocol {
    typealias BatchExecuteStatementSyncType = (
            _ input: DynamoDBModel.BatchExecuteStatementInput) throws -> DynamoDBModel.BatchExecuteStatementOutput
    typealias BatchExecuteStatementAsyncType = (
            _ input: DynamoDBModel.BatchExecuteStatementInput, 
            _ completion: @escaping (Result<DynamoDBModel.BatchExecuteStatementOutput, DynamoDBError>) -> ()) throws -> ()
    typealias BatchGetItemSyncType = (
            _ input: DynamoDBModel.BatchGetItemInput) throws -> DynamoDBModel.BatchGetItemOutput
    typealias BatchGetItemAsyncType = (
            _ input: DynamoDBModel.BatchGetItemInput, 
            _ completion: @escaping (Result<DynamoDBModel.BatchGetItemOutput, DynamoDBError>) -> ()) throws -> ()
    typealias BatchWriteItemSyncType = (
            _ input: DynamoDBModel.BatchWriteItemInput) throws -> DynamoDBModel.BatchWriteItemOutput
    typealias BatchWriteItemAsyncType = (
            _ input: DynamoDBModel.BatchWriteItemInput, 
            _ completion: @escaping (Result<DynamoDBModel.BatchWriteItemOutput, DynamoDBError>) -> ()) throws -> ()
    typealias CreateBackupSyncType = (
            _ input: DynamoDBModel.CreateBackupInput) throws -> DynamoDBModel.CreateBackupOutput
    typealias CreateBackupAsyncType = (
            _ input: DynamoDBModel.CreateBackupInput, 
            _ completion: @escaping (Result<DynamoDBModel.CreateBackupOutput, DynamoDBError>) -> ()) throws -> ()
    typealias CreateGlobalTableSyncType = (
            _ input: DynamoDBModel.CreateGlobalTableInput) throws -> DynamoDBModel.CreateGlobalTableOutput
    typealias CreateGlobalTableAsyncType = (
            _ input: DynamoDBModel.CreateGlobalTableInput, 
            _ completion: @escaping (Result<DynamoDBModel.CreateGlobalTableOutput, DynamoDBError>) -> ()) throws -> ()
    typealias CreateTableSyncType = (
            _ input: DynamoDBModel.CreateTableInput) throws -> DynamoDBModel.CreateTableOutput
    typealias CreateTableAsyncType = (
            _ input: DynamoDBModel.CreateTableInput, 
            _ completion: @escaping (Result<DynamoDBModel.CreateTableOutput, DynamoDBError>) -> ()) throws -> ()
    typealias DeleteBackupSyncType = (
            _ input: DynamoDBModel.DeleteBackupInput) throws -> DynamoDBModel.DeleteBackupOutput
    typealias DeleteBackupAsyncType = (
            _ input: DynamoDBModel.DeleteBackupInput, 
            _ completion: @escaping (Result<DynamoDBModel.DeleteBackupOutput, DynamoDBError>) -> ()) throws -> ()
    typealias DeleteItemSyncType = (
            _ input: DynamoDBModel.DeleteItemInput) throws -> DynamoDBModel.DeleteItemOutput
    typealias DeleteItemAsyncType = (
            _ input: DynamoDBModel.DeleteItemInput, 
            _ completion: @escaping (Result<DynamoDBModel.DeleteItemOutput, DynamoDBError>) -> ()) throws -> ()
    typealias DeleteTableSyncType = (
            _ input: DynamoDBModel.DeleteTableInput) throws -> DynamoDBModel.DeleteTableOutput
    typealias DeleteTableAsyncType = (
            _ input: DynamoDBModel.DeleteTableInput, 
            _ completion: @escaping (Result<DynamoDBModel.DeleteTableOutput, DynamoDBError>) -> ()) throws -> ()
    typealias DescribeBackupSyncType = (
            _ input: DynamoDBModel.DescribeBackupInput) throws -> DynamoDBModel.DescribeBackupOutput
    typealias DescribeBackupAsyncType = (
            _ input: DynamoDBModel.DescribeBackupInput, 
            _ completion: @escaping (Result<DynamoDBModel.DescribeBackupOutput, DynamoDBError>) -> ()) throws -> ()
    typealias DescribeContinuousBackupsSyncType = (
            _ input: DynamoDBModel.DescribeContinuousBackupsInput) throws -> DynamoDBModel.DescribeContinuousBackupsOutput
    typealias DescribeContinuousBackupsAsyncType = (
            _ input: DynamoDBModel.DescribeContinuousBackupsInput, 
            _ completion: @escaping (Result<DynamoDBModel.DescribeContinuousBackupsOutput, DynamoDBError>) -> ()) throws -> ()
    typealias DescribeContributorInsightsSyncType = (
            _ input: DynamoDBModel.DescribeContributorInsightsInput) throws -> DynamoDBModel.DescribeContributorInsightsOutput
    typealias DescribeContributorInsightsAsyncType = (
            _ input: DynamoDBModel.DescribeContributorInsightsInput, 
            _ completion: @escaping (Result<DynamoDBModel.DescribeContributorInsightsOutput, DynamoDBError>) -> ()) throws -> ()
    typealias DescribeEndpointsSyncType = (
            _ input: DynamoDBModel.DescribeEndpointsRequest) throws -> DynamoDBModel.DescribeEndpointsResponse
    typealias DescribeEndpointsAsyncType = (
            _ input: DynamoDBModel.DescribeEndpointsRequest, 
            _ completion: @escaping (Result<DynamoDBModel.DescribeEndpointsResponse, DynamoDBError>) -> ()) throws -> ()
    typealias DescribeExportSyncType = (
            _ input: DynamoDBModel.DescribeExportInput) throws -> DynamoDBModel.DescribeExportOutput
    typealias DescribeExportAsyncType = (
            _ input: DynamoDBModel.DescribeExportInput, 
            _ completion: @escaping (Result<DynamoDBModel.DescribeExportOutput, DynamoDBError>) -> ()) throws -> ()
    typealias DescribeGlobalTableSyncType = (
            _ input: DynamoDBModel.DescribeGlobalTableInput) throws -> DynamoDBModel.DescribeGlobalTableOutput
    typealias DescribeGlobalTableAsyncType = (
            _ input: DynamoDBModel.DescribeGlobalTableInput, 
            _ completion: @escaping (Result<DynamoDBModel.DescribeGlobalTableOutput, DynamoDBError>) -> ()) throws -> ()
    typealias DescribeGlobalTableSettingsSyncType = (
            _ input: DynamoDBModel.DescribeGlobalTableSettingsInput) throws -> DynamoDBModel.DescribeGlobalTableSettingsOutput
    typealias DescribeGlobalTableSettingsAsyncType = (
            _ input: DynamoDBModel.DescribeGlobalTableSettingsInput, 
            _ completion: @escaping (Result<DynamoDBModel.DescribeGlobalTableSettingsOutput, DynamoDBError>) -> ()) throws -> ()
    typealias DescribeKinesisStreamingDestinationSyncType = (
            _ input: DynamoDBModel.DescribeKinesisStreamingDestinationInput) throws -> DynamoDBModel.DescribeKinesisStreamingDestinationOutput
    typealias DescribeKinesisStreamingDestinationAsyncType = (
            _ input: DynamoDBModel.DescribeKinesisStreamingDestinationInput, 
            _ completion: @escaping (Result<DynamoDBModel.DescribeKinesisStreamingDestinationOutput, DynamoDBError>) -> ()) throws -> ()
    typealias DescribeLimitsSyncType = (
            _ input: DynamoDBModel.DescribeLimitsInput) throws -> DynamoDBModel.DescribeLimitsOutput
    typealias DescribeLimitsAsyncType = (
            _ input: DynamoDBModel.DescribeLimitsInput, 
            _ completion: @escaping (Result<DynamoDBModel.DescribeLimitsOutput, DynamoDBError>) -> ()) throws -> ()
    typealias DescribeTableSyncType = (
            _ input: DynamoDBModel.DescribeTableInput) throws -> DynamoDBModel.DescribeTableOutput
    typealias DescribeTableAsyncType = (
            _ input: DynamoDBModel.DescribeTableInput, 
            _ completion: @escaping (Result<DynamoDBModel.DescribeTableOutput, DynamoDBError>) -> ()) throws -> ()
    typealias DescribeTableReplicaAutoScalingSyncType = (
            _ input: DynamoDBModel.DescribeTableReplicaAutoScalingInput) throws -> DynamoDBModel.DescribeTableReplicaAutoScalingOutput
    typealias DescribeTableReplicaAutoScalingAsyncType = (
            _ input: DynamoDBModel.DescribeTableReplicaAutoScalingInput, 
            _ completion: @escaping (Result<DynamoDBModel.DescribeTableReplicaAutoScalingOutput, DynamoDBError>) -> ()) throws -> ()
    typealias DescribeTimeToLiveSyncType = (
            _ input: DynamoDBModel.DescribeTimeToLiveInput) throws -> DynamoDBModel.DescribeTimeToLiveOutput
    typealias DescribeTimeToLiveAsyncType = (
            _ input: DynamoDBModel.DescribeTimeToLiveInput, 
            _ completion: @escaping (Result<DynamoDBModel.DescribeTimeToLiveOutput, DynamoDBError>) -> ()) throws -> ()
    typealias DisableKinesisStreamingDestinationSyncType = (
            _ input: DynamoDBModel.KinesisStreamingDestinationInput) throws -> DynamoDBModel.KinesisStreamingDestinationOutput
    typealias DisableKinesisStreamingDestinationAsyncType = (
            _ input: DynamoDBModel.KinesisStreamingDestinationInput, 
            _ completion: @escaping (Result<DynamoDBModel.KinesisStreamingDestinationOutput, DynamoDBError>) -> ()) throws -> ()
    typealias EnableKinesisStreamingDestinationSyncType = (
            _ input: DynamoDBModel.KinesisStreamingDestinationInput) throws -> DynamoDBModel.KinesisStreamingDestinationOutput
    typealias EnableKinesisStreamingDestinationAsyncType = (
            _ input: DynamoDBModel.KinesisStreamingDestinationInput, 
            _ completion: @escaping (Result<DynamoDBModel.KinesisStreamingDestinationOutput, DynamoDBError>) -> ()) throws -> ()
    typealias ExecuteStatementSyncType = (
            _ input: DynamoDBModel.ExecuteStatementInput) throws -> DynamoDBModel.ExecuteStatementOutput
    typealias ExecuteStatementAsyncType = (
            _ input: DynamoDBModel.ExecuteStatementInput, 
            _ completion: @escaping (Result<DynamoDBModel.ExecuteStatementOutput, DynamoDBError>) -> ()) throws -> ()
    typealias ExecuteTransactionSyncType = (
            _ input: DynamoDBModel.ExecuteTransactionInput) throws -> DynamoDBModel.ExecuteTransactionOutput
    typealias ExecuteTransactionAsyncType = (
            _ input: DynamoDBModel.ExecuteTransactionInput, 
            _ completion: @escaping (Result<DynamoDBModel.ExecuteTransactionOutput, DynamoDBError>) -> ()) throws -> ()
    typealias ExportTableToPointInTimeSyncType = (
            _ input: DynamoDBModel.ExportTableToPointInTimeInput) throws -> DynamoDBModel.ExportTableToPointInTimeOutput
    typealias ExportTableToPointInTimeAsyncType = (
            _ input: DynamoDBModel.ExportTableToPointInTimeInput, 
            _ completion: @escaping (Result<DynamoDBModel.ExportTableToPointInTimeOutput, DynamoDBError>) -> ()) throws -> ()
    typealias GetItemSyncType = (
            _ input: DynamoDBModel.GetItemInput) throws -> DynamoDBModel.GetItemOutput
    typealias GetItemAsyncType = (
            _ input: DynamoDBModel.GetItemInput, 
            _ completion: @escaping (Result<DynamoDBModel.GetItemOutput, DynamoDBError>) -> ()) throws -> ()
    typealias ListBackupsSyncType = (
            _ input: DynamoDBModel.ListBackupsInput) throws -> DynamoDBModel.ListBackupsOutput
    typealias ListBackupsAsyncType = (
            _ input: DynamoDBModel.ListBackupsInput, 
            _ completion: @escaping (Result<DynamoDBModel.ListBackupsOutput, DynamoDBError>) -> ()) throws -> ()
    typealias ListContributorInsightsSyncType = (
            _ input: DynamoDBModel.ListContributorInsightsInput) throws -> DynamoDBModel.ListContributorInsightsOutput
    typealias ListContributorInsightsAsyncType = (
            _ input: DynamoDBModel.ListContributorInsightsInput, 
            _ completion: @escaping (Result<DynamoDBModel.ListContributorInsightsOutput, DynamoDBError>) -> ()) throws -> ()
    typealias ListExportsSyncType = (
            _ input: DynamoDBModel.ListExportsInput) throws -> DynamoDBModel.ListExportsOutput
    typealias ListExportsAsyncType = (
            _ input: DynamoDBModel.ListExportsInput, 
            _ completion: @escaping (Result<DynamoDBModel.ListExportsOutput, DynamoDBError>) -> ()) throws -> ()
    typealias ListGlobalTablesSyncType = (
            _ input: DynamoDBModel.ListGlobalTablesInput) throws -> DynamoDBModel.ListGlobalTablesOutput
    typealias ListGlobalTablesAsyncType = (
            _ input: DynamoDBModel.ListGlobalTablesInput, 
            _ completion: @escaping (Result<DynamoDBModel.ListGlobalTablesOutput, DynamoDBError>) -> ()) throws -> ()
    typealias ListTablesSyncType = (
            _ input: DynamoDBModel.ListTablesInput) throws -> DynamoDBModel.ListTablesOutput
    typealias ListTablesAsyncType = (
            _ input: DynamoDBModel.ListTablesInput, 
            _ completion: @escaping (Result<DynamoDBModel.ListTablesOutput, DynamoDBError>) -> ()) throws -> ()
    typealias ListTagsOfResourceSyncType = (
            _ input: DynamoDBModel.ListTagsOfResourceInput) throws -> DynamoDBModel.ListTagsOfResourceOutput
    typealias ListTagsOfResourceAsyncType = (
            _ input: DynamoDBModel.ListTagsOfResourceInput, 
            _ completion: @escaping (Result<DynamoDBModel.ListTagsOfResourceOutput, DynamoDBError>) -> ()) throws -> ()
    typealias PutItemSyncType = (
            _ input: DynamoDBModel.PutItemInput) throws -> DynamoDBModel.PutItemOutput
    typealias PutItemAsyncType = (
            _ input: DynamoDBModel.PutItemInput, 
            _ completion: @escaping (Result<DynamoDBModel.PutItemOutput, DynamoDBError>) -> ()) throws -> ()
    typealias QuerySyncType = (
            _ input: DynamoDBModel.QueryInput) throws -> DynamoDBModel.QueryOutput
    typealias QueryAsyncType = (
            _ input: DynamoDBModel.QueryInput, 
            _ completion: @escaping (Result<DynamoDBModel.QueryOutput, DynamoDBError>) -> ()) throws -> ()
    typealias RestoreTableFromBackupSyncType = (
            _ input: DynamoDBModel.RestoreTableFromBackupInput) throws -> DynamoDBModel.RestoreTableFromBackupOutput
    typealias RestoreTableFromBackupAsyncType = (
            _ input: DynamoDBModel.RestoreTableFromBackupInput, 
            _ completion: @escaping (Result<DynamoDBModel.RestoreTableFromBackupOutput, DynamoDBError>) -> ()) throws -> ()
    typealias RestoreTableToPointInTimeSyncType = (
            _ input: DynamoDBModel.RestoreTableToPointInTimeInput) throws -> DynamoDBModel.RestoreTableToPointInTimeOutput
    typealias RestoreTableToPointInTimeAsyncType = (
            _ input: DynamoDBModel.RestoreTableToPointInTimeInput, 
            _ completion: @escaping (Result<DynamoDBModel.RestoreTableToPointInTimeOutput, DynamoDBError>) -> ()) throws -> ()
    typealias ScanSyncType = (
            _ input: DynamoDBModel.ScanInput) throws -> DynamoDBModel.ScanOutput
    typealias ScanAsyncType = (
            _ input: DynamoDBModel.ScanInput, 
            _ completion: @escaping (Result<DynamoDBModel.ScanOutput, DynamoDBError>) -> ()) throws -> ()
    typealias TagResourceSyncType = (
            _ input: DynamoDBModel.TagResourceInput) throws -> ()
    typealias TagResourceAsyncType = (
            _ input: DynamoDBModel.TagResourceInput, 
            _ completion: @escaping (DynamoDBError?) -> ()) throws -> ()
    typealias TransactGetItemsSyncType = (
            _ input: DynamoDBModel.TransactGetItemsInput) throws -> DynamoDBModel.TransactGetItemsOutput
    typealias TransactGetItemsAsyncType = (
            _ input: DynamoDBModel.TransactGetItemsInput, 
            _ completion: @escaping (Result<DynamoDBModel.TransactGetItemsOutput, DynamoDBError>) -> ()) throws -> ()
    typealias TransactWriteItemsSyncType = (
            _ input: DynamoDBModel.TransactWriteItemsInput) throws -> DynamoDBModel.TransactWriteItemsOutput
    typealias TransactWriteItemsAsyncType = (
            _ input: DynamoDBModel.TransactWriteItemsInput, 
            _ completion: @escaping (Result<DynamoDBModel.TransactWriteItemsOutput, DynamoDBError>) -> ()) throws -> ()
    typealias UntagResourceSyncType = (
            _ input: DynamoDBModel.UntagResourceInput) throws -> ()
    typealias UntagResourceAsyncType = (
            _ input: DynamoDBModel.UntagResourceInput, 
            _ completion: @escaping (DynamoDBError?) -> ()) throws -> ()
    typealias UpdateContinuousBackupsSyncType = (
            _ input: DynamoDBModel.UpdateContinuousBackupsInput) throws -> DynamoDBModel.UpdateContinuousBackupsOutput
    typealias UpdateContinuousBackupsAsyncType = (
            _ input: DynamoDBModel.UpdateContinuousBackupsInput, 
            _ completion: @escaping (Result<DynamoDBModel.UpdateContinuousBackupsOutput, DynamoDBError>) -> ()) throws -> ()
    typealias UpdateContributorInsightsSyncType = (
            _ input: DynamoDBModel.UpdateContributorInsightsInput) throws -> DynamoDBModel.UpdateContributorInsightsOutput
    typealias UpdateContributorInsightsAsyncType = (
            _ input: DynamoDBModel.UpdateContributorInsightsInput, 
            _ completion: @escaping (Result<DynamoDBModel.UpdateContributorInsightsOutput, DynamoDBError>) -> ()) throws -> ()
    typealias UpdateGlobalTableSyncType = (
            _ input: DynamoDBModel.UpdateGlobalTableInput) throws -> DynamoDBModel.UpdateGlobalTableOutput
    typealias UpdateGlobalTableAsyncType = (
            _ input: DynamoDBModel.UpdateGlobalTableInput, 
            _ completion: @escaping (Result<DynamoDBModel.UpdateGlobalTableOutput, DynamoDBError>) -> ()) throws -> ()
    typealias UpdateGlobalTableSettingsSyncType = (
            _ input: DynamoDBModel.UpdateGlobalTableSettingsInput) throws -> DynamoDBModel.UpdateGlobalTableSettingsOutput
    typealias UpdateGlobalTableSettingsAsyncType = (
            _ input: DynamoDBModel.UpdateGlobalTableSettingsInput, 
            _ completion: @escaping (Result<DynamoDBModel.UpdateGlobalTableSettingsOutput, DynamoDBError>) -> ()) throws -> ()
    typealias UpdateItemSyncType = (
            _ input: DynamoDBModel.UpdateItemInput) throws -> DynamoDBModel.UpdateItemOutput
    typealias UpdateItemAsyncType = (
            _ input: DynamoDBModel.UpdateItemInput, 
            _ completion: @escaping (Result<DynamoDBModel.UpdateItemOutput, DynamoDBError>) -> ()) throws -> ()
    typealias UpdateTableSyncType = (
            _ input: DynamoDBModel.UpdateTableInput) throws -> DynamoDBModel.UpdateTableOutput
    typealias UpdateTableAsyncType = (
            _ input: DynamoDBModel.UpdateTableInput, 
            _ completion: @escaping (Result<DynamoDBModel.UpdateTableOutput, DynamoDBError>) -> ()) throws -> ()
    typealias UpdateTableReplicaAutoScalingSyncType = (
            _ input: DynamoDBModel.UpdateTableReplicaAutoScalingInput) throws -> DynamoDBModel.UpdateTableReplicaAutoScalingOutput
    typealias UpdateTableReplicaAutoScalingAsyncType = (
            _ input: DynamoDBModel.UpdateTableReplicaAutoScalingInput, 
            _ completion: @escaping (Result<DynamoDBModel.UpdateTableReplicaAutoScalingOutput, DynamoDBError>) -> ()) throws -> ()
    typealias UpdateTimeToLiveSyncType = (
            _ input: DynamoDBModel.UpdateTimeToLiveInput) throws -> DynamoDBModel.UpdateTimeToLiveOutput
    typealias UpdateTimeToLiveAsyncType = (
            _ input: DynamoDBModel.UpdateTimeToLiveInput, 
            _ completion: @escaping (Result<DynamoDBModel.UpdateTimeToLiveOutput, DynamoDBError>) -> ()) throws -> ()

    /**
     Invokes the BatchExecuteStatement operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchExecuteStatementInput object being passed to this operation.
         - completion: The BatchExecuteStatementOutput object or an error will be passed to this 
           callback when the operation is complete. The BatchExecuteStatementOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, requestLimitExceeded.
     */
    func batchExecuteStatementAsync(
            input: DynamoDBModel.BatchExecuteStatementInput, 
            completion: @escaping (Result<DynamoDBModel.BatchExecuteStatementOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the BatchExecuteStatement operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchExecuteStatementInput object being passed to this operation.
     - Returns: The BatchExecuteStatementOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, requestLimitExceeded.
     */
    func batchExecuteStatementSync(
            input: DynamoDBModel.BatchExecuteStatementInput) throws -> DynamoDBModel.BatchExecuteStatementOutput

    /**
     Invokes the BatchGetItem operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchGetItemInput object being passed to this operation.
         - completion: The BatchGetItemOutput object or an error will be passed to this 
           callback when the operation is complete. The BatchGetItemOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    func batchGetItemAsync(
            input: DynamoDBModel.BatchGetItemInput, 
            completion: @escaping (Result<DynamoDBModel.BatchGetItemOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the BatchGetItem operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchGetItemInput object being passed to this operation.
     - Returns: The BatchGetItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    func batchGetItemSync(
            input: DynamoDBModel.BatchGetItemInput) throws -> DynamoDBModel.BatchGetItemOutput

    /**
     Invokes the BatchWriteItem operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchWriteItemInput object being passed to this operation.
         - completion: The BatchWriteItemOutput object or an error will be passed to this 
           callback when the operation is complete. The BatchWriteItemOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    func batchWriteItemAsync(
            input: DynamoDBModel.BatchWriteItemInput, 
            completion: @escaping (Result<DynamoDBModel.BatchWriteItemOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the BatchWriteItem operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchWriteItemInput object being passed to this operation.
     - Returns: The BatchWriteItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    func batchWriteItemSync(
            input: DynamoDBModel.BatchWriteItemInput) throws -> DynamoDBModel.BatchWriteItemOutput

    /**
     Invokes the CreateBackup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateBackupInput object being passed to this operation.
         - completion: The CreateBackupOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateBackupOutput
           object will be validated before being returned to caller.
           The possible errors are: backupInUse, continuousBackupsUnavailable, internalServer, limitExceeded, tableInUse, tableNotFound.
     */
    func createBackupAsync(
            input: DynamoDBModel.CreateBackupInput, 
            completion: @escaping (Result<DynamoDBModel.CreateBackupOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the CreateBackup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateBackupInput object being passed to this operation.
     - Returns: The CreateBackupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: backupInUse, continuousBackupsUnavailable, internalServer, limitExceeded, tableInUse, tableNotFound.
     */
    func createBackupSync(
            input: DynamoDBModel.CreateBackupInput) throws -> DynamoDBModel.CreateBackupOutput

    /**
     Invokes the CreateGlobalTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateGlobalTableInput object being passed to this operation.
         - completion: The CreateGlobalTableOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateGlobalTableOutput
           object will be validated before being returned to caller.
           The possible errors are: globalTableAlreadyExists, internalServer, limitExceeded, tableNotFound.
     */
    func createGlobalTableAsync(
            input: DynamoDBModel.CreateGlobalTableInput, 
            completion: @escaping (Result<DynamoDBModel.CreateGlobalTableOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the CreateGlobalTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateGlobalTableInput object being passed to this operation.
     - Returns: The CreateGlobalTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalTableAlreadyExists, internalServer, limitExceeded, tableNotFound.
     */
    func createGlobalTableSync(
            input: DynamoDBModel.CreateGlobalTableInput) throws -> DynamoDBModel.CreateGlobalTableOutput

    /**
     Invokes the CreateTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTableInput object being passed to this operation.
         - completion: The CreateTableOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateTableOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, limitExceeded, resourceInUse.
     */
    func createTableAsync(
            input: DynamoDBModel.CreateTableInput, 
            completion: @escaping (Result<DynamoDBModel.CreateTableOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the CreateTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTableInput object being passed to this operation.
     - Returns: The CreateTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse.
     */
    func createTableSync(
            input: DynamoDBModel.CreateTableInput) throws -> DynamoDBModel.CreateTableOutput

    /**
     Invokes the DeleteBackup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBackupInput object being passed to this operation.
         - completion: The DeleteBackupOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteBackupOutput
           object will be validated before being returned to caller.
           The possible errors are: backupInUse, backupNotFound, internalServer, limitExceeded.
     */
    func deleteBackupAsync(
            input: DynamoDBModel.DeleteBackupInput, 
            completion: @escaping (Result<DynamoDBModel.DeleteBackupOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the DeleteBackup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBackupInput object being passed to this operation.
     - Returns: The DeleteBackupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: backupInUse, backupNotFound, internalServer, limitExceeded.
     */
    func deleteBackupSync(
            input: DynamoDBModel.DeleteBackupInput) throws -> DynamoDBModel.DeleteBackupOutput

    /**
     Invokes the DeleteItem operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteItemInput object being passed to this operation.
         - completion: The DeleteItemOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteItemOutput
           object will be validated before being returned to caller.
           The possible errors are: conditionalCheckFailed, internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionConflict.
     */
    func deleteItemAsync(
            input: DynamoDBModel.DeleteItemInput, 
            completion: @escaping (Result<DynamoDBModel.DeleteItemOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the DeleteItem operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteItemInput object being passed to this operation.
     - Returns: The DeleteItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conditionalCheckFailed, internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionConflict.
     */
    func deleteItemSync(
            input: DynamoDBModel.DeleteItemInput) throws -> DynamoDBModel.DeleteItemOutput

    /**
     Invokes the DeleteTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTableInput object being passed to this operation.
         - completion: The DeleteTableOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteTableOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func deleteTableAsync(
            input: DynamoDBModel.DeleteTableInput, 
            completion: @escaping (Result<DynamoDBModel.DeleteTableOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the DeleteTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTableInput object being passed to this operation.
     - Returns: The DeleteTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func deleteTableSync(
            input: DynamoDBModel.DeleteTableInput) throws -> DynamoDBModel.DeleteTableOutput

    /**
     Invokes the DescribeBackup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeBackupInput object being passed to this operation.
         - completion: The DescribeBackupOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeBackupOutput
           object will be validated before being returned to caller.
           The possible errors are: backupNotFound, internalServer.
     */
    func describeBackupAsync(
            input: DynamoDBModel.DescribeBackupInput, 
            completion: @escaping (Result<DynamoDBModel.DescribeBackupOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the DescribeBackup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeBackupInput object being passed to this operation.
     - Returns: The DescribeBackupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: backupNotFound, internalServer.
     */
    func describeBackupSync(
            input: DynamoDBModel.DescribeBackupInput) throws -> DynamoDBModel.DescribeBackupOutput

    /**
     Invokes the DescribeContinuousBackups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeContinuousBackupsInput object being passed to this operation.
         - completion: The DescribeContinuousBackupsOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeContinuousBackupsOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, tableNotFound.
     */
    func describeContinuousBackupsAsync(
            input: DynamoDBModel.DescribeContinuousBackupsInput, 
            completion: @escaping (Result<DynamoDBModel.DescribeContinuousBackupsOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the DescribeContinuousBackups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeContinuousBackupsInput object being passed to this operation.
     - Returns: The DescribeContinuousBackupsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, tableNotFound.
     */
    func describeContinuousBackupsSync(
            input: DynamoDBModel.DescribeContinuousBackupsInput) throws -> DynamoDBModel.DescribeContinuousBackupsOutput

    /**
     Invokes the DescribeContributorInsights operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeContributorInsightsInput object being passed to this operation.
         - completion: The DescribeContributorInsightsOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeContributorInsightsOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound.
     */
    func describeContributorInsightsAsync(
            input: DynamoDBModel.DescribeContributorInsightsInput, 
            completion: @escaping (Result<DynamoDBModel.DescribeContributorInsightsOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the DescribeContributorInsights operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeContributorInsightsInput object being passed to this operation.
     - Returns: The DescribeContributorInsightsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    func describeContributorInsightsSync(
            input: DynamoDBModel.DescribeContributorInsightsInput) throws -> DynamoDBModel.DescribeContributorInsightsOutput

    /**
     Invokes the DescribeEndpoints operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEndpointsRequest object being passed to this operation.
         - completion: The DescribeEndpointsResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeEndpointsResponse
           object will be validated before being returned to caller.
     */
    func describeEndpointsAsync(
            input: DynamoDBModel.DescribeEndpointsRequest, 
            completion: @escaping (Result<DynamoDBModel.DescribeEndpointsResponse, DynamoDBError>) -> ()) throws

    /**
     Invokes the DescribeEndpoints operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEndpointsRequest object being passed to this operation.
     - Returns: The DescribeEndpointsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeEndpointsSync(
            input: DynamoDBModel.DescribeEndpointsRequest) throws -> DynamoDBModel.DescribeEndpointsResponse

    /**
     Invokes the DescribeExport operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeExportInput object being passed to this operation.
         - completion: The DescribeExportOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeExportOutput
           object will be validated before being returned to caller.
           The possible errors are: exportNotFound, internalServer, limitExceeded.
     */
    func describeExportAsync(
            input: DynamoDBModel.DescribeExportInput, 
            completion: @escaping (Result<DynamoDBModel.DescribeExportOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the DescribeExport operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeExportInput object being passed to this operation.
     - Returns: The DescribeExportOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: exportNotFound, internalServer, limitExceeded.
     */
    func describeExportSync(
            input: DynamoDBModel.DescribeExportInput) throws -> DynamoDBModel.DescribeExportOutput

    /**
     Invokes the DescribeGlobalTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeGlobalTableInput object being passed to this operation.
         - completion: The DescribeGlobalTableOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeGlobalTableOutput
           object will be validated before being returned to caller.
           The possible errors are: globalTableNotFound, internalServer.
     */
    func describeGlobalTableAsync(
            input: DynamoDBModel.DescribeGlobalTableInput, 
            completion: @escaping (Result<DynamoDBModel.DescribeGlobalTableOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the DescribeGlobalTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeGlobalTableInput object being passed to this operation.
     - Returns: The DescribeGlobalTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalTableNotFound, internalServer.
     */
    func describeGlobalTableSync(
            input: DynamoDBModel.DescribeGlobalTableInput) throws -> DynamoDBModel.DescribeGlobalTableOutput

    /**
     Invokes the DescribeGlobalTableSettings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeGlobalTableSettingsInput object being passed to this operation.
         - completion: The DescribeGlobalTableSettingsOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeGlobalTableSettingsOutput
           object will be validated before being returned to caller.
           The possible errors are: globalTableNotFound, internalServer.
     */
    func describeGlobalTableSettingsAsync(
            input: DynamoDBModel.DescribeGlobalTableSettingsInput, 
            completion: @escaping (Result<DynamoDBModel.DescribeGlobalTableSettingsOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the DescribeGlobalTableSettings operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeGlobalTableSettingsInput object being passed to this operation.
     - Returns: The DescribeGlobalTableSettingsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalTableNotFound, internalServer.
     */
    func describeGlobalTableSettingsSync(
            input: DynamoDBModel.DescribeGlobalTableSettingsInput) throws -> DynamoDBModel.DescribeGlobalTableSettingsOutput

    /**
     Invokes the DescribeKinesisStreamingDestination operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeKinesisStreamingDestinationInput object being passed to this operation.
         - completion: The DescribeKinesisStreamingDestinationOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeKinesisStreamingDestinationOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound.
     */
    func describeKinesisStreamingDestinationAsync(
            input: DynamoDBModel.DescribeKinesisStreamingDestinationInput, 
            completion: @escaping (Result<DynamoDBModel.DescribeKinesisStreamingDestinationOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the DescribeKinesisStreamingDestination operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeKinesisStreamingDestinationInput object being passed to this operation.
     - Returns: The DescribeKinesisStreamingDestinationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    func describeKinesisStreamingDestinationSync(
            input: DynamoDBModel.DescribeKinesisStreamingDestinationInput) throws -> DynamoDBModel.DescribeKinesisStreamingDestinationOutput

    /**
     Invokes the DescribeLimits operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeLimitsInput object being passed to this operation.
         - completion: The DescribeLimitsOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeLimitsOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer.
     */
    func describeLimitsAsync(
            input: DynamoDBModel.DescribeLimitsInput, 
            completion: @escaping (Result<DynamoDBModel.DescribeLimitsOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the DescribeLimits operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeLimitsInput object being passed to this operation.
     - Returns: The DescribeLimitsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer.
     */
    func describeLimitsSync(
            input: DynamoDBModel.DescribeLimitsInput) throws -> DynamoDBModel.DescribeLimitsOutput

    /**
     Invokes the DescribeTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTableInput object being passed to this operation.
         - completion: The DescribeTableOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeTableOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound.
     */
    func describeTableAsync(
            input: DynamoDBModel.DescribeTableInput, 
            completion: @escaping (Result<DynamoDBModel.DescribeTableOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the DescribeTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTableInput object being passed to this operation.
     - Returns: The DescribeTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    func describeTableSync(
            input: DynamoDBModel.DescribeTableInput) throws -> DynamoDBModel.DescribeTableOutput

    /**
     Invokes the DescribeTableReplicaAutoScaling operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTableReplicaAutoScalingInput object being passed to this operation.
         - completion: The DescribeTableReplicaAutoScalingOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeTableReplicaAutoScalingOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound.
     */
    func describeTableReplicaAutoScalingAsync(
            input: DynamoDBModel.DescribeTableReplicaAutoScalingInput, 
            completion: @escaping (Result<DynamoDBModel.DescribeTableReplicaAutoScalingOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the DescribeTableReplicaAutoScaling operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTableReplicaAutoScalingInput object being passed to this operation.
     - Returns: The DescribeTableReplicaAutoScalingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    func describeTableReplicaAutoScalingSync(
            input: DynamoDBModel.DescribeTableReplicaAutoScalingInput) throws -> DynamoDBModel.DescribeTableReplicaAutoScalingOutput

    /**
     Invokes the DescribeTimeToLive operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTimeToLiveInput object being passed to this operation.
         - completion: The DescribeTimeToLiveOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeTimeToLiveOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound.
     */
    func describeTimeToLiveAsync(
            input: DynamoDBModel.DescribeTimeToLiveInput, 
            completion: @escaping (Result<DynamoDBModel.DescribeTimeToLiveOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the DescribeTimeToLive operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTimeToLiveInput object being passed to this operation.
     - Returns: The DescribeTimeToLiveOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    func describeTimeToLiveSync(
            input: DynamoDBModel.DescribeTimeToLiveInput) throws -> DynamoDBModel.DescribeTimeToLiveOutput

    /**
     Invokes the DisableKinesisStreamingDestination operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated KinesisStreamingDestinationInput object being passed to this operation.
         - completion: The KinesisStreamingDestinationOutput object or an error will be passed to this 
           callback when the operation is complete. The KinesisStreamingDestinationOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func disableKinesisStreamingDestinationAsync(
            input: DynamoDBModel.KinesisStreamingDestinationInput, 
            completion: @escaping (Result<DynamoDBModel.KinesisStreamingDestinationOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the DisableKinesisStreamingDestination operation waiting for the response before returning.

     - Parameters:
         - input: The validated KinesisStreamingDestinationInput object being passed to this operation.
     - Returns: The KinesisStreamingDestinationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func disableKinesisStreamingDestinationSync(
            input: DynamoDBModel.KinesisStreamingDestinationInput) throws -> DynamoDBModel.KinesisStreamingDestinationOutput

    /**
     Invokes the EnableKinesisStreamingDestination operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated KinesisStreamingDestinationInput object being passed to this operation.
         - completion: The KinesisStreamingDestinationOutput object or an error will be passed to this 
           callback when the operation is complete. The KinesisStreamingDestinationOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func enableKinesisStreamingDestinationAsync(
            input: DynamoDBModel.KinesisStreamingDestinationInput, 
            completion: @escaping (Result<DynamoDBModel.KinesisStreamingDestinationOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the EnableKinesisStreamingDestination operation waiting for the response before returning.

     - Parameters:
         - input: The validated KinesisStreamingDestinationInput object being passed to this operation.
     - Returns: The KinesisStreamingDestinationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func enableKinesisStreamingDestinationSync(
            input: DynamoDBModel.KinesisStreamingDestinationInput) throws -> DynamoDBModel.KinesisStreamingDestinationOutput

    /**
     Invokes the ExecuteStatement operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ExecuteStatementInput object being passed to this operation.
         - completion: The ExecuteStatementOutput object or an error will be passed to this 
           callback when the operation is complete. The ExecuteStatementOutput
           object will be validated before being returned to caller.
           The possible errors are: conditionalCheckFailed, duplicateItem, internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionConflict.
     */
    func executeStatementAsync(
            input: DynamoDBModel.ExecuteStatementInput, 
            completion: @escaping (Result<DynamoDBModel.ExecuteStatementOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the ExecuteStatement operation waiting for the response before returning.

     - Parameters:
         - input: The validated ExecuteStatementInput object being passed to this operation.
     - Returns: The ExecuteStatementOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conditionalCheckFailed, duplicateItem, internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionConflict.
     */
    func executeStatementSync(
            input: DynamoDBModel.ExecuteStatementInput) throws -> DynamoDBModel.ExecuteStatementOutput

    /**
     Invokes the ExecuteTransaction operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ExecuteTransactionInput object being passed to this operation.
         - completion: The ExecuteTransactionOutput object or an error will be passed to this 
           callback when the operation is complete. The ExecuteTransactionOutput
           object will be validated before being returned to caller.
           The possible errors are: idempotentParameterMismatch, internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionCanceled, transactionInProgress.
     */
    func executeTransactionAsync(
            input: DynamoDBModel.ExecuteTransactionInput, 
            completion: @escaping (Result<DynamoDBModel.ExecuteTransactionOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the ExecuteTransaction operation waiting for the response before returning.

     - Parameters:
         - input: The validated ExecuteTransactionInput object being passed to this operation.
     - Returns: The ExecuteTransactionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: idempotentParameterMismatch, internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionCanceled, transactionInProgress.
     */
    func executeTransactionSync(
            input: DynamoDBModel.ExecuteTransactionInput) throws -> DynamoDBModel.ExecuteTransactionOutput

    /**
     Invokes the ExportTableToPointInTime operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ExportTableToPointInTimeInput object being passed to this operation.
         - completion: The ExportTableToPointInTimeOutput object or an error will be passed to this 
           callback when the operation is complete. The ExportTableToPointInTimeOutput
           object will be validated before being returned to caller.
           The possible errors are: exportConflict, internalServer, invalidExportTime, limitExceeded, pointInTimeRecoveryUnavailable, tableNotFound.
     */
    func exportTableToPointInTimeAsync(
            input: DynamoDBModel.ExportTableToPointInTimeInput, 
            completion: @escaping (Result<DynamoDBModel.ExportTableToPointInTimeOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the ExportTableToPointInTime operation waiting for the response before returning.

     - Parameters:
         - input: The validated ExportTableToPointInTimeInput object being passed to this operation.
     - Returns: The ExportTableToPointInTimeOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: exportConflict, internalServer, invalidExportTime, limitExceeded, pointInTimeRecoveryUnavailable, tableNotFound.
     */
    func exportTableToPointInTimeSync(
            input: DynamoDBModel.ExportTableToPointInTimeInput) throws -> DynamoDBModel.ExportTableToPointInTimeOutput

    /**
     Invokes the GetItem operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetItemInput object being passed to this operation.
         - completion: The GetItemOutput object or an error will be passed to this 
           callback when the operation is complete. The GetItemOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    func getItemAsync(
            input: DynamoDBModel.GetItemInput, 
            completion: @escaping (Result<DynamoDBModel.GetItemOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the GetItem operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetItemInput object being passed to this operation.
     - Returns: The GetItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    func getItemSync(
            input: DynamoDBModel.GetItemInput) throws -> DynamoDBModel.GetItemOutput

    /**
     Invokes the ListBackups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListBackupsInput object being passed to this operation.
         - completion: The ListBackupsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListBackupsOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer.
     */
    func listBackupsAsync(
            input: DynamoDBModel.ListBackupsInput, 
            completion: @escaping (Result<DynamoDBModel.ListBackupsOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the ListBackups operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListBackupsInput object being passed to this operation.
     - Returns: The ListBackupsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer.
     */
    func listBackupsSync(
            input: DynamoDBModel.ListBackupsInput) throws -> DynamoDBModel.ListBackupsOutput

    /**
     Invokes the ListContributorInsights operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListContributorInsightsInput object being passed to this operation.
         - completion: The ListContributorInsightsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListContributorInsightsOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound.
     */
    func listContributorInsightsAsync(
            input: DynamoDBModel.ListContributorInsightsInput, 
            completion: @escaping (Result<DynamoDBModel.ListContributorInsightsOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the ListContributorInsights operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListContributorInsightsInput object being passed to this operation.
     - Returns: The ListContributorInsightsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    func listContributorInsightsSync(
            input: DynamoDBModel.ListContributorInsightsInput) throws -> DynamoDBModel.ListContributorInsightsOutput

    /**
     Invokes the ListExports operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListExportsInput object being passed to this operation.
         - completion: The ListExportsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListExportsOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, limitExceeded.
     */
    func listExportsAsync(
            input: DynamoDBModel.ListExportsInput, 
            completion: @escaping (Result<DynamoDBModel.ListExportsOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the ListExports operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListExportsInput object being passed to this operation.
     - Returns: The ListExportsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded.
     */
    func listExportsSync(
            input: DynamoDBModel.ListExportsInput) throws -> DynamoDBModel.ListExportsOutput

    /**
     Invokes the ListGlobalTables operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListGlobalTablesInput object being passed to this operation.
         - completion: The ListGlobalTablesOutput object or an error will be passed to this 
           callback when the operation is complete. The ListGlobalTablesOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer.
     */
    func listGlobalTablesAsync(
            input: DynamoDBModel.ListGlobalTablesInput, 
            completion: @escaping (Result<DynamoDBModel.ListGlobalTablesOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the ListGlobalTables operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListGlobalTablesInput object being passed to this operation.
     - Returns: The ListGlobalTablesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer.
     */
    func listGlobalTablesSync(
            input: DynamoDBModel.ListGlobalTablesInput) throws -> DynamoDBModel.ListGlobalTablesOutput

    /**
     Invokes the ListTables operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTablesInput object being passed to this operation.
         - completion: The ListTablesOutput object or an error will be passed to this 
           callback when the operation is complete. The ListTablesOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer.
     */
    func listTablesAsync(
            input: DynamoDBModel.ListTablesInput, 
            completion: @escaping (Result<DynamoDBModel.ListTablesOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the ListTables operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTablesInput object being passed to this operation.
     - Returns: The ListTablesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer.
     */
    func listTablesSync(
            input: DynamoDBModel.ListTablesInput) throws -> DynamoDBModel.ListTablesOutput

    /**
     Invokes the ListTagsOfResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsOfResourceInput object being passed to this operation.
         - completion: The ListTagsOfResourceOutput object or an error will be passed to this 
           callback when the operation is complete. The ListTagsOfResourceOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound.
     */
    func listTagsOfResourceAsync(
            input: DynamoDBModel.ListTagsOfResourceInput, 
            completion: @escaping (Result<DynamoDBModel.ListTagsOfResourceOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the ListTagsOfResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsOfResourceInput object being passed to this operation.
     - Returns: The ListTagsOfResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    func listTagsOfResourceSync(
            input: DynamoDBModel.ListTagsOfResourceInput) throws -> DynamoDBModel.ListTagsOfResourceOutput

    /**
     Invokes the PutItem operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutItemInput object being passed to this operation.
         - completion: The PutItemOutput object or an error will be passed to this 
           callback when the operation is complete. The PutItemOutput
           object will be validated before being returned to caller.
           The possible errors are: conditionalCheckFailed, internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionConflict.
     */
    func putItemAsync(
            input: DynamoDBModel.PutItemInput, 
            completion: @escaping (Result<DynamoDBModel.PutItemOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the PutItem operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutItemInput object being passed to this operation.
     - Returns: The PutItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conditionalCheckFailed, internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionConflict.
     */
    func putItemSync(
            input: DynamoDBModel.PutItemInput) throws -> DynamoDBModel.PutItemOutput

    /**
     Invokes the Query operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated QueryInput object being passed to this operation.
         - completion: The QueryOutput object or an error will be passed to this 
           callback when the operation is complete. The QueryOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    func queryAsync(
            input: DynamoDBModel.QueryInput, 
            completion: @escaping (Result<DynamoDBModel.QueryOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the Query operation waiting for the response before returning.

     - Parameters:
         - input: The validated QueryInput object being passed to this operation.
     - Returns: The QueryOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    func querySync(
            input: DynamoDBModel.QueryInput) throws -> DynamoDBModel.QueryOutput

    /**
     Invokes the RestoreTableFromBackup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreTableFromBackupInput object being passed to this operation.
         - completion: The RestoreTableFromBackupOutput object or an error will be passed to this 
           callback when the operation is complete. The RestoreTableFromBackupOutput
           object will be validated before being returned to caller.
           The possible errors are: backupInUse, backupNotFound, internalServer, limitExceeded, tableAlreadyExists, tableInUse.
     */
    func restoreTableFromBackupAsync(
            input: DynamoDBModel.RestoreTableFromBackupInput, 
            completion: @escaping (Result<DynamoDBModel.RestoreTableFromBackupOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the RestoreTableFromBackup operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreTableFromBackupInput object being passed to this operation.
     - Returns: The RestoreTableFromBackupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: backupInUse, backupNotFound, internalServer, limitExceeded, tableAlreadyExists, tableInUse.
     */
    func restoreTableFromBackupSync(
            input: DynamoDBModel.RestoreTableFromBackupInput) throws -> DynamoDBModel.RestoreTableFromBackupOutput

    /**
     Invokes the RestoreTableToPointInTime operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreTableToPointInTimeInput object being passed to this operation.
         - completion: The RestoreTableToPointInTimeOutput object or an error will be passed to this 
           callback when the operation is complete. The RestoreTableToPointInTimeOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, invalidRestoreTime, limitExceeded, pointInTimeRecoveryUnavailable, tableAlreadyExists, tableInUse, tableNotFound.
     */
    func restoreTableToPointInTimeAsync(
            input: DynamoDBModel.RestoreTableToPointInTimeInput, 
            completion: @escaping (Result<DynamoDBModel.RestoreTableToPointInTimeOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the RestoreTableToPointInTime operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreTableToPointInTimeInput object being passed to this operation.
     - Returns: The RestoreTableToPointInTimeOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, invalidRestoreTime, limitExceeded, pointInTimeRecoveryUnavailable, tableAlreadyExists, tableInUse, tableNotFound.
     */
    func restoreTableToPointInTimeSync(
            input: DynamoDBModel.RestoreTableToPointInTimeInput) throws -> DynamoDBModel.RestoreTableToPointInTimeOutput

    /**
     Invokes the Scan operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ScanInput object being passed to this operation.
         - completion: The ScanOutput object or an error will be passed to this 
           callback when the operation is complete. The ScanOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    func scanAsync(
            input: DynamoDBModel.ScanInput, 
            completion: @escaping (Result<DynamoDBModel.ScanOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the Scan operation waiting for the response before returning.

     - Parameters:
         - input: The validated ScanInput object being passed to this operation.
     - Returns: The ScanOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    func scanSync(
            input: DynamoDBModel.ScanInput) throws -> DynamoDBModel.ScanOutput

    /**
     Invokes the TagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func tagResourceAsync(
            input: DynamoDBModel.TagResourceInput, 
            completion: @escaping (DynamoDBError?) -> ()) throws

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func tagResourceSync(
            input: DynamoDBModel.TagResourceInput) throws

    /**
     Invokes the TransactGetItems operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TransactGetItemsInput object being passed to this operation.
         - completion: The TransactGetItemsOutput object or an error will be passed to this 
           callback when the operation is complete. The TransactGetItemsOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionCanceled.
     */
    func transactGetItemsAsync(
            input: DynamoDBModel.TransactGetItemsInput, 
            completion: @escaping (Result<DynamoDBModel.TransactGetItemsOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the TransactGetItems operation waiting for the response before returning.

     - Parameters:
         - input: The validated TransactGetItemsInput object being passed to this operation.
     - Returns: The TransactGetItemsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionCanceled.
     */
    func transactGetItemsSync(
            input: DynamoDBModel.TransactGetItemsInput) throws -> DynamoDBModel.TransactGetItemsOutput

    /**
     Invokes the TransactWriteItems operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TransactWriteItemsInput object being passed to this operation.
         - completion: The TransactWriteItemsOutput object or an error will be passed to this 
           callback when the operation is complete. The TransactWriteItemsOutput
           object will be validated before being returned to caller.
           The possible errors are: idempotentParameterMismatch, internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionCanceled, transactionInProgress.
     */
    func transactWriteItemsAsync(
            input: DynamoDBModel.TransactWriteItemsInput, 
            completion: @escaping (Result<DynamoDBModel.TransactWriteItemsOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the TransactWriteItems operation waiting for the response before returning.

     - Parameters:
         - input: The validated TransactWriteItemsInput object being passed to this operation.
     - Returns: The TransactWriteItemsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: idempotentParameterMismatch, internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionCanceled, transactionInProgress.
     */
    func transactWriteItemsSync(
            input: DynamoDBModel.TransactWriteItemsInput) throws -> DynamoDBModel.TransactWriteItemsOutput

    /**
     Invokes the UntagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func untagResourceAsync(
            input: DynamoDBModel.UntagResourceInput, 
            completion: @escaping (DynamoDBError?) -> ()) throws

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func untagResourceSync(
            input: DynamoDBModel.UntagResourceInput) throws

    /**
     Invokes the UpdateContinuousBackups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateContinuousBackupsInput object being passed to this operation.
         - completion: The UpdateContinuousBackupsOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateContinuousBackupsOutput
           object will be validated before being returned to caller.
           The possible errors are: continuousBackupsUnavailable, internalServer, tableNotFound.
     */
    func updateContinuousBackupsAsync(
            input: DynamoDBModel.UpdateContinuousBackupsInput, 
            completion: @escaping (Result<DynamoDBModel.UpdateContinuousBackupsOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the UpdateContinuousBackups operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateContinuousBackupsInput object being passed to this operation.
     - Returns: The UpdateContinuousBackupsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: continuousBackupsUnavailable, internalServer, tableNotFound.
     */
    func updateContinuousBackupsSync(
            input: DynamoDBModel.UpdateContinuousBackupsInput) throws -> DynamoDBModel.UpdateContinuousBackupsOutput

    /**
     Invokes the UpdateContributorInsights operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateContributorInsightsInput object being passed to this operation.
         - completion: The UpdateContributorInsightsOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateContributorInsightsOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound.
     */
    func updateContributorInsightsAsync(
            input: DynamoDBModel.UpdateContributorInsightsInput, 
            completion: @escaping (Result<DynamoDBModel.UpdateContributorInsightsOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the UpdateContributorInsights operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateContributorInsightsInput object being passed to this operation.
     - Returns: The UpdateContributorInsightsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    func updateContributorInsightsSync(
            input: DynamoDBModel.UpdateContributorInsightsInput) throws -> DynamoDBModel.UpdateContributorInsightsOutput

    /**
     Invokes the UpdateGlobalTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateGlobalTableInput object being passed to this operation.
         - completion: The UpdateGlobalTableOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateGlobalTableOutput
           object will be validated before being returned to caller.
           The possible errors are: globalTableNotFound, internalServer, replicaAlreadyExists, replicaNotFound, tableNotFound.
     */
    func updateGlobalTableAsync(
            input: DynamoDBModel.UpdateGlobalTableInput, 
            completion: @escaping (Result<DynamoDBModel.UpdateGlobalTableOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the UpdateGlobalTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateGlobalTableInput object being passed to this operation.
     - Returns: The UpdateGlobalTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalTableNotFound, internalServer, replicaAlreadyExists, replicaNotFound, tableNotFound.
     */
    func updateGlobalTableSync(
            input: DynamoDBModel.UpdateGlobalTableInput) throws -> DynamoDBModel.UpdateGlobalTableOutput

    /**
     Invokes the UpdateGlobalTableSettings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateGlobalTableSettingsInput object being passed to this operation.
         - completion: The UpdateGlobalTableSettingsOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateGlobalTableSettingsOutput
           object will be validated before being returned to caller.
           The possible errors are: globalTableNotFound, indexNotFound, internalServer, limitExceeded, replicaNotFound, resourceInUse.
     */
    func updateGlobalTableSettingsAsync(
            input: DynamoDBModel.UpdateGlobalTableSettingsInput, 
            completion: @escaping (Result<DynamoDBModel.UpdateGlobalTableSettingsOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the UpdateGlobalTableSettings operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateGlobalTableSettingsInput object being passed to this operation.
     - Returns: The UpdateGlobalTableSettingsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalTableNotFound, indexNotFound, internalServer, limitExceeded, replicaNotFound, resourceInUse.
     */
    func updateGlobalTableSettingsSync(
            input: DynamoDBModel.UpdateGlobalTableSettingsInput) throws -> DynamoDBModel.UpdateGlobalTableSettingsOutput

    /**
     Invokes the UpdateItem operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateItemInput object being passed to this operation.
         - completion: The UpdateItemOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateItemOutput
           object will be validated before being returned to caller.
           The possible errors are: conditionalCheckFailed, internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionConflict.
     */
    func updateItemAsync(
            input: DynamoDBModel.UpdateItemInput, 
            completion: @escaping (Result<DynamoDBModel.UpdateItemOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the UpdateItem operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateItemInput object being passed to this operation.
     - Returns: The UpdateItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conditionalCheckFailed, internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionConflict.
     */
    func updateItemSync(
            input: DynamoDBModel.UpdateItemInput) throws -> DynamoDBModel.UpdateItemOutput

    /**
     Invokes the UpdateTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateTableInput object being passed to this operation.
         - completion: The UpdateTableOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateTableOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func updateTableAsync(
            input: DynamoDBModel.UpdateTableInput, 
            completion: @escaping (Result<DynamoDBModel.UpdateTableOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the UpdateTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateTableInput object being passed to this operation.
     - Returns: The UpdateTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func updateTableSync(
            input: DynamoDBModel.UpdateTableInput) throws -> DynamoDBModel.UpdateTableOutput

    /**
     Invokes the UpdateTableReplicaAutoScaling operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateTableReplicaAutoScalingInput object being passed to this operation.
         - completion: The UpdateTableReplicaAutoScalingOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateTableReplicaAutoScalingOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func updateTableReplicaAutoScalingAsync(
            input: DynamoDBModel.UpdateTableReplicaAutoScalingInput, 
            completion: @escaping (Result<DynamoDBModel.UpdateTableReplicaAutoScalingOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the UpdateTableReplicaAutoScaling operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateTableReplicaAutoScalingInput object being passed to this operation.
     - Returns: The UpdateTableReplicaAutoScalingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func updateTableReplicaAutoScalingSync(
            input: DynamoDBModel.UpdateTableReplicaAutoScalingInput) throws -> DynamoDBModel.UpdateTableReplicaAutoScalingOutput

    /**
     Invokes the UpdateTimeToLive operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateTimeToLiveInput object being passed to this operation.
         - completion: The UpdateTimeToLiveOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateTimeToLiveOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func updateTimeToLiveAsync(
            input: DynamoDBModel.UpdateTimeToLiveInput, 
            completion: @escaping (Result<DynamoDBModel.UpdateTimeToLiveOutput, DynamoDBError>) -> ()) throws

    /**
     Invokes the UpdateTimeToLive operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateTimeToLiveInput object being passed to this operation.
     - Returns: The UpdateTimeToLiveOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func updateTimeToLiveSync(
            input: DynamoDBModel.UpdateTimeToLiveInput) throws -> DynamoDBModel.UpdateTimeToLiveOutput
}
