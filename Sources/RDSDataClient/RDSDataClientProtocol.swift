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
// RDSDataClientProtocol.swift
// RDSDataClient
//

import Foundation
import RDSDataModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Client Protocol for the RDSData service.
 */
public protocol RDSDataClientProtocol {
    typealias BatchExecuteStatementSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSDataModel.BatchExecuteStatementRequest,
            _ reporting: InvocationReportingType) throws -> RDSDataModel.BatchExecuteStatementResponse
    typealias BatchExecuteStatementAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSDataModel.BatchExecuteStatementRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSDataModel.BatchExecuteStatementResponse, HTTPClientError>) -> ()) throws -> ()
    typealias BeginTransactionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSDataModel.BeginTransactionRequest,
            _ reporting: InvocationReportingType) throws -> RDSDataModel.BeginTransactionResponse
    typealias BeginTransactionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSDataModel.BeginTransactionRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSDataModel.BeginTransactionResponse, HTTPClientError>) -> ()) throws -> ()
    typealias CommitTransactionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSDataModel.CommitTransactionRequest,
            _ reporting: InvocationReportingType) throws -> RDSDataModel.CommitTransactionResponse
    typealias CommitTransactionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSDataModel.CommitTransactionRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSDataModel.CommitTransactionResponse, HTTPClientError>) -> ()) throws -> ()
    typealias ExecuteSqlSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSDataModel.ExecuteSqlRequest,
            _ reporting: InvocationReportingType) throws -> RDSDataModel.ExecuteSqlResponse
    typealias ExecuteSqlAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSDataModel.ExecuteSqlRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSDataModel.ExecuteSqlResponse, HTTPClientError>) -> ()) throws -> ()
    typealias ExecuteStatementSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSDataModel.ExecuteStatementRequest,
            _ reporting: InvocationReportingType) throws -> RDSDataModel.ExecuteStatementResponse
    typealias ExecuteStatementAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSDataModel.ExecuteStatementRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSDataModel.ExecuteStatementResponse, HTTPClientError>) -> ()) throws -> ()
    typealias RollbackTransactionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSDataModel.RollbackTransactionRequest,
            _ reporting: InvocationReportingType) throws -> RDSDataModel.RollbackTransactionResponse
    typealias RollbackTransactionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: RDSDataModel.RollbackTransactionRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<RDSDataModel.RollbackTransactionResponse, HTTPClientError>) -> ()) throws -> ()

    /**
     Invokes the BatchExecuteStatement operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchExecuteStatementRequest object being passed to this operation.
         - completion: The BatchExecuteStatementResponse object or an error will be passed to this 
           callback when the operation is complete. The BatchExecuteStatementResponse
           object will be validated before being returned to caller.
           The possible errors are: badRequest, forbidden, internalServerError, serviceUnavailable, statementTimeout.
     */
    func batchExecuteStatementAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSDataModel.BatchExecuteStatementRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSDataModel.BatchExecuteStatementResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the BatchExecuteStatement operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchExecuteStatementRequest object being passed to this operation.
     - Returns: The BatchExecuteStatementResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, forbidden, internalServerError, serviceUnavailable, statementTimeout.
     */
    func batchExecuteStatementSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSDataModel.BatchExecuteStatementRequest,
            reporting: InvocationReportingType) throws -> RDSDataModel.BatchExecuteStatementResponse

    /**
     Invokes the BeginTransaction operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BeginTransactionRequest object being passed to this operation.
         - completion: The BeginTransactionResponse object or an error will be passed to this 
           callback when the operation is complete. The BeginTransactionResponse
           object will be validated before being returned to caller.
           The possible errors are: badRequest, forbidden, internalServerError, serviceUnavailable, statementTimeout.
     */
    func beginTransactionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSDataModel.BeginTransactionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSDataModel.BeginTransactionResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the BeginTransaction operation waiting for the response before returning.

     - Parameters:
         - input: The validated BeginTransactionRequest object being passed to this operation.
     - Returns: The BeginTransactionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, forbidden, internalServerError, serviceUnavailable, statementTimeout.
     */
    func beginTransactionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSDataModel.BeginTransactionRequest,
            reporting: InvocationReportingType) throws -> RDSDataModel.BeginTransactionResponse

    /**
     Invokes the CommitTransaction operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CommitTransactionRequest object being passed to this operation.
         - completion: The CommitTransactionResponse object or an error will be passed to this 
           callback when the operation is complete. The CommitTransactionResponse
           object will be validated before being returned to caller.
           The possible errors are: badRequest, forbidden, internalServerError, notFound, serviceUnavailable, statementTimeout.
     */
    func commitTransactionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSDataModel.CommitTransactionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSDataModel.CommitTransactionResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the CommitTransaction operation waiting for the response before returning.

     - Parameters:
         - input: The validated CommitTransactionRequest object being passed to this operation.
     - Returns: The CommitTransactionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, forbidden, internalServerError, notFound, serviceUnavailable, statementTimeout.
     */
    func commitTransactionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSDataModel.CommitTransactionRequest,
            reporting: InvocationReportingType) throws -> RDSDataModel.CommitTransactionResponse

    /**
     Invokes the ExecuteSql operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ExecuteSqlRequest object being passed to this operation.
         - completion: The ExecuteSqlResponse object or an error will be passed to this 
           callback when the operation is complete. The ExecuteSqlResponse
           object will be validated before being returned to caller.
           The possible errors are: badRequest, forbidden, internalServerError, serviceUnavailable.
     */
    func executeSqlAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSDataModel.ExecuteSqlRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSDataModel.ExecuteSqlResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the ExecuteSql operation waiting for the response before returning.

     - Parameters:
         - input: The validated ExecuteSqlRequest object being passed to this operation.
     - Returns: The ExecuteSqlResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, forbidden, internalServerError, serviceUnavailable.
     */
    func executeSqlSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSDataModel.ExecuteSqlRequest,
            reporting: InvocationReportingType) throws -> RDSDataModel.ExecuteSqlResponse

    /**
     Invokes the ExecuteStatement operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ExecuteStatementRequest object being passed to this operation.
         - completion: The ExecuteStatementResponse object or an error will be passed to this 
           callback when the operation is complete. The ExecuteStatementResponse
           object will be validated before being returned to caller.
           The possible errors are: badRequest, forbidden, internalServerError, serviceUnavailable, statementTimeout.
     */
    func executeStatementAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSDataModel.ExecuteStatementRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSDataModel.ExecuteStatementResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the ExecuteStatement operation waiting for the response before returning.

     - Parameters:
         - input: The validated ExecuteStatementRequest object being passed to this operation.
     - Returns: The ExecuteStatementResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, forbidden, internalServerError, serviceUnavailable, statementTimeout.
     */
    func executeStatementSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSDataModel.ExecuteStatementRequest,
            reporting: InvocationReportingType) throws -> RDSDataModel.ExecuteStatementResponse

    /**
     Invokes the RollbackTransaction operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RollbackTransactionRequest object being passed to this operation.
         - completion: The RollbackTransactionResponse object or an error will be passed to this 
           callback when the operation is complete. The RollbackTransactionResponse
           object will be validated before being returned to caller.
           The possible errors are: badRequest, forbidden, internalServerError, notFound, serviceUnavailable, statementTimeout.
     */
    func rollbackTransactionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSDataModel.RollbackTransactionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSDataModel.RollbackTransactionResponse, HTTPClientError>) -> ()) throws

    /**
     Invokes the RollbackTransaction operation waiting for the response before returning.

     - Parameters:
         - input: The validated RollbackTransactionRequest object being passed to this operation.
     - Returns: The RollbackTransactionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, forbidden, internalServerError, notFound, serviceUnavailable, statementTimeout.
     */
    func rollbackTransactionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSDataModel.RollbackTransactionRequest,
            reporting: InvocationReportingType) throws -> RDSDataModel.RollbackTransactionResponse
}
