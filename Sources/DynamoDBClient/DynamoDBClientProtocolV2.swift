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
// DynamoDBClientProtocolV2.swift
// DynamoDBClient
//

import Foundation
import DynamoDBModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Client Protocol for the DynamoDB service.
 */
public protocol DynamoDBClientProtocolV2 {
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    typealias BatchExecuteStatementFunctionType = (
            _ input: DynamoDBModel.BatchExecuteStatementInput) async throws -> DynamoDBModel.BatchExecuteStatementOutput
    typealias BatchGetItemFunctionType = (
            _ input: DynamoDBModel.BatchGetItemInput) async throws -> DynamoDBModel.BatchGetItemOutput
    typealias BatchWriteItemFunctionType = (
            _ input: DynamoDBModel.BatchWriteItemInput) async throws -> DynamoDBModel.BatchWriteItemOutput
    typealias CreateBackupFunctionType = (
            _ input: DynamoDBModel.CreateBackupInput) async throws -> DynamoDBModel.CreateBackupOutput
    typealias CreateGlobalTableFunctionType = (
            _ input: DynamoDBModel.CreateGlobalTableInput) async throws -> DynamoDBModel.CreateGlobalTableOutput
    typealias CreateTableFunctionType = (
            _ input: DynamoDBModel.CreateTableInput) async throws -> DynamoDBModel.CreateTableOutput
    typealias DeleteBackupFunctionType = (
            _ input: DynamoDBModel.DeleteBackupInput) async throws -> DynamoDBModel.DeleteBackupOutput
    typealias DeleteItemFunctionType = (
            _ input: DynamoDBModel.DeleteItemInput) async throws -> DynamoDBModel.DeleteItemOutput
    typealias DeleteTableFunctionType = (
            _ input: DynamoDBModel.DeleteTableInput) async throws -> DynamoDBModel.DeleteTableOutput
    typealias DescribeBackupFunctionType = (
            _ input: DynamoDBModel.DescribeBackupInput) async throws -> DynamoDBModel.DescribeBackupOutput
    typealias DescribeContinuousBackupsFunctionType = (
            _ input: DynamoDBModel.DescribeContinuousBackupsInput) async throws -> DynamoDBModel.DescribeContinuousBackupsOutput
    typealias DescribeContributorInsightsFunctionType = (
            _ input: DynamoDBModel.DescribeContributorInsightsInput) async throws -> DynamoDBModel.DescribeContributorInsightsOutput
    typealias DescribeEndpointsFunctionType = (
            _ input: DynamoDBModel.DescribeEndpointsRequest) async throws -> DynamoDBModel.DescribeEndpointsResponse
    typealias DescribeExportFunctionType = (
            _ input: DynamoDBModel.DescribeExportInput) async throws -> DynamoDBModel.DescribeExportOutput
    typealias DescribeGlobalTableFunctionType = (
            _ input: DynamoDBModel.DescribeGlobalTableInput) async throws -> DynamoDBModel.DescribeGlobalTableOutput
    typealias DescribeGlobalTableSettingsFunctionType = (
            _ input: DynamoDBModel.DescribeGlobalTableSettingsInput) async throws -> DynamoDBModel.DescribeGlobalTableSettingsOutput
    typealias DescribeImportFunctionType = (
            _ input: DynamoDBModel.DescribeImportInput) async throws -> DynamoDBModel.DescribeImportOutput
    typealias DescribeKinesisStreamingDestinationFunctionType = (
            _ input: DynamoDBModel.DescribeKinesisStreamingDestinationInput) async throws -> DynamoDBModel.DescribeKinesisStreamingDestinationOutput
    typealias DescribeLimitsFunctionType = (
            _ input: DynamoDBModel.DescribeLimitsInput) async throws -> DynamoDBModel.DescribeLimitsOutput
    typealias DescribeTableFunctionType = (
            _ input: DynamoDBModel.DescribeTableInput) async throws -> DynamoDBModel.DescribeTableOutput
    typealias DescribeTableReplicaAutoScalingFunctionType = (
            _ input: DynamoDBModel.DescribeTableReplicaAutoScalingInput) async throws -> DynamoDBModel.DescribeTableReplicaAutoScalingOutput
    typealias DescribeTimeToLiveFunctionType = (
            _ input: DynamoDBModel.DescribeTimeToLiveInput) async throws -> DynamoDBModel.DescribeTimeToLiveOutput
    typealias DisableKinesisStreamingDestinationFunctionType = (
            _ input: DynamoDBModel.KinesisStreamingDestinationInput) async throws -> DynamoDBModel.KinesisStreamingDestinationOutput
    typealias EnableKinesisStreamingDestinationFunctionType = (
            _ input: DynamoDBModel.KinesisStreamingDestinationInput) async throws -> DynamoDBModel.KinesisStreamingDestinationOutput
    typealias ExecuteStatementFunctionType = (
            _ input: DynamoDBModel.ExecuteStatementInput) async throws -> DynamoDBModel.ExecuteStatementOutput
    typealias ExecuteTransactionFunctionType = (
            _ input: DynamoDBModel.ExecuteTransactionInput) async throws -> DynamoDBModel.ExecuteTransactionOutput
    typealias ExportTableToPointInTimeFunctionType = (
            _ input: DynamoDBModel.ExportTableToPointInTimeInput) async throws -> DynamoDBModel.ExportTableToPointInTimeOutput
    typealias GetItemFunctionType = (
            _ input: DynamoDBModel.GetItemInput) async throws -> DynamoDBModel.GetItemOutput
    typealias ImportTableFunctionType = (
            _ input: DynamoDBModel.ImportTableInput) async throws -> DynamoDBModel.ImportTableOutput
    typealias ListBackupsFunctionType = (
            _ input: DynamoDBModel.ListBackupsInput) async throws -> DynamoDBModel.ListBackupsOutput
    typealias ListContributorInsightsFunctionType = (
            _ input: DynamoDBModel.ListContributorInsightsInput) async throws -> DynamoDBModel.ListContributorInsightsOutput
    typealias ListExportsFunctionType = (
            _ input: DynamoDBModel.ListExportsInput) async throws -> DynamoDBModel.ListExportsOutput
    typealias ListGlobalTablesFunctionType = (
            _ input: DynamoDBModel.ListGlobalTablesInput) async throws -> DynamoDBModel.ListGlobalTablesOutput
    typealias ListImportsFunctionType = (
            _ input: DynamoDBModel.ListImportsInput) async throws -> DynamoDBModel.ListImportsOutput
    typealias ListTablesFunctionType = (
            _ input: DynamoDBModel.ListTablesInput) async throws -> DynamoDBModel.ListTablesOutput
    typealias ListTagsOfResourceFunctionType = (
            _ input: DynamoDBModel.ListTagsOfResourceInput) async throws -> DynamoDBModel.ListTagsOfResourceOutput
    typealias PutItemFunctionType = (
            _ input: DynamoDBModel.PutItemInput) async throws -> DynamoDBModel.PutItemOutput
    typealias QueryFunctionType = (
            _ input: DynamoDBModel.QueryInput) async throws -> DynamoDBModel.QueryOutput
    typealias RestoreTableFromBackupFunctionType = (
            _ input: DynamoDBModel.RestoreTableFromBackupInput) async throws -> DynamoDBModel.RestoreTableFromBackupOutput
    typealias RestoreTableToPointInTimeFunctionType = (
            _ input: DynamoDBModel.RestoreTableToPointInTimeInput) async throws -> DynamoDBModel.RestoreTableToPointInTimeOutput
    typealias ScanFunctionType = (
            _ input: DynamoDBModel.ScanInput) async throws -> DynamoDBModel.ScanOutput
    typealias TagResourceFunctionType = (
            _ input: DynamoDBModel.TagResourceInput) async throws -> ()
    typealias TransactGetItemsFunctionType = (
            _ input: DynamoDBModel.TransactGetItemsInput) async throws -> DynamoDBModel.TransactGetItemsOutput
    typealias TransactWriteItemsFunctionType = (
            _ input: DynamoDBModel.TransactWriteItemsInput) async throws -> DynamoDBModel.TransactWriteItemsOutput
    typealias UntagResourceFunctionType = (
            _ input: DynamoDBModel.UntagResourceInput) async throws -> ()
    typealias UpdateContinuousBackupsFunctionType = (
            _ input: DynamoDBModel.UpdateContinuousBackupsInput) async throws -> DynamoDBModel.UpdateContinuousBackupsOutput
    typealias UpdateContributorInsightsFunctionType = (
            _ input: DynamoDBModel.UpdateContributorInsightsInput) async throws -> DynamoDBModel.UpdateContributorInsightsOutput
    typealias UpdateGlobalTableFunctionType = (
            _ input: DynamoDBModel.UpdateGlobalTableInput) async throws -> DynamoDBModel.UpdateGlobalTableOutput
    typealias UpdateGlobalTableSettingsFunctionType = (
            _ input: DynamoDBModel.UpdateGlobalTableSettingsInput) async throws -> DynamoDBModel.UpdateGlobalTableSettingsOutput
    typealias UpdateItemFunctionType = (
            _ input: DynamoDBModel.UpdateItemInput) async throws -> DynamoDBModel.UpdateItemOutput
    typealias UpdateTableFunctionType = (
            _ input: DynamoDBModel.UpdateTableInput) async throws -> DynamoDBModel.UpdateTableOutput
    typealias UpdateTableReplicaAutoScalingFunctionType = (
            _ input: DynamoDBModel.UpdateTableReplicaAutoScalingInput) async throws -> DynamoDBModel.UpdateTableReplicaAutoScalingOutput
    typealias UpdateTimeToLiveFunctionType = (
            _ input: DynamoDBModel.UpdateTimeToLiveInput) async throws -> DynamoDBModel.UpdateTimeToLiveOutput

    /**
     Invokes the BatchExecuteStatement operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated BatchExecuteStatementInput object being passed to this operation.
     - Returns: The BatchExecuteStatementOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, requestLimitExceeded.
     */
    func batchExecuteStatement(
            input: DynamoDBModel.BatchExecuteStatementInput) async throws -> DynamoDBModel.BatchExecuteStatementOutput

    /**
     Invokes the BatchGetItem operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated BatchGetItemInput object being passed to this operation.
     - Returns: The BatchGetItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    func batchGetItem(
            input: DynamoDBModel.BatchGetItemInput) async throws -> DynamoDBModel.BatchGetItemOutput

    /**
     Invokes the BatchWriteItem operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated BatchWriteItemInput object being passed to this operation.
     - Returns: The BatchWriteItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    func batchWriteItem(
            input: DynamoDBModel.BatchWriteItemInput) async throws -> DynamoDBModel.BatchWriteItemOutput

    /**
     Invokes the CreateBackup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateBackupInput object being passed to this operation.
     - Returns: The CreateBackupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: backupInUse, continuousBackupsUnavailable, internalServer, limitExceeded, tableInUse, tableNotFound.
     */
    func createBackup(
            input: DynamoDBModel.CreateBackupInput) async throws -> DynamoDBModel.CreateBackupOutput

    /**
     Invokes the CreateGlobalTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateGlobalTableInput object being passed to this operation.
     - Returns: The CreateGlobalTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalTableAlreadyExists, internalServer, limitExceeded, tableNotFound.
     */
    func createGlobalTable(
            input: DynamoDBModel.CreateGlobalTableInput) async throws -> DynamoDBModel.CreateGlobalTableOutput

    /**
     Invokes the CreateTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateTableInput object being passed to this operation.
     - Returns: The CreateTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse.
     */
    func createTable(
            input: DynamoDBModel.CreateTableInput) async throws -> DynamoDBModel.CreateTableOutput

    /**
     Invokes the DeleteBackup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteBackupInput object being passed to this operation.
     - Returns: The DeleteBackupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: backupInUse, backupNotFound, internalServer, limitExceeded.
     */
    func deleteBackup(
            input: DynamoDBModel.DeleteBackupInput) async throws -> DynamoDBModel.DeleteBackupOutput

    /**
     Invokes the DeleteItem operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteItemInput object being passed to this operation.
     - Returns: The DeleteItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conditionalCheckFailed, internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionConflict.
     */
    func deleteItem(
            input: DynamoDBModel.DeleteItemInput) async throws -> DynamoDBModel.DeleteItemOutput

    /**
     Invokes the DeleteTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteTableInput object being passed to this operation.
     - Returns: The DeleteTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func deleteTable(
            input: DynamoDBModel.DeleteTableInput) async throws -> DynamoDBModel.DeleteTableOutput

    /**
     Invokes the DescribeBackup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeBackupInput object being passed to this operation.
     - Returns: The DescribeBackupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: backupNotFound, internalServer.
     */
    func describeBackup(
            input: DynamoDBModel.DescribeBackupInput) async throws -> DynamoDBModel.DescribeBackupOutput

    /**
     Invokes the DescribeContinuousBackups operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeContinuousBackupsInput object being passed to this operation.
     - Returns: The DescribeContinuousBackupsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, tableNotFound.
     */
    func describeContinuousBackups(
            input: DynamoDBModel.DescribeContinuousBackupsInput) async throws -> DynamoDBModel.DescribeContinuousBackupsOutput

    /**
     Invokes the DescribeContributorInsights operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeContributorInsightsInput object being passed to this operation.
     - Returns: The DescribeContributorInsightsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    func describeContributorInsights(
            input: DynamoDBModel.DescribeContributorInsightsInput) async throws -> DynamoDBModel.DescribeContributorInsightsOutput

    /**
     Invokes the DescribeEndpoints operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeEndpointsRequest object being passed to this operation.
     - Returns: The DescribeEndpointsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeEndpoints(
            input: DynamoDBModel.DescribeEndpointsRequest) async throws -> DynamoDBModel.DescribeEndpointsResponse

    /**
     Invokes the DescribeExport operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeExportInput object being passed to this operation.
     - Returns: The DescribeExportOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: exportNotFound, internalServer, limitExceeded.
     */
    func describeExport(
            input: DynamoDBModel.DescribeExportInput) async throws -> DynamoDBModel.DescribeExportOutput

    /**
     Invokes the DescribeGlobalTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeGlobalTableInput object being passed to this operation.
     - Returns: The DescribeGlobalTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalTableNotFound, internalServer.
     */
    func describeGlobalTable(
            input: DynamoDBModel.DescribeGlobalTableInput) async throws -> DynamoDBModel.DescribeGlobalTableOutput

    /**
     Invokes the DescribeGlobalTableSettings operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeGlobalTableSettingsInput object being passed to this operation.
     - Returns: The DescribeGlobalTableSettingsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalTableNotFound, internalServer.
     */
    func describeGlobalTableSettings(
            input: DynamoDBModel.DescribeGlobalTableSettingsInput) async throws -> DynamoDBModel.DescribeGlobalTableSettingsOutput

    /**
     Invokes the DescribeImport operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeImportInput object being passed to this operation.
     - Returns: The DescribeImportOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: importNotFound.
     */
    func describeImport(
            input: DynamoDBModel.DescribeImportInput) async throws -> DynamoDBModel.DescribeImportOutput

    /**
     Invokes the DescribeKinesisStreamingDestination operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeKinesisStreamingDestinationInput object being passed to this operation.
     - Returns: The DescribeKinesisStreamingDestinationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    func describeKinesisStreamingDestination(
            input: DynamoDBModel.DescribeKinesisStreamingDestinationInput) async throws -> DynamoDBModel.DescribeKinesisStreamingDestinationOutput

    /**
     Invokes the DescribeLimits operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeLimitsInput object being passed to this operation.
     - Returns: The DescribeLimitsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer.
     */
    func describeLimits(
            input: DynamoDBModel.DescribeLimitsInput) async throws -> DynamoDBModel.DescribeLimitsOutput

    /**
     Invokes the DescribeTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTableInput object being passed to this operation.
     - Returns: The DescribeTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    func describeTable(
            input: DynamoDBModel.DescribeTableInput) async throws -> DynamoDBModel.DescribeTableOutput

    /**
     Invokes the DescribeTableReplicaAutoScaling operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTableReplicaAutoScalingInput object being passed to this operation.
     - Returns: The DescribeTableReplicaAutoScalingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    func describeTableReplicaAutoScaling(
            input: DynamoDBModel.DescribeTableReplicaAutoScalingInput) async throws -> DynamoDBModel.DescribeTableReplicaAutoScalingOutput

    /**
     Invokes the DescribeTimeToLive operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTimeToLiveInput object being passed to this operation.
     - Returns: The DescribeTimeToLiveOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    func describeTimeToLive(
            input: DynamoDBModel.DescribeTimeToLiveInput) async throws -> DynamoDBModel.DescribeTimeToLiveOutput

    /**
     Invokes the DisableKinesisStreamingDestination operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated KinesisStreamingDestinationInput object being passed to this operation.
     - Returns: The KinesisStreamingDestinationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func disableKinesisStreamingDestination(
            input: DynamoDBModel.KinesisStreamingDestinationInput) async throws -> DynamoDBModel.KinesisStreamingDestinationOutput

    /**
     Invokes the EnableKinesisStreamingDestination operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated KinesisStreamingDestinationInput object being passed to this operation.
     - Returns: The KinesisStreamingDestinationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func enableKinesisStreamingDestination(
            input: DynamoDBModel.KinesisStreamingDestinationInput) async throws -> DynamoDBModel.KinesisStreamingDestinationOutput

    /**
     Invokes the ExecuteStatement operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ExecuteStatementInput object being passed to this operation.
     - Returns: The ExecuteStatementOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conditionalCheckFailed, duplicateItem, internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionConflict.
     */
    func executeStatement(
            input: DynamoDBModel.ExecuteStatementInput) async throws -> DynamoDBModel.ExecuteStatementOutput

    /**
     Invokes the ExecuteTransaction operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ExecuteTransactionInput object being passed to this operation.
     - Returns: The ExecuteTransactionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: idempotentParameterMismatch, internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionCanceled, transactionInProgress.
     */
    func executeTransaction(
            input: DynamoDBModel.ExecuteTransactionInput) async throws -> DynamoDBModel.ExecuteTransactionOutput

    /**
     Invokes the ExportTableToPointInTime operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ExportTableToPointInTimeInput object being passed to this operation.
     - Returns: The ExportTableToPointInTimeOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: exportConflict, internalServer, invalidExportTime, limitExceeded, pointInTimeRecoveryUnavailable, tableNotFound.
     */
    func exportTableToPointInTime(
            input: DynamoDBModel.ExportTableToPointInTimeInput) async throws -> DynamoDBModel.ExportTableToPointInTimeOutput

    /**
     Invokes the GetItem operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetItemInput object being passed to this operation.
     - Returns: The GetItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    func getItem(
            input: DynamoDBModel.GetItemInput) async throws -> DynamoDBModel.GetItemOutput

    /**
     Invokes the ImportTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ImportTableInput object being passed to this operation.
     - Returns: The ImportTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: importConflict, limitExceeded, resourceInUse.
     */
    func importTable(
            input: DynamoDBModel.ImportTableInput) async throws -> DynamoDBModel.ImportTableOutput

    /**
     Invokes the ListBackups operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListBackupsInput object being passed to this operation.
     - Returns: The ListBackupsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer.
     */
    func listBackups(
            input: DynamoDBModel.ListBackupsInput) async throws -> DynamoDBModel.ListBackupsOutput

    /**
     Invokes the ListContributorInsights operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListContributorInsightsInput object being passed to this operation.
     - Returns: The ListContributorInsightsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    func listContributorInsights(
            input: DynamoDBModel.ListContributorInsightsInput) async throws -> DynamoDBModel.ListContributorInsightsOutput

    /**
     Invokes the ListExports operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListExportsInput object being passed to this operation.
     - Returns: The ListExportsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded.
     */
    func listExports(
            input: DynamoDBModel.ListExportsInput) async throws -> DynamoDBModel.ListExportsOutput

    /**
     Invokes the ListGlobalTables operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListGlobalTablesInput object being passed to this operation.
     - Returns: The ListGlobalTablesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer.
     */
    func listGlobalTables(
            input: DynamoDBModel.ListGlobalTablesInput) async throws -> DynamoDBModel.ListGlobalTablesOutput

    /**
     Invokes the ListImports operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListImportsInput object being passed to this operation.
     - Returns: The ListImportsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: limitExceeded.
     */
    func listImports(
            input: DynamoDBModel.ListImportsInput) async throws -> DynamoDBModel.ListImportsOutput

    /**
     Invokes the ListTables operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTablesInput object being passed to this operation.
     - Returns: The ListTablesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer.
     */
    func listTables(
            input: DynamoDBModel.ListTablesInput) async throws -> DynamoDBModel.ListTablesOutput

    /**
     Invokes the ListTagsOfResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTagsOfResourceInput object being passed to this operation.
     - Returns: The ListTagsOfResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    func listTagsOfResource(
            input: DynamoDBModel.ListTagsOfResourceInput) async throws -> DynamoDBModel.ListTagsOfResourceOutput

    /**
     Invokes the PutItem operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutItemInput object being passed to this operation.
     - Returns: The PutItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conditionalCheckFailed, internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionConflict.
     */
    func putItem(
            input: DynamoDBModel.PutItemInput) async throws -> DynamoDBModel.PutItemOutput

    /**
     Invokes the Query operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated QueryInput object being passed to this operation.
     - Returns: The QueryOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    func query(
            input: DynamoDBModel.QueryInput) async throws -> DynamoDBModel.QueryOutput

    /**
     Invokes the RestoreTableFromBackup operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RestoreTableFromBackupInput object being passed to this operation.
     - Returns: The RestoreTableFromBackupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: backupInUse, backupNotFound, internalServer, limitExceeded, tableAlreadyExists, tableInUse.
     */
    func restoreTableFromBackup(
            input: DynamoDBModel.RestoreTableFromBackupInput) async throws -> DynamoDBModel.RestoreTableFromBackupOutput

    /**
     Invokes the RestoreTableToPointInTime operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RestoreTableToPointInTimeInput object being passed to this operation.
     - Returns: The RestoreTableToPointInTimeOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, invalidRestoreTime, limitExceeded, pointInTimeRecoveryUnavailable, tableAlreadyExists, tableInUse, tableNotFound.
     */
    func restoreTableToPointInTime(
            input: DynamoDBModel.RestoreTableToPointInTimeInput) async throws -> DynamoDBModel.RestoreTableToPointInTimeOutput

    /**
     Invokes the Scan operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ScanInput object being passed to this operation.
     - Returns: The ScanOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    func scan(
            input: DynamoDBModel.ScanInput) async throws -> DynamoDBModel.ScanOutput

    /**
     Invokes the TagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func tagResource(
            input: DynamoDBModel.TagResourceInput) async throws

    /**
     Invokes the TransactGetItems operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TransactGetItemsInput object being passed to this operation.
     - Returns: The TransactGetItemsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionCanceled.
     */
    func transactGetItems(
            input: DynamoDBModel.TransactGetItemsInput) async throws -> DynamoDBModel.TransactGetItemsOutput

    /**
     Invokes the TransactWriteItems operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TransactWriteItemsInput object being passed to this operation.
     - Returns: The TransactWriteItemsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: idempotentParameterMismatch, internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionCanceled, transactionInProgress.
     */
    func transactWriteItems(
            input: DynamoDBModel.TransactWriteItemsInput) async throws -> DynamoDBModel.TransactWriteItemsOutput

    /**
     Invokes the UntagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func untagResource(
            input: DynamoDBModel.UntagResourceInput) async throws

    /**
     Invokes the UpdateContinuousBackups operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateContinuousBackupsInput object being passed to this operation.
     - Returns: The UpdateContinuousBackupsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: continuousBackupsUnavailable, internalServer, tableNotFound.
     */
    func updateContinuousBackups(
            input: DynamoDBModel.UpdateContinuousBackupsInput) async throws -> DynamoDBModel.UpdateContinuousBackupsOutput

    /**
     Invokes the UpdateContributorInsights operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateContributorInsightsInput object being passed to this operation.
     - Returns: The UpdateContributorInsightsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    func updateContributorInsights(
            input: DynamoDBModel.UpdateContributorInsightsInput) async throws -> DynamoDBModel.UpdateContributorInsightsOutput

    /**
     Invokes the UpdateGlobalTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateGlobalTableInput object being passed to this operation.
     - Returns: The UpdateGlobalTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalTableNotFound, internalServer, replicaAlreadyExists, replicaNotFound, tableNotFound.
     */
    func updateGlobalTable(
            input: DynamoDBModel.UpdateGlobalTableInput) async throws -> DynamoDBModel.UpdateGlobalTableOutput

    /**
     Invokes the UpdateGlobalTableSettings operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateGlobalTableSettingsInput object being passed to this operation.
     - Returns: The UpdateGlobalTableSettingsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalTableNotFound, indexNotFound, internalServer, limitExceeded, replicaNotFound, resourceInUse.
     */
    func updateGlobalTableSettings(
            input: DynamoDBModel.UpdateGlobalTableSettingsInput) async throws -> DynamoDBModel.UpdateGlobalTableSettingsOutput

    /**
     Invokes the UpdateItem operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateItemInput object being passed to this operation.
     - Returns: The UpdateItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conditionalCheckFailed, internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionConflict.
     */
    func updateItem(
            input: DynamoDBModel.UpdateItemInput) async throws -> DynamoDBModel.UpdateItemOutput

    /**
     Invokes the UpdateTable operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateTableInput object being passed to this operation.
     - Returns: The UpdateTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func updateTable(
            input: DynamoDBModel.UpdateTableInput) async throws -> DynamoDBModel.UpdateTableOutput

    /**
     Invokes the UpdateTableReplicaAutoScaling operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateTableReplicaAutoScalingInput object being passed to this operation.
     - Returns: The UpdateTableReplicaAutoScalingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func updateTableReplicaAutoScaling(
            input: DynamoDBModel.UpdateTableReplicaAutoScalingInput) async throws -> DynamoDBModel.UpdateTableReplicaAutoScalingOutput

    /**
     Invokes the UpdateTimeToLive operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateTimeToLiveInput object being passed to this operation.
     - Returns: The UpdateTimeToLiveOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func updateTimeToLive(
            input: DynamoDBModel.UpdateTimeToLiveInput) async throws -> DynamoDBModel.UpdateTimeToLiveOutput
#endif
}
