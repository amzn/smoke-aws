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
//  HTTPOperationsClient+executeOperations.swift
//  SmokeAWSHttp
//

import Foundation
import SmokeHTTPClient
import NIOHTTP1

public extension HTTPOperationsClient {
    /**
     Submits a request that will return a response body to this client asynchronously.
     The completion handler's execution will be scheduled on DispatchQueue.global()
     rather than executing on a thread from SwiftNIO.

     - Parameters:
        - endpointPath: The endpoint path for this request.
        - httpMethod: The http method to use for this request.
        - input: the input body data to send with this request.
        - completion: Completion handler called with the response body or any error.
        - invocationContext: context to use for this invocation.
        - retryConfiguration: the retry configuration for this request.
        - retryOnError: function that should return if the provided error is retryable.
     */
    func executeOperationAsyncRetriableWithOutput<InputType, OutputType, ErrorType: ConvertableError,
        InvocationReportingType: HTTPClientInvocationReporting, HandlerDelegateType: HTTPClientInvocationDelegate>(
            endpointOverride: URL? = nil,
            endpointPath: String,
            httpMethod: HTTPMethod,
            input: InputType,
            completion: @escaping (Result<OutputType, ErrorType>) -> (),
            invocationContext: HTTPClientInvocationContext<InvocationReportingType, HandlerDelegateType>,
            retryConfiguration: HTTPClientRetryConfiguration,
            retryOnError: @escaping (HTTPClientError) -> Bool) throws
        where InputType: HTTPRequestInputProtocol, OutputType: HTTPResponseOutputProtocol {
            func innerCompletion(result: Result<OutputType, SmokeHTTPClient.HTTPClientError>) {
                switch result {
                case .success(let payload):
                    completion(.success(payload))
                case .failure(let error):
                    let typedError: ErrorType = error.asTypedError()
                    completion(.failure(typedError))
                }
            }
            
            return try executeAsyncRetriableWithOutput(
                endpointOverride: endpointOverride,
                endpointPath: endpointPath,
                httpMethod: httpMethod,
                input: input,
                completion: innerCompletion,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnError)
    }
    
    /**
     Submits a request that will not return a response body to this client asynchronously.
     The completion handler's execution will be scheduled on DispatchQueue.global()
     rather than executing on a thread from SwiftNIO.
     
     - Parameters:
        - endpointPath: The endpoint path for this request.
        - httpMethod: The http method to use for this request.
        - input: the input body data to send with this request.
        - completion: Completion handler called with an error if one occurs or nil otherwise.
        - invocationContext: context to use for this invocation.
        - retryConfiguration: the retry configuration for this request.
        - retryOnError: function that should return if the provided error is retryable.
     */
    func executeOperationAsyncRetriableWithoutOutput<InputType, ErrorType: ConvertableError,
        InvocationReportingType: HTTPClientInvocationReporting, HandlerDelegateType: HTTPClientInvocationDelegate>(
        endpointOverride: URL? = nil,
        endpointPath: String,
        httpMethod: HTTPMethod,
        input: InputType,
        completion: @escaping (ErrorType?) -> (),
        invocationContext: HTTPClientInvocationContext<InvocationReportingType, HandlerDelegateType>,
        retryConfiguration: HTTPClientRetryConfiguration,
        retryOnError: @escaping (HTTPClientError) -> Bool) throws
        where InputType: HTTPRequestInputProtocol {
            func innerCompletion(error: SmokeHTTPClient.HTTPClientError?) {
                if let error = error {
                    let typedError: ErrorType = error.asTypedError()
                    completion(typedError)
                } else {
                    completion(nil)
                }
            }
            
            try executeAsyncRetriableWithoutOutput(
                endpointOverride: endpointOverride,
                endpointPath: endpointPath,
                httpMethod: httpMethod,
                input: input,
                completion: innerCompletion,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnError)
    }
}
