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
//  SigV4HeaderMiddleware.swift
//  SmokeAWSMiddleware
//

import Foundation
import HttpMiddleware
import HttpClientMiddleware
import SmokeAWSCore
import SmokeAWSHttp
import NIOHTTP1
import SmokeHTTPClientMiddleware
import AsyncHTTPClient
import AsyncHttpMiddlewareClient

extension Foundation.Data: @unchecked Sendable { }

public struct SigV4HeaderMiddleware: MiddlewareProtocol {
    public var id = "SigV4Headers"
    
    public typealias InputType = HttpClientRequestBuilder<HTTPClientRequest>
    public typealias OutputType = HTTPClientResponse
    
    private let credentialsProvider: CredentialsProvider
    private let awsRegion: AWSRegion
    private let service: String
    private let operation: String?
    private let target: String?
    private let signAllHeaders: Bool
    private let bodyContext: SmokeHTTPBodyContext
    
    public init(credentialsProvider: CredentialsProvider,
                awsRegion: AWSRegion,
                service: String,
                operation: String?,
                target: String?,
                signAllHeaders: Bool,
                bodyContext: SmokeHTTPBodyContext) {
        self.credentialsProvider = credentialsProvider
        self.awsRegion = awsRegion
        self.service = service
        self.operation = operation
        self.target = target
        self.signAllHeaders = signAllHeaders
        self.bodyContext = bodyContext
    }
    
    public func handle<HandlerType>(input: HttpClientRequestBuilder<HTTPClientRequest>,
                                    context: MiddlewareContext, next: HandlerType) async throws
    -> HTTPClientResponse
    where HandlerType : MiddlewareHandlerProtocol, HttpClientRequestBuilder<HTTPClientRequest> == HandlerType.InputType,
    HTTPClientResponse == HandlerType.OutputType {
        let v4Signer = V4Signer(credentials: self.credentialsProvider.credentials, region: self.awsRegion,
                                service: self.service,
                                signAllHeaders: signAllHeaders)
        
        let allHeadersToBeSigned: [String: String]
        if signAllHeaders {
            var headers = getHeadersToBeSigned()
            input.headers.forEach { header in
                headers[header.0] = header.1
            }
            
            allHeadersToBeSigned = headers
        } else {
            allHeadersToBeSigned = getHeadersToBeSigned()
        }
        
        let bodyData = await self.bodyContext.body ?? Data()
        
        let headers = v4Signer.getSignedHeaders(
            url: input.endpoint.url!,
            headers: allHeadersToBeSigned,
            method: input.methodType.rawValue,
            bodyData: bodyData)
        
        input.withHeaders(HTTPHeaders(headers))
        
        return try await next.handle(input: input, context: context)
    }
    
    /// The headers that need to be signed for this request
    private func getHeadersToBeSigned() -> [String: String] {
        var headersToBeSigned: [String: String] = [:]
        
        guard let operation = self.operation else {
            return headersToBeSigned
        }
        
        guard let target = self.target else {
            headersToBeSigned["x-amz-target"] = operation
            return headersToBeSigned
        }

        headersToBeSigned["x-amz-target"] = "\(target).\(operation)"
        
        return headersToBeSigned
    }
}
