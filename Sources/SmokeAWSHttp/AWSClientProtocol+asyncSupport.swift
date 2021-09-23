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
//  AWSClientProtocol+asyncSupport.swift
//  SmokeAWSHttp
//

#if compiler(>=5.5) && canImport(_Concurrency)

import SmokeHTTPClient
import SmokeAWSCore
import NIO
import NIOHTTP1
import NIOTransportServices
import AsyncHTTPClient
import SmokeAWSHttp

public extension AWSClientProtocol {
    @available(macOS 12, iOS 15, tvOS 15, watchOS 8, *)
    func executeWithoutOutput<InvocationReportingType: HTTPClientInvocationReporting,
                              InputType: HTTPRequestInputProtocol, ErrorType: ConvertableError>(
            httpClient: HTTPOperationsClient,
            endpointPath: String = "/",
            httpMethod: HTTPMethod = .POST,
            requestInput: InputType,
            operation: String,
            reporting: InvocationReportingType,
            signAllHeaders: Bool = false,
            errorType: ErrorType.Type) async throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: operation,
                    target: target,
                    signAllHeaders: signAllHeaders)

        let invocationContext = HTTPClientInvocationContext(reporting: reporting,
                                                            handlerDelegate: handlerDelegate)

        do {
            return try await httpClient.executeRetriableWithoutOutput(
                endpointPath: endpointPath,
                httpMethod: httpMethod,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ErrorType = error.asTypedError()
            throw typedError
        }
    }
    
    @available(macOS 12, iOS 15, tvOS 15, watchOS 8, *)
    func executeWithOutput<OutputType: HTTPResponseOutputProtocol, InvocationReportingType: HTTPClientInvocationReporting,
                           InputType: HTTPRequestInputProtocol, ErrorType: ConvertableError>(
            httpClient: HTTPOperationsClient,
            endpointPath: String = "/",
            httpMethod: HTTPMethod = .POST,
            requestInput: InputType,
            operation: String,
            reporting: InvocationReportingType,
            signAllHeaders: Bool = false,
            errorType: ErrorType.Type) async throws -> OutputType {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: operation,
                    target: target,
                    signAllHeaders: signAllHeaders)

        let invocationContext = HTTPClientInvocationContext(reporting: reporting,
                                                            handlerDelegate: handlerDelegate)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: endpointPath,
                httpMethod: httpMethod,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ErrorType = error.asTypedError()
            throw typedError
        }
    }
}

#endif
