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
// AWSDynamoDBClientV2.swift
// DynamoDBClient
//

import DynamoDBModel
import AWSCore
import AWSHttp
import Logging

import AWSMiddleware
import SmokeHTTPMiddleware
import ClientRuntime

internal struct SmokeAWSMiddlewareContext: AWSMiddlewareContext {
    internal let logger: Logging.Logger
    
}

public typealias AWSDynamoDBClientV2 = GenericAWSDynamoDBClientV2<AWSHTTPMiddlewareStack<DynamoDBError>>

/**
 AWS Client for the DynamoDB service.
 */
public struct GenericAWSDynamoDBClientV2<MiddlewareStackType: AWSHTTPMiddlewareStackProtocol>: DynamoDBClientProtocolV2 {
    let awsRegion: AWSRegion
    let service: String
    let target: String?
    let credentialsProvider: CredentialsProvider
    
    let endpointHostName: String
    let endpointPort: Int
    let contentType: String
    let middlewareContext: SmokeAWSMiddlewareContext
    let httpClientEngine: SmokeHTTPClientEngine
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                endpointHostName: String,
                endpointPort: Int = 443,
                requiresTLS: Bool? = nil,
                service: String = "dynamodb",
                contentType: String = "application/x-amz-json-1.0",
                target: String? = "DynamoDB_20120810",
                logger: Logger = Logger(label: "GenericAWSDynamoDBClientV2")) throws {
        self.awsRegion = awsRegion
        self.service = service
        self.target = target
        self.credentialsProvider = credentialsProvider
        self.endpointHostName = endpointHostName
        self.endpointPort = endpointPort
        self.contentType = contentType
        self.middlewareContext = SmokeAWSMiddlewareContext(logger: logger)
        self.httpClientEngine = SmokeHTTPClientEngine(runtimeConfig: try ClientRuntime.DefaultSDKRuntimeConfiguration("DynamoDBClient"))
    }
    
    private func getStackForOperation(operation: String?) -> JSONHTTPMiddlewareStack<MiddlewareStackType> {
        let innerStack = MiddlewareStackType(credentialsProvider: self.credentialsProvider, awsRegion: self.awsRegion, service: self.service,
                                             operation: operation, target: self.target, isV4SignRequest: true, signAllHeaders: false,
                                             endpointHostName: self.endpointHostName, endpointPort: self.endpointPort, contentType: self.contentType,
                                        specifyContentHeadersForZeroLengthBody: true)
        
        return JSONHTTPMiddlewareStack(inputQueryMapDecodingStrategy: nil, innerStack: innerStack)
    }
    
    #if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)

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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.batchExecuteStatement.rawValue)
        let requestInput = BatchExecuteStatementOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.batchGetItem.rawValue)
        let requestInput = BatchGetItemOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.batchWriteItem.rawValue)
        let requestInput = BatchWriteItemOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.createBackup.rawValue)
        let requestInput = CreateBackupOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.createGlobalTable.rawValue)
        let requestInput = CreateGlobalTableOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.createTable.rawValue)
        let requestInput = CreateTableOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.deleteBackup.rawValue)
        let requestInput = DeleteBackupOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.deleteItem.rawValue)
        let requestInput = DeleteItemOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.deleteTable.rawValue)
        let requestInput = DeleteTableOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.describeBackup.rawValue)
        let requestInput = DescribeBackupOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.describeContinuousBackups.rawValue)
        let requestInput = DescribeContinuousBackupsOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.describeContributorInsights.rawValue)
        let requestInput = DescribeContributorInsightsOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.describeEndpoints.rawValue)
        let requestInput = DescribeEndpointsOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.describeExport.rawValue)
        let requestInput = DescribeExportOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.describeGlobalTable.rawValue)
        let requestInput = DescribeGlobalTableOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.describeGlobalTableSettings.rawValue)
        let requestInput = DescribeGlobalTableSettingsOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.describeImport.rawValue)
        let requestInput = DescribeImportOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.describeKinesisStreamingDestination.rawValue)
        let requestInput = DescribeKinesisStreamingDestinationOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.describeLimits.rawValue)
        let requestInput = DescribeLimitsOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.describeTable.rawValue)
        let requestInput = DescribeTableOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.describeTableReplicaAutoScaling.rawValue)
        let requestInput = DescribeTableReplicaAutoScalingOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.describeTimeToLive.rawValue)
        let requestInput = DescribeTimeToLiveOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.disableKinesisStreamingDestination.rawValue)
        let requestInput = DisableKinesisStreamingDestinationOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.enableKinesisStreamingDestination.rawValue)
        let requestInput = EnableKinesisStreamingDestinationOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.executeStatement.rawValue)
        let requestInput = ExecuteStatementOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.executeTransaction.rawValue)
        let requestInput = ExecuteTransactionOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.exportTableToPointInTime.rawValue)
        let requestInput = ExportTableToPointInTimeOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.getItem.rawValue)
        let requestInput = GetItemOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.importTable.rawValue)
        let requestInput = ImportTableOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.listBackups.rawValue)
        let requestInput = ListBackupsOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.listContributorInsights.rawValue)
        let requestInput = ListContributorInsightsOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.listExports.rawValue)
        let requestInput = ListExportsOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.listGlobalTables.rawValue)
        let requestInput = ListGlobalTablesOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.listImports.rawValue)
        let requestInput = ListImportsOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.listTables.rawValue)
        let requestInput = ListTablesOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.listTagsOfResource.rawValue)
        let requestInput = ListTagsOfResourceOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.putItem.rawValue)
        let requestInput = PutItemOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.query.rawValue)
        let requestInput = QueryOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.restoreTableFromBackup.rawValue)
        let requestInput = RestoreTableFromBackupOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.restoreTableToPointInTime.rawValue)
        let requestInput = RestoreTableToPointInTimeOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.scan.rawValue)
        let requestInput = ScanOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the TagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    public func tagResource(
            input: DynamoDBModel.TagResourceInput) async throws {
        let stack = getStackForOperation(operation: DynamoDBModelOperations.tagResource.rawValue)
        let requestInput = TagResourceOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.transactGetItems.rawValue)
        let requestInput = TransactGetItemsOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.transactWriteItems.rawValue)
        let requestInput = TransactWriteItemsOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UntagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Throws: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    public func untagResource(
            input: DynamoDBModel.UntagResourceInput) async throws {
        let stack = getStackForOperation(operation: DynamoDBModelOperations.untagResource.rawValue)
        let requestInput = UntagResourceOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.updateContinuousBackups.rawValue)
        let requestInput = UpdateContinuousBackupsOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.updateContributorInsights.rawValue)
        let requestInput = UpdateContributorInsightsOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.updateGlobalTable.rawValue)
        let requestInput = UpdateGlobalTableOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.updateGlobalTableSettings.rawValue)
        let requestInput = UpdateGlobalTableSettingsOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.updateItem.rawValue)
        let requestInput = UpdateItemOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.updateTable.rawValue)
        let requestInput = UpdateTableOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.updateTableReplicaAutoScaling.rawValue)
        let requestInput = UpdateTableReplicaAutoScalingOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
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
        let stack = getStackForOperation(operation: DynamoDBModelOperations.updateTimeToLive.rawValue)
        let requestInput = UpdateTimeToLiveOperationHTTPRequestInput(encodable: input)

        do {
            return try await stack.execute(input: requestInput, endpointPath: "/", httpMethod: .post,
                                           context: self.middlewareContext, engine: self.httpClientEngine)
        } catch {
            let typedError: DynamoDBError = error.asTypedError()
            throw typedError
        }
    }
    #endif
}