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
    let addPermissionAsyncOverride: SimpleQueueClientProtocol.AddPermissionAsyncType?
    let addPermissionSyncOverride: SimpleQueueClientProtocol.AddPermissionSyncType?
    let changeMessageVisibilityAsyncOverride: SimpleQueueClientProtocol.ChangeMessageVisibilityAsyncType?
    let changeMessageVisibilitySyncOverride: SimpleQueueClientProtocol.ChangeMessageVisibilitySyncType?
    let changeMessageVisibilityBatchAsyncOverride: SimpleQueueClientProtocol.ChangeMessageVisibilityBatchAsyncType?
    let changeMessageVisibilityBatchSyncOverride: SimpleQueueClientProtocol.ChangeMessageVisibilityBatchSyncType?
    let createQueueAsyncOverride: SimpleQueueClientProtocol.CreateQueueAsyncType?
    let createQueueSyncOverride: SimpleQueueClientProtocol.CreateQueueSyncType?
    let deleteMessageAsyncOverride: SimpleQueueClientProtocol.DeleteMessageAsyncType?
    let deleteMessageSyncOverride: SimpleQueueClientProtocol.DeleteMessageSyncType?
    let deleteMessageBatchAsyncOverride: SimpleQueueClientProtocol.DeleteMessageBatchAsyncType?
    let deleteMessageBatchSyncOverride: SimpleQueueClientProtocol.DeleteMessageBatchSyncType?
    let deleteQueueAsyncOverride: SimpleQueueClientProtocol.DeleteQueueAsyncType?
    let deleteQueueSyncOverride: SimpleQueueClientProtocol.DeleteQueueSyncType?
    let getQueueAttributesAsyncOverride: SimpleQueueClientProtocol.GetQueueAttributesAsyncType?
    let getQueueAttributesSyncOverride: SimpleQueueClientProtocol.GetQueueAttributesSyncType?
    let getQueueUrlAsyncOverride: SimpleQueueClientProtocol.GetQueueUrlAsyncType?
    let getQueueUrlSyncOverride: SimpleQueueClientProtocol.GetQueueUrlSyncType?
    let listDeadLetterSourceQueuesAsyncOverride: SimpleQueueClientProtocol.ListDeadLetterSourceQueuesAsyncType?
    let listDeadLetterSourceQueuesSyncOverride: SimpleQueueClientProtocol.ListDeadLetterSourceQueuesSyncType?
    let listQueueTagsAsyncOverride: SimpleQueueClientProtocol.ListQueueTagsAsyncType?
    let listQueueTagsSyncOverride: SimpleQueueClientProtocol.ListQueueTagsSyncType?
    let listQueuesAsyncOverride: SimpleQueueClientProtocol.ListQueuesAsyncType?
    let listQueuesSyncOverride: SimpleQueueClientProtocol.ListQueuesSyncType?
    let purgeQueueAsyncOverride: SimpleQueueClientProtocol.PurgeQueueAsyncType?
    let purgeQueueSyncOverride: SimpleQueueClientProtocol.PurgeQueueSyncType?
    let receiveMessageAsyncOverride: SimpleQueueClientProtocol.ReceiveMessageAsyncType?
    let receiveMessageSyncOverride: SimpleQueueClientProtocol.ReceiveMessageSyncType?
    let removePermissionAsyncOverride: SimpleQueueClientProtocol.RemovePermissionAsyncType?
    let removePermissionSyncOverride: SimpleQueueClientProtocol.RemovePermissionSyncType?
    let sendMessageAsyncOverride: SimpleQueueClientProtocol.SendMessageAsyncType?
    let sendMessageSyncOverride: SimpleQueueClientProtocol.SendMessageSyncType?
    let sendMessageBatchAsyncOverride: SimpleQueueClientProtocol.SendMessageBatchAsyncType?
    let sendMessageBatchSyncOverride: SimpleQueueClientProtocol.SendMessageBatchSyncType?
    let setQueueAttributesAsyncOverride: SimpleQueueClientProtocol.SetQueueAttributesAsyncType?
    let setQueueAttributesSyncOverride: SimpleQueueClientProtocol.SetQueueAttributesSyncType?
    let tagQueueAsyncOverride: SimpleQueueClientProtocol.TagQueueAsyncType?
    let tagQueueSyncOverride: SimpleQueueClientProtocol.TagQueueSyncType?
    let untagQueueAsyncOverride: SimpleQueueClientProtocol.UntagQueueAsyncType?
    let untagQueueSyncOverride: SimpleQueueClientProtocol.UntagQueueSyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            addPermissionAsync: SimpleQueueClientProtocol.AddPermissionAsyncType? = nil,
            addPermissionSync: SimpleQueueClientProtocol.AddPermissionSyncType? = nil,
            changeMessageVisibilityAsync: SimpleQueueClientProtocol.ChangeMessageVisibilityAsyncType? = nil,
            changeMessageVisibilitySync: SimpleQueueClientProtocol.ChangeMessageVisibilitySyncType? = nil,
            changeMessageVisibilityBatchAsync: SimpleQueueClientProtocol.ChangeMessageVisibilityBatchAsyncType? = nil,
            changeMessageVisibilityBatchSync: SimpleQueueClientProtocol.ChangeMessageVisibilityBatchSyncType? = nil,
            createQueueAsync: SimpleQueueClientProtocol.CreateQueueAsyncType? = nil,
            createQueueSync: SimpleQueueClientProtocol.CreateQueueSyncType? = nil,
            deleteMessageAsync: SimpleQueueClientProtocol.DeleteMessageAsyncType? = nil,
            deleteMessageSync: SimpleQueueClientProtocol.DeleteMessageSyncType? = nil,
            deleteMessageBatchAsync: SimpleQueueClientProtocol.DeleteMessageBatchAsyncType? = nil,
            deleteMessageBatchSync: SimpleQueueClientProtocol.DeleteMessageBatchSyncType? = nil,
            deleteQueueAsync: SimpleQueueClientProtocol.DeleteQueueAsyncType? = nil,
            deleteQueueSync: SimpleQueueClientProtocol.DeleteQueueSyncType? = nil,
            getQueueAttributesAsync: SimpleQueueClientProtocol.GetQueueAttributesAsyncType? = nil,
            getQueueAttributesSync: SimpleQueueClientProtocol.GetQueueAttributesSyncType? = nil,
            getQueueUrlAsync: SimpleQueueClientProtocol.GetQueueUrlAsyncType? = nil,
            getQueueUrlSync: SimpleQueueClientProtocol.GetQueueUrlSyncType? = nil,
            listDeadLetterSourceQueuesAsync: SimpleQueueClientProtocol.ListDeadLetterSourceQueuesAsyncType? = nil,
            listDeadLetterSourceQueuesSync: SimpleQueueClientProtocol.ListDeadLetterSourceQueuesSyncType? = nil,
            listQueueTagsAsync: SimpleQueueClientProtocol.ListQueueTagsAsyncType? = nil,
            listQueueTagsSync: SimpleQueueClientProtocol.ListQueueTagsSyncType? = nil,
            listQueuesAsync: SimpleQueueClientProtocol.ListQueuesAsyncType? = nil,
            listQueuesSync: SimpleQueueClientProtocol.ListQueuesSyncType? = nil,
            purgeQueueAsync: SimpleQueueClientProtocol.PurgeQueueAsyncType? = nil,
            purgeQueueSync: SimpleQueueClientProtocol.PurgeQueueSyncType? = nil,
            receiveMessageAsync: SimpleQueueClientProtocol.ReceiveMessageAsyncType? = nil,
            receiveMessageSync: SimpleQueueClientProtocol.ReceiveMessageSyncType? = nil,
            removePermissionAsync: SimpleQueueClientProtocol.RemovePermissionAsyncType? = nil,
            removePermissionSync: SimpleQueueClientProtocol.RemovePermissionSyncType? = nil,
            sendMessageAsync: SimpleQueueClientProtocol.SendMessageAsyncType? = nil,
            sendMessageSync: SimpleQueueClientProtocol.SendMessageSyncType? = nil,
            sendMessageBatchAsync: SimpleQueueClientProtocol.SendMessageBatchAsyncType? = nil,
            sendMessageBatchSync: SimpleQueueClientProtocol.SendMessageBatchSyncType? = nil,
            setQueueAttributesAsync: SimpleQueueClientProtocol.SetQueueAttributesAsyncType? = nil,
            setQueueAttributesSync: SimpleQueueClientProtocol.SetQueueAttributesSyncType? = nil,
            tagQueueAsync: SimpleQueueClientProtocol.TagQueueAsyncType? = nil,
            tagQueueSync: SimpleQueueClientProtocol.TagQueueSyncType? = nil,
            untagQueueAsync: SimpleQueueClientProtocol.UntagQueueAsyncType? = nil,
            untagQueueSync: SimpleQueueClientProtocol.UntagQueueSyncType? = nil) {
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let addPermissionAsyncOverride = addPermissionAsyncOverride {
            return try addPermissionAsyncOverride(input, reporting, completion)
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
            input: SimpleQueueModel.AddPermissionRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let addPermissionSyncOverride = addPermissionSyncOverride {
            return try addPermissionSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let changeMessageVisibilityAsyncOverride = changeMessageVisibilityAsyncOverride {
            return try changeMessageVisibilityAsyncOverride(input, reporting, completion)
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
            input: SimpleQueueModel.ChangeMessageVisibilityRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let changeMessageVisibilitySyncOverride = changeMessageVisibilitySyncOverride {
            return try changeMessageVisibilitySyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleQueueModel.ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch, HTTPClientError>) -> ()) throws {
        if let changeMessageVisibilityBatchAsyncOverride = changeMessageVisibilityBatchAsyncOverride {
            return try changeMessageVisibilityBatchAsyncOverride(input, reporting, completion)
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
            input: SimpleQueueModel.ChangeMessageVisibilityBatchRequest,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleQueueModel.ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch {
        if let changeMessageVisibilityBatchSyncOverride = changeMessageVisibilityBatchSyncOverride {
            return try changeMessageVisibilityBatchSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleQueueModel.CreateQueueResultForCreateQueue, HTTPClientError>) -> ()) throws {
        if let createQueueAsyncOverride = createQueueAsyncOverride {
            return try createQueueAsyncOverride(input, reporting, completion)
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
            input: SimpleQueueModel.CreateQueueRequest,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleQueueModel.CreateQueueResultForCreateQueue {
        if let createQueueSyncOverride = createQueueSyncOverride {
            return try createQueueSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteMessageAsyncOverride = deleteMessageAsyncOverride {
            return try deleteMessageAsyncOverride(input, reporting, completion)
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
            input: SimpleQueueModel.DeleteMessageRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let deleteMessageSyncOverride = deleteMessageSyncOverride {
            return try deleteMessageSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleQueueModel.DeleteMessageBatchResultForDeleteMessageBatch, HTTPClientError>) -> ()) throws {
        if let deleteMessageBatchAsyncOverride = deleteMessageBatchAsyncOverride {
            return try deleteMessageBatchAsyncOverride(input, reporting, completion)
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
            input: SimpleQueueModel.DeleteMessageBatchRequest,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleQueueModel.DeleteMessageBatchResultForDeleteMessageBatch {
        if let deleteMessageBatchSyncOverride = deleteMessageBatchSyncOverride {
            return try deleteMessageBatchSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteQueueAsyncOverride = deleteQueueAsyncOverride {
            return try deleteQueueAsyncOverride(input, reporting, completion)
        }

        completion(nil)
    }

    /**
     Invokes the DeleteQueue operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteQueueRequest object being passed to this operation.
     */
    public func deleteQueueSync(
            input: SimpleQueueModel.DeleteQueueRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let deleteQueueSyncOverride = deleteQueueSyncOverride {
            return try deleteQueueSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleQueueModel.GetQueueAttributesResultForGetQueueAttributes, HTTPClientError>) -> ()) throws {
        if let getQueueAttributesAsyncOverride = getQueueAttributesAsyncOverride {
            return try getQueueAttributesAsyncOverride(input, reporting, completion)
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
            input: SimpleQueueModel.GetQueueAttributesRequest,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleQueueModel.GetQueueAttributesResultForGetQueueAttributes {
        if let getQueueAttributesSyncOverride = getQueueAttributesSyncOverride {
            return try getQueueAttributesSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleQueueModel.GetQueueUrlResultForGetQueueUrl, HTTPClientError>) -> ()) throws {
        if let getQueueUrlAsyncOverride = getQueueUrlAsyncOverride {
            return try getQueueUrlAsyncOverride(input, reporting, completion)
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
            input: SimpleQueueModel.GetQueueUrlRequest,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleQueueModel.GetQueueUrlResultForGetQueueUrl {
        if let getQueueUrlSyncOverride = getQueueUrlSyncOverride {
            return try getQueueUrlSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleQueueModel.ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues, HTTPClientError>) -> ()) throws {
        if let listDeadLetterSourceQueuesAsyncOverride = listDeadLetterSourceQueuesAsyncOverride {
            return try listDeadLetterSourceQueuesAsyncOverride(input, reporting, completion)
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
            input: SimpleQueueModel.ListDeadLetterSourceQueuesRequest,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleQueueModel.ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues {
        if let listDeadLetterSourceQueuesSyncOverride = listDeadLetterSourceQueuesSyncOverride {
            return try listDeadLetterSourceQueuesSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleQueueModel.ListQueueTagsResultForListQueueTags, HTTPClientError>) -> ()) throws {
        if let listQueueTagsAsyncOverride = listQueueTagsAsyncOverride {
            return try listQueueTagsAsyncOverride(input, reporting, completion)
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
            input: SimpleQueueModel.ListQueueTagsRequest,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleQueueModel.ListQueueTagsResultForListQueueTags {
        if let listQueueTagsSyncOverride = listQueueTagsSyncOverride {
            return try listQueueTagsSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleQueueModel.ListQueuesResultForListQueues, HTTPClientError>) -> ()) throws {
        if let listQueuesAsyncOverride = listQueuesAsyncOverride {
            return try listQueuesAsyncOverride(input, reporting, completion)
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
            input: SimpleQueueModel.ListQueuesRequest,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleQueueModel.ListQueuesResultForListQueues {
        if let listQueuesSyncOverride = listQueuesSyncOverride {
            return try listQueuesSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let purgeQueueAsyncOverride = purgeQueueAsyncOverride {
            return try purgeQueueAsyncOverride(input, reporting, completion)
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
            input: SimpleQueueModel.PurgeQueueRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let purgeQueueSyncOverride = purgeQueueSyncOverride {
            return try purgeQueueSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleQueueModel.ReceiveMessageResultForReceiveMessage, HTTPClientError>) -> ()) throws {
        if let receiveMessageAsyncOverride = receiveMessageAsyncOverride {
            return try receiveMessageAsyncOverride(input, reporting, completion)
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
            input: SimpleQueueModel.ReceiveMessageRequest,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleQueueModel.ReceiveMessageResultForReceiveMessage {
        if let receiveMessageSyncOverride = receiveMessageSyncOverride {
            return try receiveMessageSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let removePermissionAsyncOverride = removePermissionAsyncOverride {
            return try removePermissionAsyncOverride(input, reporting, completion)
        }

        completion(nil)
    }

    /**
     Invokes the RemovePermission operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemovePermissionRequest object being passed to this operation.
     */
    public func removePermissionSync(
            input: SimpleQueueModel.RemovePermissionRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let removePermissionSyncOverride = removePermissionSyncOverride {
            return try removePermissionSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleQueueModel.SendMessageResultForSendMessage, HTTPClientError>) -> ()) throws {
        if let sendMessageAsyncOverride = sendMessageAsyncOverride {
            return try sendMessageAsyncOverride(input, reporting, completion)
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
            input: SimpleQueueModel.SendMessageRequest,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleQueueModel.SendMessageResultForSendMessage {
        if let sendMessageSyncOverride = sendMessageSyncOverride {
            return try sendMessageSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SimpleQueueModel.SendMessageBatchResultForSendMessageBatch, HTTPClientError>) -> ()) throws {
        if let sendMessageBatchAsyncOverride = sendMessageBatchAsyncOverride {
            return try sendMessageBatchAsyncOverride(input, reporting, completion)
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
            input: SimpleQueueModel.SendMessageBatchRequest,
            reporting: SmokeAWSInvocationReporting) throws -> SimpleQueueModel.SendMessageBatchResultForSendMessageBatch {
        if let sendMessageBatchSyncOverride = sendMessageBatchSyncOverride {
            return try sendMessageBatchSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let setQueueAttributesAsyncOverride = setQueueAttributesAsyncOverride {
            return try setQueueAttributesAsyncOverride(input, reporting, completion)
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
            input: SimpleQueueModel.SetQueueAttributesRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let setQueueAttributesSyncOverride = setQueueAttributesSyncOverride {
            return try setQueueAttributesSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let tagQueueAsyncOverride = tagQueueAsyncOverride {
            return try tagQueueAsyncOverride(input, reporting, completion)
        }

        completion(nil)
    }

    /**
     Invokes the TagQueue operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagQueueRequest object being passed to this operation.
     */
    public func tagQueueSync(
            input: SimpleQueueModel.TagQueueRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let tagQueueSyncOverride = tagQueueSyncOverride {
            return try tagQueueSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let untagQueueAsyncOverride = untagQueueAsyncOverride {
            return try untagQueueAsyncOverride(input, reporting, completion)
        }

        completion(nil)
    }

    /**
     Invokes the UntagQueue operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagQueueRequest object being passed to this operation.
     */
    public func untagQueueSync(
            input: SimpleQueueModel.UntagQueueRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let untagQueueSyncOverride = untagQueueSyncOverride {
            return try untagQueueSyncOverride(input, reporting)
        }

    }
}
