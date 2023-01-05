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
// ThrowingRDSDataClientV2.swift
// RDSDataClient
//

import Foundation
import RDSDataModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the RDSData service that by default always throws from its methods.
 */
public struct ThrowingRDSDataClientV2: RDSDataClientProtocolV2 {
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    let error: RDSDataError
    let batchExecuteStatementOverride: BatchExecuteStatementFunctionType?
    let beginTransactionOverride: BeginTransactionFunctionType?
    let commitTransactionOverride: CommitTransactionFunctionType?
    let executeSqlOverride: ExecuteSqlFunctionType?
    let executeStatementOverride: ExecuteStatementFunctionType?
    let rollbackTransactionOverride: RollbackTransactionFunctionType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(error: RDSDataError,
            batchExecuteStatement: BatchExecuteStatementFunctionType? = nil,
            beginTransaction: BeginTransactionFunctionType? = nil,
            commitTransaction: CommitTransactionFunctionType? = nil,
            executeSql: ExecuteSqlFunctionType? = nil,
            executeStatement: ExecuteStatementFunctionType? = nil,
            rollbackTransaction: RollbackTransactionFunctionType? = nil) {
        self.error = error
        self.batchExecuteStatementOverride = batchExecuteStatement
        self.beginTransactionOverride = beginTransaction
        self.commitTransactionOverride = commitTransaction
        self.executeSqlOverride = executeSql
        self.executeStatementOverride = executeStatement
        self.rollbackTransactionOverride = rollbackTransaction
    }

    /**
     Invokes the BatchExecuteStatement operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated BatchExecuteStatementRequest object being passed to this operation.
     - Returns: The BatchExecuteStatementResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, badRequest, forbidden, internalServerError, serviceUnavailable, statementTimeout.
     */
    public func batchExecuteStatement(
            input: RDSDataModel.BatchExecuteStatementRequest) async throws -> RDSDataModel.BatchExecuteStatementResponse {
        if let batchExecuteStatementOverride = batchExecuteStatementOverride {
            return try await batchExecuteStatementOverride(input)
        }

        throw error
    }

    /**
     Invokes the BeginTransaction operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated BeginTransactionRequest object being passed to this operation.
     - Returns: The BeginTransactionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, badRequest, forbidden, internalServerError, serviceUnavailable, statementTimeout.
     */
    public func beginTransaction(
            input: RDSDataModel.BeginTransactionRequest) async throws -> RDSDataModel.BeginTransactionResponse {
        if let beginTransactionOverride = beginTransactionOverride {
            return try await beginTransactionOverride(input)
        }

        throw error
    }

    /**
     Invokes the CommitTransaction operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CommitTransactionRequest object being passed to this operation.
     - Returns: The CommitTransactionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, badRequest, forbidden, internalServerError, notFound, serviceUnavailable, statementTimeout.
     */
    public func commitTransaction(
            input: RDSDataModel.CommitTransactionRequest) async throws -> RDSDataModel.CommitTransactionResponse {
        if let commitTransactionOverride = commitTransactionOverride {
            return try await commitTransactionOverride(input)
        }

        throw error
    }

    /**
     Invokes the ExecuteSql operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ExecuteSqlRequest object being passed to this operation.
     - Returns: The ExecuteSqlResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, badRequest, forbidden, internalServerError, serviceUnavailable.
     */
    public func executeSql(
            input: RDSDataModel.ExecuteSqlRequest) async throws -> RDSDataModel.ExecuteSqlResponse {
        if let executeSqlOverride = executeSqlOverride {
            return try await executeSqlOverride(input)
        }

        throw error
    }

    /**
     Invokes the ExecuteStatement operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ExecuteStatementRequest object being passed to this operation.
     - Returns: The ExecuteStatementResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, badRequest, forbidden, internalServerError, serviceUnavailable, statementTimeout.
     */
    public func executeStatement(
            input: RDSDataModel.ExecuteStatementRequest) async throws -> RDSDataModel.ExecuteStatementResponse {
        if let executeStatementOverride = executeStatementOverride {
            return try await executeStatementOverride(input)
        }

        throw error
    }

    /**
     Invokes the RollbackTransaction operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RollbackTransactionRequest object being passed to this operation.
     - Returns: The RollbackTransactionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, badRequest, forbidden, internalServerError, notFound, serviceUnavailable, statementTimeout.
     */
    public func rollbackTransaction(
            input: RDSDataModel.RollbackTransactionRequest) async throws -> RDSDataModel.RollbackTransactionResponse {
        if let rollbackTransactionOverride = rollbackTransactionOverride {
            return try await rollbackTransactionOverride(input)
        }

        throw error
    }
#endif
}
