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
// AWSCodePipelineClientGenerator.swift
// CodePipelineClient
//

import Foundation
import CodePipelineModel
import SmokeAWSCore
import SmokeHTTPClient
import SmokeAWSHttp
import NIO
import NIOHTTP1
import AsyncHTTPClient
import Logging

/**
 AWS Client Generator for the CodePipeline service.
 */
public struct AWSCodePipelineClientGenerator {
    let httpClient: HTTPOperationsClient
    let awsRegion: AWSRegion
    let service: String
    let target: String?
    let retryConfiguration: HTTPClientRetryConfiguration
    let retryOnErrorProvider: (SmokeHTTPClient.HTTPClientError) -> Bool
    let credentialsProvider: CredentialsProvider

    let operationsReporting: CodePipelineOperationsReporting
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                endpointHostName: String,
                endpointPort: Int = 443,
                requiresTLS: Bool? = nil,
                service: String = "codepipeline",
                contentType: String = "application/x-amz-json-1.1",
                target: String? = "CodePipeline_20150709",
                connectionTimeoutSeconds: Int64 = 10,
                retryConfiguration: HTTPClientRetryConfiguration = .default,
                eventLoopProvider: HTTPClient.EventLoopGroupProvider = .createNew,
                connectionPoolConfiguration: HTTPClient.Configuration.ConnectionPool? = nil,
                reportingConfiguration: SmokeAWSClientReportingConfiguration<CodePipelineModelOperations>
                    = SmokeAWSClientReportingConfiguration<CodePipelineModelOperations>() ) {
        let useTLS = requiresTLS ?? AWSHTTPClientDelegate.requiresTLS(forEndpointPort: endpointPort)
        let clientDelegate = JSONAWSHttpClientDelegate<CodePipelineError>(requiresTLS: useTLS)

        self.httpClient = HTTPOperationsClient(
            endpointHostName: endpointHostName,
            endpointPort: endpointPort,
            contentType: contentType,
            clientDelegate: clientDelegate,
            connectionTimeoutSeconds: connectionTimeoutSeconds,
            eventLoopProvider: eventLoopProvider,
            connectionPoolConfiguration: connectionPoolConfiguration)
        self.awsRegion = awsRegion
        self.service = service
        self.target = target
        self.credentialsProvider = credentialsProvider
        self.retryConfiguration = retryConfiguration
        self.retryOnErrorProvider = { error in error.isRetriable() }
        self.operationsReporting = CodePipelineOperationsReporting(clientName: "AWSCodePipelineClient", reportingConfiguration: reportingConfiguration)
    }

    /**
     Gracefully shuts down this client. This function is idempotent and
     will handle being called multiple times. Will block until shutdown is complete.
     */
    public func close() throws {
        try self.httpClient.close()
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
    
    public func with<NewInvocationReportingType: HTTPClientCoreInvocationReporting>(
            reporting: NewInvocationReportingType) -> AWSCodePipelineClient<NewInvocationReportingType> {
        return AWSCodePipelineClient<NewInvocationReportingType>(
            credentialsProvider: self.credentialsProvider,
            awsRegion: self.awsRegion,
            reporting: reporting,
            httpClient: self.httpClient,
            service: self.service,
            target: self.target,
            retryOnErrorProvider: self.retryOnErrorProvider,
            retryConfiguration: self.retryConfiguration,
            operationsReporting: self.operationsReporting)
    }
    
    public func with<NewTraceContextType: InvocationTraceContext>(
            logger: Logging.Logger,
            internalRequestId: String = "none",
            traceContext: NewTraceContextType) -> AWSCodePipelineClient<StandardHTTPClientCoreInvocationReporting<NewTraceContextType>> {
        let reporting = StandardHTTPClientCoreInvocationReporting(
            logger: logger,
            internalRequestId: internalRequestId,
            traceContext: traceContext)
        
        return with(reporting: reporting)
    }
    
    public func with(
            logger: Logging.Logger,
            internalRequestId: String = "none") -> AWSCodePipelineClient<StandardHTTPClientCoreInvocationReporting<AWSClientInvocationTraceContext>> {
        let reporting = StandardHTTPClientCoreInvocationReporting(
            logger: logger,
            internalRequestId: internalRequestId,
            traceContext: AWSClientInvocationTraceContext())
        
        return with(reporting: reporting)
    }
}
