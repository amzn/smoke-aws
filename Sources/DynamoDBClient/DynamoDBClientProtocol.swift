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
    typealias BatchGetItemSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.BatchGetItemInput,
            _ reporting: InvocationReportingType) throws -> DynamoDBModel.BatchGetItemOutput
    typealias BatchGetItemAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.BatchGetItemInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<DynamoDBModel.BatchGetItemOutput, HTTPClientError>) -> ()) throws -> ()
    typealias BatchWriteItemSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.BatchWriteItemInput,
            _ reporting: InvocationReportingType) throws -> DynamoDBModel.BatchWriteItemOutput
    typealias BatchWriteItemAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.BatchWriteItemInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<DynamoDBModel.BatchWriteItemOutput, HTTPClientError>) -> ()) throws -> ()
    typealias CreateBackupSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.CreateBackupInput,
            _ reporting: InvocationReportingType) throws -> DynamoDBModel.CreateBackupOutput
    typealias CreateBackupAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.CreateBackupInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<DynamoDBModel.CreateBackupOutput, HTTPClientError>) -> ()) throws -> ()
    typealias CreateGlobalTableSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.CreateGlobalTableInput,
            _ reporting: InvocationReportingType) throws -> DynamoDBModel.CreateGlobalTableOutput
    typealias CreateGlobalTableAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.CreateGlobalTableInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<DynamoDBModel.CreateGlobalTableOutput, HTTPClientError>) -> ()) throws -> ()
    typealias CreateTableSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.CreateTableInput,
            _ reporting: InvocationReportingType) throws -> DynamoDBModel.CreateTableOutput
    typealias CreateTableAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.CreateTableInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<DynamoDBModel.CreateTableOutput, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteBackupSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.DeleteBackupInput,
            _ reporting: InvocationReportingType) throws -> DynamoDBModel.DeleteBackupOutput
    typealias DeleteBackupAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.DeleteBackupInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<DynamoDBModel.DeleteBackupOutput, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteItemSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.DeleteItemInput,
            _ reporting: InvocationReportingType) throws -> DynamoDBModel.DeleteItemOutput
    typealias DeleteItemAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.DeleteItemInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<DynamoDBModel.DeleteItemOutput, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteTableSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.DeleteTableInput,
            _ reporting: InvocationReportingType) throws -> DynamoDBModel.DeleteTableOutput
    typealias DeleteTableAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.DeleteTableInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<DynamoDBModel.DeleteTableOutput, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeBackupSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.DescribeBackupInput,
            _ reporting: InvocationReportingType) throws -> DynamoDBModel.DescribeBackupOutput
    typealias DescribeBackupAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.DescribeBackupInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<DynamoDBModel.DescribeBackupOutput, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeContinuousBackupsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.DescribeContinuousBackupsInput,
            _ reporting: InvocationReportingType) throws -> DynamoDBModel.DescribeContinuousBackupsOutput
    typealias DescribeContinuousBackupsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.DescribeContinuousBackupsInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<DynamoDBModel.DescribeContinuousBackupsOutput, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeContributorInsightsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.DescribeContributorInsightsInput,
            _ reporting: InvocationReportingType) throws -> DynamoDBModel.DescribeContributorInsightsOutput
    typealias DescribeContributorInsightsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.DescribeContributorInsightsInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<DynamoDBModel.DescribeContributorInsightsOutput, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeEndpointsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.DescribeEndpointsRequest,
            _ reporting: InvocationReportingType) throws -> DynamoDBModel.DescribeEndpointsResponse
    typealias DescribeEndpointsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.DescribeEndpointsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<DynamoDBModel.DescribeEndpointsResponse, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeGlobalTableSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.DescribeGlobalTableInput,
            _ reporting: InvocationReportingType) throws -> DynamoDBModel.DescribeGlobalTableOutput
    typealias DescribeGlobalTableAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.DescribeGlobalTableInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<DynamoDBModel.DescribeGlobalTableOutput, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeGlobalTableSettingsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.DescribeGlobalTableSettingsInput,
            _ reporting: InvocationReportingType) throws -> DynamoDBModel.DescribeGlobalTableSettingsOutput
    typealias DescribeGlobalTableSettingsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.DescribeGlobalTableSettingsInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<DynamoDBModel.DescribeGlobalTableSettingsOutput, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeLimitsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.DescribeLimitsInput,
            _ reporting: InvocationReportingType) throws -> DynamoDBModel.DescribeLimitsOutput
    typealias DescribeLimitsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.DescribeLimitsInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<DynamoDBModel.DescribeLimitsOutput, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeTableSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.DescribeTableInput,
            _ reporting: InvocationReportingType) throws -> DynamoDBModel.DescribeTableOutput
    typealias DescribeTableAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.DescribeTableInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<DynamoDBModel.DescribeTableOutput, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeTableReplicaAutoScalingSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.DescribeTableReplicaAutoScalingInput,
            _ reporting: InvocationReportingType) throws -> DynamoDBModel.DescribeTableReplicaAutoScalingOutput
    typealias DescribeTableReplicaAutoScalingAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.DescribeTableReplicaAutoScalingInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<DynamoDBModel.DescribeTableReplicaAutoScalingOutput, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeTimeToLiveSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.DescribeTimeToLiveInput,
            _ reporting: InvocationReportingType) throws -> DynamoDBModel.DescribeTimeToLiveOutput
    typealias DescribeTimeToLiveAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.DescribeTimeToLiveInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<DynamoDBModel.DescribeTimeToLiveOutput, HTTPClientError>) -> ()) throws -> ()
    typealias GetItemSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.GetItemInput,
            _ reporting: InvocationReportingType) throws -> DynamoDBModel.GetItemOutput
    typealias GetItemAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.GetItemInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<DynamoDBModel.GetItemOutput, HTTPClientError>) -> ()) throws -> ()
    typealias ListBackupsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.ListBackupsInput,
            _ reporting: InvocationReportingType) throws -> DynamoDBModel.ListBackupsOutput
    typealias ListBackupsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.ListBackupsInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<DynamoDBModel.ListBackupsOutput, HTTPClientError>) -> ()) throws -> ()
    typealias ListContributorInsightsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.ListContributorInsightsInput,
            _ reporting: InvocationReportingType) throws -> DynamoDBModel.ListContributorInsightsOutput
    typealias ListContributorInsightsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.ListContributorInsightsInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<DynamoDBModel.ListContributorInsightsOutput, HTTPClientError>) -> ()) throws -> ()
    typealias ListGlobalTablesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.ListGlobalTablesInput,
            _ reporting: InvocationReportingType) throws -> DynamoDBModel.ListGlobalTablesOutput
    typealias ListGlobalTablesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.ListGlobalTablesInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<DynamoDBModel.ListGlobalTablesOutput, HTTPClientError>) -> ()) throws -> ()
    typealias ListTablesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.ListTablesInput,
            _ reporting: InvocationReportingType) throws -> DynamoDBModel.ListTablesOutput
    typealias ListTablesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.ListTablesInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<DynamoDBModel.ListTablesOutput, HTTPClientError>) -> ()) throws -> ()
    typealias ListTagsOfResourceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.ListTagsOfResourceInput,
            _ reporting: InvocationReportingType) throws -> DynamoDBModel.ListTagsOfResourceOutput
    typealias ListTagsOfResourceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.ListTagsOfResourceInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<DynamoDBModel.ListTagsOfResourceOutput, HTTPClientError>) -> ()) throws -> ()
    typealias PutItemSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.PutItemInput,
            _ reporting: InvocationReportingType) throws -> DynamoDBModel.PutItemOutput
    typealias PutItemAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.PutItemInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<DynamoDBModel.PutItemOutput, HTTPClientError>) -> ()) throws -> ()
    typealias QuerySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.QueryInput,
            _ reporting: InvocationReportingType) throws -> DynamoDBModel.QueryOutput
    typealias QueryAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.QueryInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<DynamoDBModel.QueryOutput, HTTPClientError>) -> ()) throws -> ()
    typealias RestoreTableFromBackupSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.RestoreTableFromBackupInput,
            _ reporting: InvocationReportingType) throws -> DynamoDBModel.RestoreTableFromBackupOutput
    typealias RestoreTableFromBackupAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.RestoreTableFromBackupInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<DynamoDBModel.RestoreTableFromBackupOutput, HTTPClientError>) -> ()) throws -> ()
    typealias RestoreTableToPointInTimeSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.RestoreTableToPointInTimeInput,
            _ reporting: InvocationReportingType) throws -> DynamoDBModel.RestoreTableToPointInTimeOutput
    typealias RestoreTableToPointInTimeAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.RestoreTableToPointInTimeInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<DynamoDBModel.RestoreTableToPointInTimeOutput, HTTPClientError>) -> ()) throws -> ()
    typealias ScanSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.ScanInput,
            _ reporting: InvocationReportingType) throws -> DynamoDBModel.ScanOutput
    typealias ScanAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.ScanInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<DynamoDBModel.ScanOutput, HTTPClientError>) -> ()) throws -> ()
    typealias TagResourceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.TagResourceInput,
            _ reporting: InvocationReportingType) throws -> ()
    typealias TagResourceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.TagResourceInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias TransactGetItemsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.TransactGetItemsInput,
            _ reporting: InvocationReportingType) throws -> DynamoDBModel.TransactGetItemsOutput
    typealias TransactGetItemsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.TransactGetItemsInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<DynamoDBModel.TransactGetItemsOutput, HTTPClientError>) -> ()) throws -> ()
    typealias TransactWriteItemsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.TransactWriteItemsInput,
            _ reporting: InvocationReportingType) throws -> DynamoDBModel.TransactWriteItemsOutput
    typealias TransactWriteItemsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.TransactWriteItemsInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<DynamoDBModel.TransactWriteItemsOutput, HTTPClientError>) -> ()) throws -> ()
    typealias UntagResourceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.UntagResourceInput,
            _ reporting: InvocationReportingType) throws -> ()
    typealias UntagResourceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.UntagResourceInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias UpdateContinuousBackupsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.UpdateContinuousBackupsInput,
            _ reporting: InvocationReportingType) throws -> DynamoDBModel.UpdateContinuousBackupsOutput
    typealias UpdateContinuousBackupsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.UpdateContinuousBackupsInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<DynamoDBModel.UpdateContinuousBackupsOutput, HTTPClientError>) -> ()) throws -> ()
    typealias UpdateContributorInsightsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.UpdateContributorInsightsInput,
            _ reporting: InvocationReportingType) throws -> DynamoDBModel.UpdateContributorInsightsOutput
    typealias UpdateContributorInsightsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.UpdateContributorInsightsInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<DynamoDBModel.UpdateContributorInsightsOutput, HTTPClientError>) -> ()) throws -> ()
    typealias UpdateGlobalTableSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.UpdateGlobalTableInput,
            _ reporting: InvocationReportingType) throws -> DynamoDBModel.UpdateGlobalTableOutput
    typealias UpdateGlobalTableAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.UpdateGlobalTableInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<DynamoDBModel.UpdateGlobalTableOutput, HTTPClientError>) -> ()) throws -> ()
    typealias UpdateGlobalTableSettingsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.UpdateGlobalTableSettingsInput,
            _ reporting: InvocationReportingType) throws -> DynamoDBModel.UpdateGlobalTableSettingsOutput
    typealias UpdateGlobalTableSettingsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.UpdateGlobalTableSettingsInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<DynamoDBModel.UpdateGlobalTableSettingsOutput, HTTPClientError>) -> ()) throws -> ()
    typealias UpdateItemSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.UpdateItemInput,
            _ reporting: InvocationReportingType) throws -> DynamoDBModel.UpdateItemOutput
    typealias UpdateItemAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.UpdateItemInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<DynamoDBModel.UpdateItemOutput, HTTPClientError>) -> ()) throws -> ()
    typealias UpdateTableSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.UpdateTableInput,
            _ reporting: InvocationReportingType) throws -> DynamoDBModel.UpdateTableOutput
    typealias UpdateTableAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.UpdateTableInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<DynamoDBModel.UpdateTableOutput, HTTPClientError>) -> ()) throws -> ()
    typealias UpdateTableReplicaAutoScalingSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.UpdateTableReplicaAutoScalingInput,
            _ reporting: InvocationReportingType) throws -> DynamoDBModel.UpdateTableReplicaAutoScalingOutput
    typealias UpdateTableReplicaAutoScalingAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.UpdateTableReplicaAutoScalingInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<DynamoDBModel.UpdateTableReplicaAutoScalingOutput, HTTPClientError>) -> ()) throws -> ()
    typealias UpdateTimeToLiveSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.UpdateTimeToLiveInput,
            _ reporting: InvocationReportingType) throws -> DynamoDBModel.UpdateTimeToLiveOutput
    typealias UpdateTimeToLiveAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: DynamoDBModel.UpdateTimeToLiveInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<DynamoDBModel.UpdateTimeToLiveOutput, HTTPClientError>) -> ()) throws -> ()

    /**
     Invokes the BatchGetItem operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchGetItemInput object being passed to this operation.
         - completion: The BatchGetItemOutput object or an error will be passed to this 
           callback when the operation is complete. The BatchGetItemOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    func batchGetItemAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.BatchGetItemInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.BatchGetItemOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the BatchGetItem operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchGetItemInput object being passed to this operation.
     - Returns: The BatchGetItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    func batchGetItemSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.BatchGetItemInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.BatchGetItemOutput

    /**
     Invokes the BatchWriteItem operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchWriteItemInput object being passed to this operation.
         - completion: The BatchWriteItemOutput object or an error will be passed to this 
           callback when the operation is complete. The BatchWriteItemOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    func batchWriteItemAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.BatchWriteItemInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.BatchWriteItemOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the BatchWriteItem operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchWriteItemInput object being passed to this operation.
     - Returns: The BatchWriteItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    func batchWriteItemSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.BatchWriteItemInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.BatchWriteItemOutput

    /**
     Invokes the CreateBackup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateBackupInput object being passed to this operation.
         - completion: The CreateBackupOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateBackupOutput
           object will be validated before being returned to caller.
           The possible errors are: backupInUse, continuousBackupsUnavailable, internalServer, limitExceeded, tableInUse, tableNotFound.
     */
    func createBackupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.CreateBackupInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.CreateBackupOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateBackup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateBackupInput object being passed to this operation.
     - Returns: The CreateBackupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: backupInUse, continuousBackupsUnavailable, internalServer, limitExceeded, tableInUse, tableNotFound.
     */
    func createBackupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.CreateBackupInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.CreateBackupOutput

    /**
     Invokes the CreateGlobalTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateGlobalTableInput object being passed to this operation.
         - completion: The CreateGlobalTableOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateGlobalTableOutput
           object will be validated before being returned to caller.
           The possible errors are: globalTableAlreadyExists, internalServer, limitExceeded, tableNotFound.
     */
    func createGlobalTableAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.CreateGlobalTableInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.CreateGlobalTableOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateGlobalTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateGlobalTableInput object being passed to this operation.
     - Returns: The CreateGlobalTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalTableAlreadyExists, internalServer, limitExceeded, tableNotFound.
     */
    func createGlobalTableSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.CreateGlobalTableInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.CreateGlobalTableOutput

    /**
     Invokes the CreateTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTableInput object being passed to this operation.
         - completion: The CreateTableOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateTableOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, limitExceeded, resourceInUse.
     */
    func createTableAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.CreateTableInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.CreateTableOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTableInput object being passed to this operation.
     - Returns: The CreateTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse.
     */
    func createTableSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.CreateTableInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.CreateTableOutput

    /**
     Invokes the DeleteBackup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBackupInput object being passed to this operation.
         - completion: The DeleteBackupOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteBackupOutput
           object will be validated before being returned to caller.
           The possible errors are: backupInUse, backupNotFound, internalServer, limitExceeded.
     */
    func deleteBackupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DeleteBackupInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.DeleteBackupOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteBackup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBackupInput object being passed to this operation.
     - Returns: The DeleteBackupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: backupInUse, backupNotFound, internalServer, limitExceeded.
     */
    func deleteBackupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DeleteBackupInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.DeleteBackupOutput

    /**
     Invokes the DeleteItem operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteItemInput object being passed to this operation.
         - completion: The DeleteItemOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteItemOutput
           object will be validated before being returned to caller.
           The possible errors are: conditionalCheckFailed, internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionConflict.
     */
    func deleteItemAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DeleteItemInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.DeleteItemOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteItem operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteItemInput object being passed to this operation.
     - Returns: The DeleteItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conditionalCheckFailed, internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionConflict.
     */
    func deleteItemSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DeleteItemInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.DeleteItemOutput

    /**
     Invokes the DeleteTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTableInput object being passed to this operation.
         - completion: The DeleteTableOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteTableOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func deleteTableAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DeleteTableInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.DeleteTableOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTableInput object being passed to this operation.
     - Returns: The DeleteTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func deleteTableSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DeleteTableInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.DeleteTableOutput

    /**
     Invokes the DescribeBackup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeBackupInput object being passed to this operation.
         - completion: The DescribeBackupOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeBackupOutput
           object will be validated before being returned to caller.
           The possible errors are: backupNotFound, internalServer.
     */
    func describeBackupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeBackupInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.DescribeBackupOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeBackup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeBackupInput object being passed to this operation.
     - Returns: The DescribeBackupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: backupNotFound, internalServer.
     */
    func describeBackupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeBackupInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.DescribeBackupOutput

    /**
     Invokes the DescribeContinuousBackups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeContinuousBackupsInput object being passed to this operation.
         - completion: The DescribeContinuousBackupsOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeContinuousBackupsOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, tableNotFound.
     */
    func describeContinuousBackupsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeContinuousBackupsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.DescribeContinuousBackupsOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeContinuousBackups operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeContinuousBackupsInput object being passed to this operation.
     - Returns: The DescribeContinuousBackupsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, tableNotFound.
     */
    func describeContinuousBackupsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeContinuousBackupsInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.DescribeContinuousBackupsOutput

    /**
     Invokes the DescribeContributorInsights operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeContributorInsightsInput object being passed to this operation.
         - completion: The DescribeContributorInsightsOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeContributorInsightsOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound.
     */
    func describeContributorInsightsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeContributorInsightsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.DescribeContributorInsightsOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeContributorInsights operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeContributorInsightsInput object being passed to this operation.
     - Returns: The DescribeContributorInsightsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    func describeContributorInsightsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeContributorInsightsInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.DescribeContributorInsightsOutput

    /**
     Invokes the DescribeEndpoints operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeEndpointsRequest object being passed to this operation.
         - completion: The DescribeEndpointsResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeEndpointsResponse
           object will be validated before being returned to caller.
     */
    func describeEndpointsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeEndpointsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.DescribeEndpointsResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeEndpoints operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeEndpointsRequest object being passed to this operation.
     - Returns: The DescribeEndpointsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeEndpointsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeEndpointsRequest,
            reporting: InvocationReportingType) throws -> DynamoDBModel.DescribeEndpointsResponse

    /**
     Invokes the DescribeGlobalTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeGlobalTableInput object being passed to this operation.
         - completion: The DescribeGlobalTableOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeGlobalTableOutput
           object will be validated before being returned to caller.
           The possible errors are: globalTableNotFound, internalServer.
     */
    func describeGlobalTableAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeGlobalTableInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.DescribeGlobalTableOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeGlobalTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeGlobalTableInput object being passed to this operation.
     - Returns: The DescribeGlobalTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalTableNotFound, internalServer.
     */
    func describeGlobalTableSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeGlobalTableInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.DescribeGlobalTableOutput

    /**
     Invokes the DescribeGlobalTableSettings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeGlobalTableSettingsInput object being passed to this operation.
         - completion: The DescribeGlobalTableSettingsOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeGlobalTableSettingsOutput
           object will be validated before being returned to caller.
           The possible errors are: globalTableNotFound, internalServer.
     */
    func describeGlobalTableSettingsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeGlobalTableSettingsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.DescribeGlobalTableSettingsOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeGlobalTableSettings operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeGlobalTableSettingsInput object being passed to this operation.
     - Returns: The DescribeGlobalTableSettingsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalTableNotFound, internalServer.
     */
    func describeGlobalTableSettingsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeGlobalTableSettingsInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.DescribeGlobalTableSettingsOutput

    /**
     Invokes the DescribeLimits operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeLimitsInput object being passed to this operation.
         - completion: The DescribeLimitsOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeLimitsOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer.
     */
    func describeLimitsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeLimitsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.DescribeLimitsOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeLimits operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeLimitsInput object being passed to this operation.
     - Returns: The DescribeLimitsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer.
     */
    func describeLimitsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeLimitsInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.DescribeLimitsOutput

    /**
     Invokes the DescribeTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTableInput object being passed to this operation.
         - completion: The DescribeTableOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeTableOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound.
     */
    func describeTableAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeTableInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.DescribeTableOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTableInput object being passed to this operation.
     - Returns: The DescribeTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    func describeTableSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeTableInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.DescribeTableOutput

    /**
     Invokes the DescribeTableReplicaAutoScaling operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTableReplicaAutoScalingInput object being passed to this operation.
         - completion: The DescribeTableReplicaAutoScalingOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeTableReplicaAutoScalingOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound.
     */
    func describeTableReplicaAutoScalingAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeTableReplicaAutoScalingInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.DescribeTableReplicaAutoScalingOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeTableReplicaAutoScaling operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTableReplicaAutoScalingInput object being passed to this operation.
     - Returns: The DescribeTableReplicaAutoScalingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    func describeTableReplicaAutoScalingSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeTableReplicaAutoScalingInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.DescribeTableReplicaAutoScalingOutput

    /**
     Invokes the DescribeTimeToLive operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTimeToLiveInput object being passed to this operation.
         - completion: The DescribeTimeToLiveOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeTimeToLiveOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound.
     */
    func describeTimeToLiveAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeTimeToLiveInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.DescribeTimeToLiveOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeTimeToLive operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTimeToLiveInput object being passed to this operation.
     - Returns: The DescribeTimeToLiveOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    func describeTimeToLiveSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.DescribeTimeToLiveInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.DescribeTimeToLiveOutput

    /**
     Invokes the GetItem operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetItemInput object being passed to this operation.
         - completion: The GetItemOutput object or an error will be passed to this 
           callback when the operation is complete. The GetItemOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    func getItemAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.GetItemInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.GetItemOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetItem operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetItemInput object being passed to this operation.
     - Returns: The GetItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    func getItemSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.GetItemInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.GetItemOutput

    /**
     Invokes the ListBackups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListBackupsInput object being passed to this operation.
         - completion: The ListBackupsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListBackupsOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer.
     */
    func listBackupsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.ListBackupsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.ListBackupsOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListBackups operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListBackupsInput object being passed to this operation.
     - Returns: The ListBackupsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer.
     */
    func listBackupsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.ListBackupsInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.ListBackupsOutput

    /**
     Invokes the ListContributorInsights operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListContributorInsightsInput object being passed to this operation.
         - completion: The ListContributorInsightsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListContributorInsightsOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound.
     */
    func listContributorInsightsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.ListContributorInsightsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.ListContributorInsightsOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListContributorInsights operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListContributorInsightsInput object being passed to this operation.
     - Returns: The ListContributorInsightsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    func listContributorInsightsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.ListContributorInsightsInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.ListContributorInsightsOutput

    /**
     Invokes the ListGlobalTables operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListGlobalTablesInput object being passed to this operation.
         - completion: The ListGlobalTablesOutput object or an error will be passed to this 
           callback when the operation is complete. The ListGlobalTablesOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer.
     */
    func listGlobalTablesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.ListGlobalTablesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.ListGlobalTablesOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListGlobalTables operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListGlobalTablesInput object being passed to this operation.
     - Returns: The ListGlobalTablesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer.
     */
    func listGlobalTablesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.ListGlobalTablesInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.ListGlobalTablesOutput

    /**
     Invokes the ListTables operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTablesInput object being passed to this operation.
         - completion: The ListTablesOutput object or an error will be passed to this 
           callback when the operation is complete. The ListTablesOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer.
     */
    func listTablesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.ListTablesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.ListTablesOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListTables operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTablesInput object being passed to this operation.
     - Returns: The ListTablesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer.
     */
    func listTablesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.ListTablesInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.ListTablesOutput

    /**
     Invokes the ListTagsOfResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsOfResourceInput object being passed to this operation.
         - completion: The ListTagsOfResourceOutput object or an error will be passed to this 
           callback when the operation is complete. The ListTagsOfResourceOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound.
     */
    func listTagsOfResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.ListTagsOfResourceInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.ListTagsOfResourceOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListTagsOfResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsOfResourceInput object being passed to this operation.
     - Returns: The ListTagsOfResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    func listTagsOfResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.ListTagsOfResourceInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.ListTagsOfResourceOutput

    /**
     Invokes the PutItem operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutItemInput object being passed to this operation.
         - completion: The PutItemOutput object or an error will be passed to this 
           callback when the operation is complete. The PutItemOutput
           object will be validated before being returned to caller.
           The possible errors are: conditionalCheckFailed, internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionConflict.
     */
    func putItemAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.PutItemInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.PutItemOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the PutItem operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutItemInput object being passed to this operation.
     - Returns: The PutItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conditionalCheckFailed, internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionConflict.
     */
    func putItemSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.PutItemInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.PutItemOutput

    /**
     Invokes the Query operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated QueryInput object being passed to this operation.
         - completion: The QueryOutput object or an error will be passed to this 
           callback when the operation is complete. The QueryOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    func queryAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.QueryInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.QueryOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the Query operation waiting for the response before returning.

     - Parameters:
         - input: The validated QueryInput object being passed to this operation.
     - Returns: The QueryOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    func querySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.QueryInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.QueryOutput

    /**
     Invokes the RestoreTableFromBackup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreTableFromBackupInput object being passed to this operation.
         - completion: The RestoreTableFromBackupOutput object or an error will be passed to this 
           callback when the operation is complete. The RestoreTableFromBackupOutput
           object will be validated before being returned to caller.
           The possible errors are: backupInUse, backupNotFound, internalServer, limitExceeded, tableAlreadyExists, tableInUse.
     */
    func restoreTableFromBackupAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.RestoreTableFromBackupInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.RestoreTableFromBackupOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the RestoreTableFromBackup operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreTableFromBackupInput object being passed to this operation.
     - Returns: The RestoreTableFromBackupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: backupInUse, backupNotFound, internalServer, limitExceeded, tableAlreadyExists, tableInUse.
     */
    func restoreTableFromBackupSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.RestoreTableFromBackupInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.RestoreTableFromBackupOutput

    /**
     Invokes the RestoreTableToPointInTime operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreTableToPointInTimeInput object being passed to this operation.
         - completion: The RestoreTableToPointInTimeOutput object or an error will be passed to this 
           callback when the operation is complete. The RestoreTableToPointInTimeOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, invalidRestoreTime, limitExceeded, pointInTimeRecoveryUnavailable, tableAlreadyExists, tableInUse, tableNotFound.
     */
    func restoreTableToPointInTimeAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.RestoreTableToPointInTimeInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.RestoreTableToPointInTimeOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the RestoreTableToPointInTime operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreTableToPointInTimeInput object being passed to this operation.
     - Returns: The RestoreTableToPointInTimeOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, invalidRestoreTime, limitExceeded, pointInTimeRecoveryUnavailable, tableAlreadyExists, tableInUse, tableNotFound.
     */
    func restoreTableToPointInTimeSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.RestoreTableToPointInTimeInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.RestoreTableToPointInTimeOutput

    /**
     Invokes the Scan operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ScanInput object being passed to this operation.
         - completion: The ScanOutput object or an error will be passed to this 
           callback when the operation is complete. The ScanOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    func scanAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.ScanInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.ScanOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the Scan operation waiting for the response before returning.

     - Parameters:
         - input: The validated ScanInput object being passed to this operation.
     - Returns: The ScanOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    func scanSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.ScanInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.ScanOutput

    /**
     Invokes the TagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func tagResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.TagResourceInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func tagResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.TagResourceInput,
            reporting: InvocationReportingType) throws

    /**
     Invokes the TransactGetItems operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TransactGetItemsInput object being passed to this operation.
         - completion: The TransactGetItemsOutput object or an error will be passed to this 
           callback when the operation is complete. The TransactGetItemsOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionCanceled.
     */
    func transactGetItemsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.TransactGetItemsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.TransactGetItemsOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the TransactGetItems operation waiting for the response before returning.

     - Parameters:
         - input: The validated TransactGetItemsInput object being passed to this operation.
     - Returns: The TransactGetItemsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionCanceled.
     */
    func transactGetItemsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.TransactGetItemsInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.TransactGetItemsOutput

    /**
     Invokes the TransactWriteItems operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TransactWriteItemsInput object being passed to this operation.
         - completion: The TransactWriteItemsOutput object or an error will be passed to this 
           callback when the operation is complete. The TransactWriteItemsOutput
           object will be validated before being returned to caller.
           The possible errors are: idempotentParameterMismatch, internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionCanceled, transactionInProgress.
     */
    func transactWriteItemsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.TransactWriteItemsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.TransactWriteItemsOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the TransactWriteItems operation waiting for the response before returning.

     - Parameters:
         - input: The validated TransactWriteItemsInput object being passed to this operation.
     - Returns: The TransactWriteItemsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: idempotentParameterMismatch, internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionCanceled, transactionInProgress.
     */
    func transactWriteItemsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.TransactWriteItemsInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.TransactWriteItemsOutput

    /**
     Invokes the UntagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func untagResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.UntagResourceInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func untagResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.UntagResourceInput,
            reporting: InvocationReportingType) throws

    /**
     Invokes the UpdateContinuousBackups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateContinuousBackupsInput object being passed to this operation.
         - completion: The UpdateContinuousBackupsOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateContinuousBackupsOutput
           object will be validated before being returned to caller.
           The possible errors are: continuousBackupsUnavailable, internalServer, tableNotFound.
     */
    func updateContinuousBackupsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.UpdateContinuousBackupsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.UpdateContinuousBackupsOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the UpdateContinuousBackups operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateContinuousBackupsInput object being passed to this operation.
     - Returns: The UpdateContinuousBackupsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: continuousBackupsUnavailable, internalServer, tableNotFound.
     */
    func updateContinuousBackupsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.UpdateContinuousBackupsInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.UpdateContinuousBackupsOutput

    /**
     Invokes the UpdateContributorInsights operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateContributorInsightsInput object being passed to this operation.
         - completion: The UpdateContributorInsightsOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateContributorInsightsOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound.
     */
    func updateContributorInsightsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.UpdateContributorInsightsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.UpdateContributorInsightsOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the UpdateContributorInsights operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateContributorInsightsInput object being passed to this operation.
     - Returns: The UpdateContributorInsightsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    func updateContributorInsightsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.UpdateContributorInsightsInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.UpdateContributorInsightsOutput

    /**
     Invokes the UpdateGlobalTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateGlobalTableInput object being passed to this operation.
         - completion: The UpdateGlobalTableOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateGlobalTableOutput
           object will be validated before being returned to caller.
           The possible errors are: globalTableNotFound, internalServer, replicaAlreadyExists, replicaNotFound, tableNotFound.
     */
    func updateGlobalTableAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.UpdateGlobalTableInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.UpdateGlobalTableOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the UpdateGlobalTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateGlobalTableInput object being passed to this operation.
     - Returns: The UpdateGlobalTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalTableNotFound, internalServer, replicaAlreadyExists, replicaNotFound, tableNotFound.
     */
    func updateGlobalTableSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.UpdateGlobalTableInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.UpdateGlobalTableOutput

    /**
     Invokes the UpdateGlobalTableSettings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateGlobalTableSettingsInput object being passed to this operation.
         - completion: The UpdateGlobalTableSettingsOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateGlobalTableSettingsOutput
           object will be validated before being returned to caller.
           The possible errors are: globalTableNotFound, indexNotFound, internalServer, limitExceeded, replicaNotFound, resourceInUse.
     */
    func updateGlobalTableSettingsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.UpdateGlobalTableSettingsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.UpdateGlobalTableSettingsOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the UpdateGlobalTableSettings operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateGlobalTableSettingsInput object being passed to this operation.
     - Returns: The UpdateGlobalTableSettingsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalTableNotFound, indexNotFound, internalServer, limitExceeded, replicaNotFound, resourceInUse.
     */
    func updateGlobalTableSettingsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.UpdateGlobalTableSettingsInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.UpdateGlobalTableSettingsOutput

    /**
     Invokes the UpdateItem operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateItemInput object being passed to this operation.
         - completion: The UpdateItemOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateItemOutput
           object will be validated before being returned to caller.
           The possible errors are: conditionalCheckFailed, internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionConflict.
     */
    func updateItemAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.UpdateItemInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.UpdateItemOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the UpdateItem operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateItemInput object being passed to this operation.
     - Returns: The UpdateItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conditionalCheckFailed, internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionConflict.
     */
    func updateItemSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.UpdateItemInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.UpdateItemOutput

    /**
     Invokes the UpdateTable operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateTableInput object being passed to this operation.
         - completion: The UpdateTableOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateTableOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func updateTableAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.UpdateTableInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.UpdateTableOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the UpdateTable operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateTableInput object being passed to this operation.
     - Returns: The UpdateTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func updateTableSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.UpdateTableInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.UpdateTableOutput

    /**
     Invokes the UpdateTableReplicaAutoScaling operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateTableReplicaAutoScalingInput object being passed to this operation.
         - completion: The UpdateTableReplicaAutoScalingOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateTableReplicaAutoScalingOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func updateTableReplicaAutoScalingAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.UpdateTableReplicaAutoScalingInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.UpdateTableReplicaAutoScalingOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the UpdateTableReplicaAutoScaling operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateTableReplicaAutoScalingInput object being passed to this operation.
     - Returns: The UpdateTableReplicaAutoScalingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func updateTableReplicaAutoScalingSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.UpdateTableReplicaAutoScalingInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.UpdateTableReplicaAutoScalingOutput

    /**
     Invokes the UpdateTimeToLive operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateTimeToLiveInput object being passed to this operation.
         - completion: The UpdateTimeToLiveOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateTimeToLiveOutput
           object will be validated before being returned to caller.
           The possible errors are: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func updateTimeToLiveAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.UpdateTimeToLiveInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<DynamoDBModel.UpdateTimeToLiveOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the UpdateTimeToLive operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateTimeToLiveInput object being passed to this operation.
     - Returns: The UpdateTimeToLiveOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func updateTimeToLiveSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: DynamoDBModel.UpdateTimeToLiveInput,
            reporting: InvocationReportingType) throws -> DynamoDBModel.UpdateTimeToLiveOutput
}
