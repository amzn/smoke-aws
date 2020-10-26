// Copyright 2018-2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment type_body_length
// -- Generated Code; do not edit --
//
// AWSElasticContainerClient.swift
// ElasticContainerClient
//

import Foundation
import ElasticContainerModel
import SmokeAWSCore
import SmokeHTTPClient
import SmokeAWSHttp
import NIO
import NIOHTTP1
import AsyncHTTPClient
import Logging

public enum ElasticContainerClientError: Swift.Error {
    case invalidEndpoint(String)
    case unsupportedPayload
    case unknownError(String?)
}

 extension ElasticContainerError: ConvertableError {
    public static func asUnrecognizedError(error: Swift.Error) -> ElasticContainerError {
        return error.asUnrecognizedElasticContainerError()
    }

    func isRetriable() -> Bool {
        switch self {
        case .attributeLimitExceeded:
            return true
        default:
            return false
        }
    }
}

private extension Swift.Error {
    func isRetriable() -> Bool {
        if let typedError = self as? ElasticContainerError {
            return typedError.isRetriable()
        } else {
            return true
        }
    }
}

/**
 AWS Client for the ElasticContainer service.
 */
public struct AWSElasticContainerClient<InvocationReportingType: HTTPClientCoreInvocationReporting>: ElasticContainerClientProtocol {
    let httpClient: HTTPOperationsClient
    let ownsHttpClients: Bool
    let awsRegion: AWSRegion
    let service: String
    let target: String?
    let retryConfiguration: HTTPClientRetryConfiguration
    let retryOnErrorProvider: (Swift.Error) -> Bool
    let credentialsProvider: CredentialsProvider
    
    public let reporting: InvocationReportingType

    let operationsReporting: ElasticContainerOperationsReporting
    let invocationsReporting: ElasticContainerInvocationsReporting<InvocationReportingType>
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                endpointHostName: String,
                endpointPort: Int = 443,
                requiresTLS: Bool? = nil,
                service: String = "ecs",
                contentType: String = "application/x-amz-json-1.1",
                target: String? = "AmazonEC2ContainerServiceV20141113",
                connectionTimeoutSeconds: Int64 = 10,
                retryConfiguration: HTTPClientRetryConfiguration = .default,
                eventLoopProvider: HTTPClient.EventLoopGroupProvider = .createNew,
                reportingConfiguration: SmokeAWSClientReportingConfiguration<ElasticContainerModelOperations>
                    = SmokeAWSClientReportingConfiguration<ElasticContainerModelOperations>() ) {
        let useTLS = requiresTLS ?? AWSHTTPClientDelegate.requiresTLS(forEndpointPort: endpointPort)
        let clientDelegate = JSONAWSHttpClientDelegate<ElasticContainerError>(requiresTLS: useTLS)

        self.httpClient = HTTPOperationsClient(
            endpointHostName: endpointHostName,
            endpointPort: endpointPort,
            contentType: contentType,
            clientDelegate: clientDelegate,
            connectionTimeoutSeconds: connectionTimeoutSeconds,
            eventLoopProvider: eventLoopProvider)
        self.ownsHttpClients = true
        self.awsRegion = awsRegion
        self.service = service
        self.target = target
        self.credentialsProvider = credentialsProvider
        self.retryConfiguration = retryConfiguration
        self.reporting = reporting
        self.retryOnErrorProvider = { error in error.isRetriable() }
        self.operationsReporting = ElasticContainerOperationsReporting(clientName: "AWSElasticContainerClient", reportingConfiguration: reportingConfiguration)
        self.invocationsReporting = ElasticContainerInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
    }
    
    internal init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                httpClient: HTTPOperationsClient,
                service: String,
                target: String?,
                retryOnErrorProvider: @escaping (Swift.Error) -> Bool,
                retryConfiguration: HTTPClientRetryConfiguration,
                operationsReporting: ElasticContainerOperationsReporting) {
        self.httpClient = httpClient
        self.ownsHttpClients = false
        self.awsRegion = awsRegion
        self.service = service
        self.target = target
        self.credentialsProvider = credentialsProvider
        self.retryConfiguration = retryConfiguration
        self.reporting = reporting
        self.retryOnErrorProvider = retryOnErrorProvider
        self.operationsReporting = operationsReporting
        self.invocationsReporting = ElasticContainerInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
    }

    /**
     Gracefully shuts down this client. This function is idempotent and
     will handle being called multiple times.
     */
    public func close() throws {
        if self.ownsHttpClients {
            try httpClient.close()
        }
    }

    /**
     Invokes the CreateCapacityProvider operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateCapacityProviderRequest object being passed to this operation.
         - completion: The CreateCapacityProviderResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateCapacityProviderResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, limitExceeded, server, updateInProgress.
     */
    public func createCapacityProviderAsync(
            input: ElasticContainerModel.CreateCapacityProviderRequest, 
            completion: @escaping (Result<ElasticContainerModel.CreateCapacityProviderResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.createCapacityProvider.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createCapacityProvider,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateCapacityProviderOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateCapacityProvider operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateCapacityProviderRequest object being passed to this operation.
     - Returns: The CreateCapacityProviderResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, limitExceeded, server, updateInProgress.
     */
    public func createCapacityProviderSync(
            input: ElasticContainerModel.CreateCapacityProviderRequest) throws -> ElasticContainerModel.CreateCapacityProviderResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.createCapacityProvider.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createCapacityProvider,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateCapacityProviderOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the CreateCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateClusterRequest object being passed to this operation.
         - completion: The CreateClusterResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateClusterResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func createClusterAsync(
            input: ElasticContainerModel.CreateClusterRequest, 
            completion: @escaping (Result<ElasticContainerModel.CreateClusterResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.createCluster.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createCluster,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateClusterOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateClusterRequest object being passed to this operation.
     - Returns: The CreateClusterResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func createClusterSync(
            input: ElasticContainerModel.CreateClusterRequest) throws -> ElasticContainerModel.CreateClusterResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.createCluster.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createCluster,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateClusterOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the CreateService operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateServiceRequest object being passed to this operation.
         - completion: The CreateServiceResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateServiceResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, unsupportedFeature.
     */
    public func createServiceAsync(
            input: ElasticContainerModel.CreateServiceRequest, 
            completion: @escaping (Result<ElasticContainerModel.CreateServiceResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.createService.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createService,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateServiceOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateService operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateServiceRequest object being passed to this operation.
     - Returns: The CreateServiceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, unsupportedFeature.
     */
    public func createServiceSync(
            input: ElasticContainerModel.CreateServiceRequest) throws -> ElasticContainerModel.CreateServiceResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.createService.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createService,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateServiceOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the CreateTaskSet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateTaskSetRequest object being passed to this operation.
         - completion: The CreateTaskSetResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateTaskSetResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, serviceNotActive, serviceNotFound, unsupportedFeature.
     */
    public func createTaskSetAsync(
            input: ElasticContainerModel.CreateTaskSetRequest, 
            completion: @escaping (Result<ElasticContainerModel.CreateTaskSetResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.createTaskSet.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createTaskSet,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateTaskSetOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateTaskSet operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateTaskSetRequest object being passed to this operation.
     - Returns: The CreateTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, serviceNotActive, serviceNotFound, unsupportedFeature.
     */
    public func createTaskSetSync(
            input: ElasticContainerModel.CreateTaskSetRequest) throws -> ElasticContainerModel.CreateTaskSetResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.createTaskSet.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createTaskSet,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateTaskSetOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteAccountSetting operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteAccountSettingRequest object being passed to this operation.
         - completion: The DeleteAccountSettingResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteAccountSettingResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func deleteAccountSettingAsync(
            input: ElasticContainerModel.DeleteAccountSettingRequest, 
            completion: @escaping (Result<ElasticContainerModel.DeleteAccountSettingResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.deleteAccountSetting.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteAccountSetting,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteAccountSettingOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteAccountSetting operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteAccountSettingRequest object being passed to this operation.
     - Returns: The DeleteAccountSettingResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func deleteAccountSettingSync(
            input: ElasticContainerModel.DeleteAccountSettingRequest) throws -> ElasticContainerModel.DeleteAccountSettingResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.deleteAccountSetting.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteAccountSetting,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteAccountSettingOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteAttributesRequest object being passed to this operation.
         - completion: The DeleteAttributesResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteAttributesResponse
           object will be validated before being returned to caller.
           The possible errors are: clusterNotFound, invalidParameter, targetNotFound.
     */
    public func deleteAttributesAsync(
            input: ElasticContainerModel.DeleteAttributesRequest, 
            completion: @escaping (Result<ElasticContainerModel.DeleteAttributesResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.deleteAttributes.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteAttributes,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteAttributesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteAttributesRequest object being passed to this operation.
     - Returns: The DeleteAttributesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: clusterNotFound, invalidParameter, targetNotFound.
     */
    public func deleteAttributesSync(
            input: ElasticContainerModel.DeleteAttributesRequest) throws -> ElasticContainerModel.DeleteAttributesResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.deleteAttributes.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteAttributes,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteAttributesOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteCapacityProvider operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteCapacityProviderRequest object being passed to this operation.
         - completion: The DeleteCapacityProviderResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteCapacityProviderResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func deleteCapacityProviderAsync(
            input: ElasticContainerModel.DeleteCapacityProviderRequest, 
            completion: @escaping (Result<ElasticContainerModel.DeleteCapacityProviderResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.deleteCapacityProvider.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteCapacityProvider,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteCapacityProviderOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteCapacityProvider operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteCapacityProviderRequest object being passed to this operation.
     - Returns: The DeleteCapacityProviderResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func deleteCapacityProviderSync(
            input: ElasticContainerModel.DeleteCapacityProviderRequest) throws -> ElasticContainerModel.DeleteCapacityProviderResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.deleteCapacityProvider.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteCapacityProvider,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteCapacityProviderOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteCluster operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteClusterRequest object being passed to this operation.
         - completion: The DeleteClusterResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteClusterResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterContainsContainerInstances, clusterContainsServices, clusterContainsTasks, clusterNotFound, invalidParameter, server, updateInProgress.
     */
    public func deleteClusterAsync(
            input: ElasticContainerModel.DeleteClusterRequest, 
            completion: @escaping (Result<ElasticContainerModel.DeleteClusterResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.deleteCluster.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteCluster,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteClusterOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteCluster operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteClusterRequest object being passed to this operation.
     - Returns: The DeleteClusterResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterContainsContainerInstances, clusterContainsServices, clusterContainsTasks, clusterNotFound, invalidParameter, server, updateInProgress.
     */
    public func deleteClusterSync(
            input: ElasticContainerModel.DeleteClusterRequest) throws -> ElasticContainerModel.DeleteClusterResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.deleteCluster.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteCluster,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteClusterOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteService operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteServiceRequest object being passed to this operation.
         - completion: The DeleteServiceResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteServiceResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server, serviceNotFound.
     */
    public func deleteServiceAsync(
            input: ElasticContainerModel.DeleteServiceRequest, 
            completion: @escaping (Result<ElasticContainerModel.DeleteServiceResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.deleteService.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteService,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteServiceOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteService operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteServiceRequest object being passed to this operation.
     - Returns: The DeleteServiceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server, serviceNotFound.
     */
    public func deleteServiceSync(
            input: ElasticContainerModel.DeleteServiceRequest) throws -> ElasticContainerModel.DeleteServiceResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.deleteService.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteService,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteServiceOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteTaskSet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteTaskSetRequest object being passed to this operation.
         - completion: The DeleteTaskSetResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteTaskSetResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    public func deleteTaskSetAsync(
            input: ElasticContainerModel.DeleteTaskSetRequest, 
            completion: @escaping (Result<ElasticContainerModel.DeleteTaskSetResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.deleteTaskSet.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteTaskSet,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteTaskSetOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteTaskSet operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteTaskSetRequest object being passed to this operation.
     - Returns: The DeleteTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    public func deleteTaskSetSync(
            input: ElasticContainerModel.DeleteTaskSetRequest) throws -> ElasticContainerModel.DeleteTaskSetResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.deleteTaskSet.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteTaskSet,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteTaskSetOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeregisterContainerInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeregisterContainerInstanceRequest object being passed to this operation.
         - completion: The DeregisterContainerInstanceResponse object or an error will be passed to this 
           callback when the operation is complete. The DeregisterContainerInstanceResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    public func deregisterContainerInstanceAsync(
            input: ElasticContainerModel.DeregisterContainerInstanceRequest, 
            completion: @escaping (Result<ElasticContainerModel.DeregisterContainerInstanceResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.deregisterContainerInstance.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deregisterContainerInstance,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeregisterContainerInstanceOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeregisterContainerInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeregisterContainerInstanceRequest object being passed to this operation.
     - Returns: The DeregisterContainerInstanceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func deregisterContainerInstanceSync(
            input: ElasticContainerModel.DeregisterContainerInstanceRequest) throws -> ElasticContainerModel.DeregisterContainerInstanceResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.deregisterContainerInstance.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deregisterContainerInstance,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeregisterContainerInstanceOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeregisterTaskDefinition operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeregisterTaskDefinitionRequest object being passed to this operation.
         - completion: The DeregisterTaskDefinitionResponse object or an error will be passed to this 
           callback when the operation is complete. The DeregisterTaskDefinitionResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func deregisterTaskDefinitionAsync(
            input: ElasticContainerModel.DeregisterTaskDefinitionRequest, 
            completion: @escaping (Result<ElasticContainerModel.DeregisterTaskDefinitionResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.deregisterTaskDefinition.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deregisterTaskDefinition,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeregisterTaskDefinitionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeregisterTaskDefinition operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeregisterTaskDefinitionRequest object being passed to this operation.
     - Returns: The DeregisterTaskDefinitionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func deregisterTaskDefinitionSync(
            input: ElasticContainerModel.DeregisterTaskDefinitionRequest) throws -> ElasticContainerModel.DeregisterTaskDefinitionResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.deregisterTaskDefinition.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deregisterTaskDefinition,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeregisterTaskDefinitionOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeCapacityProviders operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeCapacityProvidersRequest object being passed to this operation.
         - completion: The DescribeCapacityProvidersResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeCapacityProvidersResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func describeCapacityProvidersAsync(
            input: ElasticContainerModel.DescribeCapacityProvidersRequest, 
            completion: @escaping (Result<ElasticContainerModel.DescribeCapacityProvidersResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.describeCapacityProviders.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeCapacityProviders,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeCapacityProvidersOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeCapacityProviders operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeCapacityProvidersRequest object being passed to this operation.
     - Returns: The DescribeCapacityProvidersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func describeCapacityProvidersSync(
            input: ElasticContainerModel.DescribeCapacityProvidersRequest) throws -> ElasticContainerModel.DescribeCapacityProvidersResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.describeCapacityProviders.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeCapacityProviders,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeCapacityProvidersOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeClusters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeClustersRequest object being passed to this operation.
         - completion: The DescribeClustersResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeClustersResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func describeClustersAsync(
            input: ElasticContainerModel.DescribeClustersRequest, 
            completion: @escaping (Result<ElasticContainerModel.DescribeClustersResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.describeClusters.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeClusters,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeClustersOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeClusters operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeClustersRequest object being passed to this operation.
     - Returns: The DescribeClustersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func describeClustersSync(
            input: ElasticContainerModel.DescribeClustersRequest) throws -> ElasticContainerModel.DescribeClustersResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.describeClusters.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeClusters,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeClustersOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeContainerInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeContainerInstancesRequest object being passed to this operation.
         - completion: The DescribeContainerInstancesResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeContainerInstancesResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    public func describeContainerInstancesAsync(
            input: ElasticContainerModel.DescribeContainerInstancesRequest, 
            completion: @escaping (Result<ElasticContainerModel.DescribeContainerInstancesResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.describeContainerInstances.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeContainerInstances,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeContainerInstancesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeContainerInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeContainerInstancesRequest object being passed to this operation.
     - Returns: The DescribeContainerInstancesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func describeContainerInstancesSync(
            input: ElasticContainerModel.DescribeContainerInstancesRequest) throws -> ElasticContainerModel.DescribeContainerInstancesResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.describeContainerInstances.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeContainerInstances,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeContainerInstancesOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeServices operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeServicesRequest object being passed to this operation.
         - completion: The DescribeServicesResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeServicesResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    public func describeServicesAsync(
            input: ElasticContainerModel.DescribeServicesRequest, 
            completion: @escaping (Result<ElasticContainerModel.DescribeServicesResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.describeServices.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeServices,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeServicesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeServices operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeServicesRequest object being passed to this operation.
     - Returns: The DescribeServicesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func describeServicesSync(
            input: ElasticContainerModel.DescribeServicesRequest) throws -> ElasticContainerModel.DescribeServicesResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.describeServices.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeServices,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeServicesOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeTaskDefinition operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTaskDefinitionRequest object being passed to this operation.
         - completion: The DescribeTaskDefinitionResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeTaskDefinitionResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func describeTaskDefinitionAsync(
            input: ElasticContainerModel.DescribeTaskDefinitionRequest, 
            completion: @escaping (Result<ElasticContainerModel.DescribeTaskDefinitionResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.describeTaskDefinition.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeTaskDefinition,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeTaskDefinitionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeTaskDefinition operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTaskDefinitionRequest object being passed to this operation.
     - Returns: The DescribeTaskDefinitionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func describeTaskDefinitionSync(
            input: ElasticContainerModel.DescribeTaskDefinitionRequest) throws -> ElasticContainerModel.DescribeTaskDefinitionResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.describeTaskDefinition.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeTaskDefinition,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeTaskDefinitionOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeTaskSets operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTaskSetsRequest object being passed to this operation.
         - completion: The DescribeTaskSetsResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeTaskSetsResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, unsupportedFeature.
     */
    public func describeTaskSetsAsync(
            input: ElasticContainerModel.DescribeTaskSetsRequest, 
            completion: @escaping (Result<ElasticContainerModel.DescribeTaskSetsResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.describeTaskSets.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeTaskSets,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeTaskSetsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeTaskSets operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTaskSetsRequest object being passed to this operation.
     - Returns: The DescribeTaskSetsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, unsupportedFeature.
     */
    public func describeTaskSetsSync(
            input: ElasticContainerModel.DescribeTaskSetsRequest) throws -> ElasticContainerModel.DescribeTaskSetsResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.describeTaskSets.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeTaskSets,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeTaskSetsOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTasksRequest object being passed to this operation.
         - completion: The DescribeTasksResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeTasksResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    public func describeTasksAsync(
            input: ElasticContainerModel.DescribeTasksRequest, 
            completion: @escaping (Result<ElasticContainerModel.DescribeTasksResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.describeTasks.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeTasks,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeTasksOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DescribeTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTasksRequest object being passed to this operation.
     - Returns: The DescribeTasksResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func describeTasksSync(
            input: ElasticContainerModel.DescribeTasksRequest) throws -> ElasticContainerModel.DescribeTasksResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.describeTasks.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeTasks,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeTasksOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DiscoverPollEndpoint operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DiscoverPollEndpointRequest object being passed to this operation.
         - completion: The DiscoverPollEndpointResponse object or an error will be passed to this 
           callback when the operation is complete. The DiscoverPollEndpointResponse
           object will be validated before being returned to caller.
           The possible errors are: client, server.
     */
    public func discoverPollEndpointAsync(
            input: ElasticContainerModel.DiscoverPollEndpointRequest, 
            completion: @escaping (Result<ElasticContainerModel.DiscoverPollEndpointResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.discoverPollEndpoint.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.discoverPollEndpoint,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DiscoverPollEndpointOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DiscoverPollEndpoint operation waiting for the response before returning.

     - Parameters:
         - input: The validated DiscoverPollEndpointRequest object being passed to this operation.
     - Returns: The DiscoverPollEndpointResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, server.
     */
    public func discoverPollEndpointSync(
            input: ElasticContainerModel.DiscoverPollEndpointRequest) throws -> ElasticContainerModel.DiscoverPollEndpointResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.discoverPollEndpoint.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.discoverPollEndpoint,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DiscoverPollEndpointOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListAccountSettings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListAccountSettingsRequest object being passed to this operation.
         - completion: The ListAccountSettingsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListAccountSettingsResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func listAccountSettingsAsync(
            input: ElasticContainerModel.ListAccountSettingsRequest, 
            completion: @escaping (Result<ElasticContainerModel.ListAccountSettingsResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.listAccountSettings.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listAccountSettings,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListAccountSettingsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListAccountSettings operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListAccountSettingsRequest object being passed to this operation.
     - Returns: The ListAccountSettingsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func listAccountSettingsSync(
            input: ElasticContainerModel.ListAccountSettingsRequest) throws -> ElasticContainerModel.ListAccountSettingsResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.listAccountSettings.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listAccountSettings,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListAccountSettingsOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListAttributesRequest object being passed to this operation.
         - completion: The ListAttributesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListAttributesResponse
           object will be validated before being returned to caller.
           The possible errors are: clusterNotFound, invalidParameter.
     */
    public func listAttributesAsync(
            input: ElasticContainerModel.ListAttributesRequest, 
            completion: @escaping (Result<ElasticContainerModel.ListAttributesResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.listAttributes.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listAttributes,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListAttributesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListAttributesRequest object being passed to this operation.
     - Returns: The ListAttributesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: clusterNotFound, invalidParameter.
     */
    public func listAttributesSync(
            input: ElasticContainerModel.ListAttributesRequest) throws -> ElasticContainerModel.ListAttributesResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.listAttributes.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listAttributes,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListAttributesOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListClusters operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListClustersRequest object being passed to this operation.
         - completion: The ListClustersResponse object or an error will be passed to this 
           callback when the operation is complete. The ListClustersResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func listClustersAsync(
            input: ElasticContainerModel.ListClustersRequest, 
            completion: @escaping (Result<ElasticContainerModel.ListClustersResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.listClusters.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listClusters,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListClustersOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListClusters operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListClustersRequest object being passed to this operation.
     - Returns: The ListClustersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func listClustersSync(
            input: ElasticContainerModel.ListClustersRequest) throws -> ElasticContainerModel.ListClustersResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.listClusters.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listClusters,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListClustersOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListContainerInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListContainerInstancesRequest object being passed to this operation.
         - completion: The ListContainerInstancesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListContainerInstancesResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    public func listContainerInstancesAsync(
            input: ElasticContainerModel.ListContainerInstancesRequest, 
            completion: @escaping (Result<ElasticContainerModel.ListContainerInstancesResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.listContainerInstances.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listContainerInstances,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListContainerInstancesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListContainerInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListContainerInstancesRequest object being passed to this operation.
     - Returns: The ListContainerInstancesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func listContainerInstancesSync(
            input: ElasticContainerModel.ListContainerInstancesRequest) throws -> ElasticContainerModel.ListContainerInstancesResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.listContainerInstances.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listContainerInstances,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListContainerInstancesOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListServices operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListServicesRequest object being passed to this operation.
         - completion: The ListServicesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListServicesResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    public func listServicesAsync(
            input: ElasticContainerModel.ListServicesRequest, 
            completion: @escaping (Result<ElasticContainerModel.ListServicesResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.listServices.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listServices,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListServicesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListServices operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListServicesRequest object being passed to this operation.
     - Returns: The ListServicesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func listServicesSync(
            input: ElasticContainerModel.ListServicesRequest) throws -> ElasticContainerModel.ListServicesResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.listServices.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listServices,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListServicesOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
         - completion: The ListTagsForResourceResponse object or an error will be passed to this 
           callback when the operation is complete. The ListTagsForResourceResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    public func listTagsForResourceAsync(
            input: ElasticContainerModel.ListTagsForResourceRequest, 
            completion: @escaping (Result<ElasticContainerModel.ListTagsForResourceResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.listTagsForResource.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listTagsForResource,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListTagsForResourceOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
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
     - Returns: The ListTagsForResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func listTagsForResourceSync(
            input: ElasticContainerModel.ListTagsForResourceRequest) throws -> ElasticContainerModel.ListTagsForResourceResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.listTagsForResource.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listTagsForResource,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListTagsForResourceOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListTaskDefinitionFamilies operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTaskDefinitionFamiliesRequest object being passed to this operation.
         - completion: The ListTaskDefinitionFamiliesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListTaskDefinitionFamiliesResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func listTaskDefinitionFamiliesAsync(
            input: ElasticContainerModel.ListTaskDefinitionFamiliesRequest, 
            completion: @escaping (Result<ElasticContainerModel.ListTaskDefinitionFamiliesResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.listTaskDefinitionFamilies.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listTaskDefinitionFamilies,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListTaskDefinitionFamiliesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListTaskDefinitionFamilies operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTaskDefinitionFamiliesRequest object being passed to this operation.
     - Returns: The ListTaskDefinitionFamiliesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func listTaskDefinitionFamiliesSync(
            input: ElasticContainerModel.ListTaskDefinitionFamiliesRequest) throws -> ElasticContainerModel.ListTaskDefinitionFamiliesResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.listTaskDefinitionFamilies.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listTaskDefinitionFamilies,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListTaskDefinitionFamiliesOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListTaskDefinitions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTaskDefinitionsRequest object being passed to this operation.
         - completion: The ListTaskDefinitionsResponse object or an error will be passed to this 
           callback when the operation is complete. The ListTaskDefinitionsResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func listTaskDefinitionsAsync(
            input: ElasticContainerModel.ListTaskDefinitionsRequest, 
            completion: @escaping (Result<ElasticContainerModel.ListTaskDefinitionsResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.listTaskDefinitions.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listTaskDefinitions,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListTaskDefinitionsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListTaskDefinitions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTaskDefinitionsRequest object being passed to this operation.
     - Returns: The ListTaskDefinitionsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func listTaskDefinitionsSync(
            input: ElasticContainerModel.ListTaskDefinitionsRequest) throws -> ElasticContainerModel.ListTaskDefinitionsResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.listTaskDefinitions.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listTaskDefinitions,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListTaskDefinitionsOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTasksRequest object being passed to this operation.
         - completion: The ListTasksResponse object or an error will be passed to this 
           callback when the operation is complete. The ListTasksResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server, serviceNotFound.
     */
    public func listTasksAsync(
            input: ElasticContainerModel.ListTasksRequest, 
            completion: @escaping (Result<ElasticContainerModel.ListTasksResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.listTasks.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listTasks,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListTasksOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTasksRequest object being passed to this operation.
     - Returns: The ListTasksResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server, serviceNotFound.
     */
    public func listTasksSync(
            input: ElasticContainerModel.ListTasksRequest) throws -> ElasticContainerModel.ListTasksResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.listTasks.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listTasks,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListTasksOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the PutAccountSetting operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutAccountSettingRequest object being passed to this operation.
         - completion: The PutAccountSettingResponse object or an error will be passed to this 
           callback when the operation is complete. The PutAccountSettingResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func putAccountSettingAsync(
            input: ElasticContainerModel.PutAccountSettingRequest, 
            completion: @escaping (Result<ElasticContainerModel.PutAccountSettingResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.putAccountSetting.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putAccountSetting,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PutAccountSettingOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutAccountSetting operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutAccountSettingRequest object being passed to this operation.
     - Returns: The PutAccountSettingResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func putAccountSettingSync(
            input: ElasticContainerModel.PutAccountSettingRequest) throws -> ElasticContainerModel.PutAccountSettingResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.putAccountSetting.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putAccountSetting,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PutAccountSettingOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the PutAccountSettingDefault operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutAccountSettingDefaultRequest object being passed to this operation.
         - completion: The PutAccountSettingDefaultResponse object or an error will be passed to this 
           callback when the operation is complete. The PutAccountSettingDefaultResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func putAccountSettingDefaultAsync(
            input: ElasticContainerModel.PutAccountSettingDefaultRequest, 
            completion: @escaping (Result<ElasticContainerModel.PutAccountSettingDefaultResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.putAccountSettingDefault.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putAccountSettingDefault,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PutAccountSettingDefaultOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutAccountSettingDefault operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutAccountSettingDefaultRequest object being passed to this operation.
     - Returns: The PutAccountSettingDefaultResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func putAccountSettingDefaultSync(
            input: ElasticContainerModel.PutAccountSettingDefaultRequest) throws -> ElasticContainerModel.PutAccountSettingDefaultResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.putAccountSettingDefault.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putAccountSettingDefault,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PutAccountSettingDefaultOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the PutAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutAttributesRequest object being passed to this operation.
         - completion: The PutAttributesResponse object or an error will be passed to this 
           callback when the operation is complete. The PutAttributesResponse
           object will be validated before being returned to caller.
           The possible errors are: attributeLimitExceeded, clusterNotFound, invalidParameter, targetNotFound.
     */
    public func putAttributesAsync(
            input: ElasticContainerModel.PutAttributesRequest, 
            completion: @escaping (Result<ElasticContainerModel.PutAttributesResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.putAttributes.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putAttributes,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PutAttributesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutAttributesRequest object being passed to this operation.
     - Returns: The PutAttributesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: attributeLimitExceeded, clusterNotFound, invalidParameter, targetNotFound.
     */
    public func putAttributesSync(
            input: ElasticContainerModel.PutAttributesRequest) throws -> ElasticContainerModel.PutAttributesResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.putAttributes.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putAttributes,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PutAttributesOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the PutClusterCapacityProviders operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutClusterCapacityProvidersRequest object being passed to this operation.
         - completion: The PutClusterCapacityProvidersResponse object or an error will be passed to this 
           callback when the operation is complete. The PutClusterCapacityProvidersResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, resourceInUse, server, updateInProgress.
     */
    public func putClusterCapacityProvidersAsync(
            input: ElasticContainerModel.PutClusterCapacityProvidersRequest, 
            completion: @escaping (Result<ElasticContainerModel.PutClusterCapacityProvidersResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.putClusterCapacityProviders.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putClusterCapacityProviders,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PutClusterCapacityProvidersOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutClusterCapacityProviders operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutClusterCapacityProvidersRequest object being passed to this operation.
     - Returns: The PutClusterCapacityProvidersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, resourceInUse, server, updateInProgress.
     */
    public func putClusterCapacityProvidersSync(
            input: ElasticContainerModel.PutClusterCapacityProvidersRequest) throws -> ElasticContainerModel.PutClusterCapacityProvidersResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.putClusterCapacityProviders.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putClusterCapacityProviders,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PutClusterCapacityProvidersOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the RegisterContainerInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterContainerInstanceRequest object being passed to this operation.
         - completion: The RegisterContainerInstanceResponse object or an error will be passed to this 
           callback when the operation is complete. The RegisterContainerInstanceResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func registerContainerInstanceAsync(
            input: ElasticContainerModel.RegisterContainerInstanceRequest, 
            completion: @escaping (Result<ElasticContainerModel.RegisterContainerInstanceResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.registerContainerInstance.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.registerContainerInstance,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = RegisterContainerInstanceOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RegisterContainerInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterContainerInstanceRequest object being passed to this operation.
     - Returns: The RegisterContainerInstanceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func registerContainerInstanceSync(
            input: ElasticContainerModel.RegisterContainerInstanceRequest) throws -> ElasticContainerModel.RegisterContainerInstanceResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.registerContainerInstance.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.registerContainerInstance,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = RegisterContainerInstanceOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the RegisterTaskDefinition operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterTaskDefinitionRequest object being passed to this operation.
         - completion: The RegisterTaskDefinitionResponse object or an error will be passed to this 
           callback when the operation is complete. The RegisterTaskDefinitionResponse
           object will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func registerTaskDefinitionAsync(
            input: ElasticContainerModel.RegisterTaskDefinitionRequest, 
            completion: @escaping (Result<ElasticContainerModel.RegisterTaskDefinitionResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.registerTaskDefinition.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.registerTaskDefinition,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = RegisterTaskDefinitionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RegisterTaskDefinition operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterTaskDefinitionRequest object being passed to this operation.
     - Returns: The RegisterTaskDefinitionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, invalidParameter, server.
     */
    public func registerTaskDefinitionSync(
            input: ElasticContainerModel.RegisterTaskDefinitionRequest) throws -> ElasticContainerModel.RegisterTaskDefinitionResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.registerTaskDefinition.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.registerTaskDefinition,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = RegisterTaskDefinitionOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the RunTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RunTaskRequest object being passed to this operation.
         - completion: The RunTaskResponse object or an error will be passed to this 
           callback when the operation is complete. The RunTaskResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, blocked, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, unsupportedFeature.
     */
    public func runTaskAsync(
            input: ElasticContainerModel.RunTaskRequest, 
            completion: @escaping (Result<ElasticContainerModel.RunTaskResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.runTask.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.runTask,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = RunTaskOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the RunTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated RunTaskRequest object being passed to this operation.
     - Returns: The RunTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, blocked, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, unsupportedFeature.
     */
    public func runTaskSync(
            input: ElasticContainerModel.RunTaskRequest) throws -> ElasticContainerModel.RunTaskResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.runTask.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.runTask,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = RunTaskOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the StartTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartTaskRequest object being passed to this operation.
         - completion: The StartTaskResponse object or an error will be passed to this 
           callback when the operation is complete. The StartTaskResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    public func startTaskAsync(
            input: ElasticContainerModel.StartTaskRequest, 
            completion: @escaping (Result<ElasticContainerModel.StartTaskResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.startTask.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.startTask,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = StartTaskOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the StartTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartTaskRequest object being passed to this operation.
     - Returns: The StartTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func startTaskSync(
            input: ElasticContainerModel.StartTaskRequest) throws -> ElasticContainerModel.StartTaskResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.startTask.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.startTask,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = StartTaskOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the StopTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopTaskRequest object being passed to this operation.
         - completion: The StopTaskResponse object or an error will be passed to this 
           callback when the operation is complete. The StopTaskResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    public func stopTaskAsync(
            input: ElasticContainerModel.StopTaskRequest, 
            completion: @escaping (Result<ElasticContainerModel.StopTaskResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.stopTask.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.stopTask,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = StopTaskOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the StopTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopTaskRequest object being passed to this operation.
     - Returns: The StopTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func stopTaskSync(
            input: ElasticContainerModel.StopTaskRequest) throws -> ElasticContainerModel.StopTaskResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.stopTask.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.stopTask,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = StopTaskOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the SubmitAttachmentStateChanges operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SubmitAttachmentStateChangesRequest object being passed to this operation.
         - completion: The SubmitAttachmentStateChangesResponse object or an error will be passed to this 
           callback when the operation is complete. The SubmitAttachmentStateChangesResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, invalidParameter, server.
     */
    public func submitAttachmentStateChangesAsync(
            input: ElasticContainerModel.SubmitAttachmentStateChangesRequest, 
            completion: @escaping (Result<ElasticContainerModel.SubmitAttachmentStateChangesResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.submitAttachmentStateChanges.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.submitAttachmentStateChanges,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = SubmitAttachmentStateChangesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the SubmitAttachmentStateChanges operation waiting for the response before returning.

     - Parameters:
         - input: The validated SubmitAttachmentStateChangesRequest object being passed to this operation.
     - Returns: The SubmitAttachmentStateChangesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, invalidParameter, server.
     */
    public func submitAttachmentStateChangesSync(
            input: ElasticContainerModel.SubmitAttachmentStateChangesRequest) throws -> ElasticContainerModel.SubmitAttachmentStateChangesResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.submitAttachmentStateChanges.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.submitAttachmentStateChanges,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = SubmitAttachmentStateChangesOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the SubmitContainerStateChange operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SubmitContainerStateChangeRequest object being passed to this operation.
         - completion: The SubmitContainerStateChangeResponse object or an error will be passed to this 
           callback when the operation is complete. The SubmitContainerStateChangeResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, server.
     */
    public func submitContainerStateChangeAsync(
            input: ElasticContainerModel.SubmitContainerStateChangeRequest, 
            completion: @escaping (Result<ElasticContainerModel.SubmitContainerStateChangeResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.submitContainerStateChange.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.submitContainerStateChange,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = SubmitContainerStateChangeOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the SubmitContainerStateChange operation waiting for the response before returning.

     - Parameters:
         - input: The validated SubmitContainerStateChangeRequest object being passed to this operation.
     - Returns: The SubmitContainerStateChangeResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, server.
     */
    public func submitContainerStateChangeSync(
            input: ElasticContainerModel.SubmitContainerStateChangeRequest) throws -> ElasticContainerModel.SubmitContainerStateChangeResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.submitContainerStateChange.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.submitContainerStateChange,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = SubmitContainerStateChangeOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the SubmitTaskStateChange operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SubmitTaskStateChangeRequest object being passed to this operation.
         - completion: The SubmitTaskStateChangeResponse object or an error will be passed to this 
           callback when the operation is complete. The SubmitTaskStateChangeResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, invalidParameter, server.
     */
    public func submitTaskStateChangeAsync(
            input: ElasticContainerModel.SubmitTaskStateChangeRequest, 
            completion: @escaping (Result<ElasticContainerModel.SubmitTaskStateChangeResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.submitTaskStateChange.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.submitTaskStateChange,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = SubmitTaskStateChangeOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the SubmitTaskStateChange operation waiting for the response before returning.

     - Parameters:
         - input: The validated SubmitTaskStateChangeRequest object being passed to this operation.
     - Returns: The SubmitTaskStateChangeResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, invalidParameter, server.
     */
    public func submitTaskStateChangeSync(
            input: ElasticContainerModel.SubmitTaskStateChangeRequest) throws -> ElasticContainerModel.SubmitTaskStateChangeResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.submitTaskStateChange.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.submitTaskStateChange,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = SubmitTaskStateChangeOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the TagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
         - completion: The TagResourceResponse object or an error will be passed to this 
           callback when the operation is complete. The TagResourceResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, resourceNotFound, server.
     */
    public func tagResourceAsync(
            input: ElasticContainerModel.TagResourceRequest, 
            completion: @escaping (Result<ElasticContainerModel.TagResourceResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.tagResource.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.tagResource,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = TagResourceOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
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
     - Returns: The TagResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, resourceNotFound, server.
     */
    public func tagResourceSync(
            input: ElasticContainerModel.TagResourceRequest) throws -> ElasticContainerModel.TagResourceResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.tagResource.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.tagResource,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = TagResourceOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UntagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
         - completion: The UntagResourceResponse object or an error will be passed to this 
           callback when the operation is complete. The UntagResourceResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, resourceNotFound, server.
     */
    public func untagResourceAsync(
            input: ElasticContainerModel.UntagResourceRequest, 
            completion: @escaping (Result<ElasticContainerModel.UntagResourceResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.untagResource.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.untagResource,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UntagResourceOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
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
     - Returns: The UntagResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, resourceNotFound, server.
     */
    public func untagResourceSync(
            input: ElasticContainerModel.UntagResourceRequest) throws -> ElasticContainerModel.UntagResourceResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.untagResource.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.untagResource,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UntagResourceOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UpdateClusterSettings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateClusterSettingsRequest object being passed to this operation.
         - completion: The UpdateClusterSettingsResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateClusterSettingsResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    public func updateClusterSettingsAsync(
            input: ElasticContainerModel.UpdateClusterSettingsRequest, 
            completion: @escaping (Result<ElasticContainerModel.UpdateClusterSettingsResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.updateClusterSettings.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateClusterSettings,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateClusterSettingsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateClusterSettings operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateClusterSettingsRequest object being passed to this operation.
     - Returns: The UpdateClusterSettingsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func updateClusterSettingsSync(
            input: ElasticContainerModel.UpdateClusterSettingsRequest) throws -> ElasticContainerModel.UpdateClusterSettingsResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.updateClusterSettings.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateClusterSettings,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateClusterSettingsOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UpdateContainerAgent operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateContainerAgentRequest object being passed to this operation.
         - completion: The UpdateContainerAgentResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateContainerAgentResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, missingVersion, noUpdateAvailable, server, updateInProgress.
     */
    public func updateContainerAgentAsync(
            input: ElasticContainerModel.UpdateContainerAgentRequest, 
            completion: @escaping (Result<ElasticContainerModel.UpdateContainerAgentResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.updateContainerAgent.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateContainerAgent,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateContainerAgentOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateContainerAgent operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateContainerAgentRequest object being passed to this operation.
     - Returns: The UpdateContainerAgentResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, missingVersion, noUpdateAvailable, server, updateInProgress.
     */
    public func updateContainerAgentSync(
            input: ElasticContainerModel.UpdateContainerAgentRequest) throws -> ElasticContainerModel.UpdateContainerAgentResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.updateContainerAgent.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateContainerAgent,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateContainerAgentOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UpdateContainerInstancesState operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateContainerInstancesStateRequest object being passed to this operation.
         - completion: The UpdateContainerInstancesStateResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateContainerInstancesStateResponse
           object will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    public func updateContainerInstancesStateAsync(
            input: ElasticContainerModel.UpdateContainerInstancesStateRequest, 
            completion: @escaping (Result<ElasticContainerModel.UpdateContainerInstancesStateResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.updateContainerInstancesState.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateContainerInstancesState,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateContainerInstancesStateOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateContainerInstancesState operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateContainerInstancesStateRequest object being passed to this operation.
     - Returns: The UpdateContainerInstancesStateResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: client, clusterNotFound, invalidParameter, server.
     */
    public func updateContainerInstancesStateSync(
            input: ElasticContainerModel.UpdateContainerInstancesStateRequest) throws -> ElasticContainerModel.UpdateContainerInstancesStateResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.updateContainerInstancesState.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateContainerInstancesState,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateContainerInstancesStateOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UpdateService operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateServiceRequest object being passed to this operation.
         - completion: The UpdateServiceResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateServiceResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, serviceNotActive, serviceNotFound.
     */
    public func updateServiceAsync(
            input: ElasticContainerModel.UpdateServiceRequest, 
            completion: @escaping (Result<ElasticContainerModel.UpdateServiceResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.updateService.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateService,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateServiceOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateService operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateServiceRequest object being passed to this operation.
     - Returns: The UpdateServiceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, serviceNotActive, serviceNotFound.
     */
    public func updateServiceSync(
            input: ElasticContainerModel.UpdateServiceRequest) throws -> ElasticContainerModel.UpdateServiceResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.updateService.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateService,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateServiceOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UpdateServicePrimaryTaskSet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateServicePrimaryTaskSetRequest object being passed to this operation.
         - completion: The UpdateServicePrimaryTaskSetResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateServicePrimaryTaskSetResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    public func updateServicePrimaryTaskSetAsync(
            input: ElasticContainerModel.UpdateServicePrimaryTaskSetRequest, 
            completion: @escaping (Result<ElasticContainerModel.UpdateServicePrimaryTaskSetResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.updateServicePrimaryTaskSet.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateServicePrimaryTaskSet,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateServicePrimaryTaskSetOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateServicePrimaryTaskSet operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateServicePrimaryTaskSetRequest object being passed to this operation.
     - Returns: The UpdateServicePrimaryTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    public func updateServicePrimaryTaskSetSync(
            input: ElasticContainerModel.UpdateServicePrimaryTaskSetRequest) throws -> ElasticContainerModel.UpdateServicePrimaryTaskSetResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.updateServicePrimaryTaskSet.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateServicePrimaryTaskSet,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateServicePrimaryTaskSetOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UpdateTaskSet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateTaskSetRequest object being passed to this operation.
         - completion: The UpdateTaskSetResponse object or an error will be passed to this 
           callback when the operation is complete. The UpdateTaskSetResponse
           object will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    public func updateTaskSetAsync(
            input: ElasticContainerModel.UpdateTaskSetRequest, 
            completion: @escaping (Result<ElasticContainerModel.UpdateTaskSetResponse, ElasticContainerError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.updateTaskSet.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateTaskSet,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateTaskSetOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateTaskSet operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateTaskSetRequest object being passed to this operation.
     - Returns: The UpdateTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    public func updateTaskSetSync(
            input: ElasticContainerModel.UpdateTaskSetRequest) throws -> ElasticContainerModel.UpdateTaskSetResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ElasticContainerModelOperations.updateTaskSet.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateTaskSet,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateTaskSetOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ElasticContainerError = error.asTypedError()
            throw typedError
        }
    }
}
