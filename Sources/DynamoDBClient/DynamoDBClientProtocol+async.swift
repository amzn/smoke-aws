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
// DynamoDBClientProtocol+async.swift
// DynamoDBClient
//

import Foundation
import DynamoDBModel

#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)

/**
 Async extensions for the DynamoDBClientProtocol type.
 */
public extension DynamoDBClientProtocol {

    /**
     Invokes the BatchExecuteStatement operation and asynchronously returning the response.

     - Parameters:
         - input: The validated BatchExecuteStatementInput object being passed to this operation.
     - Returns: The BatchExecuteStatementOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, requestLimitExceeded.
     */
    func batchExecuteStatement(input: DynamoDBModel.BatchExecuteStatementInput) async throws
     -> DynamoDBModel.BatchExecuteStatementOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try batchExecuteStatementAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the BatchGetItem operation and asynchronously returning the response.

     - Parameters:
         - input: The validated BatchGetItemInput object being passed to this operation.
     - Returns: The BatchGetItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    func batchGetItem(input: DynamoDBModel.BatchGetItemInput) async throws
     -> DynamoDBModel.BatchGetItemOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try batchGetItemAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the BatchWriteItem operation and asynchronously returning the response.

     - Parameters:
         - input: The validated BatchWriteItemInput object being passed to this operation.
     - Returns: The BatchWriteItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    func batchWriteItem(input: DynamoDBModel.BatchWriteItemInput) async throws
     -> DynamoDBModel.BatchWriteItemOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try batchWriteItemAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateBackup operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateBackupInput object being passed to this operation.
     - Returns: The CreateBackupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: backupInUse, continuousBackupsUnavailable, internalServer, limitExceeded, tableInUse, tableNotFound.
     */
    func createBackup(input: DynamoDBModel.CreateBackupInput) async throws
     -> DynamoDBModel.CreateBackupOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try createBackupAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateGlobalTable operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateGlobalTableInput object being passed to this operation.
     - Returns: The CreateGlobalTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalTableAlreadyExists, internalServer, limitExceeded, tableNotFound.
     */
    func createGlobalTable(input: DynamoDBModel.CreateGlobalTableInput) async throws
     -> DynamoDBModel.CreateGlobalTableOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try createGlobalTableAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateTable operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateTableInput object being passed to this operation.
     - Returns: The CreateTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse.
     */
    func createTable(input: DynamoDBModel.CreateTableInput) async throws
     -> DynamoDBModel.CreateTableOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try createTableAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteBackup operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteBackupInput object being passed to this operation.
     - Returns: The DeleteBackupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: backupInUse, backupNotFound, internalServer, limitExceeded.
     */
    func deleteBackup(input: DynamoDBModel.DeleteBackupInput) async throws
     -> DynamoDBModel.DeleteBackupOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deleteBackupAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteItem operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteItemInput object being passed to this operation.
     - Returns: The DeleteItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conditionalCheckFailed, internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionConflict.
     */
    func deleteItem(input: DynamoDBModel.DeleteItemInput) async throws
     -> DynamoDBModel.DeleteItemOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deleteItemAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteTable operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteTableInput object being passed to this operation.
     - Returns: The DeleteTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func deleteTable(input: DynamoDBModel.DeleteTableInput) async throws
     -> DynamoDBModel.DeleteTableOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deleteTableAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeBackup operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeBackupInput object being passed to this operation.
     - Returns: The DescribeBackupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: backupNotFound, internalServer.
     */
    func describeBackup(input: DynamoDBModel.DescribeBackupInput) async throws
     -> DynamoDBModel.DescribeBackupOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeBackupAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeContinuousBackups operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeContinuousBackupsInput object being passed to this operation.
     - Returns: The DescribeContinuousBackupsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, tableNotFound.
     */
    func describeContinuousBackups(input: DynamoDBModel.DescribeContinuousBackupsInput) async throws
     -> DynamoDBModel.DescribeContinuousBackupsOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeContinuousBackupsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeContributorInsights operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeContributorInsightsInput object being passed to this operation.
     - Returns: The DescribeContributorInsightsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    func describeContributorInsights(input: DynamoDBModel.DescribeContributorInsightsInput) async throws
     -> DynamoDBModel.DescribeContributorInsightsOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeContributorInsightsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeEndpoints operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeEndpointsRequest object being passed to this operation.
     - Returns: The DescribeEndpointsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeEndpoints(input: DynamoDBModel.DescribeEndpointsRequest) async throws
     -> DynamoDBModel.DescribeEndpointsResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeEndpointsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeExport operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeExportInput object being passed to this operation.
     - Returns: The DescribeExportOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: exportNotFound, internalServer, limitExceeded.
     */
    func describeExport(input: DynamoDBModel.DescribeExportInput) async throws
     -> DynamoDBModel.DescribeExportOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeExportAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeGlobalTable operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeGlobalTableInput object being passed to this operation.
     - Returns: The DescribeGlobalTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalTableNotFound, internalServer.
     */
    func describeGlobalTable(input: DynamoDBModel.DescribeGlobalTableInput) async throws
     -> DynamoDBModel.DescribeGlobalTableOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeGlobalTableAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeGlobalTableSettings operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeGlobalTableSettingsInput object being passed to this operation.
     - Returns: The DescribeGlobalTableSettingsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalTableNotFound, internalServer.
     */
    func describeGlobalTableSettings(input: DynamoDBModel.DescribeGlobalTableSettingsInput) async throws
     -> DynamoDBModel.DescribeGlobalTableSettingsOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeGlobalTableSettingsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeImport operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeImportInput object being passed to this operation.
     - Returns: The DescribeImportOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: importNotFound.
     */
    func describeImport(input: DynamoDBModel.DescribeImportInput) async throws
     -> DynamoDBModel.DescribeImportOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeImportAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeKinesisStreamingDestination operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeKinesisStreamingDestinationInput object being passed to this operation.
     - Returns: The DescribeKinesisStreamingDestinationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    func describeKinesisStreamingDestination(input: DynamoDBModel.DescribeKinesisStreamingDestinationInput) async throws
     -> DynamoDBModel.DescribeKinesisStreamingDestinationOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeKinesisStreamingDestinationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeLimits operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeLimitsInput object being passed to this operation.
     - Returns: The DescribeLimitsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer.
     */
    func describeLimits(input: DynamoDBModel.DescribeLimitsInput) async throws
     -> DynamoDBModel.DescribeLimitsOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeLimitsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeTable operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeTableInput object being passed to this operation.
     - Returns: The DescribeTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    func describeTable(input: DynamoDBModel.DescribeTableInput) async throws
     -> DynamoDBModel.DescribeTableOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeTableAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeTableReplicaAutoScaling operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeTableReplicaAutoScalingInput object being passed to this operation.
     - Returns: The DescribeTableReplicaAutoScalingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    func describeTableReplicaAutoScaling(input: DynamoDBModel.DescribeTableReplicaAutoScalingInput) async throws
     -> DynamoDBModel.DescribeTableReplicaAutoScalingOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeTableReplicaAutoScalingAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeTimeToLive operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeTimeToLiveInput object being passed to this operation.
     - Returns: The DescribeTimeToLiveOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    func describeTimeToLive(input: DynamoDBModel.DescribeTimeToLiveInput) async throws
     -> DynamoDBModel.DescribeTimeToLiveOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeTimeToLiveAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DisableKinesisStreamingDestination operation and asynchronously returning the response.

     - Parameters:
         - input: The validated KinesisStreamingDestinationInput object being passed to this operation.
     - Returns: The KinesisStreamingDestinationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func disableKinesisStreamingDestination(input: DynamoDBModel.KinesisStreamingDestinationInput) async throws
     -> DynamoDBModel.KinesisStreamingDestinationOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try disableKinesisStreamingDestinationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the EnableKinesisStreamingDestination operation and asynchronously returning the response.

     - Parameters:
         - input: The validated KinesisStreamingDestinationInput object being passed to this operation.
     - Returns: The KinesisStreamingDestinationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func enableKinesisStreamingDestination(input: DynamoDBModel.KinesisStreamingDestinationInput) async throws
     -> DynamoDBModel.KinesisStreamingDestinationOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try enableKinesisStreamingDestinationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ExecuteStatement operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ExecuteStatementInput object being passed to this operation.
     - Returns: The ExecuteStatementOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conditionalCheckFailed, duplicateItem, internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionConflict.
     */
    func executeStatement(input: DynamoDBModel.ExecuteStatementInput) async throws
     -> DynamoDBModel.ExecuteStatementOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try executeStatementAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ExecuteTransaction operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ExecuteTransactionInput object being passed to this operation.
     - Returns: The ExecuteTransactionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: idempotentParameterMismatch, internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionCanceled, transactionInProgress.
     */
    func executeTransaction(input: DynamoDBModel.ExecuteTransactionInput) async throws
     -> DynamoDBModel.ExecuteTransactionOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try executeTransactionAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ExportTableToPointInTime operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ExportTableToPointInTimeInput object being passed to this operation.
     - Returns: The ExportTableToPointInTimeOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: exportConflict, internalServer, invalidExportTime, limitExceeded, pointInTimeRecoveryUnavailable, tableNotFound.
     */
    func exportTableToPointInTime(input: DynamoDBModel.ExportTableToPointInTimeInput) async throws
     -> DynamoDBModel.ExportTableToPointInTimeOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try exportTableToPointInTimeAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetItem operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetItemInput object being passed to this operation.
     - Returns: The GetItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    func getItem(input: DynamoDBModel.GetItemInput) async throws
     -> DynamoDBModel.GetItemOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try getItemAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ImportTable operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ImportTableInput object being passed to this operation.
     - Returns: The ImportTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: importConflict, limitExceeded, resourceInUse.
     */
    func importTable(input: DynamoDBModel.ImportTableInput) async throws
     -> DynamoDBModel.ImportTableOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try importTableAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListBackups operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListBackupsInput object being passed to this operation.
     - Returns: The ListBackupsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer.
     */
    func listBackups(input: DynamoDBModel.ListBackupsInput) async throws
     -> DynamoDBModel.ListBackupsOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listBackupsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListContributorInsights operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListContributorInsightsInput object being passed to this operation.
     - Returns: The ListContributorInsightsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    func listContributorInsights(input: DynamoDBModel.ListContributorInsightsInput) async throws
     -> DynamoDBModel.ListContributorInsightsOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listContributorInsightsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListExports operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListExportsInput object being passed to this operation.
     - Returns: The ListExportsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded.
     */
    func listExports(input: DynamoDBModel.ListExportsInput) async throws
     -> DynamoDBModel.ListExportsOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listExportsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListGlobalTables operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListGlobalTablesInput object being passed to this operation.
     - Returns: The ListGlobalTablesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer.
     */
    func listGlobalTables(input: DynamoDBModel.ListGlobalTablesInput) async throws
     -> DynamoDBModel.ListGlobalTablesOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listGlobalTablesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListImports operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListImportsInput object being passed to this operation.
     - Returns: The ListImportsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: limitExceeded.
     */
    func listImports(input: DynamoDBModel.ListImportsInput) async throws
     -> DynamoDBModel.ListImportsOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listImportsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListTables operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListTablesInput object being passed to this operation.
     - Returns: The ListTablesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer.
     */
    func listTables(input: DynamoDBModel.ListTablesInput) async throws
     -> DynamoDBModel.ListTablesOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listTablesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListTagsOfResource operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListTagsOfResourceInput object being passed to this operation.
     - Returns: The ListTagsOfResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    func listTagsOfResource(input: DynamoDBModel.ListTagsOfResourceInput) async throws
     -> DynamoDBModel.ListTagsOfResourceOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listTagsOfResourceAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutItem operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutItemInput object being passed to this operation.
     - Returns: The PutItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conditionalCheckFailed, internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionConflict.
     */
    func putItem(input: DynamoDBModel.PutItemInput) async throws
     -> DynamoDBModel.PutItemOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try putItemAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the Query operation and asynchronously returning the response.

     - Parameters:
         - input: The validated QueryInput object being passed to this operation.
     - Returns: The QueryOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    func query(input: DynamoDBModel.QueryInput) async throws
     -> DynamoDBModel.QueryOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try queryAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RestoreTableFromBackup operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RestoreTableFromBackupInput object being passed to this operation.
     - Returns: The RestoreTableFromBackupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: backupInUse, backupNotFound, internalServer, limitExceeded, tableAlreadyExists, tableInUse.
     */
    func restoreTableFromBackup(input: DynamoDBModel.RestoreTableFromBackupInput) async throws
     -> DynamoDBModel.RestoreTableFromBackupOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try restoreTableFromBackupAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RestoreTableToPointInTime operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RestoreTableToPointInTimeInput object being passed to this operation.
     - Returns: The RestoreTableToPointInTimeOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, invalidRestoreTime, limitExceeded, pointInTimeRecoveryUnavailable, tableAlreadyExists, tableInUse, tableNotFound.
     */
    func restoreTableToPointInTime(input: DynamoDBModel.RestoreTableToPointInTimeInput) async throws
     -> DynamoDBModel.RestoreTableToPointInTimeOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try restoreTableToPointInTimeAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the Scan operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ScanInput object being passed to this operation.
     - Returns: The ScanOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    func scan(input: DynamoDBModel.ScanInput) async throws
     -> DynamoDBModel.ScanOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try scanAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the TagResource operation and asynchronously returning the response.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func tagResource(input: DynamoDBModel.TagResourceInput) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try tagResourceAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the TransactGetItems operation and asynchronously returning the response.

     - Parameters:
         - input: The validated TransactGetItemsInput object being passed to this operation.
     - Returns: The TransactGetItemsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionCanceled.
     */
    func transactGetItems(input: DynamoDBModel.TransactGetItemsInput) async throws
     -> DynamoDBModel.TransactGetItemsOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try transactGetItemsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the TransactWriteItems operation and asynchronously returning the response.

     - Parameters:
         - input: The validated TransactWriteItemsInput object being passed to this operation.
     - Returns: The TransactWriteItemsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: idempotentParameterMismatch, internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionCanceled, transactionInProgress.
     */
    func transactWriteItems(input: DynamoDBModel.TransactWriteItemsInput) async throws
     -> DynamoDBModel.TransactWriteItemsOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try transactWriteItemsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the UntagResource operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func untagResource(input: DynamoDBModel.UntagResourceInput) async throws {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try untagResourceAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the UpdateContinuousBackups operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UpdateContinuousBackupsInput object being passed to this operation.
     - Returns: The UpdateContinuousBackupsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: continuousBackupsUnavailable, internalServer, tableNotFound.
     */
    func updateContinuousBackups(input: DynamoDBModel.UpdateContinuousBackupsInput) async throws
     -> DynamoDBModel.UpdateContinuousBackupsOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try updateContinuousBackupsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the UpdateContributorInsights operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UpdateContributorInsightsInput object being passed to this operation.
     - Returns: The UpdateContributorInsightsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, resourceNotFound.
     */
    func updateContributorInsights(input: DynamoDBModel.UpdateContributorInsightsInput) async throws
     -> DynamoDBModel.UpdateContributorInsightsOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try updateContributorInsightsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the UpdateGlobalTable operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UpdateGlobalTableInput object being passed to this operation.
     - Returns: The UpdateGlobalTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalTableNotFound, internalServer, replicaAlreadyExists, replicaNotFound, tableNotFound.
     */
    func updateGlobalTable(input: DynamoDBModel.UpdateGlobalTableInput) async throws
     -> DynamoDBModel.UpdateGlobalTableOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try updateGlobalTableAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the UpdateGlobalTableSettings operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UpdateGlobalTableSettingsInput object being passed to this operation.
     - Returns: The UpdateGlobalTableSettingsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: globalTableNotFound, indexNotFound, internalServer, limitExceeded, replicaNotFound, resourceInUse.
     */
    func updateGlobalTableSettings(input: DynamoDBModel.UpdateGlobalTableSettingsInput) async throws
     -> DynamoDBModel.UpdateGlobalTableSettingsOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try updateGlobalTableSettingsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the UpdateItem operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UpdateItemInput object being passed to this operation.
     - Returns: The UpdateItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conditionalCheckFailed, internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionConflict.
     */
    func updateItem(input: DynamoDBModel.UpdateItemInput) async throws
     -> DynamoDBModel.UpdateItemOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try updateItemAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the UpdateTable operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UpdateTableInput object being passed to this operation.
     - Returns: The UpdateTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func updateTable(input: DynamoDBModel.UpdateTableInput) async throws
     -> DynamoDBModel.UpdateTableOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try updateTableAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the UpdateTableReplicaAutoScaling operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UpdateTableReplicaAutoScalingInput object being passed to this operation.
     - Returns: The UpdateTableReplicaAutoScalingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func updateTableReplicaAutoScaling(input: DynamoDBModel.UpdateTableReplicaAutoScalingInput) async throws
     -> DynamoDBModel.UpdateTableReplicaAutoScalingOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try updateTableReplicaAutoScalingAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the UpdateTimeToLive operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UpdateTimeToLiveInput object being passed to this operation.
     - Returns: The UpdateTimeToLiveOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    func updateTimeToLive(input: DynamoDBModel.UpdateTimeToLiveInput) async throws
     -> DynamoDBModel.UpdateTimeToLiveOutput {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try updateTimeToLiveAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }
}

#endif
