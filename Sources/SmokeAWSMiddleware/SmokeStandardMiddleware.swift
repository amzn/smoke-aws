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

import HttpClientMiddleware
import AsyncHTTPClient
import SmokeHTTPClientMiddleware
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
        httpPath: String,
        retryConfiguration: HTTPClientRetryConfiguration,
        errorStatusFunction: @escaping (Swift.Error) -> (isRetriable: Bool, code: UInt),
        invocationMetrics: HTTPClientInvocationMetrics?,
        requestTags: [String],
        inputQueryMapDecodingStrategy: QueryEncoder.MapEncodingStrategy?,
        signAllHeaders: Bool,
        logger: Logger,
        maxBytes: Int,
        errorType: ErrorType.Type)
    -> OperationMiddlewareStack<InputType, OutputType, HTTPClientRequest, HTTPClientResponse> {
        let jsonDecoder = JSONDecoder.awsCompatibleDecoder()
        let jsonEncoder = JSONEncoder.awsCompatibleEncoder()
        
        let deserializationTransform = HTTPClientResponseJSONBodyDeserializationTransform<OutputType>(
            maxBytes: maxBytes,
            logger: logger,
            jsonDecoder: jsonDecoder,
            headersDecoder: HTTPHeadersDecoder(keyDecodingStrategy: .useShapePrefix))
        var operationStack = OperationMiddlewareStack<InputType, OutputType, HTTPClientRequest, HTTPClientResponse>(
            id: "SmokeStandardMiddleware",
            deserializationTransform: deserializationTransform)
        
        let bodyContext = SmokeHTTPBodyContext()
        
        let urlPathMiddleware = SmokeHTTPClientURLPathMiddleware<InputType>(encoder: HTTPPathEncoder(),
                                                                            httpPath: httpPath)
        operationStack.serializeInputPhase.intercept(position: .last, middleware: urlPathMiddleware)
        
        let queryEncoder: QueryEncoder
        if let inputQueryMapDecodingStrategy = inputQueryMapDecodingStrategy {
            queryEncoder = QueryEncoder(mapEncodingStrategy: inputQueryMapDecodingStrategy)
        } else {
            queryEncoder = QueryEncoder()
        }
        
        let queryItemsMiddleware = SmokeHTTPClientQueryItemsMiddleware<InputType>(encoder: queryEncoder,
                                                                                  allowedCharacterSet: .uriAWSQueryValueAllowed)
        operationStack.serializeInputPhase.intercept(position: .last, middleware: queryItemsMiddleware)
        
        let additionalHeadersMiddleware = SmokeHTTPClientAdditionalHeadersMiddleware<InputType>(
            encoder: HTTPHeadersEncoder(keyEncodingStrategy: .noSeparator))
        operationStack.serializeInputPhase.intercept(position: .last, middleware: additionalHeadersMiddleware)
        
        let jsonBodyMiddleware = SmokeHTTPClientJSONBodyMiddleware<InputType>(encoder: jsonEncoder, bodyContext: bodyContext)
        operationStack.serializeInputPhase.intercept(position: .last, middleware: jsonBodyMiddleware)
        
        let sigV4HeaderMiddleware = SigV4HeaderMiddleware(
            credentialsProvider: credentialsProvider, awsRegion: awsRegion, service: service,
            operation: operation, target: target, signAllHeaders: signAllHeaders, bodyContext: bodyContext)
        operationStack.buildPhase.intercept(position: .last, middleware: sigV4HeaderMiddleware)
        
        operationStack.finalizePhase.intercept(position: .last,
                                               middleware: JSONTypedErrorMiddleware<ErrorType>(maxBytes: maxBytes, decoder: jsonDecoder))
        operationStack.finalizePhase.intercept(position: .last, middleware: ClientErrorMiddleware())
        operationStack.finalizePhase.intercept(position: .last, middleware: SmokeRequestRetryerMiddleware(
            retryConfiguration: retryConfiguration, errorStatusFunction: errorStatusFunction,
            invocationMetrics: invocationMetrics, requestTags: requestTags))
        
        return operationStack
    }
}
