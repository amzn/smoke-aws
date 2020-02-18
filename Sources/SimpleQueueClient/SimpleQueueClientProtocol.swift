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
public protocol SimpleQueueClientProtocol {
    typealias AddPermissionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.AddPermissionRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias AddPermissionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.AddPermissionRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ChangeMessageVisibilitySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.ChangeMessageVisibilityRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias ChangeMessageVisibilityAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.ChangeMessageVisibilityRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ChangeMessageVisibilityBatchSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.ChangeMessageVisibilityBatchRequest,
            _ reporting: InvocationReportingType) throws -> SimpleQueueModel.ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch
    typealias ChangeMessageVisibilityBatchAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.ChangeMessageVisibilityBatchRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleQueueModel.ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch, HTTPClientError>) -> ()) throws -> ()
    typealias CreateQueueSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.CreateQueueRequest,
            _ reporting: InvocationReportingType) throws -> SimpleQueueModel.CreateQueueResultForCreateQueue
    typealias CreateQueueAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.CreateQueueRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleQueueModel.CreateQueueResultForCreateQueue, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteMessageSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.DeleteMessageRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteMessageAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.DeleteMessageRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteMessageBatchSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.DeleteMessageBatchRequest,
            _ reporting: InvocationReportingType) throws -> SimpleQueueModel.DeleteMessageBatchResultForDeleteMessageBatch
    typealias DeleteMessageBatchAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.DeleteMessageBatchRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleQueueModel.DeleteMessageBatchResultForDeleteMessageBatch, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteQueueSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.DeleteQueueRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteQueueAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.DeleteQueueRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias GetQueueAttributesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.GetQueueAttributesRequest,
            _ reporting: InvocationReportingType) throws -> SimpleQueueModel.GetQueueAttributesResultForGetQueueAttributes
    typealias GetQueueAttributesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.GetQueueAttributesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleQueueModel.GetQueueAttributesResultForGetQueueAttributes, HTTPClientError>) -> ()) throws -> ()
    typealias GetQueueUrlSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.GetQueueUrlRequest,
            _ reporting: InvocationReportingType) throws -> SimpleQueueModel.GetQueueUrlResultForGetQueueUrl
    typealias GetQueueUrlAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.GetQueueUrlRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleQueueModel.GetQueueUrlResultForGetQueueUrl, HTTPClientError>) -> ()) throws -> ()
    typealias ListDeadLetterSourceQueuesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.ListDeadLetterSourceQueuesRequest,
            _ reporting: InvocationReportingType) throws -> SimpleQueueModel.ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues
    typealias ListDeadLetterSourceQueuesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.ListDeadLetterSourceQueuesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleQueueModel.ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues, HTTPClientError>) -> ()) throws -> ()
    typealias ListQueueTagsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.ListQueueTagsRequest,
            _ reporting: InvocationReportingType) throws -> SimpleQueueModel.ListQueueTagsResultForListQueueTags
    typealias ListQueueTagsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.ListQueueTagsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleQueueModel.ListQueueTagsResultForListQueueTags, HTTPClientError>) -> ()) throws -> ()
    typealias ListQueuesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.ListQueuesRequest,
            _ reporting: InvocationReportingType) throws -> SimpleQueueModel.ListQueuesResultForListQueues
    typealias ListQueuesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.ListQueuesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleQueueModel.ListQueuesResultForListQueues, HTTPClientError>) -> ()) throws -> ()
    typealias PurgeQueueSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.PurgeQueueRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias PurgeQueueAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.PurgeQueueRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias ReceiveMessageSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.ReceiveMessageRequest,
            _ reporting: InvocationReportingType) throws -> SimpleQueueModel.ReceiveMessageResultForReceiveMessage
    typealias ReceiveMessageAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.ReceiveMessageRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleQueueModel.ReceiveMessageResultForReceiveMessage, HTTPClientError>) -> ()) throws -> ()
    typealias RemovePermissionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.RemovePermissionRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias RemovePermissionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.RemovePermissionRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias SendMessageSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.SendMessageRequest,
            _ reporting: InvocationReportingType) throws -> SimpleQueueModel.SendMessageResultForSendMessage
    typealias SendMessageAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.SendMessageRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleQueueModel.SendMessageResultForSendMessage, HTTPClientError>) -> ()) throws -> ()
    typealias SendMessageBatchSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.SendMessageBatchRequest,
            _ reporting: InvocationReportingType) throws -> SimpleQueueModel.SendMessageBatchResultForSendMessageBatch
    typealias SendMessageBatchAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.SendMessageBatchRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SimpleQueueModel.SendMessageBatchResultForSendMessageBatch, HTTPClientError>) -> ()) throws -> ()
    typealias SetQueueAttributesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.SetQueueAttributesRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias SetQueueAttributesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.SetQueueAttributesRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias TagQueueSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.TagQueueRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias TagQueueAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.TagQueueRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias UntagQueueSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.UntagQueueRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias UntagQueueAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SimpleQueueModel.UntagQueueRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()

    /**
     Invokes the AddPermission operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AddPermissionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: overLimit.
     */
    func addPermissionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.AddPermissionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the AddPermission operation waiting for the response before returning.

     - Parameters:
         - input: The validated AddPermissionRequest object being passed to this operation.
     - Throws: overLimit.
     */
    func addPermissionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.AddPermissionRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the ChangeMessageVisibility operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ChangeMessageVisibilityRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: messageNotInflight, receiptHandleIsInvalid.
     */
    func changeMessageVisibilityAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.ChangeMessageVisibilityRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the ChangeMessageVisibility operation waiting for the response before returning.

     - Parameters:
         - input: The validated ChangeMessageVisibilityRequest object being passed to this operation.
     - Throws: messageNotInflight, receiptHandleIsInvalid.
     */
    func changeMessageVisibilitySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.ChangeMessageVisibilityRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the ChangeMessageVisibilityBatch operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ChangeMessageVisibilityBatchRequest object being passed to this operation.
         - completion: The ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch object or an error will be passed to this 
           callback when the operation is complete. The ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch
           object will be validated before being returned to caller.
           The possible errors are: batchEntryIdsNotDistinct, emptyBatchRequest, invalidBatchEntryId, tooManyEntriesInBatchRequest.
     */
    func changeMessageVisibilityBatchAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.ChangeMessageVisibilityBatchRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleQueueModel.ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch, HTTPClientError>) -> ()) throws

    /**
     Invokes the ChangeMessageVisibilityBatch operation waiting for the response before returning.

     - Parameters:
         - input: The validated ChangeMessageVisibilityBatchRequest object being passed to this operation.
     - Returns: The ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: batchEntryIdsNotDistinct, emptyBatchRequest, invalidBatchEntryId, tooManyEntriesInBatchRequest.
     */
    func changeMessageVisibilityBatchSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.ChangeMessageVisibilityBatchRequest,
            reporting: InvocationReportingType) throws -> SimpleQueueModel.ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch

    /**
     Invokes the CreateQueue operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateQueueRequest object being passed to this operation.
         - completion: The CreateQueueResultForCreateQueue object or an error will be passed to this 
           callback when the operation is complete. The CreateQueueResultForCreateQueue
           object will be validated before being returned to caller.
           The possible errors are: queueDeletedRecently, queueNameExists.
     */
    func createQueueAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.CreateQueueRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleQueueModel.CreateQueueResultForCreateQueue, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateQueue operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateQueueRequest object being passed to this operation.
     - Returns: The CreateQueueResultForCreateQueue object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: queueDeletedRecently, queueNameExists.
     */
    func createQueueSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.CreateQueueRequest,
            reporting: InvocationReportingType) throws -> SimpleQueueModel.CreateQueueResultForCreateQueue

    /**
     Invokes the DeleteMessage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteMessageRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidIdFormat, receiptHandleIsInvalid.
     */
    func deleteMessageAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.DeleteMessageRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteMessage operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteMessageRequest object being passed to this operation.
     - Throws: invalidIdFormat, receiptHandleIsInvalid.
     */
    func deleteMessageSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.DeleteMessageRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeleteMessageBatch operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteMessageBatchRequest object being passed to this operation.
         - completion: The DeleteMessageBatchResultForDeleteMessageBatch object or an error will be passed to this 
           callback when the operation is complete. The DeleteMessageBatchResultForDeleteMessageBatch
           object will be validated before being returned to caller.
           The possible errors are: batchEntryIdsNotDistinct, emptyBatchRequest, invalidBatchEntryId, tooManyEntriesInBatchRequest.
     */
    func deleteMessageBatchAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.DeleteMessageBatchRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleQueueModel.DeleteMessageBatchResultForDeleteMessageBatch, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteMessageBatch operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteMessageBatchRequest object being passed to this operation.
     - Returns: The DeleteMessageBatchResultForDeleteMessageBatch object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: batchEntryIdsNotDistinct, emptyBatchRequest, invalidBatchEntryId, tooManyEntriesInBatchRequest.
     */
    func deleteMessageBatchSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.DeleteMessageBatchRequest,
            reporting: InvocationReportingType) throws -> SimpleQueueModel.DeleteMessageBatchResultForDeleteMessageBatch

    /**
     Invokes the DeleteQueue operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteQueueRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteQueueAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.DeleteQueueRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteQueue operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteQueueRequest object being passed to this operation.
     */
    func deleteQueueSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.DeleteQueueRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the GetQueueAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetQueueAttributesRequest object being passed to this operation.
         - completion: The GetQueueAttributesResultForGetQueueAttributes object or an error will be passed to this 
           callback when the operation is complete. The GetQueueAttributesResultForGetQueueAttributes
           object will be validated before being returned to caller.
           The possible errors are: invalidAttributeName.
     */
    func getQueueAttributesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.GetQueueAttributesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleQueueModel.GetQueueAttributesResultForGetQueueAttributes, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetQueueAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetQueueAttributesRequest object being passed to this operation.
     - Returns: The GetQueueAttributesResultForGetQueueAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidAttributeName.
     */
    func getQueueAttributesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.GetQueueAttributesRequest,
            reporting: InvocationReportingType) throws -> SimpleQueueModel.GetQueueAttributesResultForGetQueueAttributes

    /**
     Invokes the GetQueueUrl operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetQueueUrlRequest object being passed to this operation.
         - completion: The GetQueueUrlResultForGetQueueUrl object or an error will be passed to this 
           callback when the operation is complete. The GetQueueUrlResultForGetQueueUrl
           object will be validated before being returned to caller.
           The possible errors are: queueDoesNotExist.
     */
    func getQueueUrlAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.GetQueueUrlRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleQueueModel.GetQueueUrlResultForGetQueueUrl, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetQueueUrl operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetQueueUrlRequest object being passed to this operation.
     - Returns: The GetQueueUrlResultForGetQueueUrl object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: queueDoesNotExist.
     */
    func getQueueUrlSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.GetQueueUrlRequest,
            reporting: InvocationReportingType) throws -> SimpleQueueModel.GetQueueUrlResultForGetQueueUrl

    /**
     Invokes the ListDeadLetterSourceQueues operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListDeadLetterSourceQueuesRequest object being passed to this operation.
         - completion: The ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues object or an error will be passed to this 
           callback when the operation is complete. The ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues
           object will be validated before being returned to caller.
           The possible errors are: queueDoesNotExist.
     */
    func listDeadLetterSourceQueuesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.ListDeadLetterSourceQueuesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleQueueModel.ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListDeadLetterSourceQueues operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListDeadLetterSourceQueuesRequest object being passed to this operation.
     - Returns: The ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: queueDoesNotExist.
     */
    func listDeadLetterSourceQueuesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.ListDeadLetterSourceQueuesRequest,
            reporting: InvocationReportingType) throws -> SimpleQueueModel.ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues

    /**
     Invokes the ListQueueTags operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListQueueTagsRequest object being passed to this operation.
         - completion: The ListQueueTagsResultForListQueueTags object or an error will be passed to this 
           callback when the operation is complete. The ListQueueTagsResultForListQueueTags
           object will be validated before being returned to caller.
     */
    func listQueueTagsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.ListQueueTagsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleQueueModel.ListQueueTagsResultForListQueueTags, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListQueueTags operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListQueueTagsRequest object being passed to this operation.
     - Returns: The ListQueueTagsResultForListQueueTags object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listQueueTagsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.ListQueueTagsRequest,
            reporting: InvocationReportingType) throws -> SimpleQueueModel.ListQueueTagsResultForListQueueTags

    /**
     Invokes the ListQueues operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListQueuesRequest object being passed to this operation.
         - completion: The ListQueuesResultForListQueues object or an error will be passed to this 
           callback when the operation is complete. The ListQueuesResultForListQueues
           object will be validated before being returned to caller.
     */
    func listQueuesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.ListQueuesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleQueueModel.ListQueuesResultForListQueues, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListQueues operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListQueuesRequest object being passed to this operation.
     - Returns: The ListQueuesResultForListQueues object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listQueuesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.ListQueuesRequest,
            reporting: InvocationReportingType) throws -> SimpleQueueModel.ListQueuesResultForListQueues

    /**
     Invokes the PurgeQueue operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PurgeQueueRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: purgeQueueInProgress, queueDoesNotExist.
     */
    func purgeQueueAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.PurgeQueueRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the PurgeQueue operation waiting for the response before returning.

     - Parameters:
         - input: The validated PurgeQueueRequest object being passed to this operation.
     - Throws: purgeQueueInProgress, queueDoesNotExist.
     */
    func purgeQueueSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.PurgeQueueRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the ReceiveMessage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ReceiveMessageRequest object being passed to this operation.
         - completion: The ReceiveMessageResultForReceiveMessage object or an error will be passed to this 
           callback when the operation is complete. The ReceiveMessageResultForReceiveMessage
           object will be validated before being returned to caller.
           The possible errors are: overLimit.
     */
    func receiveMessageAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.ReceiveMessageRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleQueueModel.ReceiveMessageResultForReceiveMessage, HTTPClientError>) -> ()) throws

    /**
     Invokes the ReceiveMessage operation waiting for the response before returning.

     - Parameters:
         - input: The validated ReceiveMessageRequest object being passed to this operation.
     - Returns: The ReceiveMessageResultForReceiveMessage object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: overLimit.
     */
    func receiveMessageSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.ReceiveMessageRequest,
            reporting: InvocationReportingType) throws -> SimpleQueueModel.ReceiveMessageResultForReceiveMessage

    /**
     Invokes the RemovePermission operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RemovePermissionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func removePermissionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.RemovePermissionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the RemovePermission operation waiting for the response before returning.

     - Parameters:
         - input: The validated RemovePermissionRequest object being passed to this operation.
     */
    func removePermissionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.RemovePermissionRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the SendMessage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SendMessageRequest object being passed to this operation.
         - completion: The SendMessageResultForSendMessage object or an error will be passed to this 
           callback when the operation is complete. The SendMessageResultForSendMessage
           object will be validated before being returned to caller.
           The possible errors are: invalidMessageContents, unsupportedOperation.
     */
    func sendMessageAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.SendMessageRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleQueueModel.SendMessageResultForSendMessage, HTTPClientError>) -> ()) throws

    /**
     Invokes the SendMessage operation waiting for the response before returning.

     - Parameters:
         - input: The validated SendMessageRequest object being passed to this operation.
     - Returns: The SendMessageResultForSendMessage object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidMessageContents, unsupportedOperation.
     */
    func sendMessageSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.SendMessageRequest,
            reporting: InvocationReportingType) throws -> SimpleQueueModel.SendMessageResultForSendMessage

    /**
     Invokes the SendMessageBatch operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SendMessageBatchRequest object being passed to this operation.
         - completion: The SendMessageBatchResultForSendMessageBatch object or an error will be passed to this 
           callback when the operation is complete. The SendMessageBatchResultForSendMessageBatch
           object will be validated before being returned to caller.
           The possible errors are: batchEntryIdsNotDistinct, batchRequestTooLong, emptyBatchRequest, invalidBatchEntryId, tooManyEntriesInBatchRequest, unsupportedOperation.
     */
    func sendMessageBatchAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.SendMessageBatchRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SimpleQueueModel.SendMessageBatchResultForSendMessageBatch, HTTPClientError>) -> ()) throws

    /**
     Invokes the SendMessageBatch operation waiting for the response before returning.

     - Parameters:
         - input: The validated SendMessageBatchRequest object being passed to this operation.
     - Returns: The SendMessageBatchResultForSendMessageBatch object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: batchEntryIdsNotDistinct, batchRequestTooLong, emptyBatchRequest, invalidBatchEntryId, tooManyEntriesInBatchRequest, unsupportedOperation.
     */
    func sendMessageBatchSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.SendMessageBatchRequest,
            reporting: InvocationReportingType) throws -> SimpleQueueModel.SendMessageBatchResultForSendMessageBatch

    /**
     Invokes the SetQueueAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetQueueAttributesRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: invalidAttributeName.
     */
    func setQueueAttributesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.SetQueueAttributesRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the SetQueueAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetQueueAttributesRequest object being passed to this operation.
     - Throws: invalidAttributeName.
     */
    func setQueueAttributesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.SetQueueAttributesRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the TagQueue operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagQueueRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func tagQueueAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.TagQueueRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the TagQueue operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagQueueRequest object being passed to this operation.
     */
    func tagQueueSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.TagQueueRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the UntagQueue operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagQueueRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func untagQueueAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.UntagQueueRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the UntagQueue operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagQueueRequest object being passed to this operation.
     */
    func untagQueueSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SimpleQueueModel.UntagQueueRequest,
            reporting: InvocationReportingType) throws
}
