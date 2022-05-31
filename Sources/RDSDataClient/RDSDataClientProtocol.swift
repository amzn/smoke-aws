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
    typealias BatchExecuteStatementSyncType = (
            _ input: RDSDataModel.BatchExecuteStatementRequest) throws -> RDSDataModel.BatchExecuteStatementResponse
    typealias BatchExecuteStatementAsyncType = (
            _ input: RDSDataModel.BatchExecuteStatementRequest, 
            _ completion: @escaping (Result<RDSDataModel.BatchExecuteStatementResponse, RDSDataError>) -> ()) throws -> ()
    typealias BeginTransactionSyncType = (
            _ input: RDSDataModel.BeginTransactionRequest) throws -> RDSDataModel.BeginTransactionResponse
    typealias BeginTransactionAsyncType = (
            _ input: RDSDataModel.BeginTransactionRequest, 
            _ completion: @escaping (Result<RDSDataModel.BeginTransactionResponse, RDSDataError>) -> ()) throws -> ()
    typealias CommitTransactionSyncType = (
            _ input: RDSDataModel.CommitTransactionRequest) throws -> RDSDataModel.CommitTransactionResponse
    typealias CommitTransactionAsyncType = (
            _ input: RDSDataModel.CommitTransactionRequest, 
            _ completion: @escaping (Result<RDSDataModel.CommitTransactionResponse, RDSDataError>) -> ()) throws -> ()
    typealias ExecuteSqlSyncType = (
            _ input: RDSDataModel.ExecuteSqlRequest) throws -> RDSDataModel.ExecuteSqlResponse
    typealias ExecuteSqlAsyncType = (
            _ input: RDSDataModel.ExecuteSqlRequest, 
            _ completion: @escaping (Result<RDSDataModel.ExecuteSqlResponse, RDSDataError>) -> ()) throws -> ()
    typealias ExecuteStatementSyncType = (
            _ input: RDSDataModel.ExecuteStatementRequest) throws -> RDSDataModel.ExecuteStatementResponse
    typealias ExecuteStatementAsyncType = (
            _ input: RDSDataModel.ExecuteStatementRequest, 
            _ completion: @escaping (Result<RDSDataModel.ExecuteStatementResponse, RDSDataError>) -> ()) throws -> ()
    typealias RollbackTransactionSyncType = (
            _ input: RDSDataModel.RollbackTransactionRequest) throws -> RDSDataModel.RollbackTransactionResponse
    typealias RollbackTransactionAsyncType = (
            _ input: RDSDataModel.RollbackTransactionRequest, 
            _ completion: @escaping (Result<RDSDataModel.RollbackTransactionResponse, RDSDataError>) -> ()) throws -> ()

    /**
     Invokes the BatchExecuteStatement operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchExecuteStatementRequest object being passed to this operation.
         - completion: The BatchExecuteStatementResponse object or an error will be passed to this 
           callback when the operation is complete. The BatchExecuteStatementResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, badRequest, forbidden, internalServerError, serviceUnavailable, statementTimeout.
     */
    func batchExecuteStatementAsync(
            input: RDSDataModel.BatchExecuteStatementRequest, 
            completion: @escaping (Result<RDSDataModel.BatchExecuteStatementResponse, RDSDataError>) -> ()) throws

    /**
     Invokes the BatchExecuteStatement operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchExecuteStatementRequest object being passed to this operation.
     - Returns: The BatchExecuteStatementResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, badRequest, forbidden, internalServerError, serviceUnavailable, statementTimeout.
     */
    func batchExecuteStatementSync(
            input: RDSDataModel.BatchExecuteStatementRequest) throws -> RDSDataModel.BatchExecuteStatementResponse

    /**
     Invokes the BeginTransaction operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BeginTransactionRequest object being passed to this operation.
         - completion: The BeginTransactionResponse object or an error will be passed to this 
           callback when the operation is complete. The BeginTransactionResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, badRequest, forbidden, internalServerError, serviceUnavailable, statementTimeout.
     */
    func beginTransactionAsync(
            input: RDSDataModel.BeginTransactionRequest, 
            completion: @escaping (Result<RDSDataModel.BeginTransactionResponse, RDSDataError>) -> ()) throws

    /**
     Invokes the BeginTransaction operation waiting for the response before returning.

     - Parameters:
         - input: The validated BeginTransactionRequest object being passed to this operation.
     - Returns: The BeginTransactionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, badRequest, forbidden, internalServerError, serviceUnavailable, statementTimeout.
     */
    func beginTransactionSync(
            input: RDSDataModel.BeginTransactionRequest) throws -> RDSDataModel.BeginTransactionResponse

    /**
     Invokes the CommitTransaction operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CommitTransactionRequest object being passed to this operation.
         - completion: The CommitTransactionResponse object or an error will be passed to this 
           callback when the operation is complete. The CommitTransactionResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, badRequest, forbidden, internalServerError, notFound, serviceUnavailable, statementTimeout.
     */
    func commitTransactionAsync(
            input: RDSDataModel.CommitTransactionRequest, 
            completion: @escaping (Result<RDSDataModel.CommitTransactionResponse, RDSDataError>) -> ()) throws

    /**
     Invokes the CommitTransaction operation waiting for the response before returning.

     - Parameters:
         - input: The validated CommitTransactionRequest object being passed to this operation.
     - Returns: The CommitTransactionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, badRequest, forbidden, internalServerError, notFound, serviceUnavailable, statementTimeout.
     */
    func commitTransactionSync(
            input: RDSDataModel.CommitTransactionRequest) throws -> RDSDataModel.CommitTransactionResponse

    /**
     Invokes the ExecuteSql operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ExecuteSqlRequest object being passed to this operation.
         - completion: The ExecuteSqlResponse object or an error will be passed to this 
           callback when the operation is complete. The ExecuteSqlResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, badRequest, forbidden, internalServerError, serviceUnavailable.
     */
    func executeSqlAsync(
            input: RDSDataModel.ExecuteSqlRequest, 
            completion: @escaping (Result<RDSDataModel.ExecuteSqlResponse, RDSDataError>) -> ()) throws

    /**
     Invokes the ExecuteSql operation waiting for the response before returning.

     - Parameters:
         - input: The validated ExecuteSqlRequest object being passed to this operation.
     - Returns: The ExecuteSqlResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, badRequest, forbidden, internalServerError, serviceUnavailable.
     */
    func executeSqlSync(
            input: RDSDataModel.ExecuteSqlRequest) throws -> RDSDataModel.ExecuteSqlResponse

    /**
     Invokes the ExecuteStatement operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ExecuteStatementRequest object being passed to this operation.
         - completion: The ExecuteStatementResponse object or an error will be passed to this 
           callback when the operation is complete. The ExecuteStatementResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, badRequest, forbidden, internalServerError, serviceUnavailable, statementTimeout.
     */
    func executeStatementAsync(
            input: RDSDataModel.ExecuteStatementRequest, 
            completion: @escaping (Result<RDSDataModel.ExecuteStatementResponse, RDSDataError>) -> ()) throws

    /**
     Invokes the ExecuteStatement operation waiting for the response before returning.

     - Parameters:
         - input: The validated ExecuteStatementRequest object being passed to this operation.
     - Returns: The ExecuteStatementResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, badRequest, forbidden, internalServerError, serviceUnavailable, statementTimeout.
     */
    func executeStatementSync(
            input: RDSDataModel.ExecuteStatementRequest) throws -> RDSDataModel.ExecuteStatementResponse

    /**
     Invokes the RollbackTransaction operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RollbackTransactionRequest object being passed to this operation.
         - completion: The RollbackTransactionResponse object or an error will be passed to this 
           callback when the operation is complete. The RollbackTransactionResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, badRequest, forbidden, internalServerError, notFound, serviceUnavailable, statementTimeout.
     */
    func rollbackTransactionAsync(
            input: RDSDataModel.RollbackTransactionRequest, 
            completion: @escaping (Result<RDSDataModel.RollbackTransactionResponse, RDSDataError>) -> ()) throws

    /**
     Invokes the RollbackTransaction operation waiting for the response before returning.

     - Parameters:
         - input: The validated RollbackTransactionRequest object being passed to this operation.
     - Returns: The RollbackTransactionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, badRequest, forbidden, internalServerError, notFound, serviceUnavailable, statementTimeout.
     */
    func rollbackTransactionSync(
            input: RDSDataModel.RollbackTransactionRequest) throws -> RDSDataModel.RollbackTransactionResponse
}
