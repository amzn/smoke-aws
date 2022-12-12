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
// RDSDataClientProtocolV2.swift
// RDSDataClient
//

import Foundation
import RDSDataModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Client Protocol for the RDSData service.
 */
public protocol RDSDataClientProtocolV2 {
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    typealias BatchExecuteStatementFunctionType = (
            _ input: RDSDataModel.BatchExecuteStatementRequest) async throws -> RDSDataModel.BatchExecuteStatementResponse
    typealias BeginTransactionFunctionType = (
            _ input: RDSDataModel.BeginTransactionRequest) async throws -> RDSDataModel.BeginTransactionResponse
    typealias CommitTransactionFunctionType = (
            _ input: RDSDataModel.CommitTransactionRequest) async throws -> RDSDataModel.CommitTransactionResponse
    typealias ExecuteSqlFunctionType = (
            _ input: RDSDataModel.ExecuteSqlRequest) async throws -> RDSDataModel.ExecuteSqlResponse
    typealias ExecuteStatementFunctionType = (
            _ input: RDSDataModel.ExecuteStatementRequest) async throws -> RDSDataModel.ExecuteStatementResponse
    typealias RollbackTransactionFunctionType = (
            _ input: RDSDataModel.RollbackTransactionRequest) async throws -> RDSDataModel.RollbackTransactionResponse

    /**
     Invokes the BatchExecuteStatement operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated BatchExecuteStatementRequest object being passed to this operation.
     - Returns: The BatchExecuteStatementResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, badRequest, forbidden, internalServerError, serviceUnavailable, statementTimeout.
     */
    func batchExecuteStatement(
            input: RDSDataModel.BatchExecuteStatementRequest) async throws -> RDSDataModel.BatchExecuteStatementResponse

    /**
     Invokes the BeginTransaction operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated BeginTransactionRequest object being passed to this operation.
     - Returns: The BeginTransactionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, badRequest, forbidden, internalServerError, serviceUnavailable, statementTimeout.
     */
    func beginTransaction(
            input: RDSDataModel.BeginTransactionRequest) async throws -> RDSDataModel.BeginTransactionResponse

    /**
     Invokes the CommitTransaction operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CommitTransactionRequest object being passed to this operation.
     - Returns: The CommitTransactionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, badRequest, forbidden, internalServerError, notFound, serviceUnavailable, statementTimeout.
     */
    func commitTransaction(
            input: RDSDataModel.CommitTransactionRequest) async throws -> RDSDataModel.CommitTransactionResponse

    /**
     Invokes the ExecuteSql operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ExecuteSqlRequest object being passed to this operation.
     - Returns: The ExecuteSqlResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, badRequest, forbidden, internalServerError, serviceUnavailable.
     */
    func executeSql(
            input: RDSDataModel.ExecuteSqlRequest) async throws -> RDSDataModel.ExecuteSqlResponse

    /**
     Invokes the ExecuteStatement operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ExecuteStatementRequest object being passed to this operation.
     - Returns: The ExecuteStatementResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, badRequest, forbidden, internalServerError, serviceUnavailable, statementTimeout.
     */
    func executeStatement(
            input: RDSDataModel.ExecuteStatementRequest) async throws -> RDSDataModel.ExecuteStatementResponse

    /**
     Invokes the RollbackTransaction operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RollbackTransactionRequest object being passed to this operation.
     - Returns: The RollbackTransactionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, badRequest, forbidden, internalServerError, notFound, serviceUnavailable, statementTimeout.
     */
    func rollbackTransaction(
            input: RDSDataModel.RollbackTransactionRequest) async throws -> RDSDataModel.RollbackTransactionResponse
#endif
}
