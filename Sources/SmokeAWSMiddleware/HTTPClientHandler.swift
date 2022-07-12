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
import HttpClientMiddleware
import NIOCore
import NIOSSL
import Logging

public struct HTTPClientHandler: HandlerProtocol {
    let httpClient: HTTPClient
    let endpointPort: Int
    let protocolType: ProtocolType
    let contentType: String
    let endpointHostName: String
    let deadline: NIODeadline
    let logger: Logger?
    
    public init(endpointHostName: String,
                endpointPort: Int,
                contentType: String,
                tlsConfiguration: TLSConfiguration?,
                timeoutConfiguration: HTTPClient.Configuration.Timeout,
                logger: Logger?,
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
        
        let clientConfiguration = HTTPClient.Configuration(
            tlsConfiguration: tlsConfiguration,
            timeout: timeoutConfiguration,
            connectionPool: connectionPool,
            ignoreUncleanSSLShutdown: true)
        self.httpClient = HTTPClient(eventLoopGroupProvider: eventLoopProvider,
                                     configuration: clientConfiguration)
        self.deadline = .distantFuture
        self.logger = logger
    }
    
    public func handle(input: HTTPClientRequest) async throws -> HTTPClientResponse {
        return try await self.httpClient.execute(input, deadline: deadline, logger: logger)
    }
}
