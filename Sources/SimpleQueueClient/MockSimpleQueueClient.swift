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
// MockSimpleQueueClient.swift
// SimpleQueueClient
//

import Foundation
import SimpleQueueModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the SimpleQueue service by default returns the `__default` property of its return type.
 */
public struct MockSimpleQueueClient: SimpleQueueClientProtocol {
    let addPermissionAsyncOverride: AddPermissionAsyncType?
    let addPermissionSyncOverride: AddPermissionSyncType?
    let changeMessageVisibilityAsyncOverride: ChangeMessageVisibilityAsyncType?
    let changeMessageVisibilitySyncOverride: ChangeMessageVisibilitySyncType?
    let changeMessageVisibilityBatchAsyncOverride: ChangeMessageVisibilityBatchAsyncType?
    let changeMessageVisibilityBatchSyncOverride: ChangeMessageVisibilityBatchSyncType?
    let createQueueAsyncOverride: CreateQueueAsyncType?
    let createQueueSyncOverride: CreateQueueSyncType?
    let deleteMessageAsyncOverride: DeleteMessageAsyncType?
    let deleteMessageSyncOverride: DeleteMessageSyncType?
    let deleteMessageBatchAsyncOverride: DeleteMessageBatchAsyncType?
    let deleteMessageBatchSyncOverride: DeleteMessageBatchSyncType?
    let deleteQueueAsyncOverride: DeleteQueueAsyncType?
    let deleteQueueSyncOverride: DeleteQueueSyncType?
    let getQueueAttributesAsyncOverride: GetQueueAttributesAsyncType?
    let getQueueAttributesSyncOverride: GetQueueAttributesSyncType?
    let getQueueUrlAsyncOverride: GetQueueUrlAsyncType?
    let getQueueUrlSyncOverride: GetQueueUrlSyncType?
    let listDeadLetterSourceQueuesAsyncOverride: ListDeadLetterSourceQueuesAsyncType?
    let listDeadLetterSourceQueuesSyncOverride: ListDeadLetterSourceQueuesSyncType?
    let listQueueTagsAsyncOverride: ListQueueTagsAsyncType?
    let listQueueTagsSyncOverride: ListQueueTagsSyncType?
    let listQueuesAsyncOverride: ListQueuesAsyncType?
    let listQueuesSyncOverride: ListQueuesSyncType?
    let purgeQueueAsyncOverride: PurgeQueueAsyncType?
    let purgeQueueSyncOverride: PurgeQueueSyncType?
    let receiveMessageAsyncOverride: ReceiveMessageAsyncType?
    let receiveMessageSyncOverride: ReceiveMessageSyncType?
    let removePermissionAsyncOverride: RemovePermissionAsyncType?
    let removePermissionSyncOverride: RemovePermissionSyncType?
    let sendMessageAsyncOverride: SendMessageAsyncType?
    let sendMessageSyncOverride: SendMessageSyncType?
    let sendMessageBatchAsyncOverride: SendMessageBatchAsyncType?
    let sendMessageBatchSyncOverride: SendMessageBatchSyncType?
    let setQueueAttributesAsyncOverride: SetQueueAttributesAsyncType?
    let setQueueAttributesSyncOverride: SetQueueAttributesSyncType?
    let tagQueueAsyncOverride: TagQueueAsyncType?
    let tagQueueSyncOverride: TagQueueSyncType?
    let untagQueueAsyncOverride: UntagQueueAsyncType?
    let untagQueueSyncOverride: UntagQueueSyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            addPermissionAsync: AddPermissionAsyncType? = nil,
            addPermissionSync: AddPermissionSyncType? = nil,
            changeMessageVisibilityAsync: ChangeMessageVisibilityAsyncType? = nil,
            changeMessageVisibilitySync: ChangeMessageVisibilitySyncType? = nil,
            changeMessageVisibilityBatchAsync: ChangeMessageVisibilityBatchAsyncType? = nil,
            changeMessageVisibilityBatchSync: ChangeMessageVisibilityBatchSyncType? = nil,
            createQueueAsync: CreateQueueAsyncType? = nil,
            createQueueSync: CreateQueueSyncType? = nil,
            deleteMessageAsync: DeleteMessageAsyncType? = nil,
            deleteMessageSync: DeleteMessageSyncType? = nil,
            deleteMessageBatchAsync: DeleteMessageBatchAsyncType? = nil,
            deleteMessageBatchSync: DeleteMessageBatchSyncType? = nil,
            deleteQueueAsync: DeleteQueueAsyncType? = nil,
            deleteQueueSync: DeleteQueueSyncType? = nil,
            getQueueAttributesAsync: GetQueueAttributesAsyncType? = nil,
            getQueueAttributesSync: GetQueueAttributesSyncType? = nil,
            getQueueUrlAsync: GetQueueUrlAsyncType? = nil,
            getQueueUrlSync: GetQueueUrlSyncType? = nil,
            listDeadLetterSourceQueuesAsync: ListDeadLetterSourceQueuesAsyncType? = nil,
            listDeadLetterSourceQueuesSync: ListDeadLetterSourceQueuesSyncType? = nil,
            listQueueTagsAsync: ListQueueTagsAsyncType? = nil,
            listQueueTagsSync: ListQueueTagsSyncType? = nil,
            listQueuesAsync: ListQueuesAsyncType? = nil,
            listQueuesSync: ListQueuesSyncType? = nil,
            purgeQueueAsync: PurgeQueueAsyncType? = nil,
            purgeQueueSync: PurgeQueueSyncType? = nil,
            receiveMessageAsync: ReceiveMessageAsyncType? = nil,
            receiveMessageSync: ReceiveMessageSyncType? = nil,
            removePermissionAsync: RemovePermissionAsyncType? = nil,
            removePermissionSync: RemovePermissionSyncType? = nil,
            sendMessageAsync: SendMessageAsyncType? = nil,
            sendMessageSync: SendMessageSyncType? = nil,
            sendMessageBatchAsync: SendMessageBatchAsyncType? = nil,
            sendMessageBatchSync: SendMessageBatchSyncType? = nil,
            setQueueAttributesAsync: SetQueueAttributesAsyncType? = nil,
            setQueueAttributesSync: SetQueueAttributesSyncType? = nil,
            tagQueueAsync: TagQueueAsyncType? = nil,
            tagQueueSync: TagQueueSyncType? = nil,
            untagQueueAsync: UntagQueueAsyncType? = nil,
            untagQueueSync: UntagQueueSyncType? = nil) {
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
    public func addPermissionAsync(
            input: SimpleQueueModel.AddPermissionRequest, 
            completion: @escaping (SimpleQueueError?) -> ()) throws {
        if let addPermissionAsyncOverride = addPermissionAsyncOverride {
            return try addPermissionAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the AddPermission operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddPermissionRequest object being passed to this operation.
     - Throws: overLimit.
     */
    public func addPermissionSync(
            input: SimpleQueueModel.AddPermissionRequest) throws {
        if let addPermissionSyncOverride = addPermissionSyncOverride {
            return try addPermissionSyncOverride(input)
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
        if let changeMessageVisibilityAsyncOverride = changeMessageVisibilityAsyncOverride {
            return try changeMessageVisibilityAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the ChangeMessageVisibility operation waiting for the response before returning.

     - Parameters:
         - input: The validated ChangeMessageVisibilityRequest object being passed to this operation.
     - Throws: messageNotInflight, receiptHandleIsInvalid.
     */
    public func changeMessageVisibilitySync(
            input: SimpleQueueModel.ChangeMessageVisibilityRequest) throws {
        if let changeMessageVisibilitySyncOverride = changeMessageVisibilitySyncOverride {
            return try changeMessageVisibilitySyncOverride(input)
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
        if let changeMessageVisibilityBatchAsyncOverride = changeMessageVisibilityBatchAsyncOverride {
            return try changeMessageVisibilityBatchAsyncOverride(input, completion)
        }

        let result = ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch.__default
        
        completion(.success(result))
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
        if let changeMessageVisibilityBatchSyncOverride = changeMessageVisibilityBatchSyncOverride {
            return try changeMessageVisibilityBatchSyncOverride(input)
        }

        return ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch.__default
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
        if let createQueueAsyncOverride = createQueueAsyncOverride {
            return try createQueueAsyncOverride(input, completion)
        }

        let result = CreateQueueResultForCreateQueue.__default
        
        completion(.success(result))
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
        if let createQueueSyncOverride = createQueueSyncOverride {
            return try createQueueSyncOverride(input)
        }

        return CreateQueueResultForCreateQueue.__default
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
        if let deleteMessageAsyncOverride = deleteMessageAsyncOverride {
            return try deleteMessageAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the DeleteMessage operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteMessageRequest object being passed to this operation.
     - Throws: invalidIdFormat, receiptHandleIsInvalid.
     */
    public func deleteMessageSync(
            input: SimpleQueueModel.DeleteMessageRequest) throws {
        if let deleteMessageSyncOverride = deleteMessageSyncOverride {
            return try deleteMessageSyncOverride(input)
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
        if let deleteMessageBatchAsyncOverride = deleteMessageBatchAsyncOverride {
            return try deleteMessageBatchAsyncOverride(input, completion)
        }

        let result = DeleteMessageBatchResultForDeleteMessageBatch.__default
        
        completion(.success(result))
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
        if let deleteMessageBatchSyncOverride = deleteMessageBatchSyncOverride {
            return try deleteMessageBatchSyncOverride(input)
        }

        return DeleteMessageBatchResultForDeleteMessageBatch.__default
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
        if let deleteQueueAsyncOverride = deleteQueueAsyncOverride {
            return try deleteQueueAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the DeleteQueue operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteQueueRequest object being passed to this operation.
     */
    public func deleteQueueSync(
            input: SimpleQueueModel.DeleteQueueRequest) throws {
        if let deleteQueueSyncOverride = deleteQueueSyncOverride {
            return try deleteQueueSyncOverride(input)
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
        if let getQueueAttributesAsyncOverride = getQueueAttributesAsyncOverride {
            return try getQueueAttributesAsyncOverride(input, completion)
        }

        let result = GetQueueAttributesResultForGetQueueAttributes.__default
        
        completion(.success(result))
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
        if let getQueueAttributesSyncOverride = getQueueAttributesSyncOverride {
            return try getQueueAttributesSyncOverride(input)
        }

        return GetQueueAttributesResultForGetQueueAttributes.__default
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
        if let getQueueUrlAsyncOverride = getQueueUrlAsyncOverride {
            return try getQueueUrlAsyncOverride(input, completion)
        }

        let result = GetQueueUrlResultForGetQueueUrl.__default
        
        completion(.success(result))
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
        if let getQueueUrlSyncOverride = getQueueUrlSyncOverride {
            return try getQueueUrlSyncOverride(input)
        }

        return GetQueueUrlResultForGetQueueUrl.__default
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
        if let listDeadLetterSourceQueuesAsyncOverride = listDeadLetterSourceQueuesAsyncOverride {
            return try listDeadLetterSourceQueuesAsyncOverride(input, completion)
        }

        let result = ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues.__default
        
        completion(.success(result))
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
        if let listDeadLetterSourceQueuesSyncOverride = listDeadLetterSourceQueuesSyncOverride {
            return try listDeadLetterSourceQueuesSyncOverride(input)
        }

        return ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues.__default
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
        if let listQueueTagsAsyncOverride = listQueueTagsAsyncOverride {
            return try listQueueTagsAsyncOverride(input, completion)
        }

        let result = ListQueueTagsResultForListQueueTags.__default
        
        completion(.success(result))
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
        if let listQueueTagsSyncOverride = listQueueTagsSyncOverride {
            return try listQueueTagsSyncOverride(input)
        }

        return ListQueueTagsResultForListQueueTags.__default
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
        if let listQueuesAsyncOverride = listQueuesAsyncOverride {
            return try listQueuesAsyncOverride(input, completion)
        }

        let result = ListQueuesResultForListQueues.__default
        
        completion(.success(result))
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
        if let listQueuesSyncOverride = listQueuesSyncOverride {
            return try listQueuesSyncOverride(input)
        }

        return ListQueuesResultForListQueues.__default
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
        if let purgeQueueAsyncOverride = purgeQueueAsyncOverride {
            return try purgeQueueAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the PurgeQueue operation waiting for the response before returning.

     - Parameters:
         - input: The validated PurgeQueueRequest object being passed to this operation.
     - Throws: purgeQueueInProgress, queueDoesNotExist.
     */
    public func purgeQueueSync(
            input: SimpleQueueModel.PurgeQueueRequest) throws {
        if let purgeQueueSyncOverride = purgeQueueSyncOverride {
            return try purgeQueueSyncOverride(input)
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
        if let receiveMessageAsyncOverride = receiveMessageAsyncOverride {
            return try receiveMessageAsyncOverride(input, completion)
        }

        let result = ReceiveMessageResultForReceiveMessage.__default
        
        completion(.success(result))
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
        if let receiveMessageSyncOverride = receiveMessageSyncOverride {
            return try receiveMessageSyncOverride(input)
        }

        return ReceiveMessageResultForReceiveMessage.__default
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
        if let removePermissionAsyncOverride = removePermissionAsyncOverride {
            return try removePermissionAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the RemovePermission operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemovePermissionRequest object being passed to this operation.
     */
    public func removePermissionSync(
            input: SimpleQueueModel.RemovePermissionRequest) throws {
        if let removePermissionSyncOverride = removePermissionSyncOverride {
            return try removePermissionSyncOverride(input)
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
        if let sendMessageAsyncOverride = sendMessageAsyncOverride {
            return try sendMessageAsyncOverride(input, completion)
        }

        let result = SendMessageResultForSendMessage.__default
        
        completion(.success(result))
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
        if let sendMessageSyncOverride = sendMessageSyncOverride {
            return try sendMessageSyncOverride(input)
        }

        return SendMessageResultForSendMessage.__default
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
        if let sendMessageBatchAsyncOverride = sendMessageBatchAsyncOverride {
            return try sendMessageBatchAsyncOverride(input, completion)
        }

        let result = SendMessageBatchResultForSendMessageBatch.__default
        
        completion(.success(result))
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
        if let sendMessageBatchSyncOverride = sendMessageBatchSyncOverride {
            return try sendMessageBatchSyncOverride(input)
        }

        return SendMessageBatchResultForSendMessageBatch.__default
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
        if let setQueueAttributesAsyncOverride = setQueueAttributesAsyncOverride {
            return try setQueueAttributesAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the SetQueueAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetQueueAttributesRequest object being passed to this operation.
     - Throws: invalidAttributeName.
     */
    public func setQueueAttributesSync(
            input: SimpleQueueModel.SetQueueAttributesRequest) throws {
        if let setQueueAttributesSyncOverride = setQueueAttributesSyncOverride {
            return try setQueueAttributesSyncOverride(input)
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
        if let tagQueueAsyncOverride = tagQueueAsyncOverride {
            return try tagQueueAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the TagQueue operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagQueueRequest object being passed to this operation.
     */
    public func tagQueueSync(
            input: SimpleQueueModel.TagQueueRequest) throws {
        if let tagQueueSyncOverride = tagQueueSyncOverride {
            return try tagQueueSyncOverride(input)
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
        if let untagQueueAsyncOverride = untagQueueAsyncOverride {
            return try untagQueueAsyncOverride(input, completion)
        }

        completion(nil)
    }

    /**
     Invokes the UntagQueue operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagQueueRequest object being passed to this operation.
     */
    public func untagQueueSync(
            input: SimpleQueueModel.UntagQueueRequest) throws {
        if let untagQueueSyncOverride = untagQueueSyncOverride {
            return try untagQueueSyncOverride(input)
        }

    }
}
