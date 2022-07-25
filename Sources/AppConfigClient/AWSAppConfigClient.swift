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
// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment
// swiftlint:disable type_body_length function_body_length generic_type_name cyclomatic_complexity
// -- Generated Code; do not edit --
//
// AWSAppConfigClient.swift
// AppConfigClient
//

import Foundation
import AppConfigModel
import SmokeAWSCore
import SmokeHTTPClient
import SmokeAWSHttp
import NIO
import NIOHTTP1
import AsyncHTTPClient
import Logging

public enum AppConfigClientError: Swift.Error {
    case invalidEndpoint(String)
    case unsupportedPayload
    case unknownError(String?)
}

 extension AppConfigError: ConvertableError {
    public static func asUnrecognizedError(error: Swift.Error) -> AppConfigError {
        return error.asUnrecognizedAppConfigError()
    }
}

/**
 AWS Client for the AppConfig service.
 */
public struct AWSAppConfigClient<InvocationReportingType: HTTPClientCoreInvocationReporting & Sendable>: AppConfigClientProtocol {
    let httpClient: HTTPOperationsClient
    let dataHttpClient: HTTPOperationsClient
    let ownsHttpClients: Bool
    let awsRegion: AWSRegion
    let service: String
    let target: String?
    let retryConfiguration: HTTPClientRetryConfiguration
    let retryOnErrorProvider: (SmokeHTTPClient.HTTPClientError) -> Bool
    let credentialsProvider: CredentialsProvider
    
    public let reporting: InvocationReportingType

    let operationsReporting: AppConfigOperationsReporting
    let invocationsReporting: AppConfigInvocationsReporting<InvocationReportingType>
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                endpointHostName: String,
                endpointPort: Int = 443,
                requiresTLS: Bool? = nil,
                service: String = "appconfig",
                contentType: String = "application/x-amz-rest-json-1.1",
                target: String? = nil,
                connectionTimeoutSeconds: Int64 = 10,
                retryConfiguration: HTTPClientRetryConfiguration = .default,
                eventLoopProvider: HTTPClient.EventLoopGroupProvider = .createNew,
                connectionPoolConfiguration: HTTPClient.Configuration.ConnectionPool? = nil,
                reportingConfiguration: SmokeAWSClientReportingConfiguration<AppConfigModelOperations>
                    = SmokeAWSClientReportingConfiguration<AppConfigModelOperations>() ) {
        let useTLS = requiresTLS ?? AWSHTTPClientDelegate.requiresTLS(forEndpointPort: endpointPort)
        let clientDelegate = JSONAWSHttpClientDelegate<AppConfigError>(requiresTLS: useTLS,
            errorTypeHTTPHeader: "x-amzn-ErrorType")

        let clientDelegateForDataHttpClient = DataAWSHttpClientDelegate<AppConfigError>(requiresTLS: useTLS,
            errorTypeHTTPHeader: "x-amzn-ErrorType")

        self.httpClient = HTTPOperationsClient(
            endpointHostName: endpointHostName,
            endpointPort: endpointPort,
            contentType: contentType,
            clientDelegate: clientDelegate,
            connectionTimeoutSeconds: connectionTimeoutSeconds,
            eventLoopProvider: eventLoopProvider,
            connectionPoolConfiguration: connectionPoolConfiguration)
        self.dataHttpClient = HTTPOperationsClient(
            endpointHostName: endpointHostName,
            endpointPort: endpointPort,
            contentType: contentType,
            clientDelegate: clientDelegateForDataHttpClient,
            connectionTimeoutSeconds: connectionTimeoutSeconds,
            eventLoopProvider: eventLoopProvider,
            connectionPoolConfiguration: connectionPoolConfiguration)
        self.ownsHttpClients = true
        self.awsRegion = awsRegion
        self.service = service
        self.target = target
        self.credentialsProvider = credentialsProvider
        self.retryConfiguration = retryConfiguration
        self.reporting = reporting
        self.retryOnErrorProvider = { error in error.isRetriable() }
        self.operationsReporting = AppConfigOperationsReporting(clientName: "AWSAppConfigClient", reportingConfiguration: reportingConfiguration)
        self.invocationsReporting = AppConfigInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
    }
    
    internal init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                httpClient: HTTPOperationsClient, dataHttpClient: HTTPOperationsClient,
                service: String,
                target: String?,
                retryOnErrorProvider: @escaping (SmokeHTTPClient.HTTPClientError) -> Bool,
                retryConfiguration: HTTPClientRetryConfiguration,
                operationsReporting: AppConfigOperationsReporting) {
        self.httpClient = httpClient
        self.dataHttpClient = dataHttpClient
        self.ownsHttpClients = false
        self.awsRegion = awsRegion
        self.service = service
        self.target = target
        self.credentialsProvider = credentialsProvider
        self.retryConfiguration = retryConfiguration
        self.reporting = reporting
        self.retryOnErrorProvider = retryOnErrorProvider
        self.operationsReporting = operationsReporting
        self.invocationsReporting = AppConfigInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
    }

    /**
     Gracefully shuts down this client. This function is idempotent and
     will handle being called multiple times. Will block until shutdown is complete.
     */
    public func syncShutdown() throws {
        if self.ownsHttpClients {
            try self.httpClient.syncShutdown()
            try self.dataHttpClient.syncShutdown()
        }
    }

    // renamed `syncShutdown` to make it clearer this version of shutdown will block.
    @available(*, deprecated, renamed: "syncShutdown")
    public func close() throws {
        if self.ownsHttpClients {
            try self.httpClient.close()
            try self.dataHttpClient.close()
        }
    }

    /**
     Gracefully shuts down this client. This function is idempotent and
     will handle being called multiple times. Will return when shutdown is complete.
     */
    #if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    public func shutdown() async throws {
        if self.ownsHttpClients {
            try await self.httpClient.shutdown()
            try await self.dataHttpClient.shutdown()
        }
    }
    #endif

    /**
     Invokes the CreateApplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateApplicationRequest object being passed to this operation.
         - completion: The Application object or an error will be passed to this 
           callback when the operation is complete. The Application
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer.
     */
    public func createApplicationAsync(
            input: AppConfigModel.CreateApplicationRequest, 
            completion: @escaping (Result<AppConfigModel.Application, AppConfigError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.createApplication.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createApplication,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateApplicationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/applications",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateApplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateApplicationRequest object being passed to this operation.
     - Returns: The Application object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer.
     */
    public func createApplicationSync(
            input: AppConfigModel.CreateApplicationRequest) throws -> AppConfigModel.Application {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.createApplication.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createApplication,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateApplicationOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/applications",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the CreateConfigurationProfile operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateConfigurationProfileRequest object being passed to this operation.
         - completion: The ConfigurationProfile object or an error will be passed to this 
           callback when the operation is complete. The ConfigurationProfile
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func createConfigurationProfileAsync(
            input: AppConfigModel.CreateConfigurationProfileRequest, 
            completion: @escaping (Result<AppConfigModel.ConfigurationProfile, AppConfigError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.createConfigurationProfile.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createConfigurationProfile,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateConfigurationProfileOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/applications/{ApplicationId}/configurationprofiles",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateConfigurationProfile operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateConfigurationProfileRequest object being passed to this operation.
     - Returns: The ConfigurationProfile object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func createConfigurationProfileSync(
            input: AppConfigModel.CreateConfigurationProfileRequest) throws -> AppConfigModel.ConfigurationProfile {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.createConfigurationProfile.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createConfigurationProfile,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateConfigurationProfileOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/applications/{ApplicationId}/configurationprofiles",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the CreateDeploymentStrategy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateDeploymentStrategyRequest object being passed to this operation.
         - completion: The DeploymentStrategy object or an error will be passed to this 
           callback when the operation is complete. The DeploymentStrategy
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer.
     */
    public func createDeploymentStrategyAsync(
            input: AppConfigModel.CreateDeploymentStrategyRequest, 
            completion: @escaping (Result<AppConfigModel.DeploymentStrategy, AppConfigError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.createDeploymentStrategy.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createDeploymentStrategy,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateDeploymentStrategyOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/deploymentstrategies",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateDeploymentStrategy operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateDeploymentStrategyRequest object being passed to this operation.
     - Returns: The DeploymentStrategy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer.
     */
    public func createDeploymentStrategySync(
            input: AppConfigModel.CreateDeploymentStrategyRequest) throws -> AppConfigModel.DeploymentStrategy {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.createDeploymentStrategy.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createDeploymentStrategy,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateDeploymentStrategyOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/deploymentstrategies",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the CreateEnvironment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateEnvironmentRequest object being passed to this operation.
         - completion: The Environment object or an error will be passed to this 
           callback when the operation is complete. The Environment
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func createEnvironmentAsync(
            input: AppConfigModel.CreateEnvironmentRequest, 
            completion: @escaping (Result<AppConfigModel.Environment, AppConfigError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.createEnvironment.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createEnvironment,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateEnvironmentOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/applications/{ApplicationId}/environments",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateEnvironment operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateEnvironmentRequest object being passed to this operation.
     - Returns: The Environment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func createEnvironmentSync(
            input: AppConfigModel.CreateEnvironmentRequest) throws -> AppConfigModel.Environment {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.createEnvironment.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createEnvironment,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateEnvironmentOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/applications/{ApplicationId}/environments",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the CreateExtension operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateExtensionRequest object being passed to this operation.
         - completion: The Extension object or an error will be passed to this 
           callback when the operation is complete. The Extension
           object will be validated before being returned to caller.
           The possible errors are: badRequest, conflict, internalServer, serviceQuotaExceeded.
     */
    public func createExtensionAsync(
            input: AppConfigModel.CreateExtensionRequest, 
            completion: @escaping (Result<AppConfigModel.Extension, AppConfigError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.createExtension.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createExtension,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateExtensionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/extensions",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateExtension operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateExtensionRequest object being passed to this operation.
     - Returns: The Extension object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, conflict, internalServer, serviceQuotaExceeded.
     */
    public func createExtensionSync(
            input: AppConfigModel.CreateExtensionRequest) throws -> AppConfigModel.Extension {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.createExtension.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createExtension,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateExtensionOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/extensions",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the CreateExtensionAssociation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateExtensionAssociationRequest object being passed to this operation.
         - completion: The ExtensionAssociation object or an error will be passed to this 
           callback when the operation is complete. The ExtensionAssociation
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound, serviceQuotaExceeded.
     */
    public func createExtensionAssociationAsync(
            input: AppConfigModel.CreateExtensionAssociationRequest, 
            completion: @escaping (Result<AppConfigModel.ExtensionAssociation, AppConfigError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.createExtensionAssociation.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createExtensionAssociation,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateExtensionAssociationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/extensionassociations",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateExtensionAssociation operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateExtensionAssociationRequest object being passed to this operation.
     - Returns: The ExtensionAssociation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound, serviceQuotaExceeded.
     */
    public func createExtensionAssociationSync(
            input: AppConfigModel.CreateExtensionAssociationRequest) throws -> AppConfigModel.ExtensionAssociation {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.createExtensionAssociation.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createExtensionAssociation,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateExtensionAssociationOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/extensionassociations",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the CreateHostedConfigurationVersion operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateHostedConfigurationVersionRequest object being passed to this operation.
         - completion: The HostedConfigurationVersion object or an error will be passed to this 
           callback when the operation is complete. The HostedConfigurationVersion
           object will be validated before being returned to caller.
           The possible errors are: badRequest, conflict, internalServer, payloadTooLarge, resourceNotFound, serviceQuotaExceeded.
     */
    public func createHostedConfigurationVersionAsync(
            input: AppConfigModel.CreateHostedConfigurationVersionRequest, 
            completion: @escaping (Result<AppConfigModel.HostedConfigurationVersion, AppConfigError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.createHostedConfigurationVersion.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createHostedConfigurationVersion,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateHostedConfigurationVersionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/hostedconfigurationversions",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateHostedConfigurationVersion operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateHostedConfigurationVersionRequest object being passed to this operation.
     - Returns: The HostedConfigurationVersion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, conflict, internalServer, payloadTooLarge, resourceNotFound, serviceQuotaExceeded.
     */
    public func createHostedConfigurationVersionSync(
            input: AppConfigModel.CreateHostedConfigurationVersionRequest) throws -> AppConfigModel.HostedConfigurationVersion {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.createHostedConfigurationVersion.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createHostedConfigurationVersion,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateHostedConfigurationVersionOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/hostedconfigurationversions",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteApplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteApplicationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func deleteApplicationAsync(
            input: AppConfigModel.DeleteApplicationRequest, 
            completion: @escaping (AppConfigError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.deleteApplication.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteApplication,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteApplicationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithoutOutput(
            endpointPath: "/applications/{ApplicationId}",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteApplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteApplicationRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func deleteApplicationSync(
            input: AppConfigModel.DeleteApplicationRequest) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.deleteApplication.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteApplication,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteApplicationOperationHTTPRequestInput(encodable: input)

        do {
            try httpClient.executeSyncRetriableWithoutOutput(
                endpointPath: "/applications/{ApplicationId}",
                httpMethod: .DELETE,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteConfigurationProfile operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteConfigurationProfileRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: badRequest, conflict, internalServer, resourceNotFound.
     */
    public func deleteConfigurationProfileAsync(
            input: AppConfigModel.DeleteConfigurationProfileRequest, 
            completion: @escaping (AppConfigError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.deleteConfigurationProfile.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteConfigurationProfile,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteConfigurationProfileOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithoutOutput(
            endpointPath: "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteConfigurationProfile operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteConfigurationProfileRequest object being passed to this operation.
     - Throws: badRequest, conflict, internalServer, resourceNotFound.
     */
    public func deleteConfigurationProfileSync(
            input: AppConfigModel.DeleteConfigurationProfileRequest) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.deleteConfigurationProfile.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteConfigurationProfile,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteConfigurationProfileOperationHTTPRequestInput(encodable: input)

        do {
            try httpClient.executeSyncRetriableWithoutOutput(
                endpointPath: "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}",
                httpMethod: .DELETE,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteDeploymentStrategy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteDeploymentStrategyRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func deleteDeploymentStrategyAsync(
            input: AppConfigModel.DeleteDeploymentStrategyRequest, 
            completion: @escaping (AppConfigError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.deleteDeploymentStrategy.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteDeploymentStrategy,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteDeploymentStrategyOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithoutOutput(
            endpointPath: "/deployementstrategies/{DeploymentStrategyId}",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteDeploymentStrategy operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteDeploymentStrategyRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func deleteDeploymentStrategySync(
            input: AppConfigModel.DeleteDeploymentStrategyRequest) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.deleteDeploymentStrategy.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteDeploymentStrategy,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteDeploymentStrategyOperationHTTPRequestInput(encodable: input)

        do {
            try httpClient.executeSyncRetriableWithoutOutput(
                endpointPath: "/deployementstrategies/{DeploymentStrategyId}",
                httpMethod: .DELETE,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteEnvironment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteEnvironmentRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: badRequest, conflict, internalServer, resourceNotFound.
     */
    public func deleteEnvironmentAsync(
            input: AppConfigModel.DeleteEnvironmentRequest, 
            completion: @escaping (AppConfigError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.deleteEnvironment.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteEnvironment,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteEnvironmentOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithoutOutput(
            endpointPath: "/applications/{ApplicationId}/environments/{EnvironmentId}",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteEnvironment operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteEnvironmentRequest object being passed to this operation.
     - Throws: badRequest, conflict, internalServer, resourceNotFound.
     */
    public func deleteEnvironmentSync(
            input: AppConfigModel.DeleteEnvironmentRequest) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.deleteEnvironment.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteEnvironment,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteEnvironmentOperationHTTPRequestInput(encodable: input)

        do {
            try httpClient.executeSyncRetriableWithoutOutput(
                endpointPath: "/applications/{ApplicationId}/environments/{EnvironmentId}",
                httpMethod: .DELETE,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteExtension operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteExtensionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func deleteExtensionAsync(
            input: AppConfigModel.DeleteExtensionRequest, 
            completion: @escaping (AppConfigError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.deleteExtension.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteExtension,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteExtensionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithoutOutput(
            endpointPath: "/extensions/{ExtensionIdentifier}",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteExtension operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteExtensionRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func deleteExtensionSync(
            input: AppConfigModel.DeleteExtensionRequest) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.deleteExtension.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteExtension,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteExtensionOperationHTTPRequestInput(encodable: input)

        do {
            try httpClient.executeSyncRetriableWithoutOutput(
                endpointPath: "/extensions/{ExtensionIdentifier}",
                httpMethod: .DELETE,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteExtensionAssociation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteExtensionAssociationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func deleteExtensionAssociationAsync(
            input: AppConfigModel.DeleteExtensionAssociationRequest, 
            completion: @escaping (AppConfigError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.deleteExtensionAssociation.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteExtensionAssociation,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteExtensionAssociationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithoutOutput(
            endpointPath: "/extensionassociations/{ExtensionAssociationId}",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteExtensionAssociation operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteExtensionAssociationRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func deleteExtensionAssociationSync(
            input: AppConfigModel.DeleteExtensionAssociationRequest) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.deleteExtensionAssociation.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteExtensionAssociation,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteExtensionAssociationOperationHTTPRequestInput(encodable: input)

        do {
            try httpClient.executeSyncRetriableWithoutOutput(
                endpointPath: "/extensionassociations/{ExtensionAssociationId}",
                httpMethod: .DELETE,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteHostedConfigurationVersion operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteHostedConfigurationVersionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func deleteHostedConfigurationVersionAsync(
            input: AppConfigModel.DeleteHostedConfigurationVersionRequest, 
            completion: @escaping (AppConfigError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.deleteHostedConfigurationVersion.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteHostedConfigurationVersion,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteHostedConfigurationVersionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithoutOutput(
            endpointPath: "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/hostedconfigurationversions/{VersionNumber}",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteHostedConfigurationVersion operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteHostedConfigurationVersionRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func deleteHostedConfigurationVersionSync(
            input: AppConfigModel.DeleteHostedConfigurationVersionRequest) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.deleteHostedConfigurationVersion.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteHostedConfigurationVersion,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteHostedConfigurationVersionOperationHTTPRequestInput(encodable: input)

        do {
            try httpClient.executeSyncRetriableWithoutOutput(
                endpointPath: "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/hostedconfigurationversions/{VersionNumber}",
                httpMethod: .DELETE,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetApplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetApplicationRequest object being passed to this operation.
         - completion: The Application object or an error will be passed to this 
           callback when the operation is complete. The Application
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func getApplicationAsync(
            input: AppConfigModel.GetApplicationRequest, 
            completion: @escaping (Result<AppConfigModel.Application, AppConfigError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.getApplication.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getApplication,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetApplicationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/applications/{ApplicationId}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetApplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetApplicationRequest object being passed to this operation.
     - Returns: The Application object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func getApplicationSync(
            input: AppConfigModel.GetApplicationRequest) throws -> AppConfigModel.Application {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.getApplication.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getApplication,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetApplicationOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/applications/{ApplicationId}",
                httpMethod: .GET,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetConfigurationRequest object being passed to this operation.
         - completion: The Configuration object or an error will be passed to this 
           callback when the operation is complete. The Configuration
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func getConfigurationAsync(
            input: AppConfigModel.GetConfigurationRequest, 
            completion: @escaping (Result<AppConfigModel.Configuration, AppConfigError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.getConfiguration.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getConfiguration,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try dataHttpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/applications/{Application}/environments/{Environment}/configurations/{Configuration}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetConfigurationRequest object being passed to this operation.
     - Returns: The Configuration object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func getConfigurationSync(
            input: AppConfigModel.GetConfigurationRequest) throws -> AppConfigModel.Configuration {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.getConfiguration.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getConfiguration,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetConfigurationOperationHTTPRequestInput(encodable: input)

        do {
            return try dataHttpClient.executeSyncRetriableWithOutput(
                endpointPath: "/applications/{Application}/environments/{Environment}/configurations/{Configuration}",
                httpMethod: .GET,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetConfigurationProfile operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetConfigurationProfileRequest object being passed to this operation.
         - completion: The ConfigurationProfile object or an error will be passed to this 
           callback when the operation is complete. The ConfigurationProfile
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func getConfigurationProfileAsync(
            input: AppConfigModel.GetConfigurationProfileRequest, 
            completion: @escaping (Result<AppConfigModel.ConfigurationProfile, AppConfigError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.getConfigurationProfile.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getConfigurationProfile,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetConfigurationProfileOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetConfigurationProfile operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetConfigurationProfileRequest object being passed to this operation.
     - Returns: The ConfigurationProfile object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func getConfigurationProfileSync(
            input: AppConfigModel.GetConfigurationProfileRequest) throws -> AppConfigModel.ConfigurationProfile {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.getConfigurationProfile.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getConfigurationProfile,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetConfigurationProfileOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}",
                httpMethod: .GET,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetDeployment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetDeploymentRequest object being passed to this operation.
         - completion: The Deployment object or an error will be passed to this 
           callback when the operation is complete. The Deployment
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func getDeploymentAsync(
            input: AppConfigModel.GetDeploymentRequest, 
            completion: @escaping (Result<AppConfigModel.Deployment, AppConfigError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.getDeployment.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getDeployment,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetDeploymentOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments/{DeploymentNumber}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetDeployment operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetDeploymentRequest object being passed to this operation.
     - Returns: The Deployment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func getDeploymentSync(
            input: AppConfigModel.GetDeploymentRequest) throws -> AppConfigModel.Deployment {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.getDeployment.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getDeployment,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetDeploymentOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments/{DeploymentNumber}",
                httpMethod: .GET,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetDeploymentStrategy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetDeploymentStrategyRequest object being passed to this operation.
         - completion: The DeploymentStrategy object or an error will be passed to this 
           callback when the operation is complete. The DeploymentStrategy
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func getDeploymentStrategyAsync(
            input: AppConfigModel.GetDeploymentStrategyRequest, 
            completion: @escaping (Result<AppConfigModel.DeploymentStrategy, AppConfigError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.getDeploymentStrategy.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getDeploymentStrategy,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetDeploymentStrategyOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/deploymentstrategies/{DeploymentStrategyId}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetDeploymentStrategy operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetDeploymentStrategyRequest object being passed to this operation.
     - Returns: The DeploymentStrategy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func getDeploymentStrategySync(
            input: AppConfigModel.GetDeploymentStrategyRequest) throws -> AppConfigModel.DeploymentStrategy {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.getDeploymentStrategy.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getDeploymentStrategy,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetDeploymentStrategyOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/deploymentstrategies/{DeploymentStrategyId}",
                httpMethod: .GET,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetEnvironment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetEnvironmentRequest object being passed to this operation.
         - completion: The Environment object or an error will be passed to this 
           callback when the operation is complete. The Environment
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func getEnvironmentAsync(
            input: AppConfigModel.GetEnvironmentRequest, 
            completion: @escaping (Result<AppConfigModel.Environment, AppConfigError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.getEnvironment.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getEnvironment,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetEnvironmentOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/applications/{ApplicationId}/environments/{EnvironmentId}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetEnvironment operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetEnvironmentRequest object being passed to this operation.
     - Returns: The Environment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func getEnvironmentSync(
            input: AppConfigModel.GetEnvironmentRequest) throws -> AppConfigModel.Environment {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.getEnvironment.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getEnvironment,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetEnvironmentOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/applications/{ApplicationId}/environments/{EnvironmentId}",
                httpMethod: .GET,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetExtension operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetExtensionRequest object being passed to this operation.
         - completion: The Extension object or an error will be passed to this 
           callback when the operation is complete. The Extension
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func getExtensionAsync(
            input: AppConfigModel.GetExtensionRequest, 
            completion: @escaping (Result<AppConfigModel.Extension, AppConfigError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.getExtension.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getExtension,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetExtensionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/extensions/{ExtensionIdentifier}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetExtension operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetExtensionRequest object being passed to this operation.
     - Returns: The Extension object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func getExtensionSync(
            input: AppConfigModel.GetExtensionRequest) throws -> AppConfigModel.Extension {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.getExtension.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getExtension,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetExtensionOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/extensions/{ExtensionIdentifier}",
                httpMethod: .GET,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetExtensionAssociation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetExtensionAssociationRequest object being passed to this operation.
         - completion: The ExtensionAssociation object or an error will be passed to this 
           callback when the operation is complete. The ExtensionAssociation
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func getExtensionAssociationAsync(
            input: AppConfigModel.GetExtensionAssociationRequest, 
            completion: @escaping (Result<AppConfigModel.ExtensionAssociation, AppConfigError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.getExtensionAssociation.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getExtensionAssociation,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetExtensionAssociationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/extensionassociations/{ExtensionAssociationId}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetExtensionAssociation operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetExtensionAssociationRequest object being passed to this operation.
     - Returns: The ExtensionAssociation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func getExtensionAssociationSync(
            input: AppConfigModel.GetExtensionAssociationRequest) throws -> AppConfigModel.ExtensionAssociation {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.getExtensionAssociation.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getExtensionAssociation,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetExtensionAssociationOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/extensionassociations/{ExtensionAssociationId}",
                httpMethod: .GET,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetHostedConfigurationVersion operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetHostedConfigurationVersionRequest object being passed to this operation.
         - completion: The HostedConfigurationVersion object or an error will be passed to this 
           callback when the operation is complete. The HostedConfigurationVersion
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func getHostedConfigurationVersionAsync(
            input: AppConfigModel.GetHostedConfigurationVersionRequest, 
            completion: @escaping (Result<AppConfigModel.HostedConfigurationVersion, AppConfigError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.getHostedConfigurationVersion.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getHostedConfigurationVersion,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetHostedConfigurationVersionOperationHTTPRequestInput(encodable: input)

        _ = try dataHttpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/hostedconfigurationversions/{VersionNumber}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetHostedConfigurationVersion operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetHostedConfigurationVersionRequest object being passed to this operation.
     - Returns: The HostedConfigurationVersion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func getHostedConfigurationVersionSync(
            input: AppConfigModel.GetHostedConfigurationVersionRequest) throws -> AppConfigModel.HostedConfigurationVersion {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.getHostedConfigurationVersion.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getHostedConfigurationVersion,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetHostedConfigurationVersionOperationHTTPRequestInput(encodable: input)

        do {
            return try dataHttpClient.executeSyncRetriableWithOutput(
                endpointPath: "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/hostedconfigurationversions/{VersionNumber}",
                httpMethod: .GET,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListApplications operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListApplicationsRequest object being passed to this operation.
         - completion: The Applications object or an error will be passed to this 
           callback when the operation is complete. The Applications
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer.
     */
    public func listApplicationsAsync(
            input: AppConfigModel.ListApplicationsRequest, 
            completion: @escaping (Result<AppConfigModel.Applications, AppConfigError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.listApplications.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listApplications,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListApplicationsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/applications",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListApplications operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListApplicationsRequest object being passed to this operation.
     - Returns: The Applications object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer.
     */
    public func listApplicationsSync(
            input: AppConfigModel.ListApplicationsRequest) throws -> AppConfigModel.Applications {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.listApplications.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listApplications,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListApplicationsOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/applications",
                httpMethod: .GET,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListConfigurationProfiles operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListConfigurationProfilesRequest object being passed to this operation.
         - completion: The ConfigurationProfiles object or an error will be passed to this 
           callback when the operation is complete. The ConfigurationProfiles
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func listConfigurationProfilesAsync(
            input: AppConfigModel.ListConfigurationProfilesRequest, 
            completion: @escaping (Result<AppConfigModel.ConfigurationProfiles, AppConfigError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.listConfigurationProfiles.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listConfigurationProfiles,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListConfigurationProfilesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/applications/{ApplicationId}/configurationprofiles",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListConfigurationProfiles operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListConfigurationProfilesRequest object being passed to this operation.
     - Returns: The ConfigurationProfiles object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func listConfigurationProfilesSync(
            input: AppConfigModel.ListConfigurationProfilesRequest) throws -> AppConfigModel.ConfigurationProfiles {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.listConfigurationProfiles.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listConfigurationProfiles,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListConfigurationProfilesOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/applications/{ApplicationId}/configurationprofiles",
                httpMethod: .GET,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListDeploymentStrategies operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListDeploymentStrategiesRequest object being passed to this operation.
         - completion: The DeploymentStrategies object or an error will be passed to this 
           callback when the operation is complete. The DeploymentStrategies
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer.
     */
    public func listDeploymentStrategiesAsync(
            input: AppConfigModel.ListDeploymentStrategiesRequest, 
            completion: @escaping (Result<AppConfigModel.DeploymentStrategies, AppConfigError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.listDeploymentStrategies.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listDeploymentStrategies,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListDeploymentStrategiesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/deploymentstrategies",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListDeploymentStrategies operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListDeploymentStrategiesRequest object being passed to this operation.
     - Returns: The DeploymentStrategies object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer.
     */
    public func listDeploymentStrategiesSync(
            input: AppConfigModel.ListDeploymentStrategiesRequest) throws -> AppConfigModel.DeploymentStrategies {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.listDeploymentStrategies.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listDeploymentStrategies,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListDeploymentStrategiesOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/deploymentstrategies",
                httpMethod: .GET,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListDeployments operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListDeploymentsRequest object being passed to this operation.
         - completion: The Deployments object or an error will be passed to this 
           callback when the operation is complete. The Deployments
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func listDeploymentsAsync(
            input: AppConfigModel.ListDeploymentsRequest, 
            completion: @escaping (Result<AppConfigModel.Deployments, AppConfigError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.listDeployments.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listDeployments,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListDeploymentsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListDeployments operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListDeploymentsRequest object being passed to this operation.
     - Returns: The Deployments object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func listDeploymentsSync(
            input: AppConfigModel.ListDeploymentsRequest) throws -> AppConfigModel.Deployments {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.listDeployments.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listDeployments,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListDeploymentsOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments",
                httpMethod: .GET,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListEnvironments operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListEnvironmentsRequest object being passed to this operation.
         - completion: The Environments object or an error will be passed to this 
           callback when the operation is complete. The Environments
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func listEnvironmentsAsync(
            input: AppConfigModel.ListEnvironmentsRequest, 
            completion: @escaping (Result<AppConfigModel.Environments, AppConfigError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.listEnvironments.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listEnvironments,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListEnvironmentsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/applications/{ApplicationId}/environments",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListEnvironments operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListEnvironmentsRequest object being passed to this operation.
     - Returns: The Environments object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func listEnvironmentsSync(
            input: AppConfigModel.ListEnvironmentsRequest) throws -> AppConfigModel.Environments {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.listEnvironments.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listEnvironments,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListEnvironmentsOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/applications/{ApplicationId}/environments",
                httpMethod: .GET,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListExtensionAssociations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListExtensionAssociationsRequest object being passed to this operation.
         - completion: The ExtensionAssociations object or an error will be passed to this 
           callback when the operation is complete. The ExtensionAssociations
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer.
     */
    public func listExtensionAssociationsAsync(
            input: AppConfigModel.ListExtensionAssociationsRequest, 
            completion: @escaping (Result<AppConfigModel.ExtensionAssociations, AppConfigError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.listExtensionAssociations.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listExtensionAssociations,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListExtensionAssociationsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/extensionassociations",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListExtensionAssociations operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListExtensionAssociationsRequest object being passed to this operation.
     - Returns: The ExtensionAssociations object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer.
     */
    public func listExtensionAssociationsSync(
            input: AppConfigModel.ListExtensionAssociationsRequest) throws -> AppConfigModel.ExtensionAssociations {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.listExtensionAssociations.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listExtensionAssociations,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListExtensionAssociationsOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/extensionassociations",
                httpMethod: .GET,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListExtensions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListExtensionsRequest object being passed to this operation.
         - completion: The Extensions object or an error will be passed to this 
           callback when the operation is complete. The Extensions
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer.
     */
    public func listExtensionsAsync(
            input: AppConfigModel.ListExtensionsRequest, 
            completion: @escaping (Result<AppConfigModel.Extensions, AppConfigError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.listExtensions.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listExtensions,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListExtensionsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/extensions",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListExtensions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListExtensionsRequest object being passed to this operation.
     - Returns: The Extensions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer.
     */
    public func listExtensionsSync(
            input: AppConfigModel.ListExtensionsRequest) throws -> AppConfigModel.Extensions {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.listExtensions.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listExtensions,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListExtensionsOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/extensions",
                httpMethod: .GET,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListHostedConfigurationVersions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListHostedConfigurationVersionsRequest object being passed to this operation.
         - completion: The HostedConfigurationVersions object or an error will be passed to this 
           callback when the operation is complete. The HostedConfigurationVersions
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func listHostedConfigurationVersionsAsync(
            input: AppConfigModel.ListHostedConfigurationVersionsRequest, 
            completion: @escaping (Result<AppConfigModel.HostedConfigurationVersions, AppConfigError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.listHostedConfigurationVersions.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listHostedConfigurationVersions,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListHostedConfigurationVersionsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/hostedconfigurationversions",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListHostedConfigurationVersions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListHostedConfigurationVersionsRequest object being passed to this operation.
     - Returns: The HostedConfigurationVersions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func listHostedConfigurationVersionsSync(
            input: AppConfigModel.ListHostedConfigurationVersionsRequest) throws -> AppConfigModel.HostedConfigurationVersions {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.listHostedConfigurationVersions.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listHostedConfigurationVersions,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListHostedConfigurationVersionsOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/hostedconfigurationversions",
                httpMethod: .GET,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
         - completion: The ResourceTags object or an error will be passed to this 
           callback when the operation is complete. The ResourceTags
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func listTagsForResourceAsync(
            input: AppConfigModel.ListTagsForResourceRequest, 
            completion: @escaping (Result<AppConfigModel.ResourceTags, AppConfigError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.listTagsForResource.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listTagsForResource,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListTagsForResourceOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/tags/{ResourceArn}",
            httpMethod: .GET,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
     - Returns: The ResourceTags object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func listTagsForResourceSync(
            input: AppConfigModel.ListTagsForResourceRequest) throws -> AppConfigModel.ResourceTags {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.listTagsForResource.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listTagsForResource,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListTagsForResourceOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/tags/{ResourceArn}",
                httpMethod: .GET,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the StartDeployment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartDeploymentRequest object being passed to this operation.
         - completion: The Deployment object or an error will be passed to this 
           callback when the operation is complete. The Deployment
           object will be validated before being returned to caller.
           The possible errors are: badRequest, conflict, internalServer, resourceNotFound.
     */
    public func startDeploymentAsync(
            input: AppConfigModel.StartDeploymentRequest, 
            completion: @escaping (Result<AppConfigModel.Deployment, AppConfigError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.startDeployment.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.startDeployment,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = StartDeploymentOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the StartDeployment operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartDeploymentRequest object being passed to this operation.
     - Returns: The Deployment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, conflict, internalServer, resourceNotFound.
     */
    public func startDeploymentSync(
            input: AppConfigModel.StartDeploymentRequest) throws -> AppConfigModel.Deployment {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.startDeployment.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.startDeployment,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = StartDeploymentOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the StopDeployment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopDeploymentRequest object being passed to this operation.
         - completion: The Deployment object or an error will be passed to this 
           callback when the operation is complete. The Deployment
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func stopDeploymentAsync(
            input: AppConfigModel.StopDeploymentRequest, 
            completion: @escaping (Result<AppConfigModel.Deployment, AppConfigError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.stopDeployment.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.stopDeployment,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = StopDeploymentOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments/{DeploymentNumber}",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the StopDeployment operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopDeploymentRequest object being passed to this operation.
     - Returns: The Deployment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func stopDeploymentSync(
            input: AppConfigModel.StopDeploymentRequest) throws -> AppConfigModel.Deployment {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.stopDeployment.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.stopDeployment,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = StopDeploymentOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments/{DeploymentNumber}",
                httpMethod: .DELETE,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the TagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func tagResourceAsync(
            input: AppConfigModel.TagResourceRequest, 
            completion: @escaping (AppConfigError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.tagResource.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.tagResource,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = TagResourceOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithoutOutput(
            endpointPath: "/tags/{ResourceArn}",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func tagResourceSync(
            input: AppConfigModel.TagResourceRequest) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.tagResource.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.tagResource,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = TagResourceOperationHTTPRequestInput(encodable: input)

        do {
            try httpClient.executeSyncRetriableWithoutOutput(
                endpointPath: "/tags/{ResourceArn}",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UntagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func untagResourceAsync(
            input: AppConfigModel.UntagResourceRequest, 
            completion: @escaping (AppConfigError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.untagResource.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.untagResource,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UntagResourceOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithoutOutput(
            endpointPath: "/tags/{ResourceArn}",
            httpMethod: .DELETE,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func untagResourceSync(
            input: AppConfigModel.UntagResourceRequest) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.untagResource.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.untagResource,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UntagResourceOperationHTTPRequestInput(encodable: input)

        do {
            try httpClient.executeSyncRetriableWithoutOutput(
                endpointPath: "/tags/{ResourceArn}",
                httpMethod: .DELETE,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UpdateApplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateApplicationRequest object being passed to this operation.
         - completion: The Application object or an error will be passed to this 
           callback when the operation is complete. The Application
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func updateApplicationAsync(
            input: AppConfigModel.UpdateApplicationRequest, 
            completion: @escaping (Result<AppConfigModel.Application, AppConfigError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.updateApplication.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateApplication,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateApplicationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/applications/{ApplicationId}",
            httpMethod: .PATCH,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateApplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateApplicationRequest object being passed to this operation.
     - Returns: The Application object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func updateApplicationSync(
            input: AppConfigModel.UpdateApplicationRequest) throws -> AppConfigModel.Application {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.updateApplication.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateApplication,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateApplicationOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/applications/{ApplicationId}",
                httpMethod: .PATCH,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UpdateConfigurationProfile operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateConfigurationProfileRequest object being passed to this operation.
         - completion: The ConfigurationProfile object or an error will be passed to this 
           callback when the operation is complete. The ConfigurationProfile
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func updateConfigurationProfileAsync(
            input: AppConfigModel.UpdateConfigurationProfileRequest, 
            completion: @escaping (Result<AppConfigModel.ConfigurationProfile, AppConfigError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.updateConfigurationProfile.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateConfigurationProfile,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateConfigurationProfileOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}",
            httpMethod: .PATCH,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateConfigurationProfile operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateConfigurationProfileRequest object being passed to this operation.
     - Returns: The ConfigurationProfile object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func updateConfigurationProfileSync(
            input: AppConfigModel.UpdateConfigurationProfileRequest) throws -> AppConfigModel.ConfigurationProfile {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.updateConfigurationProfile.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateConfigurationProfile,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateConfigurationProfileOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}",
                httpMethod: .PATCH,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UpdateDeploymentStrategy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateDeploymentStrategyRequest object being passed to this operation.
         - completion: The DeploymentStrategy object or an error will be passed to this 
           callback when the operation is complete. The DeploymentStrategy
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func updateDeploymentStrategyAsync(
            input: AppConfigModel.UpdateDeploymentStrategyRequest, 
            completion: @escaping (Result<AppConfigModel.DeploymentStrategy, AppConfigError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.updateDeploymentStrategy.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateDeploymentStrategy,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateDeploymentStrategyOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/deploymentstrategies/{DeploymentStrategyId}",
            httpMethod: .PATCH,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateDeploymentStrategy operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateDeploymentStrategyRequest object being passed to this operation.
     - Returns: The DeploymentStrategy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func updateDeploymentStrategySync(
            input: AppConfigModel.UpdateDeploymentStrategyRequest) throws -> AppConfigModel.DeploymentStrategy {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.updateDeploymentStrategy.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateDeploymentStrategy,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateDeploymentStrategyOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/deploymentstrategies/{DeploymentStrategyId}",
                httpMethod: .PATCH,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UpdateEnvironment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateEnvironmentRequest object being passed to this operation.
         - completion: The Environment object or an error will be passed to this 
           callback when the operation is complete. The Environment
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func updateEnvironmentAsync(
            input: AppConfigModel.UpdateEnvironmentRequest, 
            completion: @escaping (Result<AppConfigModel.Environment, AppConfigError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.updateEnvironment.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateEnvironment,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateEnvironmentOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/applications/{ApplicationId}/environments/{EnvironmentId}",
            httpMethod: .PATCH,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateEnvironment operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateEnvironmentRequest object being passed to this operation.
     - Returns: The Environment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func updateEnvironmentSync(
            input: AppConfigModel.UpdateEnvironmentRequest) throws -> AppConfigModel.Environment {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.updateEnvironment.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateEnvironment,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateEnvironmentOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/applications/{ApplicationId}/environments/{EnvironmentId}",
                httpMethod: .PATCH,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UpdateExtension operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateExtensionRequest object being passed to this operation.
         - completion: The Extension object or an error will be passed to this 
           callback when the operation is complete. The Extension
           object will be validated before being returned to caller.
           The possible errors are: badRequest, conflict, internalServer, resourceNotFound.
     */
    public func updateExtensionAsync(
            input: AppConfigModel.UpdateExtensionRequest, 
            completion: @escaping (Result<AppConfigModel.Extension, AppConfigError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.updateExtension.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateExtension,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateExtensionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/extensions/{ExtensionIdentifier}",
            httpMethod: .PATCH,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateExtension operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateExtensionRequest object being passed to this operation.
     - Returns: The Extension object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, conflict, internalServer, resourceNotFound.
     */
    public func updateExtensionSync(
            input: AppConfigModel.UpdateExtensionRequest) throws -> AppConfigModel.Extension {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.updateExtension.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateExtension,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateExtensionOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/extensions/{ExtensionIdentifier}",
                httpMethod: .PATCH,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UpdateExtensionAssociation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateExtensionAssociationRequest object being passed to this operation.
         - completion: The ExtensionAssociation object or an error will be passed to this 
           callback when the operation is complete. The ExtensionAssociation
           object will be validated before being returned to caller.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func updateExtensionAssociationAsync(
            input: AppConfigModel.UpdateExtensionAssociationRequest, 
            completion: @escaping (Result<AppConfigModel.ExtensionAssociation, AppConfigError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.updateExtensionAssociation.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateExtensionAssociation,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateExtensionAssociationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/extensionassociations/{ExtensionAssociationId}",
            httpMethod: .PATCH,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateExtensionAssociation operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateExtensionAssociationRequest object being passed to this operation.
     - Returns: The ExtensionAssociation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func updateExtensionAssociationSync(
            input: AppConfigModel.UpdateExtensionAssociationRequest) throws -> AppConfigModel.ExtensionAssociation {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.updateExtensionAssociation.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateExtensionAssociation,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateExtensionAssociationOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/extensionassociations/{ExtensionAssociationId}",
                httpMethod: .PATCH,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ValidateConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ValidateConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: badRequest, internalServer, resourceNotFound.
     */
    public func validateConfigurationAsync(
            input: AppConfigModel.ValidateConfigurationRequest, 
            completion: @escaping (AppConfigError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.validateConfiguration.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.validateConfiguration,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ValidateConfigurationOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithoutOutput(
            endpointPath: "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/validators",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ValidateConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated ValidateConfigurationRequest object being passed to this operation.
     - Throws: badRequest, internalServer, resourceNotFound.
     */
    public func validateConfigurationSync(
            input: AppConfigModel.ValidateConfigurationRequest) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: AppConfigModelOperations.validateConfiguration.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.validateConfiguration,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ValidateConfigurationOperationHTTPRequestInput(encodable: input)

        do {
            try httpClient.executeSyncRetriableWithoutOutput(
                endpointPath: "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/validators",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: AppConfigError = error.asTypedError()
            throw typedError
        }
    }
}
