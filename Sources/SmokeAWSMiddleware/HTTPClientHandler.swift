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
//  HTTPClientHandler.swift
//  SmokeAWSMiddleware
//

import AsyncHTTPClient
import HttpMiddleware
import NIOCore
import NIOSSL
import Logging

public struct HTTPClientHandler: HandlerProtocol {
    public let httpClient: HTTPClient
    public let endpointPort: Int
    public let protocolType: ProtocolType
    public let contentType: String
    public let endpointHostName: String
    public let deadline: NIODeadline
    
    public init(endpointHostName: String,
                endpointPort: Int,
                contentType: String,
                tlsConfiguration: TLSConfiguration?,
                timeoutConfiguration timeoutConfigurationOptional: HTTPClient.Configuration.Timeout?,
                eventLoopProvider: HTTPClient.EventLoopGroupProvider = .createNew,
                connectionPoolConfiguration connectionPoolConfigurationOptional: HTTPClient.Configuration.ConnectionPool? = nil) {
        self.endpointHostName = endpointHostName
        self.endpointPort = endpointPort
        self.contentType = contentType
        
        if tlsConfiguration != nil {
            self.protocolType = .https
        } else {
            self.protocolType = .http
        }
        
        let connectionPool = connectionPoolConfigurationOptional ?? HTTPClient.Configuration.ConnectionPool()
        let timeoutConfiguration = timeoutConfigurationOptional ?? HTTPClient.Configuration.Timeout()
        
        let clientConfiguration = HTTPClient.Configuration(
            tlsConfiguration: tlsConfiguration,
            timeout: timeoutConfiguration,
            connectionPool: connectionPool,
            ignoreUncleanSSLShutdown: true)
        self.httpClient = HTTPClient(eventLoopGroupProvider: eventLoopProvider,
                                     configuration: clientConfiguration)
        self.deadline = .distantFuture
    }
    
    /**
     Gracefully shuts down this client. This function is idempotent and
     will handle being called multiple times. Will block until shutdown is complete.
     */
    public func syncShutdown() throws {
        try self.httpClient.syncShutdown()
    }

    /**
     Gracefully shuts down this client. This function is idempotent and
     will handle being called multiple times. Will return when shutdown is complete.
     */
    #if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    public func shutdown() async throws {
        try await self.httpClient.shutdown()
    }
    #endif
    
    public func handle(input: HTTPClientRequest, context: MiddlewareContext) async throws -> HTTPClientResponse {
        return try await self.httpClient.execute(input, deadline: deadline,
                                                 logger: context.logger)
    }
}
