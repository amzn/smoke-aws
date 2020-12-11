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
// -- Generated Code; do not edit --
//
// RDSDataOperationsClientOutput.swift
// RDSDataClient
//

import Foundation
import SmokeHTTPClient
import RDSDataModel

/**
 Type to handle the output from the BatchExecuteStatement operation in a HTTP client.
 */
extension BatchExecuteStatementResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = BatchExecuteStatementResponse
    public typealias HeadersType = BatchExecuteStatementResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> BatchExecuteStatementResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the BeginTransaction operation in a HTTP client.
 */
extension BeginTransactionResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = BeginTransactionResponse
    public typealias HeadersType = BeginTransactionResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> BeginTransactionResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CommitTransaction operation in a HTTP client.
 */
extension CommitTransactionResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = CommitTransactionResponse
    public typealias HeadersType = CommitTransactionResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CommitTransactionResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ExecuteSql operation in a HTTP client.
 */
extension ExecuteSqlResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ExecuteSqlResponse
    public typealias HeadersType = ExecuteSqlResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ExecuteSqlResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ExecuteStatement operation in a HTTP client.
 */
extension ExecuteStatementResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = ExecuteStatementResponse
    public typealias HeadersType = ExecuteStatementResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ExecuteStatementResponse {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the RollbackTransaction operation in a HTTP client.
 */
extension RollbackTransactionResponse: HTTPResponseOutputProtocol {
    public typealias BodyType = RollbackTransactionResponse
    public typealias HeadersType = RollbackTransactionResponse

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> RollbackTransactionResponse {
        return try bodyDecodableProvider()
    }
}
