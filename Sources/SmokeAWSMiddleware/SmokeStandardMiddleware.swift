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
//  SmokeStandardMiddleware.swift
//  SmokeAWSMiddleware
//

import HttpMiddleware
import HttpClientMiddleware
import AsyncHTTPClient
import SmokeHTTPClientMiddleware
import AsyncHttpMiddlewareClient
import StandardHttpClientMiddleware
import HTTPHeadersCoding
import HTTPPathCoding
import QueryCoding
import Foundation
import SmokeHTTPTypes
import SmokeAWSCore
import Logging

public struct SmokeStandardMiddleware {
    
    public static func createStack<InputType: HTTPRequestInputProtocol,
                                   OutputType: HTTPResponseOutputProtocol,
                                   ErrorType: Decodable & Error>(
        credentialsProvider: CredentialsProvider,
        awsRegion: AWSRegion,
        service: String,
        operation: String?,
        target: String?,
        endpointHostName: String,
        endpointPort: Int,
        urlProtocolType: ProtocolType,
        httpMethod: HttpMethod = .POST,
        contentType: String,
        specifyContentHeadersForZeroLengthBody: Bool = true,
        httpPath: String = "/",
        retryConfiguration: HTTPClientRetryConfiguration,
        invocationMetrics: HTTPClientInvocationMetrics?,
        requestTags: [String],
        inputQueryMapDecodingStrategy: QueryEncoder.MapEncodingStrategy? = nil,
        signAllHeaders: Bool = false,
        maxBytes: Int = 1000000, // 1 MB
        inputType: InputType.Type,
        outputType: OutputType.Type,
        errorType: ErrorType.Type)
    -> ClientOperationMiddlewareStack<InputType, OutputType, HTTPClientRequest, HTTPClientResponse> {
        let jsonDecoder = JSONDecoder.awsCompatibleDecoder()
        let jsonEncoder = JSONEncoder.awsCompatibleEncoder()
        
        func errorStatusFunction(error: Swift.Error) -> (isRetriable: Bool, code: UInt) {
            if let httpClientError = error as? AsyncHTTPClient.HTTPClientError {
                if httpClientError.isRetriable {
                    // The error is a retriable client error
                    return (true, 500)
                } else {
                    // The error is not a retriable client error
                    return (false, 400)
                }
            } else {
                // unknown error, fall back to retriable
                return (true, 500)
            }
        }
        
        let deserializationTransform = HTTPClientResponseJSONBodyDeserializationTransform<OutputType>(
            maxBytes: maxBytes,
            jsonDecoder: jsonDecoder,
            headersDecoder: HTTPHeadersDecoder(keyDecodingStrategy: .useShapePrefix))
        var operationStack = ClientOperationMiddlewareStack<InputType, OutputType, HTTPClientRequest, HTTPClientResponse>(
            id: "SmokeStandardMiddleware",
            deserializationTransform: deserializationTransform)
        
        let bodyContext = SmokeHTTPBodyContext()
        
        let urlPathMiddleware = SmokeHTTPClientURLPathMiddleware<InputType>(encoder: HTTPPathEncoder(),
                                                                            httpPath: httpPath)
        operationStack.serializePhase.intercept(with: urlPathMiddleware)
        
        let queryEncoder: QueryEncoder
        if let inputQueryMapDecodingStrategy = inputQueryMapDecodingStrategy {
            queryEncoder = QueryEncoder(mapEncodingStrategy: inputQueryMapDecodingStrategy)
        } else {
            queryEncoder = QueryEncoder()
        }
        
        let queryItemsMiddleware = SmokeHTTPClientQueryItemsMiddleware<InputType>(encoder: queryEncoder,
                                                                                  allowedCharacterSet: .uriAWSQueryValueAllowed)
        operationStack.serializePhase.intercept(with: queryItemsMiddleware)
        
        let additionalHeadersMiddleware = SmokeHTTPClientAdditionalHeadersMiddleware<InputType>(
            encoder: HTTPHeadersEncoder(keyEncodingStrategy: .noSeparator))
        operationStack.serializePhase.intercept(with: additionalHeadersMiddleware)
        
        let jsonBodyMiddleware = SmokeHTTPClientJSONBodyMiddleware<InputType>(encoder: jsonEncoder, bodyContext: bodyContext)
        operationStack.serializePhase.intercept(with: jsonBodyMiddleware)
        
        operationStack.buildPhase.intercept(with: RequestHttpMethodMiddleware(httpMethod: httpMethod))
        operationStack.buildPhase.intercept(with: AcceptHeaderMiddleware(accept: "*/*"))
        operationStack.buildPhase.intercept(with: UserAgentHeaderMiddleware(userAgent: "SmokeHTTPClient"))
        
        operationStack.buildPhase.intercept(with: RequestURLHostMiddleware(urlHost: endpointHostName, addHeader: false))
        operationStack.buildPhase.intercept(with: RequestURLProtocolTypeMiddleware(urlProtocolType: urlProtocolType))
        operationStack.buildPhase.intercept(with: RequestURLPortMiddleware(urlPort: Int16(endpointPort)))
        operationStack.buildPhase.intercept(with: ContentTypeHeaderMiddleware(contentType: contentType,
                                                                                    omitHeaderForZeroLengthBody: specifyContentHeadersForZeroLengthBody))
        operationStack.buildPhase.intercept(with: ContentLengthHeaderMiddleware(omitHeaderForZeroLengthBody: specifyContentHeadersForZeroLengthBody))
        
        let sigV4HeaderMiddleware = SigV4HeaderMiddleware(
            credentialsProvider: credentialsProvider, awsRegion: awsRegion, service: service,
            operation: operation, target: target, signAllHeaders: signAllHeaders, bodyContext: bodyContext)
        operationStack.buildPhase.intercept(with: sigV4HeaderMiddleware)
        
        operationStack.finalizePhase.intercept(with: JSONTypedErrorMiddleware<ErrorType>(maxBytes: maxBytes, decoder: jsonDecoder))
        operationStack.finalizePhase.intercept(with: ClientErrorMiddleware())
        operationStack.finalizePhase.intercept(with: SmokeRequestRetryerMiddleware(
            retryConfiguration: retryConfiguration, errorStatusFunction: errorStatusFunction,
            invocationMetrics: invocationMetrics, requestTags: requestTags))
        
        return operationStack
    }
}
