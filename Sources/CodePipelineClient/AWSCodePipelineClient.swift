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
// AWSCodePipelineClient.swift
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

public enum CodePipelineClientError: Swift.Error {
    case invalidEndpoint(String)
    case unsupportedPayload
    case unknownError(String?)
}

 extension CodePipelineError: ConvertableError {
    public static func asUnrecognizedError(error: Swift.Error) -> CodePipelineError {
        return error.asUnrecognizedCodePipelineError()
    }
}

/**
 AWS Client for the CodePipeline service.
 */
public struct AWSCodePipelineClient<InvocationReportingType: HTTPClientCoreInvocationReporting & Sendable>: CodePipelineClientProtocol {
    let httpClient: HTTPOperationsClient
    let ownsHttpClients: Bool
    let awsRegion: AWSRegion
    let service: String
    let target: String?
    let retryConfiguration: HTTPClientRetryConfiguration
    let retryOnErrorProvider: (SmokeHTTPClient.HTTPClientError) -> Bool
    let credentialsProvider: CredentialsProvider
    
    public let reporting: InvocationReportingType

    let operationsReporting: CodePipelineOperationsReporting
    let invocationsReporting: CodePipelineInvocationsReporting<InvocationReportingType>
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
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
        self.ownsHttpClients = true
        self.awsRegion = awsRegion
        self.service = service
        self.target = target
        self.credentialsProvider = credentialsProvider
        self.retryConfiguration = retryConfiguration
        self.reporting = reporting
        self.retryOnErrorProvider = { error in error.isRetriable() }
        self.operationsReporting = CodePipelineOperationsReporting(clientName: "AWSCodePipelineClient", reportingConfiguration: reportingConfiguration)
        self.invocationsReporting = CodePipelineInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
    }
    
    internal init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                httpClient: HTTPOperationsClient,
                service: String,
                target: String?,
                retryOnErrorProvider: @escaping (SmokeHTTPClient.HTTPClientError) -> Bool,
                retryConfiguration: HTTPClientRetryConfiguration,
                operationsReporting: CodePipelineOperationsReporting) {
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
        self.invocationsReporting = CodePipelineInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
    }

    /**
     Gracefully shuts down this client. This function is idempotent and
     will handle being called multiple times. Will block until shutdown is complete.
     */
    public func syncShutdown() throws {
        if self.ownsHttpClients {
            try self.httpClient.syncShutdown()
        }
    }

    // renamed `syncShutdown` to make it clearer this version of shutdown will block.
    @available(*, deprecated, renamed: "syncShutdown")
    public func close() throws {
        if self.ownsHttpClients {
            try self.httpClient.close()
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
        }
    }
    #endif

    /**
     Invokes the AcknowledgeJob operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AcknowledgeJobInput object being passed to this operation.
         - completion: The AcknowledgeJobOutput object or an error will be passed to this 
           callback when the operation is complete. The AcknowledgeJobOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidNonce, jobNotFound, validation.
     */
    public func acknowledgeJobAsync(
            input: CodePipelineModel.AcknowledgeJobInput, 
            completion: @escaping (Result<CodePipelineModel.AcknowledgeJobOutput, CodePipelineError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.acknowledgeJob.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.acknowledgeJob,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = AcknowledgeJobOperationHTTPRequestInput(encodable: input)

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
     Invokes the AcknowledgeJob operation waiting for the response before returning.

     - Parameters:
         - input: The validated AcknowledgeJobInput object being passed to this operation.
     - Returns: The AcknowledgeJobOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNonce, jobNotFound, validation.
     */
    public func acknowledgeJobSync(
            input: CodePipelineModel.AcknowledgeJobInput) throws -> CodePipelineModel.AcknowledgeJobOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.acknowledgeJob.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.acknowledgeJob,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = AcknowledgeJobOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodePipelineError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the AcknowledgeThirdPartyJob operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AcknowledgeThirdPartyJobInput object being passed to this operation.
         - completion: The AcknowledgeThirdPartyJobOutput object or an error will be passed to this 
           callback when the operation is complete. The AcknowledgeThirdPartyJobOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidClientToken, invalidNonce, jobNotFound, validation.
     */
    public func acknowledgeThirdPartyJobAsync(
            input: CodePipelineModel.AcknowledgeThirdPartyJobInput, 
            completion: @escaping (Result<CodePipelineModel.AcknowledgeThirdPartyJobOutput, CodePipelineError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.acknowledgeThirdPartyJob.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.acknowledgeThirdPartyJob,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = AcknowledgeThirdPartyJobOperationHTTPRequestInput(encodable: input)

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
     Invokes the AcknowledgeThirdPartyJob operation waiting for the response before returning.

     - Parameters:
         - input: The validated AcknowledgeThirdPartyJobInput object being passed to this operation.
     - Returns: The AcknowledgeThirdPartyJobOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidClientToken, invalidNonce, jobNotFound, validation.
     */
    public func acknowledgeThirdPartyJobSync(
            input: CodePipelineModel.AcknowledgeThirdPartyJobInput) throws -> CodePipelineModel.AcknowledgeThirdPartyJobOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.acknowledgeThirdPartyJob.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.acknowledgeThirdPartyJob,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = AcknowledgeThirdPartyJobOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodePipelineError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the CreateCustomActionType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateCustomActionTypeInput object being passed to this operation.
         - completion: The CreateCustomActionTypeOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateCustomActionTypeOutput
           object will be validated before being returned to caller.
           The possible errors are: concurrentModification, invalidTags, limitExceeded, tooManyTags, validation.
     */
    public func createCustomActionTypeAsync(
            input: CodePipelineModel.CreateCustomActionTypeInput, 
            completion: @escaping (Result<CodePipelineModel.CreateCustomActionTypeOutput, CodePipelineError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.createCustomActionType.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createCustomActionType,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateCustomActionTypeOperationHTTPRequestInput(encodable: input)

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
     Invokes the CreateCustomActionType operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateCustomActionTypeInput object being passed to this operation.
     - Returns: The CreateCustomActionTypeOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, invalidTags, limitExceeded, tooManyTags, validation.
     */
    public func createCustomActionTypeSync(
            input: CodePipelineModel.CreateCustomActionTypeInput) throws -> CodePipelineModel.CreateCustomActionTypeOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.createCustomActionType.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createCustomActionType,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateCustomActionTypeOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodePipelineError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the CreatePipeline operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreatePipelineInput object being passed to this operation.
         - completion: The CreatePipelineOutput object or an error will be passed to this 
           callback when the operation is complete. The CreatePipelineOutput
           object will be validated before being returned to caller.
           The possible errors are: concurrentModification, invalidActionDeclaration, invalidBlockerDeclaration, invalidStageDeclaration, invalidStructure, invalidTags, limitExceeded, pipelineNameInUse, tooManyTags, validation.
     */
    public func createPipelineAsync(
            input: CodePipelineModel.CreatePipelineInput, 
            completion: @escaping (Result<CodePipelineModel.CreatePipelineOutput, CodePipelineError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.createPipeline.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createPipeline,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreatePipelineOperationHTTPRequestInput(encodable: input)

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
     Invokes the CreatePipeline operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreatePipelineInput object being passed to this operation.
     - Returns: The CreatePipelineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, invalidActionDeclaration, invalidBlockerDeclaration, invalidStageDeclaration, invalidStructure, invalidTags, limitExceeded, pipelineNameInUse, tooManyTags, validation.
     */
    public func createPipelineSync(
            input: CodePipelineModel.CreatePipelineInput) throws -> CodePipelineModel.CreatePipelineOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.createPipeline.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createPipeline,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreatePipelineOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodePipelineError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteCustomActionType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteCustomActionTypeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: concurrentModification, validation.
     */
    public func deleteCustomActionTypeAsync(
            input: CodePipelineModel.DeleteCustomActionTypeInput, 
            completion: @escaping (CodePipelineError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.deleteCustomActionType.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteCustomActionType,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteCustomActionTypeOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteCustomActionType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteCustomActionTypeInput object being passed to this operation.
     - Throws: concurrentModification, validation.
     */
    public func deleteCustomActionTypeSync(
            input: CodePipelineModel.DeleteCustomActionTypeInput) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.deleteCustomActionType.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteCustomActionType,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteCustomActionTypeOperationHTTPRequestInput(encodable: input)

        do {
            try httpClient.executeSyncRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodePipelineError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeletePipeline operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeletePipelineInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: concurrentModification, validation.
     */
    public func deletePipelineAsync(
            input: CodePipelineModel.DeletePipelineInput, 
            completion: @escaping (CodePipelineError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.deletePipeline.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deletePipeline,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeletePipelineOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeletePipeline operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeletePipelineInput object being passed to this operation.
     - Throws: concurrentModification, validation.
     */
    public func deletePipelineSync(
            input: CodePipelineModel.DeletePipelineInput) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.deletePipeline.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deletePipeline,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeletePipelineOperationHTTPRequestInput(encodable: input)

        do {
            try httpClient.executeSyncRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodePipelineError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteWebhook operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteWebhookInput object being passed to this operation.
         - completion: The DeleteWebhookOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteWebhookOutput
           object will be validated before being returned to caller.
           The possible errors are: concurrentModification, validation.
     */
    public func deleteWebhookAsync(
            input: CodePipelineModel.DeleteWebhookInput, 
            completion: @escaping (Result<CodePipelineModel.DeleteWebhookOutput, CodePipelineError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.deleteWebhook.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteWebhook,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteWebhookOperationHTTPRequestInput(encodable: input)

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
     Invokes the DeleteWebhook operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteWebhookInput object being passed to this operation.
     - Returns: The DeleteWebhookOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, validation.
     */
    public func deleteWebhookSync(
            input: CodePipelineModel.DeleteWebhookInput) throws -> CodePipelineModel.DeleteWebhookOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.deleteWebhook.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteWebhook,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteWebhookOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodePipelineError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeregisterWebhookWithThirdParty operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeregisterWebhookWithThirdPartyInput object being passed to this operation.
         - completion: The DeregisterWebhookWithThirdPartyOutput object or an error will be passed to this 
           callback when the operation is complete. The DeregisterWebhookWithThirdPartyOutput
           object will be validated before being returned to caller.
           The possible errors are: validation, webhookNotFound.
     */
    public func deregisterWebhookWithThirdPartyAsync(
            input: CodePipelineModel.DeregisterWebhookWithThirdPartyInput, 
            completion: @escaping (Result<CodePipelineModel.DeregisterWebhookWithThirdPartyOutput, CodePipelineError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.deregisterWebhookWithThirdParty.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deregisterWebhookWithThirdParty,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeregisterWebhookWithThirdPartyOperationHTTPRequestInput(encodable: input)

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
     Invokes the DeregisterWebhookWithThirdParty operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeregisterWebhookWithThirdPartyInput object being passed to this operation.
     - Returns: The DeregisterWebhookWithThirdPartyOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: validation, webhookNotFound.
     */
    public func deregisterWebhookWithThirdPartySync(
            input: CodePipelineModel.DeregisterWebhookWithThirdPartyInput) throws -> CodePipelineModel.DeregisterWebhookWithThirdPartyOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.deregisterWebhookWithThirdParty.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deregisterWebhookWithThirdParty,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeregisterWebhookWithThirdPartyOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodePipelineError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DisableStageTransition operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DisableStageTransitionInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: pipelineNotFound, stageNotFound, validation.
     */
    public func disableStageTransitionAsync(
            input: CodePipelineModel.DisableStageTransitionInput, 
            completion: @escaping (CodePipelineError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.disableStageTransition.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.disableStageTransition,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DisableStageTransitionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DisableStageTransition operation waiting for the response before returning.

     - Parameters:
         - input: The validated DisableStageTransitionInput object being passed to this operation.
     - Throws: pipelineNotFound, stageNotFound, validation.
     */
    public func disableStageTransitionSync(
            input: CodePipelineModel.DisableStageTransitionInput) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.disableStageTransition.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.disableStageTransition,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DisableStageTransitionOperationHTTPRequestInput(encodable: input)

        do {
            try httpClient.executeSyncRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodePipelineError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the EnableStageTransition operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EnableStageTransitionInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: pipelineNotFound, stageNotFound, validation.
     */
    public func enableStageTransitionAsync(
            input: CodePipelineModel.EnableStageTransitionInput, 
            completion: @escaping (CodePipelineError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.enableStageTransition.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.enableStageTransition,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = EnableStageTransitionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the EnableStageTransition operation waiting for the response before returning.

     - Parameters:
         - input: The validated EnableStageTransitionInput object being passed to this operation.
     - Throws: pipelineNotFound, stageNotFound, validation.
     */
    public func enableStageTransitionSync(
            input: CodePipelineModel.EnableStageTransitionInput) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.enableStageTransition.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.enableStageTransition,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = EnableStageTransitionOperationHTTPRequestInput(encodable: input)

        do {
            try httpClient.executeSyncRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodePipelineError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetActionType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetActionTypeInput object being passed to this operation.
         - completion: The GetActionTypeOutput object or an error will be passed to this 
           callback when the operation is complete. The GetActionTypeOutput
           object will be validated before being returned to caller.
           The possible errors are: actionTypeNotFound, validation.
     */
    public func getActionTypeAsync(
            input: CodePipelineModel.GetActionTypeInput, 
            completion: @escaping (Result<CodePipelineModel.GetActionTypeOutput, CodePipelineError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.getActionType.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getActionType,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetActionTypeOperationHTTPRequestInput(encodable: input)

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
     Invokes the GetActionType operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetActionTypeInput object being passed to this operation.
     - Returns: The GetActionTypeOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: actionTypeNotFound, validation.
     */
    public func getActionTypeSync(
            input: CodePipelineModel.GetActionTypeInput) throws -> CodePipelineModel.GetActionTypeOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.getActionType.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getActionType,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetActionTypeOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodePipelineError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetJobDetails operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetJobDetailsInput object being passed to this operation.
         - completion: The GetJobDetailsOutput object or an error will be passed to this 
           callback when the operation is complete. The GetJobDetailsOutput
           object will be validated before being returned to caller.
           The possible errors are: jobNotFound, validation.
     */
    public func getJobDetailsAsync(
            input: CodePipelineModel.GetJobDetailsInput, 
            completion: @escaping (Result<CodePipelineModel.GetJobDetailsOutput, CodePipelineError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.getJobDetails.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getJobDetails,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetJobDetailsOperationHTTPRequestInput(encodable: input)

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
     Invokes the GetJobDetails operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetJobDetailsInput object being passed to this operation.
     - Returns: The GetJobDetailsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: jobNotFound, validation.
     */
    public func getJobDetailsSync(
            input: CodePipelineModel.GetJobDetailsInput) throws -> CodePipelineModel.GetJobDetailsOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.getJobDetails.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getJobDetails,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetJobDetailsOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodePipelineError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetPipeline operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetPipelineInput object being passed to this operation.
         - completion: The GetPipelineOutput object or an error will be passed to this 
           callback when the operation is complete. The GetPipelineOutput
           object will be validated before being returned to caller.
           The possible errors are: pipelineNotFound, pipelineVersionNotFound, validation.
     */
    public func getPipelineAsync(
            input: CodePipelineModel.GetPipelineInput, 
            completion: @escaping (Result<CodePipelineModel.GetPipelineOutput, CodePipelineError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.getPipeline.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getPipeline,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetPipelineOperationHTTPRequestInput(encodable: input)

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
     Invokes the GetPipeline operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetPipelineInput object being passed to this operation.
     - Returns: The GetPipelineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: pipelineNotFound, pipelineVersionNotFound, validation.
     */
    public func getPipelineSync(
            input: CodePipelineModel.GetPipelineInput) throws -> CodePipelineModel.GetPipelineOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.getPipeline.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getPipeline,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetPipelineOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodePipelineError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetPipelineExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetPipelineExecutionInput object being passed to this operation.
         - completion: The GetPipelineExecutionOutput object or an error will be passed to this 
           callback when the operation is complete. The GetPipelineExecutionOutput
           object will be validated before being returned to caller.
           The possible errors are: pipelineExecutionNotFound, pipelineNotFound, validation.
     */
    public func getPipelineExecutionAsync(
            input: CodePipelineModel.GetPipelineExecutionInput, 
            completion: @escaping (Result<CodePipelineModel.GetPipelineExecutionOutput, CodePipelineError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.getPipelineExecution.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getPipelineExecution,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetPipelineExecutionOperationHTTPRequestInput(encodable: input)

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
     Invokes the GetPipelineExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetPipelineExecutionInput object being passed to this operation.
     - Returns: The GetPipelineExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: pipelineExecutionNotFound, pipelineNotFound, validation.
     */
    public func getPipelineExecutionSync(
            input: CodePipelineModel.GetPipelineExecutionInput) throws -> CodePipelineModel.GetPipelineExecutionOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.getPipelineExecution.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getPipelineExecution,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetPipelineExecutionOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodePipelineError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetPipelineState operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetPipelineStateInput object being passed to this operation.
         - completion: The GetPipelineStateOutput object or an error will be passed to this 
           callback when the operation is complete. The GetPipelineStateOutput
           object will be validated before being returned to caller.
           The possible errors are: pipelineNotFound, validation.
     */
    public func getPipelineStateAsync(
            input: CodePipelineModel.GetPipelineStateInput, 
            completion: @escaping (Result<CodePipelineModel.GetPipelineStateOutput, CodePipelineError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.getPipelineState.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getPipelineState,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetPipelineStateOperationHTTPRequestInput(encodable: input)

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
     Invokes the GetPipelineState operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetPipelineStateInput object being passed to this operation.
     - Returns: The GetPipelineStateOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: pipelineNotFound, validation.
     */
    public func getPipelineStateSync(
            input: CodePipelineModel.GetPipelineStateInput) throws -> CodePipelineModel.GetPipelineStateOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.getPipelineState.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getPipelineState,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetPipelineStateOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodePipelineError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetThirdPartyJobDetails operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetThirdPartyJobDetailsInput object being passed to this operation.
         - completion: The GetThirdPartyJobDetailsOutput object or an error will be passed to this 
           callback when the operation is complete. The GetThirdPartyJobDetailsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidClientToken, invalidJob, jobNotFound, validation.
     */
    public func getThirdPartyJobDetailsAsync(
            input: CodePipelineModel.GetThirdPartyJobDetailsInput, 
            completion: @escaping (Result<CodePipelineModel.GetThirdPartyJobDetailsOutput, CodePipelineError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.getThirdPartyJobDetails.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getThirdPartyJobDetails,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetThirdPartyJobDetailsOperationHTTPRequestInput(encodable: input)

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
     Invokes the GetThirdPartyJobDetails operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetThirdPartyJobDetailsInput object being passed to this operation.
     - Returns: The GetThirdPartyJobDetailsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidClientToken, invalidJob, jobNotFound, validation.
     */
    public func getThirdPartyJobDetailsSync(
            input: CodePipelineModel.GetThirdPartyJobDetailsInput) throws -> CodePipelineModel.GetThirdPartyJobDetailsOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.getThirdPartyJobDetails.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getThirdPartyJobDetails,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetThirdPartyJobDetailsOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodePipelineError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListActionExecutions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListActionExecutionsInput object being passed to this operation.
         - completion: The ListActionExecutionsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListActionExecutionsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidNextToken, pipelineExecutionNotFound, pipelineNotFound, validation.
     */
    public func listActionExecutionsAsync(
            input: CodePipelineModel.ListActionExecutionsInput, 
            completion: @escaping (Result<CodePipelineModel.ListActionExecutionsOutput, CodePipelineError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.listActionExecutions.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listActionExecutions,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListActionExecutionsOperationHTTPRequestInput(encodable: input)

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
     Invokes the ListActionExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListActionExecutionsInput object being passed to this operation.
     - Returns: The ListActionExecutionsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken, pipelineExecutionNotFound, pipelineNotFound, validation.
     */
    public func listActionExecutionsSync(
            input: CodePipelineModel.ListActionExecutionsInput) throws -> CodePipelineModel.ListActionExecutionsOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.listActionExecutions.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listActionExecutions,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListActionExecutionsOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodePipelineError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListActionTypes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListActionTypesInput object being passed to this operation.
         - completion: The ListActionTypesOutput object or an error will be passed to this 
           callback when the operation is complete. The ListActionTypesOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidNextToken, validation.
     */
    public func listActionTypesAsync(
            input: CodePipelineModel.ListActionTypesInput, 
            completion: @escaping (Result<CodePipelineModel.ListActionTypesOutput, CodePipelineError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.listActionTypes.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listActionTypes,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListActionTypesOperationHTTPRequestInput(encodable: input)

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
     Invokes the ListActionTypes operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListActionTypesInput object being passed to this operation.
     - Returns: The ListActionTypesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken, validation.
     */
    public func listActionTypesSync(
            input: CodePipelineModel.ListActionTypesInput) throws -> CodePipelineModel.ListActionTypesOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.listActionTypes.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listActionTypes,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListActionTypesOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodePipelineError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListPipelineExecutions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListPipelineExecutionsInput object being passed to this operation.
         - completion: The ListPipelineExecutionsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListPipelineExecutionsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidNextToken, pipelineNotFound, validation.
     */
    public func listPipelineExecutionsAsync(
            input: CodePipelineModel.ListPipelineExecutionsInput, 
            completion: @escaping (Result<CodePipelineModel.ListPipelineExecutionsOutput, CodePipelineError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.listPipelineExecutions.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listPipelineExecutions,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListPipelineExecutionsOperationHTTPRequestInput(encodable: input)

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
     Invokes the ListPipelineExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListPipelineExecutionsInput object being passed to this operation.
     - Returns: The ListPipelineExecutionsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken, pipelineNotFound, validation.
     */
    public func listPipelineExecutionsSync(
            input: CodePipelineModel.ListPipelineExecutionsInput) throws -> CodePipelineModel.ListPipelineExecutionsOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.listPipelineExecutions.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listPipelineExecutions,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListPipelineExecutionsOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodePipelineError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListPipelines operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListPipelinesInput object being passed to this operation.
         - completion: The ListPipelinesOutput object or an error will be passed to this 
           callback when the operation is complete. The ListPipelinesOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidNextToken, validation.
     */
    public func listPipelinesAsync(
            input: CodePipelineModel.ListPipelinesInput, 
            completion: @escaping (Result<CodePipelineModel.ListPipelinesOutput, CodePipelineError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.listPipelines.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listPipelines,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListPipelinesOperationHTTPRequestInput(encodable: input)

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
     Invokes the ListPipelines operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListPipelinesInput object being passed to this operation.
     - Returns: The ListPipelinesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken, validation.
     */
    public func listPipelinesSync(
            input: CodePipelineModel.ListPipelinesInput) throws -> CodePipelineModel.ListPipelinesOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.listPipelines.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listPipelines,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListPipelinesOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodePipelineError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
         - completion: The ListTagsForResourceOutput object or an error will be passed to this 
           callback when the operation is complete. The ListTagsForResourceOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, invalidNextToken, resourceNotFound, validation.
     */
    public func listTagsForResourceAsync(
            input: CodePipelineModel.ListTagsForResourceInput, 
            completion: @escaping (Result<CodePipelineModel.ListTagsForResourceOutput, CodePipelineError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.listTagsForResource.rawValue,
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
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: The ListTagsForResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidNextToken, resourceNotFound, validation.
     */
    public func listTagsForResourceSync(
            input: CodePipelineModel.ListTagsForResourceInput) throws -> CodePipelineModel.ListTagsForResourceOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.listTagsForResource.rawValue,
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
            let typedError: CodePipelineError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListWebhooks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListWebhooksInput object being passed to this operation.
         - completion: The ListWebhooksOutput object or an error will be passed to this 
           callback when the operation is complete. The ListWebhooksOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidNextToken, validation.
     */
    public func listWebhooksAsync(
            input: CodePipelineModel.ListWebhooksInput, 
            completion: @escaping (Result<CodePipelineModel.ListWebhooksOutput, CodePipelineError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.listWebhooks.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listWebhooks,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListWebhooksOperationHTTPRequestInput(encodable: input)

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
     Invokes the ListWebhooks operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListWebhooksInput object being passed to this operation.
     - Returns: The ListWebhooksOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidNextToken, validation.
     */
    public func listWebhooksSync(
            input: CodePipelineModel.ListWebhooksInput) throws -> CodePipelineModel.ListWebhooksOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.listWebhooks.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listWebhooks,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListWebhooksOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodePipelineError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the PollForJobs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PollForJobsInput object being passed to this operation.
         - completion: The PollForJobsOutput object or an error will be passed to this 
           callback when the operation is complete. The PollForJobsOutput
           object will be validated before being returned to caller.
           The possible errors are: actionTypeNotFound, validation.
     */
    public func pollForJobsAsync(
            input: CodePipelineModel.PollForJobsInput, 
            completion: @escaping (Result<CodePipelineModel.PollForJobsOutput, CodePipelineError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.pollForJobs.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.pollForJobs,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PollForJobsOperationHTTPRequestInput(encodable: input)

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
     Invokes the PollForJobs operation waiting for the response before returning.

     - Parameters:
         - input: The validated PollForJobsInput object being passed to this operation.
     - Returns: The PollForJobsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: actionTypeNotFound, validation.
     */
    public func pollForJobsSync(
            input: CodePipelineModel.PollForJobsInput) throws -> CodePipelineModel.PollForJobsOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.pollForJobs.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.pollForJobs,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PollForJobsOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodePipelineError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the PollForThirdPartyJobs operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PollForThirdPartyJobsInput object being passed to this operation.
         - completion: The PollForThirdPartyJobsOutput object or an error will be passed to this 
           callback when the operation is complete. The PollForThirdPartyJobsOutput
           object will be validated before being returned to caller.
           The possible errors are: actionTypeNotFound, validation.
     */
    public func pollForThirdPartyJobsAsync(
            input: CodePipelineModel.PollForThirdPartyJobsInput, 
            completion: @escaping (Result<CodePipelineModel.PollForThirdPartyJobsOutput, CodePipelineError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.pollForThirdPartyJobs.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.pollForThirdPartyJobs,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PollForThirdPartyJobsOperationHTTPRequestInput(encodable: input)

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
     Invokes the PollForThirdPartyJobs operation waiting for the response before returning.

     - Parameters:
         - input: The validated PollForThirdPartyJobsInput object being passed to this operation.
     - Returns: The PollForThirdPartyJobsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: actionTypeNotFound, validation.
     */
    public func pollForThirdPartyJobsSync(
            input: CodePipelineModel.PollForThirdPartyJobsInput) throws -> CodePipelineModel.PollForThirdPartyJobsOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.pollForThirdPartyJobs.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.pollForThirdPartyJobs,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PollForThirdPartyJobsOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodePipelineError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the PutActionRevision operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutActionRevisionInput object being passed to this operation.
         - completion: The PutActionRevisionOutput object or an error will be passed to this 
           callback when the operation is complete. The PutActionRevisionOutput
           object will be validated before being returned to caller.
           The possible errors are: actionNotFound, pipelineNotFound, stageNotFound, validation.
     */
    public func putActionRevisionAsync(
            input: CodePipelineModel.PutActionRevisionInput, 
            completion: @escaping (Result<CodePipelineModel.PutActionRevisionOutput, CodePipelineError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.putActionRevision.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putActionRevision,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PutActionRevisionOperationHTTPRequestInput(encodable: input)

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
     Invokes the PutActionRevision operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutActionRevisionInput object being passed to this operation.
     - Returns: The PutActionRevisionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: actionNotFound, pipelineNotFound, stageNotFound, validation.
     */
    public func putActionRevisionSync(
            input: CodePipelineModel.PutActionRevisionInput) throws -> CodePipelineModel.PutActionRevisionOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.putActionRevision.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putActionRevision,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PutActionRevisionOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodePipelineError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the PutApprovalResult operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutApprovalResultInput object being passed to this operation.
         - completion: The PutApprovalResultOutput object or an error will be passed to this 
           callback when the operation is complete. The PutApprovalResultOutput
           object will be validated before being returned to caller.
           The possible errors are: actionNotFound, approvalAlreadyCompleted, invalidApprovalToken, pipelineNotFound, stageNotFound, validation.
     */
    public func putApprovalResultAsync(
            input: CodePipelineModel.PutApprovalResultInput, 
            completion: @escaping (Result<CodePipelineModel.PutApprovalResultOutput, CodePipelineError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.putApprovalResult.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putApprovalResult,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PutApprovalResultOperationHTTPRequestInput(encodable: input)

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
     Invokes the PutApprovalResult operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutApprovalResultInput object being passed to this operation.
     - Returns: The PutApprovalResultOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: actionNotFound, approvalAlreadyCompleted, invalidApprovalToken, pipelineNotFound, stageNotFound, validation.
     */
    public func putApprovalResultSync(
            input: CodePipelineModel.PutApprovalResultInput) throws -> CodePipelineModel.PutApprovalResultOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.putApprovalResult.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putApprovalResult,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PutApprovalResultOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodePipelineError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the PutJobFailureResult operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutJobFailureResultInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidJobState, jobNotFound, validation.
     */
    public func putJobFailureResultAsync(
            input: CodePipelineModel.PutJobFailureResultInput, 
            completion: @escaping (CodePipelineError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.putJobFailureResult.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putJobFailureResult,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PutJobFailureResultOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutJobFailureResult operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutJobFailureResultInput object being passed to this operation.
     - Throws: invalidJobState, jobNotFound, validation.
     */
    public func putJobFailureResultSync(
            input: CodePipelineModel.PutJobFailureResultInput) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.putJobFailureResult.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putJobFailureResult,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PutJobFailureResultOperationHTTPRequestInput(encodable: input)

        do {
            try httpClient.executeSyncRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodePipelineError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the PutJobSuccessResult operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutJobSuccessResultInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidJobState, jobNotFound, outputVariablesSizeExceeded, validation.
     */
    public func putJobSuccessResultAsync(
            input: CodePipelineModel.PutJobSuccessResultInput, 
            completion: @escaping (CodePipelineError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.putJobSuccessResult.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putJobSuccessResult,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PutJobSuccessResultOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutJobSuccessResult operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutJobSuccessResultInput object being passed to this operation.
     - Throws: invalidJobState, jobNotFound, outputVariablesSizeExceeded, validation.
     */
    public func putJobSuccessResultSync(
            input: CodePipelineModel.PutJobSuccessResultInput) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.putJobSuccessResult.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putJobSuccessResult,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PutJobSuccessResultOperationHTTPRequestInput(encodable: input)

        do {
            try httpClient.executeSyncRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodePipelineError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the PutThirdPartyJobFailureResult operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutThirdPartyJobFailureResultInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidClientToken, invalidJobState, jobNotFound, validation.
     */
    public func putThirdPartyJobFailureResultAsync(
            input: CodePipelineModel.PutThirdPartyJobFailureResultInput, 
            completion: @escaping (CodePipelineError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.putThirdPartyJobFailureResult.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putThirdPartyJobFailureResult,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PutThirdPartyJobFailureResultOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutThirdPartyJobFailureResult operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutThirdPartyJobFailureResultInput object being passed to this operation.
     - Throws: invalidClientToken, invalidJobState, jobNotFound, validation.
     */
    public func putThirdPartyJobFailureResultSync(
            input: CodePipelineModel.PutThirdPartyJobFailureResultInput) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.putThirdPartyJobFailureResult.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putThirdPartyJobFailureResult,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PutThirdPartyJobFailureResultOperationHTTPRequestInput(encodable: input)

        do {
            try httpClient.executeSyncRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodePipelineError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the PutThirdPartyJobSuccessResult operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutThirdPartyJobSuccessResultInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidClientToken, invalidJobState, jobNotFound, validation.
     */
    public func putThirdPartyJobSuccessResultAsync(
            input: CodePipelineModel.PutThirdPartyJobSuccessResultInput, 
            completion: @escaping (CodePipelineError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.putThirdPartyJobSuccessResult.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putThirdPartyJobSuccessResult,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PutThirdPartyJobSuccessResultOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the PutThirdPartyJobSuccessResult operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutThirdPartyJobSuccessResultInput object being passed to this operation.
     - Throws: invalidClientToken, invalidJobState, jobNotFound, validation.
     */
    public func putThirdPartyJobSuccessResultSync(
            input: CodePipelineModel.PutThirdPartyJobSuccessResultInput) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.putThirdPartyJobSuccessResult.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putThirdPartyJobSuccessResult,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PutThirdPartyJobSuccessResultOperationHTTPRequestInput(encodable: input)

        do {
            try httpClient.executeSyncRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodePipelineError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the PutWebhook operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutWebhookInput object being passed to this operation.
         - completion: The PutWebhookOutput object or an error will be passed to this 
           callback when the operation is complete. The PutWebhookOutput
           object will be validated before being returned to caller.
           The possible errors are: concurrentModification, invalidTags, invalidWebhookAuthenticationParameters, invalidWebhookFilterPattern, limitExceeded, pipelineNotFound, tooManyTags, validation.
     */
    public func putWebhookAsync(
            input: CodePipelineModel.PutWebhookInput, 
            completion: @escaping (Result<CodePipelineModel.PutWebhookOutput, CodePipelineError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.putWebhook.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putWebhook,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PutWebhookOperationHTTPRequestInput(encodable: input)

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
     Invokes the PutWebhook operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutWebhookInput object being passed to this operation.
     - Returns: The PutWebhookOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, invalidTags, invalidWebhookAuthenticationParameters, invalidWebhookFilterPattern, limitExceeded, pipelineNotFound, tooManyTags, validation.
     */
    public func putWebhookSync(
            input: CodePipelineModel.PutWebhookInput) throws -> CodePipelineModel.PutWebhookOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.putWebhook.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.putWebhook,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PutWebhookOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodePipelineError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the RegisterWebhookWithThirdParty operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterWebhookWithThirdPartyInput object being passed to this operation.
         - completion: The RegisterWebhookWithThirdPartyOutput object or an error will be passed to this 
           callback when the operation is complete. The RegisterWebhookWithThirdPartyOutput
           object will be validated before being returned to caller.
           The possible errors are: validation, webhookNotFound.
     */
    public func registerWebhookWithThirdPartyAsync(
            input: CodePipelineModel.RegisterWebhookWithThirdPartyInput, 
            completion: @escaping (Result<CodePipelineModel.RegisterWebhookWithThirdPartyOutput, CodePipelineError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.registerWebhookWithThirdParty.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.registerWebhookWithThirdParty,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = RegisterWebhookWithThirdPartyOperationHTTPRequestInput(encodable: input)

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
     Invokes the RegisterWebhookWithThirdParty operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterWebhookWithThirdPartyInput object being passed to this operation.
     - Returns: The RegisterWebhookWithThirdPartyOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: validation, webhookNotFound.
     */
    public func registerWebhookWithThirdPartySync(
            input: CodePipelineModel.RegisterWebhookWithThirdPartyInput) throws -> CodePipelineModel.RegisterWebhookWithThirdPartyOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.registerWebhookWithThirdParty.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.registerWebhookWithThirdParty,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = RegisterWebhookWithThirdPartyOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodePipelineError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the RetryStageExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RetryStageExecutionInput object being passed to this operation.
         - completion: The RetryStageExecutionOutput object or an error will be passed to this 
           callback when the operation is complete. The RetryStageExecutionOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, notLatestPipelineExecution, pipelineNotFound, stageNotFound, stageNotRetryable, validation.
     */
    public func retryStageExecutionAsync(
            input: CodePipelineModel.RetryStageExecutionInput, 
            completion: @escaping (Result<CodePipelineModel.RetryStageExecutionOutput, CodePipelineError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.retryStageExecution.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.retryStageExecution,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = RetryStageExecutionOperationHTTPRequestInput(encodable: input)

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
     Invokes the RetryStageExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated RetryStageExecutionInput object being passed to this operation.
     - Returns: The RetryStageExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, notLatestPipelineExecution, pipelineNotFound, stageNotFound, stageNotRetryable, validation.
     */
    public func retryStageExecutionSync(
            input: CodePipelineModel.RetryStageExecutionInput) throws -> CodePipelineModel.RetryStageExecutionOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.retryStageExecution.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.retryStageExecution,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = RetryStageExecutionOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodePipelineError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the StartPipelineExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartPipelineExecutionInput object being passed to this operation.
         - completion: The StartPipelineExecutionOutput object or an error will be passed to this 
           callback when the operation is complete. The StartPipelineExecutionOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, pipelineNotFound, validation.
     */
    public func startPipelineExecutionAsync(
            input: CodePipelineModel.StartPipelineExecutionInput, 
            completion: @escaping (Result<CodePipelineModel.StartPipelineExecutionOutput, CodePipelineError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.startPipelineExecution.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.startPipelineExecution,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = StartPipelineExecutionOperationHTTPRequestInput(encodable: input)

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
     Invokes the StartPipelineExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartPipelineExecutionInput object being passed to this operation.
     - Returns: The StartPipelineExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, pipelineNotFound, validation.
     */
    public func startPipelineExecutionSync(
            input: CodePipelineModel.StartPipelineExecutionInput) throws -> CodePipelineModel.StartPipelineExecutionOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.startPipelineExecution.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.startPipelineExecution,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = StartPipelineExecutionOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodePipelineError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the StopPipelineExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopPipelineExecutionInput object being passed to this operation.
         - completion: The StopPipelineExecutionOutput object or an error will be passed to this 
           callback when the operation is complete. The StopPipelineExecutionOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, duplicatedStopRequest, pipelineExecutionNotStoppable, pipelineNotFound, validation.
     */
    public func stopPipelineExecutionAsync(
            input: CodePipelineModel.StopPipelineExecutionInput, 
            completion: @escaping (Result<CodePipelineModel.StopPipelineExecutionOutput, CodePipelineError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.stopPipelineExecution.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.stopPipelineExecution,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = StopPipelineExecutionOperationHTTPRequestInput(encodable: input)

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
     Invokes the StopPipelineExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopPipelineExecutionInput object being passed to this operation.
     - Returns: The StopPipelineExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, duplicatedStopRequest, pipelineExecutionNotStoppable, pipelineNotFound, validation.
     */
    public func stopPipelineExecutionSync(
            input: CodePipelineModel.StopPipelineExecutionInput) throws -> CodePipelineModel.StopPipelineExecutionOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.stopPipelineExecution.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.stopPipelineExecution,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = StopPipelineExecutionOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodePipelineError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the TagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
         - completion: The TagResourceOutput object or an error will be passed to this 
           callback when the operation is complete. The TagResourceOutput
           object will be validated before being returned to caller.
           The possible errors are: concurrentModification, invalidArn, invalidTags, resourceNotFound, tooManyTags, validation.
     */
    public func tagResourceAsync(
            input: CodePipelineModel.TagResourceInput, 
            completion: @escaping (Result<CodePipelineModel.TagResourceOutput, CodePipelineError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.tagResource.rawValue,
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
         - input: The validated TagResourceInput object being passed to this operation.
     - Returns: The TagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, invalidArn, invalidTags, resourceNotFound, tooManyTags, validation.
     */
    public func tagResourceSync(
            input: CodePipelineModel.TagResourceInput) throws -> CodePipelineModel.TagResourceOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.tagResource.rawValue,
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
            let typedError: CodePipelineError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UntagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
         - completion: The UntagResourceOutput object or an error will be passed to this 
           callback when the operation is complete. The UntagResourceOutput
           object will be validated before being returned to caller.
           The possible errors are: concurrentModification, invalidArn, invalidTags, resourceNotFound, validation.
     */
    public func untagResourceAsync(
            input: CodePipelineModel.UntagResourceInput, 
            completion: @escaping (Result<CodePipelineModel.UntagResourceOutput, CodePipelineError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.untagResource.rawValue,
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
         - input: The validated UntagResourceInput object being passed to this operation.
     - Returns: The UntagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: concurrentModification, invalidArn, invalidTags, resourceNotFound, validation.
     */
    public func untagResourceSync(
            input: CodePipelineModel.UntagResourceInput) throws -> CodePipelineModel.UntagResourceOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.untagResource.rawValue,
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
            let typedError: CodePipelineError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UpdateActionType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateActionTypeInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: actionTypeNotFound, requestFailed, validation.
     */
    public func updateActionTypeAsync(
            input: CodePipelineModel.UpdateActionTypeInput, 
            completion: @escaping (CodePipelineError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.updateActionType.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateActionType,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateActionTypeOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeOperationAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateActionType operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateActionTypeInput object being passed to this operation.
     - Throws: actionTypeNotFound, requestFailed, validation.
     */
    public func updateActionTypeSync(
            input: CodePipelineModel.UpdateActionTypeInput) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.updateActionType.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateActionType,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateActionTypeOperationHTTPRequestInput(encodable: input)

        do {
            try httpClient.executeSyncRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodePipelineError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UpdatePipeline operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdatePipelineInput object being passed to this operation.
         - completion: The UpdatePipelineOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdatePipelineOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidActionDeclaration, invalidBlockerDeclaration, invalidStageDeclaration, invalidStructure, limitExceeded, validation.
     */
    public func updatePipelineAsync(
            input: CodePipelineModel.UpdatePipelineInput, 
            completion: @escaping (Result<CodePipelineModel.UpdatePipelineOutput, CodePipelineError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.updatePipeline.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updatePipeline,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdatePipelineOperationHTTPRequestInput(encodable: input)

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
     Invokes the UpdatePipeline operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdatePipelineInput object being passed to this operation.
     - Returns: The UpdatePipelineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidActionDeclaration, invalidBlockerDeclaration, invalidStageDeclaration, invalidStructure, limitExceeded, validation.
     */
    public func updatePipelineSync(
            input: CodePipelineModel.UpdatePipelineInput) throws -> CodePipelineModel.UpdatePipelineOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: CodePipelineModelOperations.updatePipeline.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updatePipeline,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdatePipelineOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CodePipelineError = error.asTypedError()
            throw typedError
        }
    }
}
