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
// ThrowingSimpleQueueClient.swift
// SimpleQueueClient
//

import Foundation
import SimpleQueueModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the SimpleQueue service that by default always throws from its methods.
 */
public struct ThrowingSimpleQueueClient<ClientInvocationReportingType: SmokeAWSInvocationReporting>: SimpleQueueClientProtocol {
    let error: HTTPClientError
    let addPermissionAsyncOverride: AddPermissionAsyncType<ClientInvocationReportingType>?
    let addPermissionSyncOverride: AddPermissionSyncType<ClientInvocationReportingType>?
    let changeMessageVisibilityAsyncOverride: ChangeMessageVisibilityAsyncType<ClientInvocationReportingType>?
    let changeMessageVisibilitySyncOverride: ChangeMessageVisibilitySyncType<ClientInvocationReportingType>?
    let changeMessageVisibilityBatchAsyncOverride: ChangeMessageVisibilityBatchAsyncType<ClientInvocationReportingType>?
    let changeMessageVisibilityBatchSyncOverride: ChangeMessageVisibilityBatchSyncType<ClientInvocationReportingType>?
    let createQueueAsyncOverride: CreateQueueAsyncType<ClientInvocationReportingType>?
    let createQueueSyncOverride: CreateQueueSyncType<ClientInvocationReportingType>?
    let deleteMessageAsyncOverride: DeleteMessageAsyncType<ClientInvocationReportingType>?
    let deleteMessageSyncOverride: DeleteMessageSyncType<ClientInvocationReportingType>?
    let deleteMessageBatchAsyncOverride: DeleteMessageBatchAsyncType<ClientInvocationReportingType>?
    let deleteMessageBatchSyncOverride: DeleteMessageBatchSyncType<ClientInvocationReportingType>?
    let deleteQueueAsyncOverride: DeleteQueueAsyncType<ClientInvocationReportingType>?
    let deleteQueueSyncOverride: DeleteQueueSyncType<ClientInvocationReportingType>?
    let getQueueAttributesAsyncOverride: GetQueueAttributesAsyncType<ClientInvocationReportingType>?
    let getQueueAttributesSyncOverride: GetQueueAttributesSyncType<ClientInvocationReportingType>?
    let getQueueUrlAsyncOverride: GetQueueUrlAsyncType<ClientInvocationReportingType>?
    let getQueueUrlSyncOverride: GetQueueUrlSyncType<ClientInvocationReportingType>?
    let listDeadLetterSourceQueuesAsyncOverride: ListDeadLetterSourceQueuesAsyncType<ClientInvocationReportingType>?
    let listDeadLetterSourceQueuesSyncOverride: ListDeadLetterSourceQueuesSyncType<ClientInvocationReportingType>?
    let listQueueTagsAsyncOverride: ListQueueTagsAsyncType<ClientInvocationReportingType>?
    let listQueueTagsSyncOverride: ListQueueTagsSyncType<ClientInvocationReportingType>?
    let listQueuesAsyncOverride: ListQueuesAsyncType<ClientInvocationReportingType>?
    let listQueuesSyncOverride: ListQueuesSyncType<ClientInvocationReportingType>?
    let purgeQueueAsyncOverride: PurgeQueueAsyncType<ClientInvocationReportingType>?
    let purgeQueueSyncOverride: PurgeQueueSyncType<ClientInvocationReportingType>?
    let receiveMessageAsyncOverride: ReceiveMessageAsyncType<ClientInvocationReportingType>?
    let receiveMessageSyncOverride: ReceiveMessageSyncType<ClientInvocationReportingType>?
    let removePermissionAsyncOverride: RemovePermissionAsyncType<ClientInvocationReportingType>?
    let removePermissionSyncOverride: RemovePermissionSyncType<ClientInvocationReportingType>?
    let sendMessageAsyncOverride: SendMessageAsyncType<ClientInvocationReportingType>?
    let sendMessageSyncOverride: SendMessageSyncType<ClientInvocationReportingType>?
    let sendMessageBatchAsyncOverride: SendMessageBatchAsyncType<ClientInvocationReportingType>?
    let sendMessageBatchSyncOverride: SendMessageBatchSyncType<ClientInvocationReportingType>?
    let setQueueAttributesAsyncOverride: SetQueueAttributesAsyncType<ClientInvocationReportingType>?
    let setQueueAttributesSyncOverride: SetQueueAttributesSyncType<ClientInvocationReportingType>?
    let tagQueueAsyncOverride: TagQueueAsyncType<ClientInvocationReportingType>?
    let tagQueueSyncOverride: TagQueueSyncType<ClientInvocationReportingType>?
    let untagQueueAsyncOverride: UntagQueueAsyncType<ClientInvocationReportingType>?
    let untagQueueSyncOverride: UntagQueueSyncType<ClientInvocationReportingType>?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(error: HTTPClientError,
            addPermissionAsync: AddPermissionAsyncType<ClientInvocationReportingType>? = nil,
            addPermissionSync: AddPermissionSyncType<ClientInvocationReportingType>? = nil,
            changeMessageVisibilityAsync: ChangeMessageVisibilityAsyncType<ClientInvocationReportingType>? = nil,
            changeMessageVisibilitySync: ChangeMessageVisibilitySyncType<ClientInvocationReportingType>? = nil,
            changeMessageVisibilityBatchAsync: ChangeMessageVisibilityBatchAsyncType<ClientInvocationReportingType>? = nil,
            changeMessageVisibilityBatchSync: ChangeMessageVisibilityBatchSyncType<ClientInvocationReportingType>? = nil,
            createQueueAsync: CreateQueueAsyncType<ClientInvocationReportingType>? = nil,
            createQueueSync: CreateQueueSyncType<ClientInvocationReportingType>? = nil,
            deleteMessageAsync: DeleteMessageAsyncType<ClientInvocationReportingType>? = nil,
            deleteMessageSync: DeleteMessageSyncType<ClientInvocationReportingType>? = nil,
            deleteMessageBatchAsync: DeleteMessageBatchAsyncType<ClientInvocationReportingType>? = nil,
            deleteMessageBatchSync: DeleteMessageBatchSyncType<ClientInvocationReportingType>? = nil,
            deleteQueueAsync: DeleteQueueAsyncType<ClientInvocationReportingType>? = nil,
            deleteQueueSync: DeleteQueueSyncType<ClientInvocationReportingType>? = nil,
            getQueueAttributesAsync: GetQueueAttributesAsyncType<ClientInvocationReportingType>? = nil,
            getQueueAttributesSync: GetQueueAttributesSyncType<ClientInvocationReportingType>? = nil,
            getQueueUrlAsync: GetQueueUrlAsyncType<ClientInvocationReportingType>? = nil,
            getQueueUrlSync: GetQueueUrlSyncType<ClientInvocationReportingType>? = nil,
            listDeadLetterSourceQueuesAsync: ListDeadLetterSourceQueuesAsyncType<ClientInvocationReportingType>? = nil,
            listDeadLetterSourceQueuesSync: ListDeadLetterSourceQueuesSyncType<ClientInvocationReportingType>? = nil,
            listQueueTagsAsync: ListQueueTagsAsyncType<ClientInvocationReportingType>? = nil,
            listQueueTagsSync: ListQueueTagsSyncType<ClientInvocationReportingType>? = nil,
            listQueuesAsync: ListQueuesAsyncType<ClientInvocationReportingType>? = nil,
            listQueuesSync: ListQueuesSyncType<ClientInvocationReportingType>? = nil,
            purgeQueueAsync: PurgeQueueAsyncType<ClientInvocationReportingType>? = nil,
            purgeQueueSync: PurgeQueueSyncType<ClientInvocationReportingType>? = nil,
            receiveMessageAsync: ReceiveMessageAsyncType<ClientInvocationReportingType>? = nil,
            receiveMessageSync: ReceiveMessageSyncType<ClientInvocationReportingType>? = nil,
            removePermissionAsync: RemovePermissionAsyncType<ClientInvocationReportingType>? = nil,
            removePermissionSync: RemovePermissionSyncType<ClientInvocationReportingType>? = nil,
            sendMessageAsync: SendMessageAsyncType<ClientInvocationReportingType>? = nil,
            sendMessageSync: SendMessageSyncType<ClientInvocationReportingType>? = nil,
            sendMessageBatchAsync: SendMessageBatchAsyncType<ClientInvocationReportingType>? = nil,
            sendMessageBatchSync: SendMessageBatchSyncType<ClientInvocationReportingType>? = nil,
            setQueueAttributesAsync: SetQueueAttributesAsyncType<ClientInvocationReportingType>? = nil,
            setQueueAttributesSync: SetQueueAttributesSyncType<ClientInvocationReportingType>? = nil,
            tagQueueAsync: TagQueueAsyncType<ClientInvocationReportingType>? = nil,
            tagQueueSync: TagQueueSyncType<ClientInvocationReportingType>? = nil,
            untagQueueAsync: UntagQueueAsyncType<ClientInvocationReportingType>? = nil,
            untagQueueSync: UntagQueueSyncType<ClientInvocationReportingType>? = nil) {
        self.error = error
        self.addPermissionAsyncOverride = addPermissionAsync
        self.addPermissionSyncOverride = addPermissionSync
        self.changeMessageVisibilityAsyncOverride = changeMessageVisibilityAsync
        self.changeMessageVisibilitySyncOverride = changeMessageVisibilitySync
        self.changeMessageVisibilityBatchAsyncOverride = changeMessageVisibilityBatchAsync
        self.changeMessageVisibilityBatchSyncOverride = changeMessageVisibilityBatchSync
        self.createQueueAsyncOverride = createQueueAsync
        self.createQueueSyncOverride = createQueueSync
        self.deleteMessageAsyncOverride = deleteMessageAsync
        self.deleteMessageSyncOverride = deleteMessageSync
        self.deleteMessageBatchAsyncOverride = deleteMessageBatchAsync
        self.deleteMessageBatchSyncOverride = deleteMessageBatchSync
        self.deleteQueueAsyncOverride = deleteQueueAsync
        self.deleteQueueSyncOverride = deleteQueueSync
        self.getQueueAttributesAsyncOverride = getQueueAttributesAsync
        self.getQueueAttributesSyncOverride = getQueueAttributesSync
        self.getQueueUrlAsyncOverride = getQueueUrlAsync
        self.getQueueUrlSyncOverride = getQueueUrlSync
        self.listDeadLetterSourceQueuesAsyncOverride = listDeadLetterSourceQueuesAsync
        self.listDeadLetterSourceQueuesSyncOverride = listDeadLetterSourceQueuesSync
        self.listQueueTagsAsyncOverride = listQueueTagsAsync
        self.listQueueTagsSyncOverride = listQueueTagsSync
        self.listQueuesAsyncOverride = listQueuesAsync
        self.listQueuesSyncOverride = listQueuesSync
        self.purgeQueueAsyncOverride = purgeQueueAsync
        self.purgeQueueSyncOverride = purgeQueueSync
        self.receiveMessageAsyncOverride = receiveMessageAsync
        self.receiveMessageSyncOverride = receiveMessageSync
        self.removePermissionAsyncOverride = removePermissionAsync
        self.removePermissionSyncOverride = removePermissionSync
        self.sendMessageAsyncOverride = sendMessageAsync
        self.sendMessageSyncOverride = sendMessageSync
        self.sendMessageBatchAsyncOverride = sendMessageBatchAsync
        self.sendMessageBatchSyncOverride = sendMessageBatchSync
        self.setQueueAttributesAsyncOverride = setQueueAttributesAsync
        self.setQueueAttributesSyncOverride = setQueueAttributesSync
        self.tagQueueAsyncOverride = tagQueueAsync
        self.tagQueueSyncOverride = tagQueueSync
        self.untagQueueAsyncOverride = untagQueueAsync
        self.untagQueueSyncOverride = untagQueueSync
    }

    /**
     Invokes the AddPermission operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AddPermissionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: overLimit.
     */
    public func addPermissionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.AddPermissionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let addPermissionAsyncOverrideNonOptional = addPermissionAsyncOverride {
            if let addPermissionAsyncOverrideTyped = addPermissionAsyncOverrideNonOptional
                    as? AddPermissionAsyncType<InvocationReportingType> {
                return try addPermissionAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the AddPermission operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddPermissionRequest object being passed to this operation.
     - Throws: overLimit.
     */
    public func addPermissionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.AddPermissionRequest,
            reporting: InvocationReportingType) throws {
        if let addPermissionSyncOverrideNonOptional = addPermissionSyncOverride {
            if let addPermissionSyncOverrideTyped = addPermissionSyncOverrideNonOptional
                    as? AddPermissionSyncType<InvocationReportingType> {
                return try addPermissionSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the ChangeMessageVisibility operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ChangeMessageVisibilityRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: messageNotInflight, receiptHandleIsInvalid.
     */
    public func changeMessageVisibilityAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.ChangeMessageVisibilityRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let changeMessageVisibilityAsyncOverrideNonOptional = changeMessageVisibilityAsyncOverride {
            if let changeMessageVisibilityAsyncOverrideTyped = changeMessageVisibilityAsyncOverrideNonOptional
                    as? ChangeMessageVisibilityAsyncType<InvocationReportingType> {
                return try changeMessageVisibilityAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the ChangeMessageVisibility operation waiting for the response before returning.

     - Parameters:
         - input: The validated ChangeMessageVisibilityRequest object being passed to this operation.
     - Throws: messageNotInflight, receiptHandleIsInvalid.
     */
    public func changeMessageVisibilitySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.ChangeMessageVisibilityRequest,
            reporting: InvocationReportingType) throws {
        if let changeMessageVisibilitySyncOverrideNonOptional = changeMessageVisibilitySyncOverride {
            if let changeMessageVisibilitySyncOverrideTyped = changeMessageVisibilitySyncOverrideNonOptional
                    as? ChangeMessageVisibilitySyncType<InvocationReportingType> {
                return try changeMessageVisibilitySyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
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
    public func changeMessageVisibilityBatchAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.ChangeMessageVisibilityBatchRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleQueueModel.ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch, HTTPClientError>) -> ()) throws {
        if let changeMessageVisibilityBatchAsyncOverrideNonOptional = changeMessageVisibilityBatchAsyncOverride {
            if let changeMessageVisibilityBatchAsyncOverrideTyped = changeMessageVisibilityBatchAsyncOverrideNonOptional
                    as? ChangeMessageVisibilityBatchAsyncType<InvocationReportingType> {
                return try changeMessageVisibilityBatchAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the ChangeMessageVisibilityBatch operation waiting for the response before returning.

     - Parameters:
         - input: The validated ChangeMessageVisibilityBatchRequest object being passed to this operation.
     - Returns: The ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: batchEntryIdsNotDistinct, emptyBatchRequest, invalidBatchEntryId, tooManyEntriesInBatchRequest.
     */
    public func changeMessageVisibilityBatchSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.ChangeMessageVisibilityBatchRequest,
            reporting: InvocationReportingType) throws -> SimpleQueueModel.ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch {
        if let changeMessageVisibilityBatchSyncOverrideNonOptional = changeMessageVisibilityBatchSyncOverride {
            if let changeMessageVisibilityBatchSyncOverrideTyped = changeMessageVisibilityBatchSyncOverrideNonOptional
                    as? ChangeMessageVisibilityBatchSyncType<InvocationReportingType> {
                return try changeMessageVisibilityBatchSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
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
    public func createQueueAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.CreateQueueRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleQueueModel.CreateQueueResultForCreateQueue, HTTPClientError>) -> ()) throws {
        if let createQueueAsyncOverrideNonOptional = createQueueAsyncOverride {
            if let createQueueAsyncOverrideTyped = createQueueAsyncOverrideNonOptional
                    as? CreateQueueAsyncType<InvocationReportingType> {
                return try createQueueAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateQueue operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateQueueRequest object being passed to this operation.
     - Returns: The CreateQueueResultForCreateQueue object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: queueDeletedRecently, queueNameExists.
     */
    public func createQueueSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.CreateQueueRequest,
            reporting: InvocationReportingType) throws -> SimpleQueueModel.CreateQueueResultForCreateQueue {
        if let createQueueSyncOverrideNonOptional = createQueueSyncOverride {
            if let createQueueSyncOverrideTyped = createQueueSyncOverrideNonOptional
                    as? CreateQueueSyncType<InvocationReportingType> {
                return try createQueueSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DeleteMessage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteMessageRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidIdFormat, receiptHandleIsInvalid.
     */
    public func deleteMessageAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.DeleteMessageRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteMessageAsyncOverrideNonOptional = deleteMessageAsyncOverride {
            if let deleteMessageAsyncOverrideTyped = deleteMessageAsyncOverrideNonOptional
                    as? DeleteMessageAsyncType<InvocationReportingType> {
                return try deleteMessageAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the DeleteMessage operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteMessageRequest object being passed to this operation.
     - Throws: invalidIdFormat, receiptHandleIsInvalid.
     */
    public func deleteMessageSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.DeleteMessageRequest,
            reporting: InvocationReportingType) throws {
        if let deleteMessageSyncOverrideNonOptional = deleteMessageSyncOverride {
            if let deleteMessageSyncOverrideTyped = deleteMessageSyncOverrideNonOptional
                    as? DeleteMessageSyncType<InvocationReportingType> {
                return try deleteMessageSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
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
    public func deleteMessageBatchAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.DeleteMessageBatchRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleQueueModel.DeleteMessageBatchResultForDeleteMessageBatch, HTTPClientError>) -> ()) throws {
        if let deleteMessageBatchAsyncOverrideNonOptional = deleteMessageBatchAsyncOverride {
            if let deleteMessageBatchAsyncOverrideTyped = deleteMessageBatchAsyncOverrideNonOptional
                    as? DeleteMessageBatchAsyncType<InvocationReportingType> {
                return try deleteMessageBatchAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteMessageBatch operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteMessageBatchRequest object being passed to this operation.
     - Returns: The DeleteMessageBatchResultForDeleteMessageBatch object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: batchEntryIdsNotDistinct, emptyBatchRequest, invalidBatchEntryId, tooManyEntriesInBatchRequest.
     */
    public func deleteMessageBatchSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.DeleteMessageBatchRequest,
            reporting: InvocationReportingType) throws -> SimpleQueueModel.DeleteMessageBatchResultForDeleteMessageBatch {
        if let deleteMessageBatchSyncOverrideNonOptional = deleteMessageBatchSyncOverride {
            if let deleteMessageBatchSyncOverrideTyped = deleteMessageBatchSyncOverrideNonOptional
                    as? DeleteMessageBatchSyncType<InvocationReportingType> {
                return try deleteMessageBatchSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the DeleteQueue operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteQueueRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteQueueAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.DeleteQueueRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteQueueAsyncOverrideNonOptional = deleteQueueAsyncOverride {
            if let deleteQueueAsyncOverrideTyped = deleteQueueAsyncOverrideNonOptional
                    as? DeleteQueueAsyncType<InvocationReportingType> {
                return try deleteQueueAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the DeleteQueue operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteQueueRequest object being passed to this operation.
     */
    public func deleteQueueSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.DeleteQueueRequest,
            reporting: InvocationReportingType) throws {
        if let deleteQueueSyncOverrideNonOptional = deleteQueueSyncOverride {
            if let deleteQueueSyncOverrideTyped = deleteQueueSyncOverrideNonOptional
                    as? DeleteQueueSyncType<InvocationReportingType> {
                return try deleteQueueSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
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
    public func getQueueAttributesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.GetQueueAttributesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleQueueModel.GetQueueAttributesResultForGetQueueAttributes, HTTPClientError>) -> ()) throws {
        if let getQueueAttributesAsyncOverrideNonOptional = getQueueAttributesAsyncOverride {
            if let getQueueAttributesAsyncOverrideTyped = getQueueAttributesAsyncOverrideNonOptional
                    as? GetQueueAttributesAsyncType<InvocationReportingType> {
                return try getQueueAttributesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetQueueAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetQueueAttributesRequest object being passed to this operation.
     - Returns: The GetQueueAttributesResultForGetQueueAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidAttributeName.
     */
    public func getQueueAttributesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.GetQueueAttributesRequest,
            reporting: InvocationReportingType) throws -> SimpleQueueModel.GetQueueAttributesResultForGetQueueAttributes {
        if let getQueueAttributesSyncOverrideNonOptional = getQueueAttributesSyncOverride {
            if let getQueueAttributesSyncOverrideTyped = getQueueAttributesSyncOverrideNonOptional
                    as? GetQueueAttributesSyncType<InvocationReportingType> {
                return try getQueueAttributesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
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
    public func getQueueUrlAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.GetQueueUrlRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleQueueModel.GetQueueUrlResultForGetQueueUrl, HTTPClientError>) -> ()) throws {
        if let getQueueUrlAsyncOverrideNonOptional = getQueueUrlAsyncOverride {
            if let getQueueUrlAsyncOverrideTyped = getQueueUrlAsyncOverrideNonOptional
                    as? GetQueueUrlAsyncType<InvocationReportingType> {
                return try getQueueUrlAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetQueueUrl operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetQueueUrlRequest object being passed to this operation.
     - Returns: The GetQueueUrlResultForGetQueueUrl object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: queueDoesNotExist.
     */
    public func getQueueUrlSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.GetQueueUrlRequest,
            reporting: InvocationReportingType) throws -> SimpleQueueModel.GetQueueUrlResultForGetQueueUrl {
        if let getQueueUrlSyncOverrideNonOptional = getQueueUrlSyncOverride {
            if let getQueueUrlSyncOverrideTyped = getQueueUrlSyncOverrideNonOptional
                    as? GetQueueUrlSyncType<InvocationReportingType> {
                return try getQueueUrlSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
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
    public func listDeadLetterSourceQueuesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.ListDeadLetterSourceQueuesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleQueueModel.ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues, HTTPClientError>) -> ()) throws {
        if let listDeadLetterSourceQueuesAsyncOverrideNonOptional = listDeadLetterSourceQueuesAsyncOverride {
            if let listDeadLetterSourceQueuesAsyncOverrideTyped = listDeadLetterSourceQueuesAsyncOverrideNonOptional
                    as? ListDeadLetterSourceQueuesAsyncType<InvocationReportingType> {
                return try listDeadLetterSourceQueuesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListDeadLetterSourceQueues operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListDeadLetterSourceQueuesRequest object being passed to this operation.
     - Returns: The ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: queueDoesNotExist.
     */
    public func listDeadLetterSourceQueuesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.ListDeadLetterSourceQueuesRequest,
            reporting: InvocationReportingType) throws -> SimpleQueueModel.ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues {
        if let listDeadLetterSourceQueuesSyncOverrideNonOptional = listDeadLetterSourceQueuesSyncOverride {
            if let listDeadLetterSourceQueuesSyncOverrideTyped = listDeadLetterSourceQueuesSyncOverrideNonOptional
                    as? ListDeadLetterSourceQueuesSyncType<InvocationReportingType> {
                return try listDeadLetterSourceQueuesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the ListQueueTags operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListQueueTagsRequest object being passed to this operation.
         - completion: The ListQueueTagsResultForListQueueTags object or an error will be passed to this 
           callback when the operation is complete. The ListQueueTagsResultForListQueueTags
           object will be validated before being returned to caller.
     */
    public func listQueueTagsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.ListQueueTagsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleQueueModel.ListQueueTagsResultForListQueueTags, HTTPClientError>) -> ()) throws {
        if let listQueueTagsAsyncOverrideNonOptional = listQueueTagsAsyncOverride {
            if let listQueueTagsAsyncOverrideTyped = listQueueTagsAsyncOverrideNonOptional
                    as? ListQueueTagsAsyncType<InvocationReportingType> {
                return try listQueueTagsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListQueueTags operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListQueueTagsRequest object being passed to this operation.
     - Returns: The ListQueueTagsResultForListQueueTags object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listQueueTagsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.ListQueueTagsRequest,
            reporting: InvocationReportingType) throws -> SimpleQueueModel.ListQueueTagsResultForListQueueTags {
        if let listQueueTagsSyncOverrideNonOptional = listQueueTagsSyncOverride {
            if let listQueueTagsSyncOverrideTyped = listQueueTagsSyncOverrideNonOptional
                    as? ListQueueTagsSyncType<InvocationReportingType> {
                return try listQueueTagsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the ListQueues operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListQueuesRequest object being passed to this operation.
         - completion: The ListQueuesResultForListQueues object or an error will be passed to this 
           callback when the operation is complete. The ListQueuesResultForListQueues
           object will be validated before being returned to caller.
     */
    public func listQueuesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.ListQueuesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleQueueModel.ListQueuesResultForListQueues, HTTPClientError>) -> ()) throws {
        if let listQueuesAsyncOverrideNonOptional = listQueuesAsyncOverride {
            if let listQueuesAsyncOverrideTyped = listQueuesAsyncOverrideNonOptional
                    as? ListQueuesAsyncType<InvocationReportingType> {
                return try listQueuesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListQueues operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListQueuesRequest object being passed to this operation.
     - Returns: The ListQueuesResultForListQueues object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listQueuesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.ListQueuesRequest,
            reporting: InvocationReportingType) throws -> SimpleQueueModel.ListQueuesResultForListQueues {
        if let listQueuesSyncOverrideNonOptional = listQueuesSyncOverride {
            if let listQueuesSyncOverrideTyped = listQueuesSyncOverrideNonOptional
                    as? ListQueuesSyncType<InvocationReportingType> {
                return try listQueuesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the PurgeQueue operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PurgeQueueRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: purgeQueueInProgress, queueDoesNotExist.
     */
    public func purgeQueueAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.PurgeQueueRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let purgeQueueAsyncOverrideNonOptional = purgeQueueAsyncOverride {
            if let purgeQueueAsyncOverrideTyped = purgeQueueAsyncOverrideNonOptional
                    as? PurgeQueueAsyncType<InvocationReportingType> {
                return try purgeQueueAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the PurgeQueue operation waiting for the response before returning.

     - Parameters:
         - input: The validated PurgeQueueRequest object being passed to this operation.
     - Throws: purgeQueueInProgress, queueDoesNotExist.
     */
    public func purgeQueueSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.PurgeQueueRequest,
            reporting: InvocationReportingType) throws {
        if let purgeQueueSyncOverrideNonOptional = purgeQueueSyncOverride {
            if let purgeQueueSyncOverrideTyped = purgeQueueSyncOverrideNonOptional
                    as? PurgeQueueSyncType<InvocationReportingType> {
                return try purgeQueueSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
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
    public func receiveMessageAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.ReceiveMessageRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleQueueModel.ReceiveMessageResultForReceiveMessage, HTTPClientError>) -> ()) throws {
        if let receiveMessageAsyncOverrideNonOptional = receiveMessageAsyncOverride {
            if let receiveMessageAsyncOverrideTyped = receiveMessageAsyncOverrideNonOptional
                    as? ReceiveMessageAsyncType<InvocationReportingType> {
                return try receiveMessageAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the ReceiveMessage operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReceiveMessageRequest object being passed to this operation.
     - Returns: The ReceiveMessageResultForReceiveMessage object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: overLimit.
     */
    public func receiveMessageSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.ReceiveMessageRequest,
            reporting: InvocationReportingType) throws -> SimpleQueueModel.ReceiveMessageResultForReceiveMessage {
        if let receiveMessageSyncOverrideNonOptional = receiveMessageSyncOverride {
            if let receiveMessageSyncOverrideTyped = receiveMessageSyncOverrideNonOptional
                    as? ReceiveMessageSyncType<InvocationReportingType> {
                return try receiveMessageSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the RemovePermission operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemovePermissionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func removePermissionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.RemovePermissionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let removePermissionAsyncOverrideNonOptional = removePermissionAsyncOverride {
            if let removePermissionAsyncOverrideTyped = removePermissionAsyncOverrideNonOptional
                    as? RemovePermissionAsyncType<InvocationReportingType> {
                return try removePermissionAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the RemovePermission operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemovePermissionRequest object being passed to this operation.
     */
    public func removePermissionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.RemovePermissionRequest,
            reporting: InvocationReportingType) throws {
        if let removePermissionSyncOverrideNonOptional = removePermissionSyncOverride {
            if let removePermissionSyncOverrideTyped = removePermissionSyncOverrideNonOptional
                    as? RemovePermissionSyncType<InvocationReportingType> {
                return try removePermissionSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
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
    public func sendMessageAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.SendMessageRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleQueueModel.SendMessageResultForSendMessage, HTTPClientError>) -> ()) throws {
        if let sendMessageAsyncOverrideNonOptional = sendMessageAsyncOverride {
            if let sendMessageAsyncOverrideTyped = sendMessageAsyncOverrideNonOptional
                    as? SendMessageAsyncType<InvocationReportingType> {
                return try sendMessageAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the SendMessage operation waiting for the response before returning.

     - Parameters:
         - input: The validated SendMessageRequest object being passed to this operation.
     - Returns: The SendMessageResultForSendMessage object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidMessageContents, unsupportedOperation.
     */
    public func sendMessageSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.SendMessageRequest,
            reporting: InvocationReportingType) throws -> SimpleQueueModel.SendMessageResultForSendMessage {
        if let sendMessageSyncOverrideNonOptional = sendMessageSyncOverride {
            if let sendMessageSyncOverrideTyped = sendMessageSyncOverrideNonOptional
                    as? SendMessageSyncType<InvocationReportingType> {
                return try sendMessageSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
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
    public func sendMessageBatchAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.SendMessageBatchRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleQueueModel.SendMessageBatchResultForSendMessageBatch, HTTPClientError>) -> ()) throws {
        if let sendMessageBatchAsyncOverrideNonOptional = sendMessageBatchAsyncOverride {
            if let sendMessageBatchAsyncOverrideTyped = sendMessageBatchAsyncOverrideNonOptional
                    as? SendMessageBatchAsyncType<InvocationReportingType> {
                return try sendMessageBatchAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the SendMessageBatch operation waiting for the response before returning.

     - Parameters:
         - input: The validated SendMessageBatchRequest object being passed to this operation.
     - Returns: The SendMessageBatchResultForSendMessageBatch object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: batchEntryIdsNotDistinct, batchRequestTooLong, emptyBatchRequest, invalidBatchEntryId, tooManyEntriesInBatchRequest, unsupportedOperation.
     */
    public func sendMessageBatchSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.SendMessageBatchRequest,
            reporting: InvocationReportingType) throws -> SimpleQueueModel.SendMessageBatchResultForSendMessageBatch {
        if let sendMessageBatchSyncOverrideNonOptional = sendMessageBatchSyncOverride {
            if let sendMessageBatchSyncOverrideTyped = sendMessageBatchSyncOverrideNonOptional
                    as? SendMessageBatchSyncType<InvocationReportingType> {
                return try sendMessageBatchSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the SetQueueAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetQueueAttributesRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidAttributeName.
     */
    public func setQueueAttributesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.SetQueueAttributesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let setQueueAttributesAsyncOverrideNonOptional = setQueueAttributesAsyncOverride {
            if let setQueueAttributesAsyncOverrideTyped = setQueueAttributesAsyncOverrideNonOptional
                    as? SetQueueAttributesAsyncType<InvocationReportingType> {
                return try setQueueAttributesAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the SetQueueAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetQueueAttributesRequest object being passed to this operation.
     - Throws: invalidAttributeName.
     */
    public func setQueueAttributesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.SetQueueAttributesRequest,
            reporting: InvocationReportingType) throws {
        if let setQueueAttributesSyncOverrideNonOptional = setQueueAttributesSyncOverride {
            if let setQueueAttributesSyncOverrideTyped = setQueueAttributesSyncOverrideNonOptional
                    as? SetQueueAttributesSyncType<InvocationReportingType> {
                return try setQueueAttributesSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the TagQueue operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagQueueRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func tagQueueAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.TagQueueRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let tagQueueAsyncOverrideNonOptional = tagQueueAsyncOverride {
            if let tagQueueAsyncOverrideTyped = tagQueueAsyncOverrideNonOptional
                    as? TagQueueAsyncType<InvocationReportingType> {
                return try tagQueueAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the TagQueue operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagQueueRequest object being passed to this operation.
     */
    public func tagQueueSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.TagQueueRequest,
            reporting: InvocationReportingType) throws {
        if let tagQueueSyncOverrideNonOptional = tagQueueSyncOverride {
            if let tagQueueSyncOverrideTyped = tagQueueSyncOverrideNonOptional
                    as? TagQueueSyncType<InvocationReportingType> {
                return try tagQueueSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the UntagQueue operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagQueueRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func untagQueueAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.UntagQueueRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let untagQueueAsyncOverrideNonOptional = untagQueueAsyncOverride {
            if let untagQueueAsyncOverrideTyped = untagQueueAsyncOverrideNonOptional
                    as? UntagQueueAsyncType<InvocationReportingType> {
                return try untagQueueAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the UntagQueue operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagQueueRequest object being passed to this operation.
     */
    public func untagQueueSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.UntagQueueRequest,
            reporting: InvocationReportingType) throws {
        if let untagQueueSyncOverrideNonOptional = untagQueueSyncOverride {
            if let untagQueueSyncOverrideTyped = untagQueueSyncOverrideNonOptional
                    as? UntagQueueSyncType<InvocationReportingType> {
                return try untagQueueSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }
}
