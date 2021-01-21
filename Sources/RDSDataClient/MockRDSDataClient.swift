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
// MockRDSDataClient.swift
// RDSDataClient
//

import Foundation
import RDSDataModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the RDSData service by default returns the `__default` property of its return type.
 */
public struct MockRDSDataClient: RDSDataClientProtocol {
    let batchExecuteStatementAsyncOverride: BatchExecuteStatementAsyncType?
    let batchExecuteStatementSyncOverride: BatchExecuteStatementSyncType?
    let beginTransactionAsyncOverride: BeginTransactionAsyncType?
    let beginTransactionSyncOverride: BeginTransactionSyncType?
    let commitTransactionAsyncOverride: CommitTransactionAsyncType?
    let commitTransactionSyncOverride: CommitTransactionSyncType?
    let executeSqlAsyncOverride: ExecuteSqlAsyncType?
    let executeSqlSyncOverride: ExecuteSqlSyncType?
    let executeStatementAsyncOverride: ExecuteStatementAsyncType?
    let executeStatementSyncOverride: ExecuteStatementSyncType?
    let rollbackTransactionAsyncOverride: RollbackTransactionAsyncType?
    let rollbackTransactionSyncOverride: RollbackTransactionSyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            batchExecuteStatementAsync: BatchExecuteStatementAsyncType? = nil,
            batchExecuteStatementSync: BatchExecuteStatementSyncType? = nil,
            beginTransactionAsync: BeginTransactionAsyncType? = nil,
            beginTransactionSync: BeginTransactionSyncType? = nil,
            commitTransactionAsync: CommitTransactionAsyncType? = nil,
            commitTransactionSync: CommitTransactionSyncType? = nil,
            executeSqlAsync: ExecuteSqlAsyncType? = nil,
            executeSqlSync: ExecuteSqlSyncType? = nil,
            executeStatementAsync: ExecuteStatementAsyncType? = nil,
            executeStatementSync: ExecuteStatementSyncType? = nil,
            rollbackTransactionAsync: RollbackTransactionAsyncType? = nil,
            rollbackTransactionSync: RollbackTransactionSyncType? = nil) {
        self.batchExecuteStatementAsyncOverride = batchExecuteStatementAsync
        self.batchExecuteStatementSyncOverride = batchExecuteStatementSync
        self.beginTransactionAsyncOverride = beginTransactionAsync
        self.beginTransactionSyncOverride = beginTransactionSync
        self.commitTransactionAsyncOverride = commitTransactionAsync
        self.commitTransactionSyncOverride = commitTransactionSync
        self.executeSqlAsyncOverride = executeSqlAsync
        self.executeSqlSyncOverride = executeSqlSync
        self.executeStatementAsyncOverride = executeStatementAsync
        self.executeStatementSyncOverride = executeStatementSync
        self.rollbackTransactionAsyncOverride = rollbackTransactionAsync
        self.rollbackTransactionSyncOverride = rollbackTransactionSync
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
            completion: @escaping (Result<RDSDataModel.BatchExecuteStatementResponse, RDSDataError>) -> ()) throws {
        if let batchExecuteStatementAsyncOverride = batchExecuteStatementAsyncOverride {
            return try batchExecuteStatementAsyncOverride(input, completion)
        }

        let result = BatchExecuteStatementResponse.__default
        
        completion(.success(result))
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
            input: RDSDataModel.BatchExecuteStatementRequest) throws -> RDSDataModel.BatchExecuteStatementResponse {
        if let batchExecuteStatementSyncOverride = batchExecuteStatementSyncOverride {
            return try batchExecuteStatementSyncOverride(input)
        }

        return BatchExecuteStatementResponse.__default
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
            completion: @escaping (Result<RDSDataModel.BeginTransactionResponse, RDSDataError>) -> ()) throws {
        if let beginTransactionAsyncOverride = beginTransactionAsyncOverride {
            return try beginTransactionAsyncOverride(input, completion)
        }

        let result = BeginTransactionResponse.__default
        
        completion(.success(result))
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
            input: RDSDataModel.BeginTransactionRequest) throws -> RDSDataModel.BeginTransactionResponse {
        if let beginTransactionSyncOverride = beginTransactionSyncOverride {
            return try beginTransactionSyncOverride(input)
        }

        return BeginTransactionResponse.__default
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
            completion: @escaping (Result<RDSDataModel.CommitTransactionResponse, RDSDataError>) -> ()) throws {
        if let commitTransactionAsyncOverride = commitTransactionAsyncOverride {
            return try commitTransactionAsyncOverride(input, completion)
        }

        let result = CommitTransactionResponse.__default
        
        completion(.success(result))
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
            input: RDSDataModel.CommitTransactionRequest) throws -> RDSDataModel.CommitTransactionResponse {
        if let commitTransactionSyncOverride = commitTransactionSyncOverride {
            return try commitTransactionSyncOverride(input)
        }

        return CommitTransactionResponse.__default
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
            completion: @escaping (Result<RDSDataModel.ExecuteSqlResponse, RDSDataError>) -> ()) throws {
        if let executeSqlAsyncOverride = executeSqlAsyncOverride {
            return try executeSqlAsyncOverride(input, completion)
        }

        let result = ExecuteSqlResponse.__default
        
        completion(.success(result))
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
            input: RDSDataModel.ExecuteSqlRequest) throws -> RDSDataModel.ExecuteSqlResponse {
        if let executeSqlSyncOverride = executeSqlSyncOverride {
            return try executeSqlSyncOverride(input)
        }

        return ExecuteSqlResponse.__default
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
            completion: @escaping (Result<RDSDataModel.ExecuteStatementResponse, RDSDataError>) -> ()) throws {
        if let executeStatementAsyncOverride = executeStatementAsyncOverride {
            return try executeStatementAsyncOverride(input, completion)
        }

        let result = ExecuteStatementResponse.__default
        
        completion(.success(result))
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
            input: RDSDataModel.ExecuteStatementRequest) throws -> RDSDataModel.ExecuteStatementResponse {
        if let executeStatementSyncOverride = executeStatementSyncOverride {
            return try executeStatementSyncOverride(input)
        }

        return ExecuteStatementResponse.__default
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
            completion: @escaping (Result<RDSDataModel.RollbackTransactionResponse, RDSDataError>) -> ()) throws {
        if let rollbackTransactionAsyncOverride = rollbackTransactionAsyncOverride {
            return try rollbackTransactionAsyncOverride(input, completion)
        }

        let result = RollbackTransactionResponse.__default
        
        completion(.success(result))
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
            input: RDSDataModel.RollbackTransactionRequest) throws -> RDSDataModel.RollbackTransactionResponse {
        if let rollbackTransactionSyncOverride = rollbackTransactionSyncOverride {
            return try rollbackTransactionSyncOverride(input)
        }

        return RollbackTransactionResponse.__default
    }
}
