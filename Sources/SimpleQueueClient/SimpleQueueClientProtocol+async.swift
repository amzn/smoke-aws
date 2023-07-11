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
// SimpleQueueClientProtocol+async.swift
// SimpleQueueClient
//

import Foundation
import SimpleQueueModel

#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)

/**
 Async extensions for the SimpleQueueClientProtocol type.
 */
public extension SimpleQueueClientProtocol {

    /**
     Invokes the AddPermission operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AddPermissionRequest object being passed to this operation.
     - Throws: overLimit.
     */
    func addPermission(input: SimpleQueueModel.AddPermissionRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try addPermissionAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CancelMessageMoveTask operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CancelMessageMoveTaskRequest object being passed to this operation.
     - Returns: The CancelMessageMoveTaskResultForCancelMessageMoveTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: resourceNotFound, unsupportedOperation.
     */
    func cancelMessageMoveTask(input: SimpleQueueModel.CancelMessageMoveTaskRequest) async throws
     -> SimpleQueueModel.CancelMessageMoveTaskResultForCancelMessageMoveTask {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try cancelMessageMoveTaskAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ChangeMessageVisibility operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ChangeMessageVisibilityRequest object being passed to this operation.
     - Throws: messageNotInflight, receiptHandleIsInvalid.
     */
    func changeMessageVisibility(input: SimpleQueueModel.ChangeMessageVisibilityRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try changeMessageVisibilityAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ChangeMessageVisibilityBatch operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ChangeMessageVisibilityBatchRequest object being passed to this operation.
     - Returns: The ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: batchEntryIdsNotDistinct, emptyBatchRequest, invalidBatchEntryId, tooManyEntriesInBatchRequest.
     */
    func changeMessageVisibilityBatch(input: SimpleQueueModel.ChangeMessageVisibilityBatchRequest) async throws
     -> SimpleQueueModel.ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try changeMessageVisibilityBatchAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateQueue operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateQueueRequest object being passed to this operation.
     - Returns: The CreateQueueResultForCreateQueue object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: queueDeletedRecently, queueNameExists.
     */
    func createQueue(input: SimpleQueueModel.CreateQueueRequest) async throws
     -> SimpleQueueModel.CreateQueueResultForCreateQueue {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createQueueAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteMessage operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteMessageRequest object being passed to this operation.
     - Throws: invalidIdFormat, receiptHandleIsInvalid.
     */
    func deleteMessage(input: SimpleQueueModel.DeleteMessageRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteMessageAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteMessageBatch operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteMessageBatchRequest object being passed to this operation.
     - Returns: The DeleteMessageBatchResultForDeleteMessageBatch object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: batchEntryIdsNotDistinct, emptyBatchRequest, invalidBatchEntryId, tooManyEntriesInBatchRequest.
     */
    func deleteMessageBatch(input: SimpleQueueModel.DeleteMessageBatchRequest) async throws
     -> SimpleQueueModel.DeleteMessageBatchResultForDeleteMessageBatch {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteMessageBatchAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteQueue operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteQueueRequest object being passed to this operation.
     */
    func deleteQueue(input: SimpleQueueModel.DeleteQueueRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteQueueAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetQueueAttributes operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetQueueAttributesRequest object being passed to this operation.
     - Returns: The GetQueueAttributesResultForGetQueueAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidAttributeName.
     */
    func getQueueAttributes(input: SimpleQueueModel.GetQueueAttributesRequest) async throws
     -> SimpleQueueModel.GetQueueAttributesResultForGetQueueAttributes {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getQueueAttributesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetQueueUrl operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetQueueUrlRequest object being passed to this operation.
     - Returns: The GetQueueUrlResultForGetQueueUrl object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: queueDoesNotExist.
     */
    func getQueueUrl(input: SimpleQueueModel.GetQueueUrlRequest) async throws
     -> SimpleQueueModel.GetQueueUrlResultForGetQueueUrl {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getQueueUrlAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListDeadLetterSourceQueues operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListDeadLetterSourceQueuesRequest object being passed to this operation.
     - Returns: The ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: queueDoesNotExist.
     */
    func listDeadLetterSourceQueues(input: SimpleQueueModel.ListDeadLetterSourceQueuesRequest) async throws
     -> SimpleQueueModel.ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listDeadLetterSourceQueuesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListMessageMoveTasks operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListMessageMoveTasksRequest object being passed to this operation.
     - Returns: The ListMessageMoveTasksResultForListMessageMoveTasks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: resourceNotFound, unsupportedOperation.
     */
    func listMessageMoveTasks(input: SimpleQueueModel.ListMessageMoveTasksRequest) async throws
     -> SimpleQueueModel.ListMessageMoveTasksResultForListMessageMoveTasks {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listMessageMoveTasksAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListQueueTags operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListQueueTagsRequest object being passed to this operation.
     - Returns: The ListQueueTagsResultForListQueueTags object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listQueueTags(input: SimpleQueueModel.ListQueueTagsRequest) async throws
     -> SimpleQueueModel.ListQueueTagsResultForListQueueTags {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listQueueTagsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListQueues operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListQueuesRequest object being passed to this operation.
     - Returns: The ListQueuesResultForListQueues object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listQueues(input: SimpleQueueModel.ListQueuesRequest) async throws
     -> SimpleQueueModel.ListQueuesResultForListQueues {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listQueuesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PurgeQueue operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PurgeQueueRequest object being passed to this operation.
     - Throws: purgeQueueInProgress, queueDoesNotExist.
     */
    func purgeQueue(input: SimpleQueueModel.PurgeQueueRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try purgeQueueAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ReceiveMessage operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ReceiveMessageRequest object being passed to this operation.
     - Returns: The ReceiveMessageResultForReceiveMessage object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: overLimit.
     */
    func receiveMessage(input: SimpleQueueModel.ReceiveMessageRequest) async throws
     -> SimpleQueueModel.ReceiveMessageResultForReceiveMessage {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try receiveMessageAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RemovePermission operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RemovePermissionRequest object being passed to this operation.
     */
    func removePermission(input: SimpleQueueModel.RemovePermissionRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try removePermissionAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the SendMessage operation and asynchronously returning the response.

     - Parameters:
         - input: The validated SendMessageRequest object being passed to this operation.
     - Returns: The SendMessageResultForSendMessage object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidMessageContents, unsupportedOperation.
     */
    func sendMessage(input: SimpleQueueModel.SendMessageRequest) async throws
     -> SimpleQueueModel.SendMessageResultForSendMessage {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try sendMessageAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the SendMessageBatch operation and asynchronously returning the response.

     - Parameters:
         - input: The validated SendMessageBatchRequest object being passed to this operation.
     - Returns: The SendMessageBatchResultForSendMessageBatch object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: batchEntryIdsNotDistinct, batchRequestTooLong, emptyBatchRequest, invalidBatchEntryId, tooManyEntriesInBatchRequest, unsupportedOperation.
     */
    func sendMessageBatch(input: SimpleQueueModel.SendMessageBatchRequest) async throws
     -> SimpleQueueModel.SendMessageBatchResultForSendMessageBatch {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try sendMessageBatchAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the SetQueueAttributes operation and asynchronously returning the response.

     - Parameters:
         - input: The validated SetQueueAttributesRequest object being passed to this operation.
     - Throws: invalidAttributeName.
     */
    func setQueueAttributes(input: SimpleQueueModel.SetQueueAttributesRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try setQueueAttributesAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the StartMessageMoveTask operation and asynchronously returning the response.

     - Parameters:
         - input: The validated StartMessageMoveTaskRequest object being passed to this operation.
     - Returns: The StartMessageMoveTaskResultForStartMessageMoveTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: resourceNotFound, unsupportedOperation.
     */
    func startMessageMoveTask(input: SimpleQueueModel.StartMessageMoveTaskRequest) async throws
     -> SimpleQueueModel.StartMessageMoveTaskResultForStartMessageMoveTask {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try startMessageMoveTaskAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the TagQueue operation and asynchronously returning the response.

     - Parameters:
         - input: The validated TagQueueRequest object being passed to this operation.
     */
    func tagQueue(input: SimpleQueueModel.TagQueueRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try tagQueueAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the UntagQueue operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UntagQueueRequest object being passed to this operation.
     */
    func untagQueue(input: SimpleQueueModel.UntagQueueRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try untagQueueAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }
}

#endif
