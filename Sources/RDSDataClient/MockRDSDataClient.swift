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
public struct MockRDSDataClient<ClientInvocationReportingType: SmokeAWSInvocationReporting>: RDSDataClientProtocol {
    let batchExecuteStatementAsyncOverride: BatchExecuteStatementAsyncType<ClientInvocationReportingType>?
    let batchExecuteStatementSyncOverride: BatchExecuteStatementSyncType<ClientInvocationReportingType>?
    let beginTransactionAsyncOverride: BeginTransactionAsyncType<ClientInvocationReportingType>?
    let beginTransactionSyncOverride: BeginTransactionSyncType<ClientInvocationReportingType>?
    let commitTransactionAsyncOverride: CommitTransactionAsyncType<ClientInvocationReportingType>?
    let commitTransactionSyncOverride: CommitTransactionSyncType<ClientInvocationReportingType>?
    let executeSqlAsyncOverride: ExecuteSqlAsyncType<ClientInvocationReportingType>?
    let executeSqlSyncOverride: ExecuteSqlSyncType<ClientInvocationReportingType>?
    let executeStatementAsyncOverride: ExecuteStatementAsyncType<ClientInvocationReportingType>?
    let executeStatementSyncOverride: ExecuteStatementSyncType<ClientInvocationReportingType>?
    let rollbackTransactionAsyncOverride: RollbackTransactionAsyncType<ClientInvocationReportingType>?
    let rollbackTransactionSyncOverride: RollbackTransactionSyncType<ClientInvocationReportingType>?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            batchExecuteStatementAsync: BatchExecuteStatementAsyncType<ClientInvocationReportingType>? = nil,
            batchExecuteStatementSync: BatchExecuteStatementSyncType<ClientInvocationReportingType>? = nil,
            beginTransactionAsync: BeginTransactionAsyncType<ClientInvocationReportingType>? = nil,
            beginTransactionSync: BeginTransactionSyncType<ClientInvocationReportingType>? = nil,
            commitTransactionAsync: CommitTransactionAsyncType<ClientInvocationReportingType>? = nil,
            commitTransactionSync: CommitTransactionSyncType<ClientInvocationReportingType>? = nil,
            executeSqlAsync: ExecuteSqlAsyncType<ClientInvocationReportingType>? = nil,
            executeSqlSync: ExecuteSqlSyncType<ClientInvocationReportingType>? = nil,
            executeStatementAsync: ExecuteStatementAsyncType<ClientInvocationReportingType>? = nil,
            executeStatementSync: ExecuteStatementSyncType<ClientInvocationReportingType>? = nil,
            rollbackTransactionAsync: RollbackTransactionAsyncType<ClientInvocationReportingType>? = nil,
            rollbackTransactionSync: RollbackTransactionSyncType<ClientInvocationReportingType>? = nil) {
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
    public func batchExecuteStatementAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSDataModel.BatchExecuteStatementRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSDataModel.BatchExecuteStatementResponse, HTTPClientError>) -> ()) throws {
        if let batchExecuteStatementAsyncOverrideNonOptional = batchExecuteStatementAsyncOverride {
            if let batchExecuteStatementAsyncOverrideTyped = batchExecuteStatementAsyncOverrideNonOptional
                    as? BatchExecuteStatementAsyncType<InvocationReportingType> {
                return try batchExecuteStatementAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func batchExecuteStatementSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSDataModel.BatchExecuteStatementRequest,
            reporting: InvocationReportingType) throws -> RDSDataModel.BatchExecuteStatementResponse {
        if let batchExecuteStatementSyncOverrideNonOptional = batchExecuteStatementSyncOverride {
            if let batchExecuteStatementSyncOverrideTyped = batchExecuteStatementSyncOverrideNonOptional
                    as? BatchExecuteStatementSyncType<InvocationReportingType> {
                return try batchExecuteStatementSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func beginTransactionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSDataModel.BeginTransactionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSDataModel.BeginTransactionResponse, HTTPClientError>) -> ()) throws {
        if let beginTransactionAsyncOverrideNonOptional = beginTransactionAsyncOverride {
            if let beginTransactionAsyncOverrideTyped = beginTransactionAsyncOverrideNonOptional
                    as? BeginTransactionAsyncType<InvocationReportingType> {
                return try beginTransactionAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func beginTransactionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSDataModel.BeginTransactionRequest,
            reporting: InvocationReportingType) throws -> RDSDataModel.BeginTransactionResponse {
        if let beginTransactionSyncOverrideNonOptional = beginTransactionSyncOverride {
            if let beginTransactionSyncOverrideTyped = beginTransactionSyncOverrideNonOptional
                    as? BeginTransactionSyncType<InvocationReportingType> {
                return try beginTransactionSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func commitTransactionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSDataModel.CommitTransactionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSDataModel.CommitTransactionResponse, HTTPClientError>) -> ()) throws {
        if let commitTransactionAsyncOverrideNonOptional = commitTransactionAsyncOverride {
            if let commitTransactionAsyncOverrideTyped = commitTransactionAsyncOverrideNonOptional
                    as? CommitTransactionAsyncType<InvocationReportingType> {
                return try commitTransactionAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func commitTransactionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSDataModel.CommitTransactionRequest,
            reporting: InvocationReportingType) throws -> RDSDataModel.CommitTransactionResponse {
        if let commitTransactionSyncOverrideNonOptional = commitTransactionSyncOverride {
            if let commitTransactionSyncOverrideTyped = commitTransactionSyncOverrideNonOptional
                    as? CommitTransactionSyncType<InvocationReportingType> {
                return try commitTransactionSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func executeSqlAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSDataModel.ExecuteSqlRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSDataModel.ExecuteSqlResponse, HTTPClientError>) -> ()) throws {
        if let executeSqlAsyncOverrideNonOptional = executeSqlAsyncOverride {
            if let executeSqlAsyncOverrideTyped = executeSqlAsyncOverrideNonOptional
                    as? ExecuteSqlAsyncType<InvocationReportingType> {
                return try executeSqlAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func executeSqlSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSDataModel.ExecuteSqlRequest,
            reporting: InvocationReportingType) throws -> RDSDataModel.ExecuteSqlResponse {
        if let executeSqlSyncOverrideNonOptional = executeSqlSyncOverride {
            if let executeSqlSyncOverrideTyped = executeSqlSyncOverrideNonOptional
                    as? ExecuteSqlSyncType<InvocationReportingType> {
                return try executeSqlSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func executeStatementAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSDataModel.ExecuteStatementRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSDataModel.ExecuteStatementResponse, HTTPClientError>) -> ()) throws {
        if let executeStatementAsyncOverrideNonOptional = executeStatementAsyncOverride {
            if let executeStatementAsyncOverrideTyped = executeStatementAsyncOverrideNonOptional
                    as? ExecuteStatementAsyncType<InvocationReportingType> {
                return try executeStatementAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func executeStatementSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSDataModel.ExecuteStatementRequest,
            reporting: InvocationReportingType) throws -> RDSDataModel.ExecuteStatementResponse {
        if let executeStatementSyncOverrideNonOptional = executeStatementSyncOverride {
            if let executeStatementSyncOverrideTyped = executeStatementSyncOverrideNonOptional
                    as? ExecuteStatementSyncType<InvocationReportingType> {
                return try executeStatementSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func rollbackTransactionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSDataModel.RollbackTransactionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<RDSDataModel.RollbackTransactionResponse, HTTPClientError>) -> ()) throws {
        if let rollbackTransactionAsyncOverrideNonOptional = rollbackTransactionAsyncOverride {
            if let rollbackTransactionAsyncOverrideTyped = rollbackTransactionAsyncOverrideNonOptional
                    as? RollbackTransactionAsyncType<InvocationReportingType> {
                return try rollbackTransactionAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func rollbackTransactionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: RDSDataModel.RollbackTransactionRequest,
            reporting: InvocationReportingType) throws -> RDSDataModel.RollbackTransactionResponse {
        if let rollbackTransactionSyncOverrideNonOptional = rollbackTransactionSyncOverride {
            if let rollbackTransactionSyncOverrideTyped = rollbackTransactionSyncOverrideNonOptional
                    as? RollbackTransactionSyncType<InvocationReportingType> {
                return try rollbackTransactionSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        return RollbackTransactionResponse.__default
    }
}
