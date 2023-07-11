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
// SimpleQueueClientProtocolV2.swift
// SimpleQueueClient
//

import Foundation
import SimpleQueueModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Client Protocol for the SimpleQueue service.
 */
public protocol SimpleQueueClientProtocolV2 {
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    typealias AddPermissionFunctionType = (
            _ input: SimpleQueueModel.AddPermissionRequest) async throws -> ()
    typealias CancelMessageMoveTaskFunctionType = (
            _ input: SimpleQueueModel.CancelMessageMoveTaskRequest) async throws -> SimpleQueueModel.CancelMessageMoveTaskResultForCancelMessageMoveTask
    typealias ChangeMessageVisibilityFunctionType = (
            _ input: SimpleQueueModel.ChangeMessageVisibilityRequest) async throws -> ()
    typealias ChangeMessageVisibilityBatchFunctionType = (
            _ input: SimpleQueueModel.ChangeMessageVisibilityBatchRequest) async throws -> SimpleQueueModel.ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch
    typealias CreateQueueFunctionType = (
            _ input: SimpleQueueModel.CreateQueueRequest) async throws -> SimpleQueueModel.CreateQueueResultForCreateQueue
    typealias DeleteMessageFunctionType = (
            _ input: SimpleQueueModel.DeleteMessageRequest) async throws -> ()
    typealias DeleteMessageBatchFunctionType = (
            _ input: SimpleQueueModel.DeleteMessageBatchRequest) async throws -> SimpleQueueModel.DeleteMessageBatchResultForDeleteMessageBatch
    typealias DeleteQueueFunctionType = (
            _ input: SimpleQueueModel.DeleteQueueRequest) async throws -> ()
    typealias GetQueueAttributesFunctionType = (
            _ input: SimpleQueueModel.GetQueueAttributesRequest) async throws -> SimpleQueueModel.GetQueueAttributesResultForGetQueueAttributes
    typealias GetQueueUrlFunctionType = (
            _ input: SimpleQueueModel.GetQueueUrlRequest) async throws -> SimpleQueueModel.GetQueueUrlResultForGetQueueUrl
    typealias ListDeadLetterSourceQueuesFunctionType = (
            _ input: SimpleQueueModel.ListDeadLetterSourceQueuesRequest) async throws -> SimpleQueueModel.ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues
    typealias ListMessageMoveTasksFunctionType = (
            _ input: SimpleQueueModel.ListMessageMoveTasksRequest) async throws -> SimpleQueueModel.ListMessageMoveTasksResultForListMessageMoveTasks
    typealias ListQueueTagsFunctionType = (
            _ input: SimpleQueueModel.ListQueueTagsRequest) async throws -> SimpleQueueModel.ListQueueTagsResultForListQueueTags
    typealias ListQueuesFunctionType = (
            _ input: SimpleQueueModel.ListQueuesRequest) async throws -> SimpleQueueModel.ListQueuesResultForListQueues
    typealias PurgeQueueFunctionType = (
            _ input: SimpleQueueModel.PurgeQueueRequest) async throws -> ()
    typealias ReceiveMessageFunctionType = (
            _ input: SimpleQueueModel.ReceiveMessageRequest) async throws -> SimpleQueueModel.ReceiveMessageResultForReceiveMessage
    typealias RemovePermissionFunctionType = (
            _ input: SimpleQueueModel.RemovePermissionRequest) async throws -> ()
    typealias SendMessageFunctionType = (
            _ input: SimpleQueueModel.SendMessageRequest) async throws -> SimpleQueueModel.SendMessageResultForSendMessage
    typealias SendMessageBatchFunctionType = (
            _ input: SimpleQueueModel.SendMessageBatchRequest) async throws -> SimpleQueueModel.SendMessageBatchResultForSendMessageBatch
    typealias SetQueueAttributesFunctionType = (
            _ input: SimpleQueueModel.SetQueueAttributesRequest) async throws -> ()
    typealias StartMessageMoveTaskFunctionType = (
            _ input: SimpleQueueModel.StartMessageMoveTaskRequest) async throws -> SimpleQueueModel.StartMessageMoveTaskResultForStartMessageMoveTask
    typealias TagQueueFunctionType = (
            _ input: SimpleQueueModel.TagQueueRequest) async throws -> ()
    typealias UntagQueueFunctionType = (
            _ input: SimpleQueueModel.UntagQueueRequest) async throws -> ()

    /**
     Invokes the AddPermission operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AddPermissionRequest object being passed to this operation.
     - Throws: overLimit.
     */
    func addPermission(
            input: SimpleQueueModel.AddPermissionRequest) async throws

    /**
     Invokes the CancelMessageMoveTask operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CancelMessageMoveTaskRequest object being passed to this operation.
     - Returns: The CancelMessageMoveTaskResultForCancelMessageMoveTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: resourceNotFound, unsupportedOperation.
     */
    func cancelMessageMoveTask(
            input: SimpleQueueModel.CancelMessageMoveTaskRequest) async throws -> SimpleQueueModel.CancelMessageMoveTaskResultForCancelMessageMoveTask

    /**
     Invokes the ChangeMessageVisibility operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ChangeMessageVisibilityRequest object being passed to this operation.
     - Throws: messageNotInflight, receiptHandleIsInvalid.
     */
    func changeMessageVisibility(
            input: SimpleQueueModel.ChangeMessageVisibilityRequest) async throws

    /**
     Invokes the ChangeMessageVisibilityBatch operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ChangeMessageVisibilityBatchRequest object being passed to this operation.
     - Returns: The ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: batchEntryIdsNotDistinct, emptyBatchRequest, invalidBatchEntryId, tooManyEntriesInBatchRequest.
     */
    func changeMessageVisibilityBatch(
            input: SimpleQueueModel.ChangeMessageVisibilityBatchRequest) async throws -> SimpleQueueModel.ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch

    /**
     Invokes the CreateQueue operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateQueueRequest object being passed to this operation.
     - Returns: The CreateQueueResultForCreateQueue object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: queueDeletedRecently, queueNameExists.
     */
    func createQueue(
            input: SimpleQueueModel.CreateQueueRequest) async throws -> SimpleQueueModel.CreateQueueResultForCreateQueue

    /**
     Invokes the DeleteMessage operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteMessageRequest object being passed to this operation.
     - Throws: invalidIdFormat, receiptHandleIsInvalid.
     */
    func deleteMessage(
            input: SimpleQueueModel.DeleteMessageRequest) async throws

    /**
     Invokes the DeleteMessageBatch operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteMessageBatchRequest object being passed to this operation.
     - Returns: The DeleteMessageBatchResultForDeleteMessageBatch object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: batchEntryIdsNotDistinct, emptyBatchRequest, invalidBatchEntryId, tooManyEntriesInBatchRequest.
     */
    func deleteMessageBatch(
            input: SimpleQueueModel.DeleteMessageBatchRequest) async throws -> SimpleQueueModel.DeleteMessageBatchResultForDeleteMessageBatch

    /**
     Invokes the DeleteQueue operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteQueueRequest object being passed to this operation.
     */
    func deleteQueue(
            input: SimpleQueueModel.DeleteQueueRequest) async throws

    /**
     Invokes the GetQueueAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetQueueAttributesRequest object being passed to this operation.
     - Returns: The GetQueueAttributesResultForGetQueueAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidAttributeName.
     */
    func getQueueAttributes(
            input: SimpleQueueModel.GetQueueAttributesRequest) async throws -> SimpleQueueModel.GetQueueAttributesResultForGetQueueAttributes

    /**
     Invokes the GetQueueUrl operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetQueueUrlRequest object being passed to this operation.
     - Returns: The GetQueueUrlResultForGetQueueUrl object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: queueDoesNotExist.
     */
    func getQueueUrl(
            input: SimpleQueueModel.GetQueueUrlRequest) async throws -> SimpleQueueModel.GetQueueUrlResultForGetQueueUrl

    /**
     Invokes the ListDeadLetterSourceQueues operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListDeadLetterSourceQueuesRequest object being passed to this operation.
     - Returns: The ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: queueDoesNotExist.
     */
    func listDeadLetterSourceQueues(
            input: SimpleQueueModel.ListDeadLetterSourceQueuesRequest) async throws -> SimpleQueueModel.ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues

    /**
     Invokes the ListMessageMoveTasks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListMessageMoveTasksRequest object being passed to this operation.
     - Returns: The ListMessageMoveTasksResultForListMessageMoveTasks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: resourceNotFound, unsupportedOperation.
     */
    func listMessageMoveTasks(
            input: SimpleQueueModel.ListMessageMoveTasksRequest) async throws -> SimpleQueueModel.ListMessageMoveTasksResultForListMessageMoveTasks

    /**
     Invokes the ListQueueTags operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListQueueTagsRequest object being passed to this operation.
     - Returns: The ListQueueTagsResultForListQueueTags object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listQueueTags(
            input: SimpleQueueModel.ListQueueTagsRequest) async throws -> SimpleQueueModel.ListQueueTagsResultForListQueueTags

    /**
     Invokes the ListQueues operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListQueuesRequest object being passed to this operation.
     - Returns: The ListQueuesResultForListQueues object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listQueues(
            input: SimpleQueueModel.ListQueuesRequest) async throws -> SimpleQueueModel.ListQueuesResultForListQueues

    /**
     Invokes the PurgeQueue operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PurgeQueueRequest object being passed to this operation.
     - Throws: purgeQueueInProgress, queueDoesNotExist.
     */
    func purgeQueue(
            input: SimpleQueueModel.PurgeQueueRequest) async throws

    /**
     Invokes the ReceiveMessage operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ReceiveMessageRequest object being passed to this operation.
     - Returns: The ReceiveMessageResultForReceiveMessage object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: overLimit.
     */
    func receiveMessage(
            input: SimpleQueueModel.ReceiveMessageRequest) async throws -> SimpleQueueModel.ReceiveMessageResultForReceiveMessage

    /**
     Invokes the RemovePermission operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RemovePermissionRequest object being passed to this operation.
     */
    func removePermission(
            input: SimpleQueueModel.RemovePermissionRequest) async throws

    /**
     Invokes the SendMessage operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SendMessageRequest object being passed to this operation.
     - Returns: The SendMessageResultForSendMessage object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidMessageContents, unsupportedOperation.
     */
    func sendMessage(
            input: SimpleQueueModel.SendMessageRequest) async throws -> SimpleQueueModel.SendMessageResultForSendMessage

    /**
     Invokes the SendMessageBatch operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SendMessageBatchRequest object being passed to this operation.
     - Returns: The SendMessageBatchResultForSendMessageBatch object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: batchEntryIdsNotDistinct, batchRequestTooLong, emptyBatchRequest, invalidBatchEntryId, tooManyEntriesInBatchRequest, unsupportedOperation.
     */
    func sendMessageBatch(
            input: SimpleQueueModel.SendMessageBatchRequest) async throws -> SimpleQueueModel.SendMessageBatchResultForSendMessageBatch

    /**
     Invokes the SetQueueAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SetQueueAttributesRequest object being passed to this operation.
     - Throws: invalidAttributeName.
     */
    func setQueueAttributes(
            input: SimpleQueueModel.SetQueueAttributesRequest) async throws

    /**
     Invokes the StartMessageMoveTask operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartMessageMoveTaskRequest object being passed to this operation.
     - Returns: The StartMessageMoveTaskResultForStartMessageMoveTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: resourceNotFound, unsupportedOperation.
     */
    func startMessageMoveTask(
            input: SimpleQueueModel.StartMessageMoveTaskRequest) async throws -> SimpleQueueModel.StartMessageMoveTaskResultForStartMessageMoveTask

    /**
     Invokes the TagQueue operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TagQueueRequest object being passed to this operation.
     */
    func tagQueue(
            input: SimpleQueueModel.TagQueueRequest) async throws

    /**
     Invokes the UntagQueue operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UntagQueueRequest object being passed to this operation.
     */
    func untagQueue(
            input: SimpleQueueModel.UntagQueueRequest) async throws
#endif
}
