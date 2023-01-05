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
// MockSimpleQueueClientV2.swift
// SimpleQueueClient
//

import Foundation
import SimpleQueueModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the SimpleQueue service by default returns the `__default` property of its return type.
 */
public struct MockSimpleQueueClientV2: SimpleQueueClientProtocolV2 {
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    let addPermissionOverride: AddPermissionFunctionType?
    let changeMessageVisibilityOverride: ChangeMessageVisibilityFunctionType?
    let changeMessageVisibilityBatchOverride: ChangeMessageVisibilityBatchFunctionType?
    let createQueueOverride: CreateQueueFunctionType?
    let deleteMessageOverride: DeleteMessageFunctionType?
    let deleteMessageBatchOverride: DeleteMessageBatchFunctionType?
    let deleteQueueOverride: DeleteQueueFunctionType?
    let getQueueAttributesOverride: GetQueueAttributesFunctionType?
    let getQueueUrlOverride: GetQueueUrlFunctionType?
    let listDeadLetterSourceQueuesOverride: ListDeadLetterSourceQueuesFunctionType?
    let listQueueTagsOverride: ListQueueTagsFunctionType?
    let listQueuesOverride: ListQueuesFunctionType?
    let purgeQueueOverride: PurgeQueueFunctionType?
    let receiveMessageOverride: ReceiveMessageFunctionType?
    let removePermissionOverride: RemovePermissionFunctionType?
    let sendMessageOverride: SendMessageFunctionType?
    let sendMessageBatchOverride: SendMessageBatchFunctionType?
    let setQueueAttributesOverride: SetQueueAttributesFunctionType?
    let tagQueueOverride: TagQueueFunctionType?
    let untagQueueOverride: UntagQueueFunctionType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            addPermission: AddPermissionFunctionType? = nil,
            changeMessageVisibility: ChangeMessageVisibilityFunctionType? = nil,
            changeMessageVisibilityBatch: ChangeMessageVisibilityBatchFunctionType? = nil,
            createQueue: CreateQueueFunctionType? = nil,
            deleteMessage: DeleteMessageFunctionType? = nil,
            deleteMessageBatch: DeleteMessageBatchFunctionType? = nil,
            deleteQueue: DeleteQueueFunctionType? = nil,
            getQueueAttributes: GetQueueAttributesFunctionType? = nil,
            getQueueUrl: GetQueueUrlFunctionType? = nil,
            listDeadLetterSourceQueues: ListDeadLetterSourceQueuesFunctionType? = nil,
            listQueueTags: ListQueueTagsFunctionType? = nil,
            listQueues: ListQueuesFunctionType? = nil,
            purgeQueue: PurgeQueueFunctionType? = nil,
            receiveMessage: ReceiveMessageFunctionType? = nil,
            removePermission: RemovePermissionFunctionType? = nil,
            sendMessage: SendMessageFunctionType? = nil,
            sendMessageBatch: SendMessageBatchFunctionType? = nil,
            setQueueAttributes: SetQueueAttributesFunctionType? = nil,
            tagQueue: TagQueueFunctionType? = nil,
            untagQueue: UntagQueueFunctionType? = nil) {
        self.addPermissionOverride = addPermission
        self.changeMessageVisibilityOverride = changeMessageVisibility
        self.changeMessageVisibilityBatchOverride = changeMessageVisibilityBatch
        self.createQueueOverride = createQueue
        self.deleteMessageOverride = deleteMessage
        self.deleteMessageBatchOverride = deleteMessageBatch
        self.deleteQueueOverride = deleteQueue
        self.getQueueAttributesOverride = getQueueAttributes
        self.getQueueUrlOverride = getQueueUrl
        self.listDeadLetterSourceQueuesOverride = listDeadLetterSourceQueues
        self.listQueueTagsOverride = listQueueTags
        self.listQueuesOverride = listQueues
        self.purgeQueueOverride = purgeQueue
        self.receiveMessageOverride = receiveMessage
        self.removePermissionOverride = removePermission
        self.sendMessageOverride = sendMessage
        self.sendMessageBatchOverride = sendMessageBatch
        self.setQueueAttributesOverride = setQueueAttributes
        self.tagQueueOverride = tagQueue
        self.untagQueueOverride = untagQueue
    }

    /**
     Invokes the AddPermission operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AddPermissionRequest object being passed to this operation.
     - Throws: overLimit.
     */
    public func addPermission(
            input: SimpleQueueModel.AddPermissionRequest) async throws {
        if let addPermissionOverride = addPermissionOverride {
            return try await addPermissionOverride(input)
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
        if let changeMessageVisibilityOverride = changeMessageVisibilityOverride {
            return try await changeMessageVisibilityOverride(input)
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
        if let changeMessageVisibilityBatchOverride = changeMessageVisibilityBatchOverride {
            return try await changeMessageVisibilityBatchOverride(input)
        }

        return ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch.__default
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
        if let createQueueOverride = createQueueOverride {
            return try await createQueueOverride(input)
        }

        return CreateQueueResultForCreateQueue.__default
    }

    /**
     Invokes the DeleteMessage operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteMessageRequest object being passed to this operation.
     - Throws: invalidIdFormat, receiptHandleIsInvalid.
     */
    public func deleteMessage(
            input: SimpleQueueModel.DeleteMessageRequest) async throws {
        if let deleteMessageOverride = deleteMessageOverride {
            return try await deleteMessageOverride(input)
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
        if let deleteMessageBatchOverride = deleteMessageBatchOverride {
            return try await deleteMessageBatchOverride(input)
        }

        return DeleteMessageBatchResultForDeleteMessageBatch.__default
    }

    /**
     Invokes the DeleteQueue operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteQueueRequest object being passed to this operation.
     */
    public func deleteQueue(
            input: SimpleQueueModel.DeleteQueueRequest) async throws {
        if let deleteQueueOverride = deleteQueueOverride {
            return try await deleteQueueOverride(input)
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
        if let getQueueAttributesOverride = getQueueAttributesOverride {
            return try await getQueueAttributesOverride(input)
        }

        return GetQueueAttributesResultForGetQueueAttributes.__default
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
        if let getQueueUrlOverride = getQueueUrlOverride {
            return try await getQueueUrlOverride(input)
        }

        return GetQueueUrlResultForGetQueueUrl.__default
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
        if let listDeadLetterSourceQueuesOverride = listDeadLetterSourceQueuesOverride {
            return try await listDeadLetterSourceQueuesOverride(input)
        }

        return ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues.__default
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
        if let listQueueTagsOverride = listQueueTagsOverride {
            return try await listQueueTagsOverride(input)
        }

        return ListQueueTagsResultForListQueueTags.__default
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
        if let listQueuesOverride = listQueuesOverride {
            return try await listQueuesOverride(input)
        }

        return ListQueuesResultForListQueues.__default
    }

    /**
     Invokes the PurgeQueue operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PurgeQueueRequest object being passed to this operation.
     - Throws: purgeQueueInProgress, queueDoesNotExist.
     */
    public func purgeQueue(
            input: SimpleQueueModel.PurgeQueueRequest) async throws {
        if let purgeQueueOverride = purgeQueueOverride {
            return try await purgeQueueOverride(input)
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
        if let receiveMessageOverride = receiveMessageOverride {
            return try await receiveMessageOverride(input)
        }

        return ReceiveMessageResultForReceiveMessage.__default
    }

    /**
     Invokes the RemovePermission operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RemovePermissionRequest object being passed to this operation.
     */
    public func removePermission(
            input: SimpleQueueModel.RemovePermissionRequest) async throws {
        if let removePermissionOverride = removePermissionOverride {
            return try await removePermissionOverride(input)
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
        if let sendMessageOverride = sendMessageOverride {
            return try await sendMessageOverride(input)
        }

        return SendMessageResultForSendMessage.__default
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
        if let sendMessageBatchOverride = sendMessageBatchOverride {
            return try await sendMessageBatchOverride(input)
        }

        return SendMessageBatchResultForSendMessageBatch.__default
    }

    /**
     Invokes the SetQueueAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SetQueueAttributesRequest object being passed to this operation.
     - Throws: invalidAttributeName.
     */
    public func setQueueAttributes(
            input: SimpleQueueModel.SetQueueAttributesRequest) async throws {
        if let setQueueAttributesOverride = setQueueAttributesOverride {
            return try await setQueueAttributesOverride(input)
        }

    }

    /**
     Invokes the TagQueue operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TagQueueRequest object being passed to this operation.
     */
    public func tagQueue(
            input: SimpleQueueModel.TagQueueRequest) async throws {
        if let tagQueueOverride = tagQueueOverride {
            return try await tagQueueOverride(input)
        }

    }

    /**
     Invokes the UntagQueue operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UntagQueueRequest object being passed to this operation.
     */
    public func untagQueue(
            input: SimpleQueueModel.UntagQueueRequest) async throws {
        if let untagQueueOverride = untagQueueOverride {
            return try await untagQueueOverride(input)
        }

    }
#endif
}
