// Copyright 2018-2019 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

public enum SimpleQueueClientError: Swift.Error {
    case invalidEndpoint(String)
    case unsupportedPayload
    case unknownError(String?)
}

private extension SimpleQueueError {
    func isRetriable() -> Bool {
        switch self {
        case .overLimit:
            return true
        default:
            return false
        }
    }
}

private extension Swift.Error {
    func isRetriable() -> Bool {
        if let typedError = self as? SimpleQueueError {
            return typedError.isRetriable()
        } else {
            return true
        }
    }
}

/**
 AWS Client for the SimpleQueue service.
 */
public struct AWSSimpleQueueClient: SimpleQueueClientProtocol {
    let httpClient: HTTPClient
    let listHttpClient: HTTPClient
    let awsRegion: AWSRegion
    let service: String
    let apiVersion: String
    let target: String?
    let retryConfiguration: HTTPClientRetryConfiguration
    let retryOnErrorProvider: (Swift.Error) -> Bool
    let credentialsProvider: CredentialsProvider

    let addPermissionOperationReporting: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>
    let changeMessageVisibilityOperationReporting: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>
    let changeMessageVisibilityBatchOperationReporting: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>
    let createQueueOperationReporting: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>
    let deleteMessageOperationReporting: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>
    let deleteMessageBatchOperationReporting: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>
    let deleteQueueOperationReporting: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>
    let getQueueAttributesOperationReporting: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>
    let getQueueUrlOperationReporting: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>
    let listDeadLetterSourceQueuesOperationReporting: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>
    let listQueueTagsOperationReporting: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>
    let listQueuesOperationReporting: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>
    let purgeQueueOperationReporting: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>
    let receiveMessageOperationReporting: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>
    let removePermissionOperationReporting: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>
    let sendMessageOperationReporting: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>
    let sendMessageBatchOperationReporting: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>
    let setQueueAttributesOperationReporting: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>
    let tagQueueOperationReporting: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>
    let untagQueueOperationReporting: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                endpointHostName: String,
                endpointPort: Int = 443,
                service: String = "sqs",
                contentType: String = "application/octet-stream",
                apiVersion: String = "2012-11-05",
                connectionTimeoutSeconds: Int64 = 10,
                retryConfiguration: HTTPClientRetryConfiguration = .default,
                eventLoopProvider: HTTPClient.EventLoopProvider = .spawnNewThreads,
                reportingConfiguration: SmokeAWSClientReportingConfiguration<SimpleQueueModelOperations>
                    = SmokeAWSClientReportingConfiguration<SimpleQueueModelOperations>() ) {
        let clientDelegate = XMLAWSHttpClientDelegate<SimpleQueueError>()

        let clientDelegateForListHttpClient = XMLAWSHttpClientDelegate<SimpleQueueError>(
            outputMapDecodingStrategy: .collapseMapUsingTags(keyTag: "Key", valueTag: "Value"), 
            inputQueryMapDecodingStrategy: .separateQueryEntriesWith(keyTag: "Key", valueTag: "Value"))

        self.httpClient = HTTPClient(endpointHostName: endpointHostName,
                                     endpointPort: endpointPort,
                                     contentType: contentType,
                                     clientDelegate: clientDelegate,
                                     connectionTimeoutSeconds: connectionTimeoutSeconds,
                                     eventLoopProvider: eventLoopProvider)
        self.listHttpClient = HTTPClient(endpointHostName: endpointHostName,
                                          endpointPort: endpointPort,
                                          contentType: contentType,
                                          clientDelegate: clientDelegateForListHttpClient,
                                          connectionTimeoutSeconds: connectionTimeoutSeconds,
                                          eventLoopProvider: eventLoopProvider)
        self.awsRegion = awsRegion
        self.service = service
        self.target = nil
        self.credentialsProvider = credentialsProvider
        self.retryConfiguration = retryConfiguration
        self.retryOnErrorProvider = { error in error.isRetriable() }
        self.apiVersion = apiVersion

        self.addPermissionOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSSimpleQueueClient", operation: .addPermission, configuration: reportingConfiguration)
        self.changeMessageVisibilityOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSSimpleQueueClient", operation: .changeMessageVisibility, configuration: reportingConfiguration)
        self.changeMessageVisibilityBatchOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSSimpleQueueClient", operation: .changeMessageVisibilityBatch, configuration: reportingConfiguration)
        self.createQueueOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSSimpleQueueClient", operation: .createQueue, configuration: reportingConfiguration)
        self.deleteMessageOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSSimpleQueueClient", operation: .deleteMessage, configuration: reportingConfiguration)
        self.deleteMessageBatchOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSSimpleQueueClient", operation: .deleteMessageBatch, configuration: reportingConfiguration)
        self.deleteQueueOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSSimpleQueueClient", operation: .deleteQueue, configuration: reportingConfiguration)
        self.getQueueAttributesOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSSimpleQueueClient", operation: .getQueueAttributes, configuration: reportingConfiguration)
        self.getQueueUrlOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSSimpleQueueClient", operation: .getQueueUrl, configuration: reportingConfiguration)
        self.listDeadLetterSourceQueuesOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSSimpleQueueClient", operation: .listDeadLetterSourceQueues, configuration: reportingConfiguration)
        self.listQueueTagsOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSSimpleQueueClient", operation: .listQueueTags, configuration: reportingConfiguration)
        self.listQueuesOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSSimpleQueueClient", operation: .listQueues, configuration: reportingConfiguration)
        self.purgeQueueOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSSimpleQueueClient", operation: .purgeQueue, configuration: reportingConfiguration)
        self.receiveMessageOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSSimpleQueueClient", operation: .receiveMessage, configuration: reportingConfiguration)
        self.removePermissionOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSSimpleQueueClient", operation: .removePermission, configuration: reportingConfiguration)
        self.sendMessageOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSSimpleQueueClient", operation: .sendMessage, configuration: reportingConfiguration)
        self.sendMessageBatchOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSSimpleQueueClient", operation: .sendMessageBatch, configuration: reportingConfiguration)
        self.setQueueAttributesOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSSimpleQueueClient", operation: .setQueueAttributes, configuration: reportingConfiguration)
        self.tagQueueOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSSimpleQueueClient", operation: .tagQueue, configuration: reportingConfiguration)
        self.untagQueueOperationReporting = StandardSmokeAWSOperationReporting(
            clientName: "AWSSimpleQueueClient", operation: .untagQueue, configuration: reportingConfiguration)
    }

    /**
     Gracefully shuts down this client. This function is idempotent and
     will handle being called multiple times.
     */
    public func close() {
        httpClient.close()
        listHttpClient.close()
    }

    /**
     Waits for the client to be closed. If close() is not called,
     this will block forever.
     */
    public func wait() {
        httpClient.wait()
        listHttpClient.wait()
    }

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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: addPermissionOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = AddPermissionOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.addPermission.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
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
            input: SimpleQueueModel.AddPermissionRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: addPermissionOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = AddPermissionOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.addPermission.rawValue,
            version: apiVersion)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: changeMessageVisibilityOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = ChangeMessageVisibilityOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.changeMessageVisibility.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
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
            input: SimpleQueueModel.ChangeMessageVisibilityRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: changeMessageVisibilityOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = ChangeMessageVisibilityOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.changeMessageVisibility.rawValue,
            version: apiVersion)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleQueueModel.ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch, HTTPClientError>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: changeMessageVisibilityBatchOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = ChangeMessageVisibilityBatchOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.changeMessageVisibilityBatch.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncRetriableWithOutput(
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
            input: SimpleQueueModel.ChangeMessageVisibilityBatchRequest,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleQueueModel.ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: changeMessageVisibilityBatchOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = ChangeMessageVisibilityBatchOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.changeMessageVisibilityBatch.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleQueueModel.CreateQueueResultForCreateQueue, HTTPClientError>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: createQueueOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = CreateQueueOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.createQueue.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncRetriableWithOutput(
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
            input: SimpleQueueModel.CreateQueueRequest,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleQueueModel.CreateQueueResultForCreateQueue {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: createQueueOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = CreateQueueOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.createQueue.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: deleteMessageOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteMessageOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.deleteMessage.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
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
            input: SimpleQueueModel.DeleteMessageRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: deleteMessageOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteMessageOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.deleteMessage.rawValue,
            version: apiVersion)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleQueueModel.DeleteMessageBatchResultForDeleteMessageBatch, HTTPClientError>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: deleteMessageBatchOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteMessageBatchOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.deleteMessageBatch.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncRetriableWithOutput(
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
            input: SimpleQueueModel.DeleteMessageBatchRequest,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleQueueModel.DeleteMessageBatchResultForDeleteMessageBatch {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: deleteMessageBatchOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteMessageBatchOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.deleteMessageBatch.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: deleteQueueOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteQueueOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.deleteQueue.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
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
            input: SimpleQueueModel.DeleteQueueRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: deleteQueueOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteQueueOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.deleteQueue.rawValue,
            version: apiVersion)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleQueueModel.GetQueueAttributesResultForGetQueueAttributes, HTTPClientError>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getQueueAttributesOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = GetQueueAttributesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.getQueueAttributes.rawValue,
            version: apiVersion)

        _ = try listHttpClient.executeAsyncRetriableWithOutput(
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
            input: SimpleQueueModel.GetQueueAttributesRequest,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleQueueModel.GetQueueAttributesResultForGetQueueAttributes {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getQueueAttributesOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = GetQueueAttributesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.getQueueAttributes.rawValue,
            version: apiVersion)

        return try listHttpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleQueueModel.GetQueueUrlResultForGetQueueUrl, HTTPClientError>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getQueueUrlOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = GetQueueUrlOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.getQueueUrl.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncRetriableWithOutput(
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
            input: SimpleQueueModel.GetQueueUrlRequest,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleQueueModel.GetQueueUrlResultForGetQueueUrl {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: getQueueUrlOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = GetQueueUrlOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.getQueueUrl.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleQueueModel.ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues, HTTPClientError>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: listDeadLetterSourceQueuesOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = ListDeadLetterSourceQueuesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.listDeadLetterSourceQueues.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncRetriableWithOutput(
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
            input: SimpleQueueModel.ListDeadLetterSourceQueuesRequest,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleQueueModel.ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: listDeadLetterSourceQueuesOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = ListDeadLetterSourceQueuesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.listDeadLetterSourceQueues.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleQueueModel.ListQueueTagsResultForListQueueTags, HTTPClientError>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: listQueueTagsOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = ListQueueTagsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.listQueueTags.rawValue,
            version: apiVersion)

        _ = try listHttpClient.executeAsyncRetriableWithOutput(
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
            input: SimpleQueueModel.ListQueueTagsRequest,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleQueueModel.ListQueueTagsResultForListQueueTags {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: listQueueTagsOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = ListQueueTagsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.listQueueTags.rawValue,
            version: apiVersion)

        return try listHttpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleQueueModel.ListQueuesResultForListQueues, HTTPClientError>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: listQueuesOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = ListQueuesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.listQueues.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncRetriableWithOutput(
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
            input: SimpleQueueModel.ListQueuesRequest,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleQueueModel.ListQueuesResultForListQueues {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: listQueuesOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = ListQueuesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.listQueues.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: purgeQueueOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = PurgeQueueOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.purgeQueue.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
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
            input: SimpleQueueModel.PurgeQueueRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: purgeQueueOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = PurgeQueueOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.purgeQueue.rawValue,
            version: apiVersion)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleQueueModel.ReceiveMessageResultForReceiveMessage, HTTPClientError>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: receiveMessageOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = ReceiveMessageOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.receiveMessage.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncRetriableWithOutput(
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
            input: SimpleQueueModel.ReceiveMessageRequest,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleQueueModel.ReceiveMessageResultForReceiveMessage {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: receiveMessageOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = ReceiveMessageOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.receiveMessage.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: removePermissionOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = RemovePermissionOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.removePermission.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
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
            input: SimpleQueueModel.RemovePermissionRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: removePermissionOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = RemovePermissionOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.removePermission.rawValue,
            version: apiVersion)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleQueueModel.SendMessageResultForSendMessage, HTTPClientError>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: sendMessageOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = SendMessageOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.sendMessage.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncRetriableWithOutput(
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
            input: SimpleQueueModel.SendMessageRequest,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleQueueModel.SendMessageResultForSendMessage {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: sendMessageOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = SendMessageOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.sendMessage.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleQueueModel.SendMessageBatchResultForSendMessageBatch, HTTPClientError>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: sendMessageBatchOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = SendMessageBatchOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.sendMessageBatch.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncRetriableWithOutput(
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
            input: SimpleQueueModel.SendMessageBatchRequest,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleQueueModel.SendMessageBatchResultForSendMessageBatch {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: sendMessageBatchOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = SendMessageBatchOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.sendMessageBatch.rawValue,
            version: apiVersion)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: setQueueAttributesOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = SetQueueAttributesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.setQueueAttributes.rawValue,
            version: apiVersion)

        _ = try listHttpClient.executeAsyncRetriableWithoutOutput(
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
            input: SimpleQueueModel.SetQueueAttributesRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: setQueueAttributesOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = SetQueueAttributesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.setQueueAttributes.rawValue,
            version: apiVersion)

        try listHttpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: tagQueueOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = TagQueueOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.tagQueue.rawValue,
            version: apiVersion)

        _ = try listHttpClient.executeAsyncRetriableWithoutOutput(
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
            input: SimpleQueueModel.TagQueueRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: tagQueueOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = TagQueueOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.tagQueue.rawValue,
            version: apiVersion)

        try listHttpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: untagQueueOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = UntagQueueOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.untagQueue.rawValue,
            version: apiVersion)

        _ = try httpClient.executeAsyncRetriableWithoutOutput(
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
            input: SimpleQueueModel.UntagQueueRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let httpClientInvocationReporting = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
                                                                                  smokeAWSOperationReporting: untagQueueOperationReporting)
        let invocationContext = HTTPClientInvocationContext(reporting: httpClientInvocationReporting, handlerDelegate: handlerDelegate)
        let wrappedInput = UntagQueueOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SimpleQueueModelOperations.untagQueue.rawValue,
            version: apiVersion)

        try httpClient.executeSyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }
}
