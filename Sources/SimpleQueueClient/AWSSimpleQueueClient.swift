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
// AWSSimpleQueueClient.swift
// SimpleQueueClient
//

import Foundation
import SimpleQueueModel
import SmokeAWSCore
import SmokeHTTPClient
import SmokeAWSHttp
import NIO
import NIOHTTP1
import AsyncHTTPClient
import Logging

public enum SimpleQueueClientError: Swift.Error {
    case invalidEndpoint(String)
    case unsupportedPayload
    case unknownError(String?)
}

 extension SimpleQueueError: ConvertableError {
    public static func asUnrecognizedError(error: Swift.Error) -> SimpleQueueError {
        return error.asUnrecognizedSimpleQueueError()
    }

    public func isRetriable() -> Bool? {
        switch self {
        case .overLimit:
            return true
        default:
            return nil
        }
    }
}

private extension SmokeHTTPClient.HTTPClientError {
    func isRetriable() -> Bool {
        if let typedError = self.cause as? SimpleQueueError, let isRetriable = typedError.isRetriable() {
            return isRetriable
        } else {
            return self.isRetriableAccordingToCategory
        }
    }
}

/**
 AWS Client for the SimpleQueue service.
 */
public struct AWSSimpleQueueClient<InvocationReportingType: HTTPClientCoreInvocationReporting>: SimpleQueueClientProtocol {
    let httpClient: HTTPOperationsClient
    let listHttpClient: HTTPOperationsClient
    let ownsHttpClients: Bool
    let awsRegion: AWSRegion
    let service: String
    let apiVersion: String
    let target: String?
    let retryConfiguration: HTTPClientRetryConfiguration
    let retryOnErrorProvider: (SmokeHTTPClient.HTTPClientError) -> Bool
    let credentialsProvider: CredentialsProvider
    
    public let reporting: InvocationReportingType

    let operationsReporting: SimpleQueueOperationsReporting
    let invocationsReporting: SimpleQueueInvocationsReporting<InvocationReportingType>
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                endpointHostName: String,
                endpointPort: Int = 443,
                requiresTLS: Bool? = nil,
                service: String = "sqs",
                contentType: String = "application/octet-stream",
                apiVersion: String = "2012-11-05",
                connectionTimeoutSeconds: Int64 = 10,
                retryConfiguration: HTTPClientRetryConfiguration = .default,
                eventLoopProvider: HTTPClient.EventLoopGroupProvider = .createNew,
                connectionPoolConfiguration: HTTPClient.Configuration.ConnectionPool? = nil,
                reportingConfiguration: SmokeAWSClientReportingConfiguration<SimpleQueueModelOperations>
                    = SmokeAWSClientReportingConfiguration<SimpleQueueModelOperations>() ) {
        let useTLS = requiresTLS ?? AWSHTTPClientDelegate.requiresTLS(forEndpointPort: endpointPort)
        let clientDelegate = XMLAWSHttpClientDelegate<SimpleQueueError>(requiresTLS: useTLS)

        let clientDelegateForListHttpClient = XMLAWSHttpClientDelegate<SimpleQueueError>(requiresTLS: useTLS,
            outputMapDecodingStrategy: .collapseMapUsingTags(keyTag: "Key", valueTag: "Value"), 
            inputQueryMapDecodingStrategy: .separateQueryEntriesWith(keyTag: "Key", valueTag: "Value"))

        self.httpClient = HTTPOperationsClient(
            endpointHostName: endpointHostName,
            endpointPort: endpointPort,
            contentType: contentType,
            clientDelegate: clientDelegate,
            connectionTimeoutSeconds: connectionTimeoutSeconds,
            eventLoopProvider: eventLoopProvider,
            connectionPoolConfiguration: connectionPoolConfiguration)
        self.listHttpClient = HTTPOperationsClient(
            endpointHostName: endpointHostName,
            endpointPort: endpointPort,
            contentType: contentType,
            clientDelegate: clientDelegateForListHttpClient,
            connectionTimeoutSeconds: connectionTimeoutSeconds,
            eventLoopProvider: eventLoopProvider,
            connectionPoolConfiguration: connectionPoolConfiguration)
        self.ownsHttpClients = true
        self.awsRegion = awsRegion
        self.service = service
        self.target = nil
        self.credentialsProvider = credentialsProvider
        self.retryConfiguration = retryConfiguration
        self.reporting = reporting
        self.retryOnErrorProvider = { error in error.isRetriable() }
        self.apiVersion = apiVersion
        self.operationsReporting = SimpleQueueOperationsReporting(clientName: "AWSSimpleQueueClient", reportingConfiguration: reportingConfiguration)
        self.invocationsReporting = SimpleQueueInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
    }
    
    internal init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                httpClient: HTTPOperationsClient, listHttpClient: HTTPOperationsClient,
                service: String,
                apiVersion: String,
                retryOnErrorProvider: @escaping (SmokeHTTPClient.HTTPClientError) -> Bool,
                retryConfiguration: HTTPClientRetryConfiguration,
                operationsReporting: SimpleQueueOperationsReporting) {
        self.httpClient = httpClient
        self.listHttpClient = listHttpClient
        self.ownsHttpClients = false
        self.awsRegion = awsRegion
        self.service = service
        self.target = nil
        self.credentialsProvider = credentialsProvider
        self.retryConfiguration = retryConfiguration
        self.reporting = reporting
        self.retryOnErrorProvider = retryOnErrorProvider
        self.apiVersion = apiVersion
        self.operationsReporting = operationsReporting
        self.invocationsReporting = SimpleQueueInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
    }

    /**
     Gracefully shuts down this client. This function is idempotent and
     will handle being called multiple times. Will block until shutdown is complete.
     */
    public func syncShutdown() throws {
        if self.ownsHttpClients {
            try self.httpClient.syncShutdown()
            try self.listHttpClient.syncShutdown()
        }
    }

    // renamed `syncShutdown` to make it clearer this version of shutdown will block.
    @available(*, deprecated, renamed: "syncShutdown")
    public func close() throws {
        if self.ownsHttpClients {
            try self.httpClient.close()
            try self.listHttpClient.close()
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
            try await self.listHttpClient.shutdown()
        }
    }
    #endif

    /**
     Invokes the AddPermission operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AddPermissionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: overLimit.
     */
    public func addPermissionAsync(
            input: SimpleQueueModel.AddPermissionRequest, 
            completion: @escaping (SimpleQueueError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.addPermission,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = AddPermissionOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.addPermission.rawValue,
            version: apiVersion)

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
     Invokes the AddPermission operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddPermissionRequest object being passed to this operation.
     - Throws: overLimit.
     */
    public func addPermissionSync(
            input: SimpleQueueModel.AddPermissionRequest) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.addPermission,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = AddPermissionOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.addPermission.rawValue,
            version: apiVersion)

        do {
            try httpClient.executeSyncRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the CancelMessageMoveTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelMessageMoveTaskRequest object being passed to this operation.
         - completion: The CancelMessageMoveTaskResultForCancelMessageMoveTask object or an error will be passed to this 
           callback when the operation is complete. The CancelMessageMoveTaskResultForCancelMessageMoveTask
           object will be validated before being returned to caller.
           The possible errors are: resourceNotFound, unsupportedOperation.
     */
    public func cancelMessageMoveTaskAsync(
            input: SimpleQueueModel.CancelMessageMoveTaskRequest, 
            completion: @escaping (Result<SimpleQueueModel.CancelMessageMoveTaskResultForCancelMessageMoveTask, SimpleQueueError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.cancelMessageMoveTask,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = CancelMessageMoveTaskOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.cancelMessageMoveTask.rawValue,
            version: apiVersion)

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
     Invokes the CancelMessageMoveTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelMessageMoveTaskRequest object being passed to this operation.
     - Returns: The CancelMessageMoveTaskResultForCancelMessageMoveTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: resourceNotFound, unsupportedOperation.
     */
    public func cancelMessageMoveTaskSync(
            input: SimpleQueueModel.CancelMessageMoveTaskRequest) throws -> SimpleQueueModel.CancelMessageMoveTaskResultForCancelMessageMoveTask {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.cancelMessageMoveTask,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = CancelMessageMoveTaskOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.cancelMessageMoveTask.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ChangeMessageVisibility operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ChangeMessageVisibilityRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: messageNotInflight, receiptHandleIsInvalid.
     */
    public func changeMessageVisibilityAsync(
            input: SimpleQueueModel.ChangeMessageVisibilityRequest, 
            completion: @escaping (SimpleQueueError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.changeMessageVisibility,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ChangeMessageVisibilityOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.changeMessageVisibility.rawValue,
            version: apiVersion)

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
     Invokes the ChangeMessageVisibility operation waiting for the response before returning.

     - Parameters:
         - input: The validated ChangeMessageVisibilityRequest object being passed to this operation.
     - Throws: messageNotInflight, receiptHandleIsInvalid.
     */
    public func changeMessageVisibilitySync(
            input: SimpleQueueModel.ChangeMessageVisibilityRequest) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.changeMessageVisibility,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ChangeMessageVisibilityOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.changeMessageVisibility.rawValue,
            version: apiVersion)

        do {
            try httpClient.executeSyncRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ChangeMessageVisibilityBatch operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ChangeMessageVisibilityBatchRequest object being passed to this operation.
         - completion: The ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch object or an error will be passed to this 
           callback when the operation is complete. The ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch
           object will be validated before being returned to caller.
           The possible errors are: batchEntryIdsNotDistinct, emptyBatchRequest, invalidBatchEntryId, tooManyEntriesInBatchRequest.
     */
    public func changeMessageVisibilityBatchAsync(
            input: SimpleQueueModel.ChangeMessageVisibilityBatchRequest, 
            completion: @escaping (Result<SimpleQueueModel.ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch, SimpleQueueError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.changeMessageVisibilityBatch,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ChangeMessageVisibilityBatchOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.changeMessageVisibilityBatch.rawValue,
            version: apiVersion)

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
     Invokes the ChangeMessageVisibilityBatch operation waiting for the response before returning.

     - Parameters:
         - input: The validated ChangeMessageVisibilityBatchRequest object being passed to this operation.
     - Returns: The ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: batchEntryIdsNotDistinct, emptyBatchRequest, invalidBatchEntryId, tooManyEntriesInBatchRequest.
     */
    public func changeMessageVisibilityBatchSync(
            input: SimpleQueueModel.ChangeMessageVisibilityBatchRequest) throws -> SimpleQueueModel.ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.changeMessageVisibilityBatch,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ChangeMessageVisibilityBatchOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.changeMessageVisibilityBatch.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the CreateQueue operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateQueueRequest object being passed to this operation.
         - completion: The CreateQueueResultForCreateQueue object or an error will be passed to this 
           callback when the operation is complete. The CreateQueueResultForCreateQueue
           object will be validated before being returned to caller.
           The possible errors are: queueDeletedRecently, queueNameExists.
     */
    public func createQueueAsync(
            input: SimpleQueueModel.CreateQueueRequest, 
            completion: @escaping (Result<SimpleQueueModel.CreateQueueResultForCreateQueue, SimpleQueueError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createQueue,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = CreateQueueOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.createQueue.rawValue,
            version: apiVersion)

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
     Invokes the CreateQueue operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateQueueRequest object being passed to this operation.
     - Returns: The CreateQueueResultForCreateQueue object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: queueDeletedRecently, queueNameExists.
     */
    public func createQueueSync(
            input: SimpleQueueModel.CreateQueueRequest) throws -> SimpleQueueModel.CreateQueueResultForCreateQueue {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createQueue,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = CreateQueueOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.createQueue.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteMessage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteMessageRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidIdFormat, receiptHandleIsInvalid.
     */
    public func deleteMessageAsync(
            input: SimpleQueueModel.DeleteMessageRequest, 
            completion: @escaping (SimpleQueueError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteMessage,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteMessageOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.deleteMessage.rawValue,
            version: apiVersion)

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
     Invokes the DeleteMessage operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteMessageRequest object being passed to this operation.
     - Throws: invalidIdFormat, receiptHandleIsInvalid.
     */
    public func deleteMessageSync(
            input: SimpleQueueModel.DeleteMessageRequest) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteMessage,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteMessageOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.deleteMessage.rawValue,
            version: apiVersion)

        do {
            try httpClient.executeSyncRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteMessageBatch operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteMessageBatchRequest object being passed to this operation.
         - completion: The DeleteMessageBatchResultForDeleteMessageBatch object or an error will be passed to this 
           callback when the operation is complete. The DeleteMessageBatchResultForDeleteMessageBatch
           object will be validated before being returned to caller.
           The possible errors are: batchEntryIdsNotDistinct, emptyBatchRequest, invalidBatchEntryId, tooManyEntriesInBatchRequest.
     */
    public func deleteMessageBatchAsync(
            input: SimpleQueueModel.DeleteMessageBatchRequest, 
            completion: @escaping (Result<SimpleQueueModel.DeleteMessageBatchResultForDeleteMessageBatch, SimpleQueueError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteMessageBatch,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteMessageBatchOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.deleteMessageBatch.rawValue,
            version: apiVersion)

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
     Invokes the DeleteMessageBatch operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteMessageBatchRequest object being passed to this operation.
     - Returns: The DeleteMessageBatchResultForDeleteMessageBatch object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: batchEntryIdsNotDistinct, emptyBatchRequest, invalidBatchEntryId, tooManyEntriesInBatchRequest.
     */
    public func deleteMessageBatchSync(
            input: SimpleQueueModel.DeleteMessageBatchRequest) throws -> SimpleQueueModel.DeleteMessageBatchResultForDeleteMessageBatch {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteMessageBatch,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteMessageBatchOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.deleteMessageBatch.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteQueue operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteQueueRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteQueueAsync(
            input: SimpleQueueModel.DeleteQueueRequest, 
            completion: @escaping (SimpleQueueError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteQueue,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteQueueOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.deleteQueue.rawValue,
            version: apiVersion)

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
     Invokes the DeleteQueue operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteQueueRequest object being passed to this operation.
     */
    public func deleteQueueSync(
            input: SimpleQueueModel.DeleteQueueRequest) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteQueue,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteQueueOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.deleteQueue.rawValue,
            version: apiVersion)

        do {
            try httpClient.executeSyncRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetQueueAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetQueueAttributesRequest object being passed to this operation.
         - completion: The GetQueueAttributesResultForGetQueueAttributes object or an error will be passed to this 
           callback when the operation is complete. The GetQueueAttributesResultForGetQueueAttributes
           object will be validated before being returned to caller.
           The possible errors are: invalidAttributeName.
     */
    public func getQueueAttributesAsync(
            input: SimpleQueueModel.GetQueueAttributesRequest, 
            completion: @escaping (Result<SimpleQueueModel.GetQueueAttributesResultForGetQueueAttributes, SimpleQueueError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getQueueAttributes,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetQueueAttributesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.getQueueAttributes.rawValue,
            version: apiVersion)

        _ = try listHttpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the GetQueueAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetQueueAttributesRequest object being passed to this operation.
     - Returns: The GetQueueAttributesResultForGetQueueAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidAttributeName.
     */
    public func getQueueAttributesSync(
            input: SimpleQueueModel.GetQueueAttributesRequest) throws -> SimpleQueueModel.GetQueueAttributesResultForGetQueueAttributes {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getQueueAttributes,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetQueueAttributesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.getQueueAttributes.rawValue,
            version: apiVersion)

        do {
            return try listHttpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetQueueUrl operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetQueueUrlRequest object being passed to this operation.
         - completion: The GetQueueUrlResultForGetQueueUrl object or an error will be passed to this 
           callback when the operation is complete. The GetQueueUrlResultForGetQueueUrl
           object will be validated before being returned to caller.
           The possible errors are: queueDoesNotExist.
     */
    public func getQueueUrlAsync(
            input: SimpleQueueModel.GetQueueUrlRequest, 
            completion: @escaping (Result<SimpleQueueModel.GetQueueUrlResultForGetQueueUrl, SimpleQueueError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getQueueUrl,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetQueueUrlOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.getQueueUrl.rawValue,
            version: apiVersion)

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
     Invokes the GetQueueUrl operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetQueueUrlRequest object being passed to this operation.
     - Returns: The GetQueueUrlResultForGetQueueUrl object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: queueDoesNotExist.
     */
    public func getQueueUrlSync(
            input: SimpleQueueModel.GetQueueUrlRequest) throws -> SimpleQueueModel.GetQueueUrlResultForGetQueueUrl {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getQueueUrl,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetQueueUrlOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.getQueueUrl.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListDeadLetterSourceQueues operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListDeadLetterSourceQueuesRequest object being passed to this operation.
         - completion: The ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues object or an error will be passed to this 
           callback when the operation is complete. The ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues
           object will be validated before being returned to caller.
           The possible errors are: queueDoesNotExist.
     */
    public func listDeadLetterSourceQueuesAsync(
            input: SimpleQueueModel.ListDeadLetterSourceQueuesRequest, 
            completion: @escaping (Result<SimpleQueueModel.ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues, SimpleQueueError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listDeadLetterSourceQueues,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListDeadLetterSourceQueuesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.listDeadLetterSourceQueues.rawValue,
            version: apiVersion)

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
     Invokes the ListDeadLetterSourceQueues operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListDeadLetterSourceQueuesRequest object being passed to this operation.
     - Returns: The ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: queueDoesNotExist.
     */
    public func listDeadLetterSourceQueuesSync(
            input: SimpleQueueModel.ListDeadLetterSourceQueuesRequest) throws -> SimpleQueueModel.ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listDeadLetterSourceQueues,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListDeadLetterSourceQueuesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.listDeadLetterSourceQueues.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListMessageMoveTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListMessageMoveTasksRequest object being passed to this operation.
         - completion: The ListMessageMoveTasksResultForListMessageMoveTasks object or an error will be passed to this 
           callback when the operation is complete. The ListMessageMoveTasksResultForListMessageMoveTasks
           object will be validated before being returned to caller.
           The possible errors are: resourceNotFound, unsupportedOperation.
     */
    public func listMessageMoveTasksAsync(
            input: SimpleQueueModel.ListMessageMoveTasksRequest, 
            completion: @escaping (Result<SimpleQueueModel.ListMessageMoveTasksResultForListMessageMoveTasks, SimpleQueueError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listMessageMoveTasks,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListMessageMoveTasksOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.listMessageMoveTasks.rawValue,
            version: apiVersion)

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
     Invokes the ListMessageMoveTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListMessageMoveTasksRequest object being passed to this operation.
     - Returns: The ListMessageMoveTasksResultForListMessageMoveTasks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: resourceNotFound, unsupportedOperation.
     */
    public func listMessageMoveTasksSync(
            input: SimpleQueueModel.ListMessageMoveTasksRequest) throws -> SimpleQueueModel.ListMessageMoveTasksResultForListMessageMoveTasks {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listMessageMoveTasks,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListMessageMoveTasksOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.listMessageMoveTasks.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListQueueTags operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListQueueTagsRequest object being passed to this operation.
         - completion: The ListQueueTagsResultForListQueueTags object or an error will be passed to this 
           callback when the operation is complete. The ListQueueTagsResultForListQueueTags
           object will be validated before being returned to caller.
     */
    public func listQueueTagsAsync(
            input: SimpleQueueModel.ListQueueTagsRequest, 
            completion: @escaping (Result<SimpleQueueModel.ListQueueTagsResultForListQueueTags, SimpleQueueError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listQueueTags,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListQueueTagsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.listQueueTags.rawValue,
            version: apiVersion)

        _ = try listHttpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListQueueTags operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListQueueTagsRequest object being passed to this operation.
     - Returns: The ListQueueTagsResultForListQueueTags object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listQueueTagsSync(
            input: SimpleQueueModel.ListQueueTagsRequest) throws -> SimpleQueueModel.ListQueueTagsResultForListQueueTags {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listQueueTags,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListQueueTagsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.listQueueTags.rawValue,
            version: apiVersion)

        do {
            return try listHttpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListQueues operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListQueuesRequest object being passed to this operation.
         - completion: The ListQueuesResultForListQueues object or an error will be passed to this 
           callback when the operation is complete. The ListQueuesResultForListQueues
           object will be validated before being returned to caller.
     */
    public func listQueuesAsync(
            input: SimpleQueueModel.ListQueuesRequest, 
            completion: @escaping (Result<SimpleQueueModel.ListQueuesResultForListQueues, SimpleQueueError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listQueues,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListQueuesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.listQueues.rawValue,
            version: apiVersion)

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
     Invokes the ListQueues operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListQueuesRequest object being passed to this operation.
     - Returns: The ListQueuesResultForListQueues object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listQueuesSync(
            input: SimpleQueueModel.ListQueuesRequest) throws -> SimpleQueueModel.ListQueuesResultForListQueues {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listQueues,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListQueuesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.listQueues.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the PurgeQueue operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PurgeQueueRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: purgeQueueInProgress, queueDoesNotExist.
     */
    public func purgeQueueAsync(
            input: SimpleQueueModel.PurgeQueueRequest, 
            completion: @escaping (SimpleQueueError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.purgeQueue,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = PurgeQueueOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.purgeQueue.rawValue,
            version: apiVersion)

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
     Invokes the PurgeQueue operation waiting for the response before returning.

     - Parameters:
         - input: The validated PurgeQueueRequest object being passed to this operation.
     - Throws: purgeQueueInProgress, queueDoesNotExist.
     */
    public func purgeQueueSync(
            input: SimpleQueueModel.PurgeQueueRequest) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.purgeQueue,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = PurgeQueueOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.purgeQueue.rawValue,
            version: apiVersion)

        do {
            try httpClient.executeSyncRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ReceiveMessage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReceiveMessageRequest object being passed to this operation.
         - completion: The ReceiveMessageResultForReceiveMessage object or an error will be passed to this 
           callback when the operation is complete. The ReceiveMessageResultForReceiveMessage
           object will be validated before being returned to caller.
           The possible errors are: overLimit.
     */
    public func receiveMessageAsync(
            input: SimpleQueueModel.ReceiveMessageRequest, 
            completion: @escaping (Result<SimpleQueueModel.ReceiveMessageResultForReceiveMessage, SimpleQueueError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.receiveMessage,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ReceiveMessageOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.receiveMessage.rawValue,
            version: apiVersion)

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
     Invokes the ReceiveMessage operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReceiveMessageRequest object being passed to this operation.
     - Returns: The ReceiveMessageResultForReceiveMessage object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: overLimit.
     */
    public func receiveMessageSync(
            input: SimpleQueueModel.ReceiveMessageRequest) throws -> SimpleQueueModel.ReceiveMessageResultForReceiveMessage {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.receiveMessage,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ReceiveMessageOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.receiveMessage.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the RemovePermission operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemovePermissionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func removePermissionAsync(
            input: SimpleQueueModel.RemovePermissionRequest, 
            completion: @escaping (SimpleQueueError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.removePermission,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = RemovePermissionOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.removePermission.rawValue,
            version: apiVersion)

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
     Invokes the RemovePermission operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemovePermissionRequest object being passed to this operation.
     */
    public func removePermissionSync(
            input: SimpleQueueModel.RemovePermissionRequest) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.removePermission,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = RemovePermissionOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.removePermission.rawValue,
            version: apiVersion)

        do {
            try httpClient.executeSyncRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the SendMessage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SendMessageRequest object being passed to this operation.
         - completion: The SendMessageResultForSendMessage object or an error will be passed to this 
           callback when the operation is complete. The SendMessageResultForSendMessage
           object will be validated before being returned to caller.
           The possible errors are: invalidMessageContents, unsupportedOperation.
     */
    public func sendMessageAsync(
            input: SimpleQueueModel.SendMessageRequest, 
            completion: @escaping (Result<SimpleQueueModel.SendMessageResultForSendMessage, SimpleQueueError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.sendMessage,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = SendMessageOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.sendMessage.rawValue,
            version: apiVersion)

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
     Invokes the SendMessage operation waiting for the response before returning.

     - Parameters:
         - input: The validated SendMessageRequest object being passed to this operation.
     - Returns: The SendMessageResultForSendMessage object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidMessageContents, unsupportedOperation.
     */
    public func sendMessageSync(
            input: SimpleQueueModel.SendMessageRequest) throws -> SimpleQueueModel.SendMessageResultForSendMessage {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.sendMessage,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = SendMessageOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.sendMessage.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the SendMessageBatch operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SendMessageBatchRequest object being passed to this operation.
         - completion: The SendMessageBatchResultForSendMessageBatch object or an error will be passed to this 
           callback when the operation is complete. The SendMessageBatchResultForSendMessageBatch
           object will be validated before being returned to caller.
           The possible errors are: batchEntryIdsNotDistinct, batchRequestTooLong, emptyBatchRequest, invalidBatchEntryId, tooManyEntriesInBatchRequest, unsupportedOperation.
     */
    public func sendMessageBatchAsync(
            input: SimpleQueueModel.SendMessageBatchRequest, 
            completion: @escaping (Result<SimpleQueueModel.SendMessageBatchResultForSendMessageBatch, SimpleQueueError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.sendMessageBatch,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = SendMessageBatchOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.sendMessageBatch.rawValue,
            version: apiVersion)

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
     Invokes the SendMessageBatch operation waiting for the response before returning.

     - Parameters:
         - input: The validated SendMessageBatchRequest object being passed to this operation.
     - Returns: The SendMessageBatchResultForSendMessageBatch object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: batchEntryIdsNotDistinct, batchRequestTooLong, emptyBatchRequest, invalidBatchEntryId, tooManyEntriesInBatchRequest, unsupportedOperation.
     */
    public func sendMessageBatchSync(
            input: SimpleQueueModel.SendMessageBatchRequest) throws -> SimpleQueueModel.SendMessageBatchResultForSendMessageBatch {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.sendMessageBatch,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = SendMessageBatchOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.sendMessageBatch.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the SetQueueAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetQueueAttributesRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidAttributeName.
     */
    public func setQueueAttributesAsync(
            input: SimpleQueueModel.SetQueueAttributesRequest, 
            completion: @escaping (SimpleQueueError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.setQueueAttributes,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = SetQueueAttributesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.setQueueAttributes.rawValue,
            version: apiVersion)

        _ = try listHttpClient.executeOperationAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the SetQueueAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetQueueAttributesRequest object being passed to this operation.
     - Throws: invalidAttributeName.
     */
    public func setQueueAttributesSync(
            input: SimpleQueueModel.SetQueueAttributesRequest) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.setQueueAttributes,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = SetQueueAttributesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.setQueueAttributes.rawValue,
            version: apiVersion)

        do {
            try listHttpClient.executeSyncRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the StartMessageMoveTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartMessageMoveTaskRequest object being passed to this operation.
         - completion: The StartMessageMoveTaskResultForStartMessageMoveTask object or an error will be passed to this 
           callback when the operation is complete. The StartMessageMoveTaskResultForStartMessageMoveTask
           object will be validated before being returned to caller.
           The possible errors are: resourceNotFound, unsupportedOperation.
     */
    public func startMessageMoveTaskAsync(
            input: SimpleQueueModel.StartMessageMoveTaskRequest, 
            completion: @escaping (Result<SimpleQueueModel.StartMessageMoveTaskResultForStartMessageMoveTask, SimpleQueueError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.startMessageMoveTask,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = StartMessageMoveTaskOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.startMessageMoveTask.rawValue,
            version: apiVersion)

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
     Invokes the StartMessageMoveTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartMessageMoveTaskRequest object being passed to this operation.
     - Returns: The StartMessageMoveTaskResultForStartMessageMoveTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: resourceNotFound, unsupportedOperation.
     */
    public func startMessageMoveTaskSync(
            input: SimpleQueueModel.StartMessageMoveTaskRequest) throws -> SimpleQueueModel.StartMessageMoveTaskResultForStartMessageMoveTask {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.startMessageMoveTask,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = StartMessageMoveTaskOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.startMessageMoveTask.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the TagQueue operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagQueueRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func tagQueueAsync(
            input: SimpleQueueModel.TagQueueRequest, 
            completion: @escaping (SimpleQueueError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.tagQueue,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = TagQueueOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.tagQueue.rawValue,
            version: apiVersion)

        _ = try listHttpClient.executeOperationAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the TagQueue operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagQueueRequest object being passed to this operation.
     */
    public func tagQueueSync(
            input: SimpleQueueModel.TagQueueRequest) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.tagQueue,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = TagQueueOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.tagQueue.rawValue,
            version: apiVersion)

        do {
            try listHttpClient.executeSyncRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UntagQueue operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagQueueRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func untagQueueAsync(
            input: SimpleQueueModel.UntagQueueRequest, 
            completion: @escaping (SimpleQueueError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.untagQueue,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = UntagQueueOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.untagQueue.rawValue,
            version: apiVersion)

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
     Invokes the UntagQueue operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagQueueRequest object being passed to this operation.
     */
    public func untagQueueSync(
            input: SimpleQueueModel.UntagQueueRequest) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.untagQueue,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = UntagQueueOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.untagQueue.rawValue,
            version: apiVersion)

        do {
            try httpClient.executeSyncRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }
    
    #if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)

    /**
     Invokes the AddPermission operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AddPermissionRequest object being passed to this operation.
     - Throws: overLimit.
     */
    public func addPermission(
            input: SimpleQueueModel.AddPermissionRequest) async throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.addPermission,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = AddPermissionOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.addPermission.rawValue,
            version: apiVersion)

        do {
            try await httpClient.executeRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the CancelMessageMoveTask operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CancelMessageMoveTaskRequest object being passed to this operation.
     - Returns: The CancelMessageMoveTaskResultForCancelMessageMoveTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: resourceNotFound, unsupportedOperation.
     */
    public func cancelMessageMoveTask(
            input: SimpleQueueModel.CancelMessageMoveTaskRequest) async throws -> SimpleQueueModel.CancelMessageMoveTaskResultForCancelMessageMoveTask {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.cancelMessageMoveTask,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = CancelMessageMoveTaskOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.cancelMessageMoveTask.rawValue,
            version: apiVersion)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ChangeMessageVisibility operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ChangeMessageVisibilityRequest object being passed to this operation.
     - Throws: messageNotInflight, receiptHandleIsInvalid.
     */
    public func changeMessageVisibility(
            input: SimpleQueueModel.ChangeMessageVisibilityRequest) async throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.changeMessageVisibility,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ChangeMessageVisibilityOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.changeMessageVisibility.rawValue,
            version: apiVersion)

        do {
            try await httpClient.executeRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ChangeMessageVisibilityBatch operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ChangeMessageVisibilityBatchRequest object being passed to this operation.
     - Returns: The ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: batchEntryIdsNotDistinct, emptyBatchRequest, invalidBatchEntryId, tooManyEntriesInBatchRequest.
     */
    public func changeMessageVisibilityBatch(
            input: SimpleQueueModel.ChangeMessageVisibilityBatchRequest) async throws -> SimpleQueueModel.ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.changeMessageVisibilityBatch,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ChangeMessageVisibilityBatchOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.changeMessageVisibilityBatch.rawValue,
            version: apiVersion)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the CreateQueue operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateQueueRequest object being passed to this operation.
     - Returns: The CreateQueueResultForCreateQueue object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: queueDeletedRecently, queueNameExists.
     */
    public func createQueue(
            input: SimpleQueueModel.CreateQueueRequest) async throws -> SimpleQueueModel.CreateQueueResultForCreateQueue {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createQueue,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = CreateQueueOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.createQueue.rawValue,
            version: apiVersion)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteMessage operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteMessageRequest object being passed to this operation.
     - Throws: invalidIdFormat, receiptHandleIsInvalid.
     */
    public func deleteMessage(
            input: SimpleQueueModel.DeleteMessageRequest) async throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteMessage,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteMessageOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.deleteMessage.rawValue,
            version: apiVersion)

        do {
            try await httpClient.executeRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteMessageBatch operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteMessageBatchRequest object being passed to this operation.
     - Returns: The DeleteMessageBatchResultForDeleteMessageBatch object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: batchEntryIdsNotDistinct, emptyBatchRequest, invalidBatchEntryId, tooManyEntriesInBatchRequest.
     */
    public func deleteMessageBatch(
            input: SimpleQueueModel.DeleteMessageBatchRequest) async throws -> SimpleQueueModel.DeleteMessageBatchResultForDeleteMessageBatch {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteMessageBatch,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteMessageBatchOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.deleteMessageBatch.rawValue,
            version: apiVersion)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteQueue operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteQueueRequest object being passed to this operation.
     */
    public func deleteQueue(
            input: SimpleQueueModel.DeleteQueueRequest) async throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteQueue,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteQueueOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.deleteQueue.rawValue,
            version: apiVersion)

        do {
            try await httpClient.executeRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetQueueAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetQueueAttributesRequest object being passed to this operation.
     - Returns: The GetQueueAttributesResultForGetQueueAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidAttributeName.
     */
    public func getQueueAttributes(
            input: SimpleQueueModel.GetQueueAttributesRequest) async throws -> SimpleQueueModel.GetQueueAttributesResultForGetQueueAttributes {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getQueueAttributes,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetQueueAttributesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.getQueueAttributes.rawValue,
            version: apiVersion)

        do {
            return try await listHttpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetQueueUrl operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetQueueUrlRequest object being passed to this operation.
     - Returns: The GetQueueUrlResultForGetQueueUrl object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: queueDoesNotExist.
     */
    public func getQueueUrl(
            input: SimpleQueueModel.GetQueueUrlRequest) async throws -> SimpleQueueModel.GetQueueUrlResultForGetQueueUrl {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getQueueUrl,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetQueueUrlOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.getQueueUrl.rawValue,
            version: apiVersion)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListDeadLetterSourceQueues operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListDeadLetterSourceQueuesRequest object being passed to this operation.
     - Returns: The ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: queueDoesNotExist.
     */
    public func listDeadLetterSourceQueues(
            input: SimpleQueueModel.ListDeadLetterSourceQueuesRequest) async throws -> SimpleQueueModel.ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listDeadLetterSourceQueues,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListDeadLetterSourceQueuesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.listDeadLetterSourceQueues.rawValue,
            version: apiVersion)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListMessageMoveTasks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListMessageMoveTasksRequest object being passed to this operation.
     - Returns: The ListMessageMoveTasksResultForListMessageMoveTasks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: resourceNotFound, unsupportedOperation.
     */
    public func listMessageMoveTasks(
            input: SimpleQueueModel.ListMessageMoveTasksRequest) async throws -> SimpleQueueModel.ListMessageMoveTasksResultForListMessageMoveTasks {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listMessageMoveTasks,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListMessageMoveTasksOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.listMessageMoveTasks.rawValue,
            version: apiVersion)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListQueueTags operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListQueueTagsRequest object being passed to this operation.
     - Returns: The ListQueueTagsResultForListQueueTags object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listQueueTags(
            input: SimpleQueueModel.ListQueueTagsRequest) async throws -> SimpleQueueModel.ListQueueTagsResultForListQueueTags {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listQueueTags,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListQueueTagsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.listQueueTags.rawValue,
            version: apiVersion)

        do {
            return try await listHttpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListQueues operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListQueuesRequest object being passed to this operation.
     - Returns: The ListQueuesResultForListQueues object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listQueues(
            input: SimpleQueueModel.ListQueuesRequest) async throws -> SimpleQueueModel.ListQueuesResultForListQueues {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listQueues,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListQueuesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.listQueues.rawValue,
            version: apiVersion)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the PurgeQueue operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PurgeQueueRequest object being passed to this operation.
     - Throws: purgeQueueInProgress, queueDoesNotExist.
     */
    public func purgeQueue(
            input: SimpleQueueModel.PurgeQueueRequest) async throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.purgeQueue,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = PurgeQueueOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.purgeQueue.rawValue,
            version: apiVersion)

        do {
            try await httpClient.executeRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ReceiveMessage operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ReceiveMessageRequest object being passed to this operation.
     - Returns: The ReceiveMessageResultForReceiveMessage object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: overLimit.
     */
    public func receiveMessage(
            input: SimpleQueueModel.ReceiveMessageRequest) async throws -> SimpleQueueModel.ReceiveMessageResultForReceiveMessage {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.receiveMessage,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ReceiveMessageOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.receiveMessage.rawValue,
            version: apiVersion)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the RemovePermission operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RemovePermissionRequest object being passed to this operation.
     */
    public func removePermission(
            input: SimpleQueueModel.RemovePermissionRequest) async throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.removePermission,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = RemovePermissionOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.removePermission.rawValue,
            version: apiVersion)

        do {
            try await httpClient.executeRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the SendMessage operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SendMessageRequest object being passed to this operation.
     - Returns: The SendMessageResultForSendMessage object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidMessageContents, unsupportedOperation.
     */
    public func sendMessage(
            input: SimpleQueueModel.SendMessageRequest) async throws -> SimpleQueueModel.SendMessageResultForSendMessage {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.sendMessage,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = SendMessageOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.sendMessage.rawValue,
            version: apiVersion)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the SendMessageBatch operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SendMessageBatchRequest object being passed to this operation.
     - Returns: The SendMessageBatchResultForSendMessageBatch object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: batchEntryIdsNotDistinct, batchRequestTooLong, emptyBatchRequest, invalidBatchEntryId, tooManyEntriesInBatchRequest, unsupportedOperation.
     */
    public func sendMessageBatch(
            input: SimpleQueueModel.SendMessageBatchRequest) async throws -> SimpleQueueModel.SendMessageBatchResultForSendMessageBatch {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.sendMessageBatch,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = SendMessageBatchOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.sendMessageBatch.rawValue,
            version: apiVersion)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the SetQueueAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SetQueueAttributesRequest object being passed to this operation.
     - Throws: invalidAttributeName.
     */
    public func setQueueAttributes(
            input: SimpleQueueModel.SetQueueAttributesRequest) async throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.setQueueAttributes,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = SetQueueAttributesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.setQueueAttributes.rawValue,
            version: apiVersion)

        do {
            try await listHttpClient.executeRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the StartMessageMoveTask operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartMessageMoveTaskRequest object being passed to this operation.
     - Returns: The StartMessageMoveTaskResultForStartMessageMoveTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: resourceNotFound, unsupportedOperation.
     */
    public func startMessageMoveTask(
            input: SimpleQueueModel.StartMessageMoveTaskRequest) async throws -> SimpleQueueModel.StartMessageMoveTaskResultForStartMessageMoveTask {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.startMessageMoveTask,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = StartMessageMoveTaskOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.startMessageMoveTask.rawValue,
            version: apiVersion)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the TagQueue operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TagQueueRequest object being passed to this operation.
     */
    public func tagQueue(
            input: SimpleQueueModel.TagQueueRequest) async throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.tagQueue,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = TagQueueOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.tagQueue.rawValue,
            version: apiVersion)

        do {
            try await listHttpClient.executeRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UntagQueue operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UntagQueueRequest object being passed to this operation.
     */
    public func untagQueue(
            input: SimpleQueueModel.UntagQueueRequest) async throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.untagQueue,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = UntagQueueOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.untagQueue.rawValue,
            version: apiVersion)

        do {
            try await httpClient.executeRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SimpleQueueError = error.asTypedError()
            throw typedError
        }
    }
    #endif
}
