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
// AWSECRClient.swift
// ECRClient
//

import Foundation
import ECRModel
import SmokeAWSCore
import SmokeHTTPClient
import SmokeAWSHttp
import NIO
import NIOHTTP1
import AsyncHTTPClient
import Logging

public enum ECRClientError: Swift.Error {
    case invalidEndpoint(String)
    case unsupportedPayload
    case unknownError(String?)
}

 extension ECRError: ConvertableError {
    public static func asUnrecognizedError(error: Swift.Error) -> ECRError {
        return error.asUnrecognizedECRError()
    }
}

/**
 AWS Client for the ECR service.
 */
public struct AWSECRClient<InvocationReportingType: HTTPClientCoreInvocationReporting>: ECRClientProtocol {
    let httpClient: HTTPOperationsClient
    let ownsHttpClients: Bool
    let awsRegion: AWSRegion
    let service: String
    let target: String?
    let retryConfiguration: HTTPClientRetryConfiguration
    let retryOnErrorProvider: (SmokeHTTPClient.HTTPClientError) -> Bool
    let credentialsProvider: CredentialsProvider
    
    public let reporting: InvocationReportingType

    let operationsReporting: ECROperationsReporting
    let invocationsReporting: ECRInvocationsReporting<InvocationReportingType>
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                endpointHostName: String,
                endpointPort: Int = 443,
                requiresTLS: Bool? = nil,
                service: String = "ecr",
                contentType: String = "application/x-amz-json-1.1",
                target: String? = "AmazonEC2ContainerRegistry_V20150921",
                connectionTimeoutSeconds: Int64 = 10,
                retryConfiguration: HTTPClientRetryConfiguration = .default,
                eventLoopProvider: HTTPClient.EventLoopGroupProvider = .createNew,
                connectionPoolConfiguration: HTTPClient.Configuration.ConnectionPool? = nil,
                reportingConfiguration: SmokeAWSClientReportingConfiguration<ECRModelOperations>
                    = SmokeAWSClientReportingConfiguration<ECRModelOperations>() ) {
        let useTLS = requiresTLS ?? AWSHTTPClientDelegate.requiresTLS(forEndpointPort: endpointPort)
        let clientDelegate = JSONAWSHttpClientDelegate<ECRError>(requiresTLS: useTLS)

        self.httpClient = HTTPOperationsClient(
            endpointHostName: endpointHostName,
            endpointPort: endpointPort,
            contentType: contentType,
            clientDelegate: clientDelegate,
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
        self.operationsReporting = ECROperationsReporting(clientName: "AWSECRClient", reportingConfiguration: reportingConfiguration)
        self.invocationsReporting = ECRInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
    }
    
    internal init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                httpClient: HTTPOperationsClient,
                service: String,
                target: String?,
                retryOnErrorProvider: @escaping (SmokeHTTPClient.HTTPClientError) -> Bool,
                retryConfiguration: HTTPClientRetryConfiguration,
                operationsReporting: ECROperationsReporting) {
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
        self.invocationsReporting = ECRInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
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
     Invokes the BatchCheckLayerAvailability operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchCheckLayerAvailabilityRequest object being passed to this operation.
         - completion: The BatchCheckLayerAvailabilityResponse object or an error will be passed to this 
           callback when the operation is complete. The BatchCheckLayerAvailabilityResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    public func batchCheckLayerAvailabilityAsync(
            input: ECRModel.BatchCheckLayerAvailabilityRequest, 
            completion: @escaping (Result<ECRModel.BatchCheckLayerAvailabilityResponse, ECRError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.batchCheckLayerAvailability.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.batchCheckLayerAvailability,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = BatchCheckLayerAvailabilityOperationHTTPRequestInput(encodable: input)

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
     Invokes the BatchCheckLayerAvailability operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchCheckLayerAvailabilityRequest object being passed to this operation.
     - Returns: The BatchCheckLayerAvailabilityResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    public func batchCheckLayerAvailabilitySync(
            input: ECRModel.BatchCheckLayerAvailabilityRequest) throws -> ECRModel.BatchCheckLayerAvailabilityResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.batchCheckLayerAvailability.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.batchCheckLayerAvailability,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = BatchCheckLayerAvailabilityOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ECRError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the BatchDeleteImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchDeleteImageRequest object being passed to this operation.
         - completion: The BatchDeleteImageResponse object or an error will be passed to this 
           callback when the operation is complete. The BatchDeleteImageResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    public func batchDeleteImageAsync(
            input: ECRModel.BatchDeleteImageRequest, 
            completion: @escaping (Result<ECRModel.BatchDeleteImageResponse, ECRError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.batchDeleteImage.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.batchDeleteImage,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = BatchDeleteImageOperationHTTPRequestInput(encodable: input)

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
     Invokes the BatchDeleteImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchDeleteImageRequest object being passed to this operation.
     - Returns: The BatchDeleteImageResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    public func batchDeleteImageSync(
            input: ECRModel.BatchDeleteImageRequest) throws -> ECRModel.BatchDeleteImageResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.batchDeleteImage.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.batchDeleteImage,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = BatchDeleteImageOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ECRError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the BatchGetImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchGetImageRequest object being passed to this operation.
         - completion: The BatchGetImageResponse object or an error will be passed to this 
           callback when the operation is complete. The BatchGetImageResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    public func batchGetImageAsync(
            input: ECRModel.BatchGetImageRequest, 
            completion: @escaping (Result<ECRModel.BatchGetImageResponse, ECRError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.batchGetImage.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.batchGetImage,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = BatchGetImageOperationHTTPRequestInput(encodable: input)

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
     Invokes the BatchGetImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchGetImageRequest object being passed to this operation.
     - Returns: The BatchGetImageResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    public func batchGetImageSync(
            input: ECRModel.BatchGetImageRequest) throws -> ECRModel.BatchGetImageResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.batchGetImage.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.batchGetImage,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = BatchGetImageOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ECRError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the CompleteLayerUpload operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CompleteLayerUploadRequest object being passed to this operation.
         - completion: The CompleteLayerUploadResponse object or an error will be passed to this 
           callback when the operation is complete. The CompleteLayerUploadResponse
           object will be validated before being returned to caller.
           The possible errors are: emptyUpload, invalidLayer, invalidParameter, kms, layerAlreadyExists, layerPartTooSmall, repositoryNotFound, server, uploadNotFound.
     */
    public func completeLayerUploadAsync(
            input: ECRModel.CompleteLayerUploadRequest, 
            completion: @escaping (Result<ECRModel.CompleteLayerUploadResponse, ECRError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.completeLayerUpload.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.completeLayerUpload,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CompleteLayerUploadOperationHTTPRequestInput(encodable: input)

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
     Invokes the CompleteLayerUpload operation waiting for the response before returning.

     - Parameters:
         - input: The validated CompleteLayerUploadRequest object being passed to this operation.
     - Returns: The CompleteLayerUploadResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: emptyUpload, invalidLayer, invalidParameter, kms, layerAlreadyExists, layerPartTooSmall, repositoryNotFound, server, uploadNotFound.
     */
    public func completeLayerUploadSync(
            input: ECRModel.CompleteLayerUploadRequest) throws -> ECRModel.CompleteLayerUploadResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.completeLayerUpload.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.completeLayerUpload,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CompleteLayerUploadOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ECRError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the CreateRepository operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateRepositoryRequest object being passed to this operation.
         - completion: The CreateRepositoryResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateRepositoryResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, invalidTagParameter, kms, limitExceeded, repositoryAlreadyExists, server, tooManyTags.
     */
    public func createRepositoryAsync(
            input: ECRModel.CreateRepositoryRequest, 
            completion: @escaping (Result<ECRModel.CreateRepositoryResponse, ECRError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.createRepository.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createRepository,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateRepositoryOperationHTTPRequestInput(encodable: input)

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
     Invokes the CreateRepository operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateRepositoryRequest object being passed to this operation.
     - Returns: The CreateRepositoryResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, invalidTagParameter, kms, limitExceeded, repositoryAlreadyExists, server, tooManyTags.
     */
    public func createRepositorySync(
            input: ECRModel.CreateRepositoryRequest) throws -> ECRModel.CreateRepositoryResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.createRepository.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createRepository,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateRepositoryOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ECRError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteLifecyclePolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteLifecyclePolicyRequest object being passed to this operation.
         - completion: The DeleteLifecyclePolicyResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteLifecyclePolicyResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, lifecyclePolicyNotFound, repositoryNotFound, server.
     */
    public func deleteLifecyclePolicyAsync(
            input: ECRModel.DeleteLifecyclePolicyRequest, 
            completion: @escaping (Result<ECRModel.DeleteLifecyclePolicyResponse, ECRError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.deleteLifecyclePolicy.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteLifecyclePolicy,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteLifecyclePolicyOperationHTTPRequestInput(encodable: input)

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
     Invokes the DeleteLifecyclePolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteLifecyclePolicyRequest object being passed to this operation.
     - Returns: The DeleteLifecyclePolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, lifecyclePolicyNotFound, repositoryNotFound, server.
     */
    public func deleteLifecyclePolicySync(
            input: ECRModel.DeleteLifecyclePolicyRequest) throws -> ECRModel.DeleteLifecyclePolicyResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.deleteLifecyclePolicy.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteLifecyclePolicy,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteLifecyclePolicyOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ECRError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteRegistryPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteRegistryPolicyRequest object being passed to this operation.
         - completion: The DeleteRegistryPolicyResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteRegistryPolicyResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, registryPolicyNotFound, server, validation.
     */
    public func deleteRegistryPolicyAsync(
            input: ECRModel.DeleteRegistryPolicyRequest, 
            completion: @escaping (Result<ECRModel.DeleteRegistryPolicyResponse, ECRError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.deleteRegistryPolicy.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteRegistryPolicy,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteRegistryPolicyOperationHTTPRequestInput(encodable: input)

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
     Invokes the DeleteRegistryPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteRegistryPolicyRequest object being passed to this operation.
     - Returns: The DeleteRegistryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, registryPolicyNotFound, server, validation.
     */
    public func deleteRegistryPolicySync(
            input: ECRModel.DeleteRegistryPolicyRequest) throws -> ECRModel.DeleteRegistryPolicyResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.deleteRegistryPolicy.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteRegistryPolicy,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteRegistryPolicyOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ECRError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteRepository operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteRepositoryRequest object being passed to this operation.
         - completion: The DeleteRepositoryResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteRepositoryResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, kms, repositoryNotEmpty, repositoryNotFound, server.
     */
    public func deleteRepositoryAsync(
            input: ECRModel.DeleteRepositoryRequest, 
            completion: @escaping (Result<ECRModel.DeleteRepositoryResponse, ECRError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.deleteRepository.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteRepository,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteRepositoryOperationHTTPRequestInput(encodable: input)

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
     Invokes the DeleteRepository operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteRepositoryRequest object being passed to this operation.
     - Returns: The DeleteRepositoryResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, kms, repositoryNotEmpty, repositoryNotFound, server.
     */
    public func deleteRepositorySync(
            input: ECRModel.DeleteRepositoryRequest) throws -> ECRModel.DeleteRepositoryResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.deleteRepository.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteRepository,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteRepositoryOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ECRError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteRepositoryPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteRepositoryPolicyRequest object being passed to this operation.
         - completion: The DeleteRepositoryPolicyResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteRepositoryPolicyResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, repositoryPolicyNotFound, server.
     */
    public func deleteRepositoryPolicyAsync(
            input: ECRModel.DeleteRepositoryPolicyRequest, 
            completion: @escaping (Result<ECRModel.DeleteRepositoryPolicyResponse, ECRError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.deleteRepositoryPolicy.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteRepositoryPolicy,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteRepositoryPolicyOperationHTTPRequestInput(encodable: input)

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
     Invokes the DeleteRepositoryPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteRepositoryPolicyRequest object being passed to this operation.
     - Returns: The DeleteRepositoryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, repositoryPolicyNotFound, server.
     */
    public func deleteRepositoryPolicySync(
            input: ECRModel.DeleteRepositoryPolicyRequest) throws -> ECRModel.DeleteRepositoryPolicyResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.deleteRepositoryPolicy.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteRepositoryPolicy,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteRepositoryPolicyOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ECRError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeImageReplicationStatus operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeImageReplicationStatusRequest object being passed to this operation.
         - completion: The DescribeImageReplicationStatusResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeImageReplicationStatusResponse
           object will be validated before being returned to caller.
           The possible errors are: imageNotFound, invalidParameter, repositoryNotFound, server, validation.
     */
    public func describeImageReplicationStatusAsync(
            input: ECRModel.DescribeImageReplicationStatusRequest, 
            completion: @escaping (Result<ECRModel.DescribeImageReplicationStatusResponse, ECRError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.describeImageReplicationStatus.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeImageReplicationStatus,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeImageReplicationStatusOperationHTTPRequestInput(encodable: input)

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
     Invokes the DescribeImageReplicationStatus operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeImageReplicationStatusRequest object being passed to this operation.
     - Returns: The DescribeImageReplicationStatusResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: imageNotFound, invalidParameter, repositoryNotFound, server, validation.
     */
    public func describeImageReplicationStatusSync(
            input: ECRModel.DescribeImageReplicationStatusRequest) throws -> ECRModel.DescribeImageReplicationStatusResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.describeImageReplicationStatus.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeImageReplicationStatus,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeImageReplicationStatusOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ECRError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeImageScanFindings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeImageScanFindingsRequest object being passed to this operation.
         - completion: The DescribeImageScanFindingsResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeImageScanFindingsResponse
           object will be validated before being returned to caller.
           The possible errors are: imageNotFound, invalidParameter, repositoryNotFound, scanNotFound, server.
     */
    public func describeImageScanFindingsAsync(
            input: ECRModel.DescribeImageScanFindingsRequest, 
            completion: @escaping (Result<ECRModel.DescribeImageScanFindingsResponse, ECRError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.describeImageScanFindings.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeImageScanFindings,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeImageScanFindingsOperationHTTPRequestInput(encodable: input)

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
     Invokes the DescribeImageScanFindings operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeImageScanFindingsRequest object being passed to this operation.
     - Returns: The DescribeImageScanFindingsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: imageNotFound, invalidParameter, repositoryNotFound, scanNotFound, server.
     */
    public func describeImageScanFindingsSync(
            input: ECRModel.DescribeImageScanFindingsRequest) throws -> ECRModel.DescribeImageScanFindingsResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.describeImageScanFindings.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeImageScanFindings,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeImageScanFindingsOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ECRError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeImages operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeImagesRequest object being passed to this operation.
         - completion: The DescribeImagesResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeImagesResponse
           object will be validated before being returned to caller.
           The possible errors are: imageNotFound, invalidParameter, repositoryNotFound, server.
     */
    public func describeImagesAsync(
            input: ECRModel.DescribeImagesRequest, 
            completion: @escaping (Result<ECRModel.DescribeImagesResponse, ECRError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.describeImages.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeImages,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeImagesOperationHTTPRequestInput(encodable: input)

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
     Invokes the DescribeImages operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeImagesRequest object being passed to this operation.
     - Returns: The DescribeImagesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: imageNotFound, invalidParameter, repositoryNotFound, server.
     */
    public func describeImagesSync(
            input: ECRModel.DescribeImagesRequest) throws -> ECRModel.DescribeImagesResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.describeImages.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeImages,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeImagesOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ECRError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeRegistry operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeRegistryRequest object being passed to this operation.
         - completion: The DescribeRegistryResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeRegistryResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, server, validation.
     */
    public func describeRegistryAsync(
            input: ECRModel.DescribeRegistryRequest, 
            completion: @escaping (Result<ECRModel.DescribeRegistryResponse, ECRError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.describeRegistry.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeRegistry,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeRegistryOperationHTTPRequestInput(encodable: input)

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
     Invokes the DescribeRegistry operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeRegistryRequest object being passed to this operation.
     - Returns: The DescribeRegistryResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, server, validation.
     */
    public func describeRegistrySync(
            input: ECRModel.DescribeRegistryRequest) throws -> ECRModel.DescribeRegistryResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.describeRegistry.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeRegistry,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeRegistryOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ECRError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeRepositories operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeRepositoriesRequest object being passed to this operation.
         - completion: The DescribeRepositoriesResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeRepositoriesResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    public func describeRepositoriesAsync(
            input: ECRModel.DescribeRepositoriesRequest, 
            completion: @escaping (Result<ECRModel.DescribeRepositoriesResponse, ECRError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.describeRepositories.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeRepositories,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeRepositoriesOperationHTTPRequestInput(encodable: input)

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
     Invokes the DescribeRepositories operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeRepositoriesRequest object being passed to this operation.
     - Returns: The DescribeRepositoriesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    public func describeRepositoriesSync(
            input: ECRModel.DescribeRepositoriesRequest) throws -> ECRModel.DescribeRepositoriesResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.describeRepositories.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeRepositories,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeRepositoriesOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ECRError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetAuthorizationToken operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetAuthorizationTokenRequest object being passed to this operation.
         - completion: The GetAuthorizationTokenResponse object or an error will be passed to this 
           callback when the operation is complete. The GetAuthorizationTokenResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, server.
     */
    public func getAuthorizationTokenAsync(
            input: ECRModel.GetAuthorizationTokenRequest, 
            completion: @escaping (Result<ECRModel.GetAuthorizationTokenResponse, ECRError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.getAuthorizationToken.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getAuthorizationToken,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetAuthorizationTokenOperationHTTPRequestInput(encodable: input)

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
     Invokes the GetAuthorizationToken operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetAuthorizationTokenRequest object being passed to this operation.
     - Returns: The GetAuthorizationTokenResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, server.
     */
    public func getAuthorizationTokenSync(
            input: ECRModel.GetAuthorizationTokenRequest) throws -> ECRModel.GetAuthorizationTokenResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.getAuthorizationToken.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getAuthorizationToken,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetAuthorizationTokenOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ECRError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetDownloadUrlForLayer operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetDownloadUrlForLayerRequest object being passed to this operation.
         - completion: The GetDownloadUrlForLayerResponse object or an error will be passed to this 
           callback when the operation is complete. The GetDownloadUrlForLayerResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, layerInaccessible, layersNotFound, repositoryNotFound, server.
     */
    public func getDownloadUrlForLayerAsync(
            input: ECRModel.GetDownloadUrlForLayerRequest, 
            completion: @escaping (Result<ECRModel.GetDownloadUrlForLayerResponse, ECRError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.getDownloadUrlForLayer.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getDownloadUrlForLayer,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetDownloadUrlForLayerOperationHTTPRequestInput(encodable: input)

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
     Invokes the GetDownloadUrlForLayer operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetDownloadUrlForLayerRequest object being passed to this operation.
     - Returns: The GetDownloadUrlForLayerResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, layerInaccessible, layersNotFound, repositoryNotFound, server.
     */
    public func getDownloadUrlForLayerSync(
            input: ECRModel.GetDownloadUrlForLayerRequest) throws -> ECRModel.GetDownloadUrlForLayerResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.getDownloadUrlForLayer.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getDownloadUrlForLayer,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetDownloadUrlForLayerOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ECRError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetLifecyclePolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetLifecyclePolicyRequest object being passed to this operation.
         - completion: The GetLifecyclePolicyResponse object or an error will be passed to this 
           callback when the operation is complete. The GetLifecyclePolicyResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, lifecyclePolicyNotFound, repositoryNotFound, server.
     */
    public func getLifecyclePolicyAsync(
            input: ECRModel.GetLifecyclePolicyRequest, 
            completion: @escaping (Result<ECRModel.GetLifecyclePolicyResponse, ECRError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.getLifecyclePolicy.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getLifecyclePolicy,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetLifecyclePolicyOperationHTTPRequestInput(encodable: input)

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
     Invokes the GetLifecyclePolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetLifecyclePolicyRequest object being passed to this operation.
     - Returns: The GetLifecyclePolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, lifecyclePolicyNotFound, repositoryNotFound, server.
     */
    public func getLifecyclePolicySync(
            input: ECRModel.GetLifecyclePolicyRequest) throws -> ECRModel.GetLifecyclePolicyResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.getLifecyclePolicy.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getLifecyclePolicy,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetLifecyclePolicyOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ECRError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetLifecyclePolicyPreview operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetLifecyclePolicyPreviewRequest object being passed to this operation.
         - completion: The GetLifecyclePolicyPreviewResponse object or an error will be passed to this 
           callback when the operation is complete. The GetLifecyclePolicyPreviewResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, lifecyclePolicyPreviewNotFound, repositoryNotFound, server.
     */
    public func getLifecyclePolicyPreviewAsync(
            input: ECRModel.GetLifecyclePolicyPreviewRequest, 
            completion: @escaping (Result<ECRModel.GetLifecyclePolicyPreviewResponse, ECRError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.getLifecyclePolicyPreview.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getLifecyclePolicyPreview,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetLifecyclePolicyPreviewOperationHTTPRequestInput(encodable: input)

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
     Invokes the GetLifecyclePolicyPreview operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetLifecyclePolicyPreviewRequest object being passed to this operation.
     - Returns: The GetLifecyclePolicyPreviewResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, lifecyclePolicyPreviewNotFound, repositoryNotFound, server.
     */
    public func getLifecyclePolicyPreviewSync(
            input: ECRModel.GetLifecyclePolicyPreviewRequest) throws -> ECRModel.GetLifecyclePolicyPreviewResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.getLifecyclePolicyPreview.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getLifecyclePolicyPreview,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetLifecyclePolicyPreviewOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ECRError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetRegistryPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetRegistryPolicyRequest object being passed to this operation.
         - completion: The GetRegistryPolicyResponse object or an error will be passed to this 
           callback when the operation is complete. The GetRegistryPolicyResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, registryPolicyNotFound, server, validation.
     */
    public func getRegistryPolicyAsync(
            input: ECRModel.GetRegistryPolicyRequest, 
            completion: @escaping (Result<ECRModel.GetRegistryPolicyResponse, ECRError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.getRegistryPolicy.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getRegistryPolicy,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetRegistryPolicyOperationHTTPRequestInput(encodable: input)

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
     Invokes the GetRegistryPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetRegistryPolicyRequest object being passed to this operation.
     - Returns: The GetRegistryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, registryPolicyNotFound, server, validation.
     */
    public func getRegistryPolicySync(
            input: ECRModel.GetRegistryPolicyRequest) throws -> ECRModel.GetRegistryPolicyResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.getRegistryPolicy.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getRegistryPolicy,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetRegistryPolicyOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ECRError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetRepositoryPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetRepositoryPolicyRequest object being passed to this operation.
         - completion: The GetRepositoryPolicyResponse object or an error will be passed to this 
           callback when the operation is complete. The GetRepositoryPolicyResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, repositoryPolicyNotFound, server.
     */
    public func getRepositoryPolicyAsync(
            input: ECRModel.GetRepositoryPolicyRequest, 
            completion: @escaping (Result<ECRModel.GetRepositoryPolicyResponse, ECRError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.getRepositoryPolicy.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getRepositoryPolicy,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetRepositoryPolicyOperationHTTPRequestInput(encodable: input)

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
     Invokes the GetRepositoryPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetRepositoryPolicyRequest object being passed to this operation.
     - Returns: The GetRepositoryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, repositoryPolicyNotFound, server.
     */
    public func getRepositoryPolicySync(
            input: ECRModel.GetRepositoryPolicyRequest) throws -> ECRModel.GetRepositoryPolicyResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.getRepositoryPolicy.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getRepositoryPolicy,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetRepositoryPolicyOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ECRError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the InitiateLayerUpload operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated InitiateLayerUploadRequest object being passed to this operation.
         - completion: The InitiateLayerUploadResponse object or an error will be passed to this 
           callback when the operation is complete. The InitiateLayerUploadResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, kms, repositoryNotFound, server.
     */
    public func initiateLayerUploadAsync(
            input: ECRModel.InitiateLayerUploadRequest, 
            completion: @escaping (Result<ECRModel.InitiateLayerUploadResponse, ECRError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.initiateLayerUpload.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.initiateLayerUpload,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = InitiateLayerUploadOperationHTTPRequestInput(encodable: input)

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
     Invokes the InitiateLayerUpload operation waiting for the response before returning.

     - Parameters:
         - input: The validated InitiateLayerUploadRequest object being passed to this operation.
     - Returns: The InitiateLayerUploadResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, kms, repositoryNotFound, server.
     */
    public func initiateLayerUploadSync(
            input: ECRModel.InitiateLayerUploadRequest) throws -> ECRModel.InitiateLayerUploadResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.initiateLayerUpload.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.initiateLayerUpload,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = InitiateLayerUploadOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ECRError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListImages operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListImagesRequest object being passed to this operation.
         - completion: The ListImagesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListImagesResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    public func listImagesAsync(
            input: ECRModel.ListImagesRequest, 
            completion: @escaping (Result<ECRModel.ListImagesResponse, ECRError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.listImages.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listImages,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListImagesOperationHTTPRequestInput(encodable: input)

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
     Invokes the ListImages operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListImagesRequest object being passed to this operation.
     - Returns: The ListImagesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    public func listImagesSync(
            input: ECRModel.ListImagesRequest) throws -> ECRModel.ListImagesResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.listImages.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listImages,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListImagesOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ECRError = error.asTypedError()
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
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    public func listTagsForResourceAsync(
            input: ECRModel.ListTagsForResourceRequest, 
            completion: @escaping (Result<ECRModel.ListTagsForResourceResponse, ECRError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.listTagsForResource.rawValue,
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
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    public func listTagsForResourceSync(
            input: ECRModel.ListTagsForResourceRequest) throws -> ECRModel.ListTagsForResourceResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.listTagsForResource.rawValue,
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
            let typedError: ECRError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the PutImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutImageRequest object being passed to this operation.
         - completion: The PutImageResponse object or an error will be passed to this 
           callback when the operation is complete. The PutImageResponse
           object will be validated before being returned to caller.
           The possible errors are: imageAlreadyExists, imageDigestDoesNotMatch, imageTagAlreadyExists, invalidParameter, kms, layersNotFound, limitExceeded, referencedImagesNotFound, repositoryNotFound, server.
     */
    public func putImageAsync(
            input: ECRModel.PutImageRequest, 
            completion: @escaping (Result<ECRModel.PutImageResponse, ECRError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.putImage.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putImage,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PutImageOperationHTTPRequestInput(encodable: input)

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
     Invokes the PutImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutImageRequest object being passed to this operation.
     - Returns: The PutImageResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: imageAlreadyExists, imageDigestDoesNotMatch, imageTagAlreadyExists, invalidParameter, kms, layersNotFound, limitExceeded, referencedImagesNotFound, repositoryNotFound, server.
     */
    public func putImageSync(
            input: ECRModel.PutImageRequest) throws -> ECRModel.PutImageResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.putImage.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putImage,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PutImageOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ECRError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the PutImageScanningConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutImageScanningConfigurationRequest object being passed to this operation.
         - completion: The PutImageScanningConfigurationResponse object or an error will be passed to this 
           callback when the operation is complete. The PutImageScanningConfigurationResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    public func putImageScanningConfigurationAsync(
            input: ECRModel.PutImageScanningConfigurationRequest, 
            completion: @escaping (Result<ECRModel.PutImageScanningConfigurationResponse, ECRError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.putImageScanningConfiguration.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putImageScanningConfiguration,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PutImageScanningConfigurationOperationHTTPRequestInput(encodable: input)

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
     Invokes the PutImageScanningConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutImageScanningConfigurationRequest object being passed to this operation.
     - Returns: The PutImageScanningConfigurationResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    public func putImageScanningConfigurationSync(
            input: ECRModel.PutImageScanningConfigurationRequest) throws -> ECRModel.PutImageScanningConfigurationResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.putImageScanningConfiguration.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putImageScanningConfiguration,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PutImageScanningConfigurationOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ECRError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the PutImageTagMutability operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutImageTagMutabilityRequest object being passed to this operation.
         - completion: The PutImageTagMutabilityResponse object or an error will be passed to this 
           callback when the operation is complete. The PutImageTagMutabilityResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    public func putImageTagMutabilityAsync(
            input: ECRModel.PutImageTagMutabilityRequest, 
            completion: @escaping (Result<ECRModel.PutImageTagMutabilityResponse, ECRError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.putImageTagMutability.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putImageTagMutability,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PutImageTagMutabilityOperationHTTPRequestInput(encodable: input)

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
     Invokes the PutImageTagMutability operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutImageTagMutabilityRequest object being passed to this operation.
     - Returns: The PutImageTagMutabilityResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    public func putImageTagMutabilitySync(
            input: ECRModel.PutImageTagMutabilityRequest) throws -> ECRModel.PutImageTagMutabilityResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.putImageTagMutability.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putImageTagMutability,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PutImageTagMutabilityOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ECRError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the PutLifecyclePolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutLifecyclePolicyRequest object being passed to this operation.
         - completion: The PutLifecyclePolicyResponse object or an error will be passed to this 
           callback when the operation is complete. The PutLifecyclePolicyResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    public func putLifecyclePolicyAsync(
            input: ECRModel.PutLifecyclePolicyRequest, 
            completion: @escaping (Result<ECRModel.PutLifecyclePolicyResponse, ECRError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.putLifecyclePolicy.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putLifecyclePolicy,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PutLifecyclePolicyOperationHTTPRequestInput(encodable: input)

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
     Invokes the PutLifecyclePolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutLifecyclePolicyRequest object being passed to this operation.
     - Returns: The PutLifecyclePolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    public func putLifecyclePolicySync(
            input: ECRModel.PutLifecyclePolicyRequest) throws -> ECRModel.PutLifecyclePolicyResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.putLifecyclePolicy.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putLifecyclePolicy,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PutLifecyclePolicyOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ECRError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the PutRegistryPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutRegistryPolicyRequest object being passed to this operation.
         - completion: The PutRegistryPolicyResponse object or an error will be passed to this 
           callback when the operation is complete. The PutRegistryPolicyResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, server, validation.
     */
    public func putRegistryPolicyAsync(
            input: ECRModel.PutRegistryPolicyRequest, 
            completion: @escaping (Result<ECRModel.PutRegistryPolicyResponse, ECRError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.putRegistryPolicy.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putRegistryPolicy,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PutRegistryPolicyOperationHTTPRequestInput(encodable: input)

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
     Invokes the PutRegistryPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutRegistryPolicyRequest object being passed to this operation.
     - Returns: The PutRegistryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, server, validation.
     */
    public func putRegistryPolicySync(
            input: ECRModel.PutRegistryPolicyRequest) throws -> ECRModel.PutRegistryPolicyResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.putRegistryPolicy.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putRegistryPolicy,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PutRegistryPolicyOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ECRError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the PutReplicationConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutReplicationConfigurationRequest object being passed to this operation.
         - completion: The PutReplicationConfigurationResponse object or an error will be passed to this 
           callback when the operation is complete. The PutReplicationConfigurationResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, server, validation.
     */
    public func putReplicationConfigurationAsync(
            input: ECRModel.PutReplicationConfigurationRequest, 
            completion: @escaping (Result<ECRModel.PutReplicationConfigurationResponse, ECRError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.putReplicationConfiguration.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putReplicationConfiguration,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PutReplicationConfigurationOperationHTTPRequestInput(encodable: input)

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
     Invokes the PutReplicationConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutReplicationConfigurationRequest object being passed to this operation.
     - Returns: The PutReplicationConfigurationResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, server, validation.
     */
    public func putReplicationConfigurationSync(
            input: ECRModel.PutReplicationConfigurationRequest) throws -> ECRModel.PutReplicationConfigurationResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.putReplicationConfiguration.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putReplicationConfiguration,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PutReplicationConfigurationOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ECRError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the SetRepositoryPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetRepositoryPolicyRequest object being passed to this operation.
         - completion: The SetRepositoryPolicyResponse object or an error will be passed to this 
           callback when the operation is complete. The SetRepositoryPolicyResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    public func setRepositoryPolicyAsync(
            input: ECRModel.SetRepositoryPolicyRequest, 
            completion: @escaping (Result<ECRModel.SetRepositoryPolicyResponse, ECRError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.setRepositoryPolicy.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.setRepositoryPolicy,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = SetRepositoryPolicyOperationHTTPRequestInput(encodable: input)

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
     Invokes the SetRepositoryPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetRepositoryPolicyRequest object being passed to this operation.
     - Returns: The SetRepositoryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    public func setRepositoryPolicySync(
            input: ECRModel.SetRepositoryPolicyRequest) throws -> ECRModel.SetRepositoryPolicyResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.setRepositoryPolicy.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.setRepositoryPolicy,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = SetRepositoryPolicyOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ECRError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the StartImageScan operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartImageScanRequest object being passed to this operation.
         - completion: The StartImageScanResponse object or an error will be passed to this 
           callback when the operation is complete. The StartImageScanResponse
           object will be validated before being returned to caller.
           The possible errors are: imageNotFound, invalidParameter, limitExceeded, repositoryNotFound, server, unsupportedImageType.
     */
    public func startImageScanAsync(
            input: ECRModel.StartImageScanRequest, 
            completion: @escaping (Result<ECRModel.StartImageScanResponse, ECRError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.startImageScan.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.startImageScan,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = StartImageScanOperationHTTPRequestInput(encodable: input)

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
     Invokes the StartImageScan operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartImageScanRequest object being passed to this operation.
     - Returns: The StartImageScanResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: imageNotFound, invalidParameter, limitExceeded, repositoryNotFound, server, unsupportedImageType.
     */
    public func startImageScanSync(
            input: ECRModel.StartImageScanRequest) throws -> ECRModel.StartImageScanResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.startImageScan.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.startImageScan,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = StartImageScanOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ECRError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the StartLifecyclePolicyPreview operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartLifecyclePolicyPreviewRequest object being passed to this operation.
         - completion: The StartLifecyclePolicyPreviewResponse object or an error will be passed to this 
           callback when the operation is complete. The StartLifecyclePolicyPreviewResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, lifecyclePolicyNotFound, lifecyclePolicyPreviewInProgress, repositoryNotFound, server.
     */
    public func startLifecyclePolicyPreviewAsync(
            input: ECRModel.StartLifecyclePolicyPreviewRequest, 
            completion: @escaping (Result<ECRModel.StartLifecyclePolicyPreviewResponse, ECRError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.startLifecyclePolicyPreview.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.startLifecyclePolicyPreview,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = StartLifecyclePolicyPreviewOperationHTTPRequestInput(encodable: input)

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
     Invokes the StartLifecyclePolicyPreview operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartLifecyclePolicyPreviewRequest object being passed to this operation.
     - Returns: The StartLifecyclePolicyPreviewResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, lifecyclePolicyNotFound, lifecyclePolicyPreviewInProgress, repositoryNotFound, server.
     */
    public func startLifecyclePolicyPreviewSync(
            input: ECRModel.StartLifecyclePolicyPreviewRequest) throws -> ECRModel.StartLifecyclePolicyPreviewResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.startLifecyclePolicyPreview.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.startLifecyclePolicyPreview,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = StartLifecyclePolicyPreviewOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ECRError = error.asTypedError()
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
           The possible errors are: invalidParameter, invalidTagParameter, repositoryNotFound, server, tooManyTags.
     */
    public func tagResourceAsync(
            input: ECRModel.TagResourceRequest, 
            completion: @escaping (Result<ECRModel.TagResourceResponse, ECRError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.tagResource.rawValue,
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
     - Throws: invalidParameter, invalidTagParameter, repositoryNotFound, server, tooManyTags.
     */
    public func tagResourceSync(
            input: ECRModel.TagResourceRequest) throws -> ECRModel.TagResourceResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.tagResource.rawValue,
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
            let typedError: ECRError = error.asTypedError()
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
           The possible errors are: invalidParameter, invalidTagParameter, repositoryNotFound, server, tooManyTags.
     */
    public func untagResourceAsync(
            input: ECRModel.UntagResourceRequest, 
            completion: @escaping (Result<ECRModel.UntagResourceResponse, ECRError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.untagResource.rawValue,
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
     - Throws: invalidParameter, invalidTagParameter, repositoryNotFound, server, tooManyTags.
     */
    public func untagResourceSync(
            input: ECRModel.UntagResourceRequest) throws -> ECRModel.UntagResourceResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.untagResource.rawValue,
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
            let typedError: ECRError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UploadLayerPart operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UploadLayerPartRequest object being passed to this operation.
         - completion: The UploadLayerPartResponse object or an error will be passed to this 
           callback when the operation is complete. The UploadLayerPartResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidLayerPart, invalidParameter, kms, limitExceeded, repositoryNotFound, server, uploadNotFound.
     */
    public func uploadLayerPartAsync(
            input: ECRModel.UploadLayerPartRequest, 
            completion: @escaping (Result<ECRModel.UploadLayerPartResponse, ECRError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.uploadLayerPart.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.uploadLayerPart,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UploadLayerPartOperationHTTPRequestInput(encodable: input)

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
     Invokes the UploadLayerPart operation waiting for the response before returning.

     - Parameters:
         - input: The validated UploadLayerPartRequest object being passed to this operation.
     - Returns: The UploadLayerPartResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidLayerPart, invalidParameter, kms, limitExceeded, repositoryNotFound, server, uploadNotFound.
     */
    public func uploadLayerPartSync(
            input: ECRModel.UploadLayerPartRequest) throws -> ECRModel.UploadLayerPartResponse {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: ECRModelOperations.uploadLayerPart.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.uploadLayerPart,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UploadLayerPartOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: ECRError = error.asTypedError()
            throw typedError
        }
    }
}
