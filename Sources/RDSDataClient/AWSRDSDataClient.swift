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
// AWSRDSDataClient.swift
// RDSDataClient
//

import Foundation
import RDSDataModel
import SmokeAWSCore
import SmokeHTTPClient
import SmokeAWSHttp
import NIO
import NIOHTTP1

public enum RDSDataClientError: Swift.Error {
    case invalidEndpoint(String)
    case unsupportedPayload
    case unknownError(String?)
}

private extension RDSDataError {
    func isRetriable() -> Bool {
        return false
    }
}

private extension Swift.Error {
    func isRetriable() -> Bool {
        if let typedError = self as? RDSDataError {
            return typedError.isRetriable()
        } else {
            return true
        }
    }
}

/**
 AWS Client for the RDSData service.
 */
public struct AWSRDSDataClient: RDSDataClientProtocol {
    let httpClient: HTTPClient
    let awsRegion: AWSRegion
    let service: String
    let target: String?
    let retryConfiguration: HTTPClientRetryConfiguration
    let retryOnErrorProvider: (Swift.Error) -> Bool
    let credentialsProvider: CredentialsProvider

    let batchExecuteStatementOperationReporting: StandardSmokeAWSOperationReporting<RDSDataModelOperations>
    let beginTransactionOperationReporting: StandardSmokeAWSOperationReporting<RDSDataModelOperations>
    let commitTransactionOperationReporting: StandardSmokeAWSOperationReporting<RDSDataModelOperations>
    let executeSqlOperationReporting: StandardSmokeAWSOperationReporting<RDSDataModelOperations>
    let executeStatementOperationReporting: StandardSmokeAWSOperationReporting<RDSDataModelOperations>
    let rollbackTransactionOperationReporting: StandardSmokeAWSOperationReporting<RDSDataModelOperations>
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                endpointHostName: String,
                endpointPort: Int = 443,
                service: String = "rds-data",
                contentType: String = "application/x-amz-rest-json-1.1",
                target: String? = nil,
                connectionTimeoutSeconds: Int64 = 10,
                retryConfiguration: HTTPClientRetryConfiguration = .default,
                eventLoopProvider: HTTPClient.EventLoopProvider = .spawnNewThreads,
                reportingConfiguration: SmokeAWSClientReportingConfiguration<RDSDataModelOperations>
                    = SmokeAWSClientReportingConfiguration<RDSDataModelOperations>() ) {
        let clientDelegate = JSONAWSHttpClientDelegate<RDSDataError>()

        self.httpClient = HTTPClient(endpointHostName: endpointHostName,
                                     endpointPort: endpointPort,
                                     contentType: contentType,
                                     clientDelegate: clientDelegate,
                                     connectionTimeoutSeconds: connectionTimeoutSeconds,
                                     eventLoopProvider: eventLoopProvider)
        self.awsRegion = awsRegion
        self.service = service
        self.target = target
        self.credentialsProvider = credentialsProvider
        self.retryConfiguration = retryConfiguration
        self.retryOnErrorProvider = { error in error.isRetriable() }

        self.batchExecuteStatementOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSRDSDataClient", operation: .batchExecuteStatement, configuration: reportingConfiguration)
        self.beginTransactionOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSRDSDataClient", operation: .beginTransaction, configuration: reportingConfiguration)
        self.commitTransactionOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSRDSDataClient", operation: .commitTransaction, configuration: reportingConfiguration)
        self.executeSqlOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSRDSDataClient", operation: .executeSql, configuration: reportingConfiguration)
        self.executeStatementOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSRDSDataClient", operation: .executeStatement, configuration: reportingConfiguration)
        self.rollbackTransactionOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSRDSDataClient", operation: .rollbackTransaction, configuration: reportingConfiguration)
    }

    /**
     Gracefully shuts down this client. This function is idempotent and
     will handle being called multiple times.
     */
    public func close() {
        httpClient.close()
    }

    /**
     Waits for the client to be closed. If close() is not called,
     this will block forever.
     */
    public func wait() {
        httpClient.wait()
    }

    /**
     Invokes the BatchExecuteStatement operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchExecuteStatementRequest object being passed to this operation.
         - completion: The BatchExecuteStatementResponse object or an error will be passed to this 
           callback when the operation is complete. The BatchExecuteStatementResponse
           object will be validated before being returned to caller.
           The possible errors are: badRequest, forbidden, internalServerError, serviceUnavailable, statementTimeout.
     */
    public func batchExecuteStatementAsync(
            input: RDSDataModel.BatchExecuteStatementRequest, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSDataModel.BatchExecuteStatementResponse, HTTPClientError>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: RDSDataModelOperations.batchExecuteStatement.rawValue,
                    target: target)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: batchExecuteStatementOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = BatchExecuteStatementOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/BatchExecute",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the BatchExecuteStatement operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchExecuteStatementRequest object being passed to this operation.
     - Returns: The BatchExecuteStatementResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, forbidden, internalServerError, serviceUnavailable, statementTimeout.
     */
    public func batchExecuteStatementSync(
            input: RDSDataModel.BatchExecuteStatementRequest,
            reporting: SmokeAWSInvocationReporting) throws -> RDSDataModel.BatchExecuteStatementResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: RDSDataModelOperations.batchExecuteStatement.rawValue,
                    target: target)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: batchExecuteStatementOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = BatchExecuteStatementOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/BatchExecute",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the BeginTransaction operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BeginTransactionRequest object being passed to this operation.
         - completion: The BeginTransactionResponse object or an error will be passed to this 
           callback when the operation is complete. The BeginTransactionResponse
           object will be validated before being returned to caller.
           The possible errors are: badRequest, forbidden, internalServerError, serviceUnavailable, statementTimeout.
     */
    public func beginTransactionAsync(
            input: RDSDataModel.BeginTransactionRequest, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSDataModel.BeginTransactionResponse, HTTPClientError>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: RDSDataModelOperations.beginTransaction.rawValue,
                    target: target)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: beginTransactionOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = BeginTransactionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/BeginTransaction",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the BeginTransaction operation waiting for the response before returning.

     - Parameters:
         - input: The validated BeginTransactionRequest object being passed to this operation.
     - Returns: The BeginTransactionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, forbidden, internalServerError, serviceUnavailable, statementTimeout.
     */
    public func beginTransactionSync(
            input: RDSDataModel.BeginTransactionRequest,
            reporting: SmokeAWSInvocationReporting) throws -> RDSDataModel.BeginTransactionResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: RDSDataModelOperations.beginTransaction.rawValue,
                    target: target)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: beginTransactionOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = BeginTransactionOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/BeginTransaction",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CommitTransaction operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CommitTransactionRequest object being passed to this operation.
         - completion: The CommitTransactionResponse object or an error will be passed to this 
           callback when the operation is complete. The CommitTransactionResponse
           object will be validated before being returned to caller.
           The possible errors are: badRequest, forbidden, internalServerError, notFound, serviceUnavailable, statementTimeout.
     */
    public func commitTransactionAsync(
            input: RDSDataModel.CommitTransactionRequest, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSDataModel.CommitTransactionResponse, HTTPClientError>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: RDSDataModelOperations.commitTransaction.rawValue,
                    target: target)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: commitTransactionOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = CommitTransactionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/CommitTransaction",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CommitTransaction operation waiting for the response before returning.

     - Parameters:
         - input: The validated CommitTransactionRequest object being passed to this operation.
     - Returns: The CommitTransactionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, forbidden, internalServerError, notFound, serviceUnavailable, statementTimeout.
     */
    public func commitTransactionSync(
            input: RDSDataModel.CommitTransactionRequest,
            reporting: SmokeAWSInvocationReporting) throws -> RDSDataModel.CommitTransactionResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: RDSDataModelOperations.commitTransaction.rawValue,
                    target: target)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: commitTransactionOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = CommitTransactionOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/CommitTransaction",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ExecuteSql operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ExecuteSqlRequest object being passed to this operation.
         - completion: The ExecuteSqlResponse object or an error will be passed to this 
           callback when the operation is complete. The ExecuteSqlResponse
           object will be validated before being returned to caller.
           The possible errors are: badRequest, forbidden, internalServerError, serviceUnavailable.
     */
    public func executeSqlAsync(
            input: RDSDataModel.ExecuteSqlRequest, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSDataModel.ExecuteSqlResponse, HTTPClientError>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: RDSDataModelOperations.executeSql.rawValue,
                    target: target)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: executeSqlOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = ExecuteSqlOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/ExecuteSql",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ExecuteSql operation waiting for the response before returning.

     - Parameters:
         - input: The validated ExecuteSqlRequest object being passed to this operation.
     - Returns: The ExecuteSqlResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, forbidden, internalServerError, serviceUnavailable.
     */
    public func executeSqlSync(
            input: RDSDataModel.ExecuteSqlRequest,
            reporting: SmokeAWSInvocationReporting) throws -> RDSDataModel.ExecuteSqlResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: RDSDataModelOperations.executeSql.rawValue,
                    target: target)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: executeSqlOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = ExecuteSqlOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/ExecuteSql",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ExecuteStatement operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ExecuteStatementRequest object being passed to this operation.
         - completion: The ExecuteStatementResponse object or an error will be passed to this 
           callback when the operation is complete. The ExecuteStatementResponse
           object will be validated before being returned to caller.
           The possible errors are: badRequest, forbidden, internalServerError, serviceUnavailable, statementTimeout.
     */
    public func executeStatementAsync(
            input: RDSDataModel.ExecuteStatementRequest, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSDataModel.ExecuteStatementResponse, HTTPClientError>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: RDSDataModelOperations.executeStatement.rawValue,
                    target: target)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: executeStatementOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = ExecuteStatementOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/Execute",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ExecuteStatement operation waiting for the response before returning.

     - Parameters:
         - input: The validated ExecuteStatementRequest object being passed to this operation.
     - Returns: The ExecuteStatementResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, forbidden, internalServerError, serviceUnavailable, statementTimeout.
     */
    public func executeStatementSync(
            input: RDSDataModel.ExecuteStatementRequest,
            reporting: SmokeAWSInvocationReporting) throws -> RDSDataModel.ExecuteStatementResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: RDSDataModelOperations.executeStatement.rawValue,
                    target: target)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: executeStatementOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = ExecuteStatementOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/Execute",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RollbackTransaction operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RollbackTransactionRequest object being passed to this operation.
         - completion: The RollbackTransactionResponse object or an error will be passed to this 
           callback when the operation is complete. The RollbackTransactionResponse
           object will be validated before being returned to caller.
           The possible errors are: badRequest, forbidden, internalServerError, notFound, serviceUnavailable, statementTimeout.
     */
    public func rollbackTransactionAsync(
            input: RDSDataModel.RollbackTransactionRequest, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<RDSDataModel.RollbackTransactionResponse, HTTPClientError>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: RDSDataModelOperations.rollbackTransaction.rawValue,
                    target: target)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: rollbackTransactionOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = RollbackTransactionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/RollbackTransaction",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RollbackTransaction operation waiting for the response before returning.

     - Parameters:
         - input: The validated RollbackTransactionRequest object being passed to this operation.
     - Returns: The RollbackTransactionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, forbidden, internalServerError, notFound, serviceUnavailable, statementTimeout.
     */
    public func rollbackTransactionSync(
            input: RDSDataModel.RollbackTransactionRequest,
            reporting: SmokeAWSInvocationReporting) throws -> RDSDataModel.RollbackTransactionResponse {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: RDSDataModelOperations.rollbackTransaction.rawValue,
                    target: target)

        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: rollbackTransactionOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let requestInput = RollbackTransactionOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/RollbackTransaction",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }
}
