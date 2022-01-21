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
// AWSCloudWatchClientGenerator.swift
// CloudWatchClient
//

import Foundation
import CloudWatchModel
import SmokeAWSCore
import SmokeHTTPClient
import SmokeAWSHttp
import NIO
import NIOHTTP1
import AsyncHTTPClient
import Logging

private extension SmokeHTTPClient.HTTPClientError {
    func isRetriable() -> Bool {
        if let typedError = self.cause as? CloudWatchError, let isRetriable = typedError.isRetriable() {
            return isRetriable
        } else {
            return self.isRetriableAccordingToCategory
        }
    }
}

/**
 AWS Client Generator for the CloudWatch service.
 */
public struct AWSCloudWatchClientGenerator {
    let httpClient: HTTPOperationsClient
    let awsRegion: AWSRegion
    let service: String
    let apiVersion: String
    let target: String?
    let retryConfiguration: HTTPClientRetryConfiguration
    let retryOnErrorProvider: (SmokeHTTPClient.HTTPClientError) -> Bool
    let credentialsProvider: CredentialsProvider

    let operationsReporting: CloudWatchOperationsReporting
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                endpointHostName: String,
                endpointPort: Int = 443,
                requiresTLS: Bool? = nil,
                service: String = "monitoring",
                contentType: String = "application/octet-stream",
                apiVersion: String = "2010-08-01",
                connectionTimeoutSeconds: Int64 = 10,
                retryConfiguration: HTTPClientRetryConfiguration = .default,
                eventLoopProvider: HTTPClient.EventLoopGroupProvider = .createNew,
                connectionPoolConfiguration: HTTPClient.Configuration.ConnectionPool? = nil,
                reportingConfiguration: SmokeAWSClientReportingConfiguration<CloudWatchModelOperations>
                    = SmokeAWSClientReportingConfiguration<CloudWatchModelOperations>() ) {
        let useTLS = requiresTLS ?? AWSHTTPClientDelegate.requiresTLS(forEndpointPort: endpointPort)
        let clientDelegate = XMLAWSHttpClientDelegate<CloudWatchError>(requiresTLS: useTLS,
            outputListDecodingStrategy: .collapseListUsingItemTag("member"), 
            inputQueryListEncodingStrategy: .expandListWithIndexAndItemTag(itemTag: "member"))

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
        self.target = nil
        self.credentialsProvider = credentialsProvider
        self.retryConfiguration = retryConfiguration
        self.retryOnErrorProvider = { error in error.isRetriable() }
        self.apiVersion = apiVersion
        self.operationsReporting = CloudWatchOperationsReporting(clientName: "AWSCloudWatchClient", reportingConfiguration: reportingConfiguration)
    }

    /**
     Gracefully shuts down this client. This function is idempotent and
     will handle being called multiple times.
     */
    public func close() throws {
        try httpClient.close()
    }
    
    public func with<NewInvocationReportingType: HTTPClientCoreInvocationReporting>(
            reporting: NewInvocationReportingType) -> AWSCloudWatchClient<NewInvocationReportingType> {
        return AWSCloudWatchClient<NewInvocationReportingType>(
            credentialsProvider: self.credentialsProvider,
            awsRegion: self.awsRegion,
            reporting: reporting,
            httpClient: self.httpClient,
            service: self.service,
            apiVersion: self.apiVersion,
            retryOnErrorProvider: self.retryOnErrorProvider,
            retryConfiguration: self.retryConfiguration,
            operationsReporting: self.operationsReporting)
    }
    
    public func with<NewTraceContextType: InvocationTraceContext>(
            logger: Logging.Logger,
            internalRequestId: String = "none",
            traceContext: NewTraceContextType) -> AWSCloudWatchClient<StandardHTTPClientCoreInvocationReporting<NewTraceContextType>> {
        let reporting = StandardHTTPClientCoreInvocationReporting(
            logger: logger,
            internalRequestId: internalRequestId,
            traceContext: traceContext)
        
        return with(reporting: reporting)
    }
    
    public func with(
            logger: Logging.Logger,
            internalRequestId: String = "none") -> AWSCloudWatchClient<StandardHTTPClientCoreInvocationReporting<AWSClientInvocationTraceContext>> {
        let reporting = StandardHTTPClientCoreInvocationReporting(
            logger: logger,
            internalRequestId: internalRequestId,
            traceContext: AWSClientInvocationTraceContext())
        
        return with(reporting: reporting)
    }
}
