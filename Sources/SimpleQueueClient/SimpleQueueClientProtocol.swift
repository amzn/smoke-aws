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
// SimpleQueueClientProtocol.swift
// SimpleQueueClient
//

import Foundation
import SimpleQueueModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Client Protocol for the SimpleQueue service.
 */
public protocol SimpleQueueClientProtocol: SimpleQueueClientProtocolV2 {
    typealias AddPermissionSyncType = (
            _ input: SimpleQueueModel.AddPermissionRequest) throws -> ()
    typealias AddPermissionAsyncType = (
            _ input: SimpleQueueModel.AddPermissionRequest, 
            _ completion: @escaping (SimpleQueueError?) -> ()) throws -> ()
    typealias CancelMessageMoveTaskSyncType = (
            _ input: SimpleQueueModel.CancelMessageMoveTaskRequest) throws -> SimpleQueueModel.CancelMessageMoveTaskResultForCancelMessageMoveTask
    typealias CancelMessageMoveTaskAsyncType = (
            _ input: SimpleQueueModel.CancelMessageMoveTaskRequest, 
            _ completion: @escaping (Result<SimpleQueueModel.CancelMessageMoveTaskResultForCancelMessageMoveTask, SimpleQueueError>) -> ()) throws -> ()
    typealias ChangeMessageVisibilitySyncType = (
            _ input: SimpleQueueModel.ChangeMessageVisibilityRequest) throws -> ()
    typealias ChangeMessageVisibilityAsyncType = (
            _ input: SimpleQueueModel.ChangeMessageVisibilityRequest, 
            _ completion: @escaping (SimpleQueueError?) -> ()) throws -> ()
    typealias ChangeMessageVisibilityBatchSyncType = (
            _ input: SimpleQueueModel.ChangeMessageVisibilityBatchRequest) throws -> SimpleQueueModel.ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch
    typealias ChangeMessageVisibilityBatchAsyncType = (
            _ input: SimpleQueueModel.ChangeMessageVisibilityBatchRequest, 
            _ completion: @escaping (Result<SimpleQueueModel.ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch, SimpleQueueError>) -> ()) throws -> ()
    typealias CreateQueueSyncType = (
            _ input: SimpleQueueModel.CreateQueueRequest) throws -> SimpleQueueModel.CreateQueueResultForCreateQueue
    typealias CreateQueueAsyncType = (
            _ input: SimpleQueueModel.CreateQueueRequest, 
            _ completion: @escaping (Result<SimpleQueueModel.CreateQueueResultForCreateQueue, SimpleQueueError>) -> ()) throws -> ()
    typealias DeleteMessageSyncType = (
            _ input: SimpleQueueModel.DeleteMessageRequest) throws -> ()
    typealias DeleteMessageAsyncType = (
            _ input: SimpleQueueModel.DeleteMessageRequest, 
            _ completion: @escaping (SimpleQueueError?) -> ()) throws -> ()
    typealias DeleteMessageBatchSyncType = (
            _ input: SimpleQueueModel.DeleteMessageBatchRequest) throws -> SimpleQueueModel.DeleteMessageBatchResultForDeleteMessageBatch
    typealias DeleteMessageBatchAsyncType = (
            _ input: SimpleQueueModel.DeleteMessageBatchRequest, 
            _ completion: @escaping (Result<SimpleQueueModel.DeleteMessageBatchResultForDeleteMessageBatch, SimpleQueueError>) -> ()) throws -> ()
    typealias DeleteQueueSyncType = (
            _ input: SimpleQueueModel.DeleteQueueRequest) throws -> ()
    typealias DeleteQueueAsyncType = (
            _ input: SimpleQueueModel.DeleteQueueRequest, 
            _ completion: @escaping (SimpleQueueError?) -> ()) throws -> ()
    typealias GetQueueAttributesSyncType = (
            _ input: SimpleQueueModel.GetQueueAttributesRequest) throws -> SimpleQueueModel.GetQueueAttributesResultForGetQueueAttributes
    typealias GetQueueAttributesAsyncType = (
            _ input: SimpleQueueModel.GetQueueAttributesRequest, 
            _ completion: @escaping (Result<SimpleQueueModel.GetQueueAttributesResultForGetQueueAttributes, SimpleQueueError>) -> ()) throws -> ()
    typealias GetQueueUrlSyncType = (
            _ input: SimpleQueueModel.GetQueueUrlRequest) throws -> SimpleQueueModel.GetQueueUrlResultForGetQueueUrl
    typealias GetQueueUrlAsyncType = (
            _ input: SimpleQueueModel.GetQueueUrlRequest, 
            _ completion: @escaping (Result<SimpleQueueModel.GetQueueUrlResultForGetQueueUrl, SimpleQueueError>) -> ()) throws -> ()
    typealias ListDeadLetterSourceQueuesSyncType = (
            _ input: SimpleQueueModel.ListDeadLetterSourceQueuesRequest) throws -> SimpleQueueModel.ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues
    typealias ListDeadLetterSourceQueuesAsyncType = (
            _ input: SimpleQueueModel.ListDeadLetterSourceQueuesRequest, 
            _ completion: @escaping (Result<SimpleQueueModel.ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues, SimpleQueueError>) -> ()) throws -> ()
    typealias ListMessageMoveTasksSyncType = (
            _ input: SimpleQueueModel.ListMessageMoveTasksRequest) throws -> SimpleQueueModel.ListMessageMoveTasksResultForListMessageMoveTasks
    typealias ListMessageMoveTasksAsyncType = (
            _ input: SimpleQueueModel.ListMessageMoveTasksRequest, 
            _ completion: @escaping (Result<SimpleQueueModel.ListMessageMoveTasksResultForListMessageMoveTasks, SimpleQueueError>) -> ()) throws -> ()
    typealias ListQueueTagsSyncType = (
            _ input: SimpleQueueModel.ListQueueTagsRequest) throws -> SimpleQueueModel.ListQueueTagsResultForListQueueTags
    typealias ListQueueTagsAsyncType = (
            _ input: SimpleQueueModel.ListQueueTagsRequest, 
            _ completion: @escaping (Result<SimpleQueueModel.ListQueueTagsResultForListQueueTags, SimpleQueueError>) -> ()) throws -> ()
    typealias ListQueuesSyncType = (
            _ input: SimpleQueueModel.ListQueuesRequest) throws -> SimpleQueueModel.ListQueuesResultForListQueues
    typealias ListQueuesAsyncType = (
            _ input: SimpleQueueModel.ListQueuesRequest, 
            _ completion: @escaping (Result<SimpleQueueModel.ListQueuesResultForListQueues, SimpleQueueError>) -> ()) throws -> ()
    typealias PurgeQueueSyncType = (
            _ input: SimpleQueueModel.PurgeQueueRequest) throws -> ()
    typealias PurgeQueueAsyncType = (
            _ input: SimpleQueueModel.PurgeQueueRequest, 
            _ completion: @escaping (SimpleQueueError?) -> ()) throws -> ()
    typealias ReceiveMessageSyncType = (
            _ input: SimpleQueueModel.ReceiveMessageRequest) throws -> SimpleQueueModel.ReceiveMessageResultForReceiveMessage
    typealias ReceiveMessageAsyncType = (
            _ input: SimpleQueueModel.ReceiveMessageRequest, 
            _ completion: @escaping (Result<SimpleQueueModel.ReceiveMessageResultForReceiveMessage, SimpleQueueError>) -> ()) throws -> ()
    typealias RemovePermissionSyncType = (
            _ input: SimpleQueueModel.RemovePermissionRequest) throws -> ()
    typealias RemovePermissionAsyncType = (
            _ input: SimpleQueueModel.RemovePermissionRequest, 
            _ completion: @escaping (SimpleQueueError?) -> ()) throws -> ()
    typealias SendMessageSyncType = (
            _ input: SimpleQueueModel.SendMessageRequest) throws -> SimpleQueueModel.SendMessageResultForSendMessage
    typealias SendMessageAsyncType = (
            _ input: SimpleQueueModel.SendMessageRequest, 
            _ completion: @escaping (Result<SimpleQueueModel.SendMessageResultForSendMessage, SimpleQueueError>) -> ()) throws -> ()
    typealias SendMessageBatchSyncType = (
            _ input: SimpleQueueModel.SendMessageBatchRequest) throws -> SimpleQueueModel.SendMessageBatchResultForSendMessageBatch
    typealias SendMessageBatchAsyncType = (
            _ input: SimpleQueueModel.SendMessageBatchRequest, 
            _ completion: @escaping (Result<SimpleQueueModel.SendMessageBatchResultForSendMessageBatch, SimpleQueueError>) -> ()) throws -> ()
    typealias SetQueueAttributesSyncType = (
            _ input: SimpleQueueModel.SetQueueAttributesRequest) throws -> ()
    typealias SetQueueAttributesAsyncType = (
            _ input: SimpleQueueModel.SetQueueAttributesRequest, 
            _ completion: @escaping (SimpleQueueError?) -> ()) throws -> ()
    typealias StartMessageMoveTaskSyncType = (
            _ input: SimpleQueueModel.StartMessageMoveTaskRequest) throws -> SimpleQueueModel.StartMessageMoveTaskResultForStartMessageMoveTask
    typealias StartMessageMoveTaskAsyncType = (
            _ input: SimpleQueueModel.StartMessageMoveTaskRequest, 
            _ completion: @escaping (Result<SimpleQueueModel.StartMessageMoveTaskResultForStartMessageMoveTask, SimpleQueueError>) -> ()) throws -> ()
    typealias TagQueueSyncType = (
            _ input: SimpleQueueModel.TagQueueRequest) throws -> ()
    typealias TagQueueAsyncType = (
            _ input: SimpleQueueModel.TagQueueRequest, 
            _ completion: @escaping (SimpleQueueError?) -> ()) throws -> ()
    typealias UntagQueueSyncType = (
            _ input: SimpleQueueModel.UntagQueueRequest) throws -> ()
    typealias UntagQueueAsyncType = (
            _ input: SimpleQueueModel.UntagQueueRequest, 
            _ completion: @escaping (SimpleQueueError?) -> ()) throws -> ()

    /**
     Invokes the AddPermission operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AddPermissionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: overLimit.
     */
    func addPermissionAsync(
            input: SimpleQueueModel.AddPermissionRequest, 
            completion: @escaping (SimpleQueueError?) -> ()) throws

    /**
     Invokes the AddPermission operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddPermissionRequest object being passed to this operation.
     - Throws: overLimit.
     */
    func addPermissionSync(
            input: SimpleQueueModel.AddPermissionRequest) throws

    /**
     Invokes the CancelMessageMoveTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelMessageMoveTaskRequest object being passed to this operation.
         - completion: The CancelMessageMoveTaskResultForCancelMessageMoveTask object or an error will be passed to this 
           callback when the operation is complete. The CancelMessageMoveTaskResultForCancelMessageMoveTask
           object will be validated before being returned to caller.
           The possible errors are: resourceNotFound, unsupportedOperation.
     */
    func cancelMessageMoveTaskAsync(
            input: SimpleQueueModel.CancelMessageMoveTaskRequest, 
            completion: @escaping (Result<SimpleQueueModel.CancelMessageMoveTaskResultForCancelMessageMoveTask, SimpleQueueError>) -> ()) throws

    /**
     Invokes the CancelMessageMoveTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelMessageMoveTaskRequest object being passed to this operation.
     - Returns: The CancelMessageMoveTaskResultForCancelMessageMoveTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: resourceNotFound, unsupportedOperation.
     */
    func cancelMessageMoveTaskSync(
            input: SimpleQueueModel.CancelMessageMoveTaskRequest) throws -> SimpleQueueModel.CancelMessageMoveTaskResultForCancelMessageMoveTask

    /**
     Invokes the ChangeMessageVisibility operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ChangeMessageVisibilityRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: messageNotInflight, receiptHandleIsInvalid.
     */
    func changeMessageVisibilityAsync(
            input: SimpleQueueModel.ChangeMessageVisibilityRequest, 
            completion: @escaping (SimpleQueueError?) -> ()) throws

    /**
     Invokes the ChangeMessageVisibility operation waiting for the response before returning.

     - Parameters:
         - input: The validated ChangeMessageVisibilityRequest object being passed to this operation.
     - Throws: messageNotInflight, receiptHandleIsInvalid.
     */
    func changeMessageVisibilitySync(
            input: SimpleQueueModel.ChangeMessageVisibilityRequest) throws

    /**
     Invokes the ChangeMessageVisibilityBatch operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ChangeMessageVisibilityBatchRequest object being passed to this operation.
         - completion: The ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch object or an error will be passed to this 
           callback when the operation is complete. The ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch
           object will be validated before being returned to caller.
           The possible errors are: batchEntryIdsNotDistinct, emptyBatchRequest, invalidBatchEntryId, tooManyEntriesInBatchRequest.
     */
    func changeMessageVisibilityBatchAsync(
            input: SimpleQueueModel.ChangeMessageVisibilityBatchRequest, 
            completion: @escaping (Result<SimpleQueueModel.ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch, SimpleQueueError>) -> ()) throws

    /**
     Invokes the ChangeMessageVisibilityBatch operation waiting for the response before returning.

     - Parameters:
         - input: The validated ChangeMessageVisibilityBatchRequest object being passed to this operation.
     - Returns: The ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: batchEntryIdsNotDistinct, emptyBatchRequest, invalidBatchEntryId, tooManyEntriesInBatchRequest.
     */
    func changeMessageVisibilityBatchSync(
            input: SimpleQueueModel.ChangeMessageVisibilityBatchRequest) throws -> SimpleQueueModel.ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch

    /**
     Invokes the CreateQueue operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateQueueRequest object being passed to this operation.
         - completion: The CreateQueueResultForCreateQueue object or an error will be passed to this 
           callback when the operation is complete. The CreateQueueResultForCreateQueue
           object will be validated before being returned to caller.
           The possible errors are: queueDeletedRecently, queueNameExists.
     */
    func createQueueAsync(
            input: SimpleQueueModel.CreateQueueRequest, 
            completion: @escaping (Result<SimpleQueueModel.CreateQueueResultForCreateQueue, SimpleQueueError>) -> ()) throws

    /**
     Invokes the CreateQueue operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateQueueRequest object being passed to this operation.
     - Returns: The CreateQueueResultForCreateQueue object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: queueDeletedRecently, queueNameExists.
     */
    func createQueueSync(
            input: SimpleQueueModel.CreateQueueRequest) throws -> SimpleQueueModel.CreateQueueResultForCreateQueue

    /**
     Invokes the DeleteMessage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteMessageRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidIdFormat, receiptHandleIsInvalid.
     */
    func deleteMessageAsync(
            input: SimpleQueueModel.DeleteMessageRequest, 
            completion: @escaping (SimpleQueueError?) -> ()) throws

    /**
     Invokes the DeleteMessage operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteMessageRequest object being passed to this operation.
     - Throws: invalidIdFormat, receiptHandleIsInvalid.
     */
    func deleteMessageSync(
            input: SimpleQueueModel.DeleteMessageRequest) throws

    /**
     Invokes the DeleteMessageBatch operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteMessageBatchRequest object being passed to this operation.
         - completion: The DeleteMessageBatchResultForDeleteMessageBatch object or an error will be passed to this 
           callback when the operation is complete. The DeleteMessageBatchResultForDeleteMessageBatch
           object will be validated before being returned to caller.
           The possible errors are: batchEntryIdsNotDistinct, emptyBatchRequest, invalidBatchEntryId, tooManyEntriesInBatchRequest.
     */
    func deleteMessageBatchAsync(
            input: SimpleQueueModel.DeleteMessageBatchRequest, 
            completion: @escaping (Result<SimpleQueueModel.DeleteMessageBatchResultForDeleteMessageBatch, SimpleQueueError>) -> ()) throws

    /**
     Invokes the DeleteMessageBatch operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteMessageBatchRequest object being passed to this operation.
     - Returns: The DeleteMessageBatchResultForDeleteMessageBatch object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: batchEntryIdsNotDistinct, emptyBatchRequest, invalidBatchEntryId, tooManyEntriesInBatchRequest.
     */
    func deleteMessageBatchSync(
            input: SimpleQueueModel.DeleteMessageBatchRequest) throws -> SimpleQueueModel.DeleteMessageBatchResultForDeleteMessageBatch

    /**
     Invokes the DeleteQueue operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteQueueRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteQueueAsync(
            input: SimpleQueueModel.DeleteQueueRequest, 
            completion: @escaping (SimpleQueueError?) -> ()) throws

    /**
     Invokes the DeleteQueue operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteQueueRequest object being passed to this operation.
     */
    func deleteQueueSync(
            input: SimpleQueueModel.DeleteQueueRequest) throws

    /**
     Invokes the GetQueueAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetQueueAttributesRequest object being passed to this operation.
         - completion: The GetQueueAttributesResultForGetQueueAttributes object or an error will be passed to this 
           callback when the operation is complete. The GetQueueAttributesResultForGetQueueAttributes
           object will be validated before being returned to caller.
           The possible errors are: invalidAttributeName.
     */
    func getQueueAttributesAsync(
            input: SimpleQueueModel.GetQueueAttributesRequest, 
            completion: @escaping (Result<SimpleQueueModel.GetQueueAttributesResultForGetQueueAttributes, SimpleQueueError>) -> ()) throws

    /**
     Invokes the GetQueueAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetQueueAttributesRequest object being passed to this operation.
     - Returns: The GetQueueAttributesResultForGetQueueAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidAttributeName.
     */
    func getQueueAttributesSync(
            input: SimpleQueueModel.GetQueueAttributesRequest) throws -> SimpleQueueModel.GetQueueAttributesResultForGetQueueAttributes

    /**
     Invokes the GetQueueUrl operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetQueueUrlRequest object being passed to this operation.
         - completion: The GetQueueUrlResultForGetQueueUrl object or an error will be passed to this 
           callback when the operation is complete. The GetQueueUrlResultForGetQueueUrl
           object will be validated before being returned to caller.
           The possible errors are: queueDoesNotExist.
     */
    func getQueueUrlAsync(
            input: SimpleQueueModel.GetQueueUrlRequest, 
            completion: @escaping (Result<SimpleQueueModel.GetQueueUrlResultForGetQueueUrl, SimpleQueueError>) -> ()) throws

    /**
     Invokes the GetQueueUrl operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetQueueUrlRequest object being passed to this operation.
     - Returns: The GetQueueUrlResultForGetQueueUrl object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: queueDoesNotExist.
     */
    func getQueueUrlSync(
            input: SimpleQueueModel.GetQueueUrlRequest) throws -> SimpleQueueModel.GetQueueUrlResultForGetQueueUrl

    /**
     Invokes the ListDeadLetterSourceQueues operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListDeadLetterSourceQueuesRequest object being passed to this operation.
         - completion: The ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues object or an error will be passed to this 
           callback when the operation is complete. The ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues
           object will be validated before being returned to caller.
           The possible errors are: queueDoesNotExist.
     */
    func listDeadLetterSourceQueuesAsync(
            input: SimpleQueueModel.ListDeadLetterSourceQueuesRequest, 
            completion: @escaping (Result<SimpleQueueModel.ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues, SimpleQueueError>) -> ()) throws

    /**
     Invokes the ListDeadLetterSourceQueues operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListDeadLetterSourceQueuesRequest object being passed to this operation.
     - Returns: The ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: queueDoesNotExist.
     */
    func listDeadLetterSourceQueuesSync(
            input: SimpleQueueModel.ListDeadLetterSourceQueuesRequest) throws -> SimpleQueueModel.ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues

    /**
     Invokes the ListMessageMoveTasks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListMessageMoveTasksRequest object being passed to this operation.
         - completion: The ListMessageMoveTasksResultForListMessageMoveTasks object or an error will be passed to this 
           callback when the operation is complete. The ListMessageMoveTasksResultForListMessageMoveTasks
           object will be validated before being returned to caller.
           The possible errors are: resourceNotFound, unsupportedOperation.
     */
    func listMessageMoveTasksAsync(
            input: SimpleQueueModel.ListMessageMoveTasksRequest, 
            completion: @escaping (Result<SimpleQueueModel.ListMessageMoveTasksResultForListMessageMoveTasks, SimpleQueueError>) -> ()) throws

    /**
     Invokes the ListMessageMoveTasks operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListMessageMoveTasksRequest object being passed to this operation.
     - Returns: The ListMessageMoveTasksResultForListMessageMoveTasks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: resourceNotFound, unsupportedOperation.
     */
    func listMessageMoveTasksSync(
            input: SimpleQueueModel.ListMessageMoveTasksRequest) throws -> SimpleQueueModel.ListMessageMoveTasksResultForListMessageMoveTasks

    /**
     Invokes the ListQueueTags operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListQueueTagsRequest object being passed to this operation.
         - completion: The ListQueueTagsResultForListQueueTags object or an error will be passed to this 
           callback when the operation is complete. The ListQueueTagsResultForListQueueTags
           object will be validated before being returned to caller.
     */
    func listQueueTagsAsync(
            input: SimpleQueueModel.ListQueueTagsRequest, 
            completion: @escaping (Result<SimpleQueueModel.ListQueueTagsResultForListQueueTags, SimpleQueueError>) -> ()) throws

    /**
     Invokes the ListQueueTags operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListQueueTagsRequest object being passed to this operation.
     - Returns: The ListQueueTagsResultForListQueueTags object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listQueueTagsSync(
            input: SimpleQueueModel.ListQueueTagsRequest) throws -> SimpleQueueModel.ListQueueTagsResultForListQueueTags

    /**
     Invokes the ListQueues operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListQueuesRequest object being passed to this operation.
         - completion: The ListQueuesResultForListQueues object or an error will be passed to this 
           callback when the operation is complete. The ListQueuesResultForListQueues
           object will be validated before being returned to caller.
     */
    func listQueuesAsync(
            input: SimpleQueueModel.ListQueuesRequest, 
            completion: @escaping (Result<SimpleQueueModel.ListQueuesResultForListQueues, SimpleQueueError>) -> ()) throws

    /**
     Invokes the ListQueues operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListQueuesRequest object being passed to this operation.
     - Returns: The ListQueuesResultForListQueues object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listQueuesSync(
            input: SimpleQueueModel.ListQueuesRequest) throws -> SimpleQueueModel.ListQueuesResultForListQueues

    /**
     Invokes the PurgeQueue operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PurgeQueueRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: purgeQueueInProgress, queueDoesNotExist.
     */
    func purgeQueueAsync(
            input: SimpleQueueModel.PurgeQueueRequest, 
            completion: @escaping (SimpleQueueError?) -> ()) throws

    /**
     Invokes the PurgeQueue operation waiting for the response before returning.

     - Parameters:
         - input: The validated PurgeQueueRequest object being passed to this operation.
     - Throws: purgeQueueInProgress, queueDoesNotExist.
     */
    func purgeQueueSync(
            input: SimpleQueueModel.PurgeQueueRequest) throws

    /**
     Invokes the ReceiveMessage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReceiveMessageRequest object being passed to this operation.
         - completion: The ReceiveMessageResultForReceiveMessage object or an error will be passed to this 
           callback when the operation is complete. The ReceiveMessageResultForReceiveMessage
           object will be validated before being returned to caller.
           The possible errors are: overLimit.
     */
    func receiveMessageAsync(
            input: SimpleQueueModel.ReceiveMessageRequest, 
            completion: @escaping (Result<SimpleQueueModel.ReceiveMessageResultForReceiveMessage, SimpleQueueError>) -> ()) throws

    /**
     Invokes the ReceiveMessage operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReceiveMessageRequest object being passed to this operation.
     - Returns: The ReceiveMessageResultForReceiveMessage object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: overLimit.
     */
    func receiveMessageSync(
            input: SimpleQueueModel.ReceiveMessageRequest) throws -> SimpleQueueModel.ReceiveMessageResultForReceiveMessage

    /**
     Invokes the RemovePermission operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemovePermissionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func removePermissionAsync(
            input: SimpleQueueModel.RemovePermissionRequest, 
            completion: @escaping (SimpleQueueError?) -> ()) throws

    /**
     Invokes the RemovePermission operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemovePermissionRequest object being passed to this operation.
     */
    func removePermissionSync(
            input: SimpleQueueModel.RemovePermissionRequest) throws

    /**
     Invokes the SendMessage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SendMessageRequest object being passed to this operation.
         - completion: The SendMessageResultForSendMessage object or an error will be passed to this 
           callback when the operation is complete. The SendMessageResultForSendMessage
           object will be validated before being returned to caller.
           The possible errors are: invalidMessageContents, unsupportedOperation.
     */
    func sendMessageAsync(
            input: SimpleQueueModel.SendMessageRequest, 
            completion: @escaping (Result<SimpleQueueModel.SendMessageResultForSendMessage, SimpleQueueError>) -> ()) throws

    /**
     Invokes the SendMessage operation waiting for the response before returning.

     - Parameters:
         - input: The validated SendMessageRequest object being passed to this operation.
     - Returns: The SendMessageResultForSendMessage object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidMessageContents, unsupportedOperation.
     */
    func sendMessageSync(
            input: SimpleQueueModel.SendMessageRequest) throws -> SimpleQueueModel.SendMessageResultForSendMessage

    /**
     Invokes the SendMessageBatch operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SendMessageBatchRequest object being passed to this operation.
         - completion: The SendMessageBatchResultForSendMessageBatch object or an error will be passed to this 
           callback when the operation is complete. The SendMessageBatchResultForSendMessageBatch
           object will be validated before being returned to caller.
           The possible errors are: batchEntryIdsNotDistinct, batchRequestTooLong, emptyBatchRequest, invalidBatchEntryId, tooManyEntriesInBatchRequest, unsupportedOperation.
     */
    func sendMessageBatchAsync(
            input: SimpleQueueModel.SendMessageBatchRequest, 
            completion: @escaping (Result<SimpleQueueModel.SendMessageBatchResultForSendMessageBatch, SimpleQueueError>) -> ()) throws

    /**
     Invokes the SendMessageBatch operation waiting for the response before returning.

     - Parameters:
         - input: The validated SendMessageBatchRequest object being passed to this operation.
     - Returns: The SendMessageBatchResultForSendMessageBatch object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: batchEntryIdsNotDistinct, batchRequestTooLong, emptyBatchRequest, invalidBatchEntryId, tooManyEntriesInBatchRequest, unsupportedOperation.
     */
    func sendMessageBatchSync(
            input: SimpleQueueModel.SendMessageBatchRequest) throws -> SimpleQueueModel.SendMessageBatchResultForSendMessageBatch

    /**
     Invokes the SetQueueAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetQueueAttributesRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidAttributeName.
     */
    func setQueueAttributesAsync(
            input: SimpleQueueModel.SetQueueAttributesRequest, 
            completion: @escaping (SimpleQueueError?) -> ()) throws

    /**
     Invokes the SetQueueAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetQueueAttributesRequest object being passed to this operation.
     - Throws: invalidAttributeName.
     */
    func setQueueAttributesSync(
            input: SimpleQueueModel.SetQueueAttributesRequest) throws

    /**
     Invokes the StartMessageMoveTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartMessageMoveTaskRequest object being passed to this operation.
         - completion: The StartMessageMoveTaskResultForStartMessageMoveTask object or an error will be passed to this 
           callback when the operation is complete. The StartMessageMoveTaskResultForStartMessageMoveTask
           object will be validated before being returned to caller.
           The possible errors are: resourceNotFound, unsupportedOperation.
     */
    func startMessageMoveTaskAsync(
            input: SimpleQueueModel.StartMessageMoveTaskRequest, 
            completion: @escaping (Result<SimpleQueueModel.StartMessageMoveTaskResultForStartMessageMoveTask, SimpleQueueError>) -> ()) throws

    /**
     Invokes the StartMessageMoveTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartMessageMoveTaskRequest object being passed to this operation.
     - Returns: The StartMessageMoveTaskResultForStartMessageMoveTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: resourceNotFound, unsupportedOperation.
     */
    func startMessageMoveTaskSync(
            input: SimpleQueueModel.StartMessageMoveTaskRequest) throws -> SimpleQueueModel.StartMessageMoveTaskResultForStartMessageMoveTask

    /**
     Invokes the TagQueue operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagQueueRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func tagQueueAsync(
            input: SimpleQueueModel.TagQueueRequest, 
            completion: @escaping (SimpleQueueError?) -> ()) throws

    /**
     Invokes the TagQueue operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagQueueRequest object being passed to this operation.
     */
    func tagQueueSync(
            input: SimpleQueueModel.TagQueueRequest) throws

    /**
     Invokes the UntagQueue operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagQueueRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func untagQueueAsync(
            input: SimpleQueueModel.UntagQueueRequest, 
            completion: @escaping (SimpleQueueError?) -> ()) throws

    /**
     Invokes the UntagQueue operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagQueueRequest object being passed to this operation.
     */
    func untagQueueSync(
            input: SimpleQueueModel.UntagQueueRequest) throws
}
