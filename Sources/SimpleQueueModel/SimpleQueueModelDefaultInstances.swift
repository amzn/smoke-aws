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
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment
// -- Generated Code; do not edit --
//
// SimpleQueueModelDefaultInstances.swift
// SimpleQueueModel
//

import Foundation

public extension AddPermissionRequest {
    /**
     Default instance of the AddPermissionRequest structure.
     */
    static let __default: SimpleQueueModel.AddPermissionRequest = {
        let defaultInstance = SimpleQueueModel.AddPermissionRequest(
            aWSAccountIds: [],
            actions: [],
            label: "value",
            queueUrl: "value")

        return defaultInstance
    }()
}

public extension BatchEntryIdsNotDistinct {
    /**
     Default instance of the BatchEntryIdsNotDistinct structure.
     */
    static let __default: SimpleQueueModel.BatchEntryIdsNotDistinct = {
        let defaultInstance = SimpleQueueModel.BatchEntryIdsNotDistinct()

        return defaultInstance
    }()
}

public extension BatchRequestTooLong {
    /**
     Default instance of the BatchRequestTooLong structure.
     */
    static let __default: SimpleQueueModel.BatchRequestTooLong = {
        let defaultInstance = SimpleQueueModel.BatchRequestTooLong()

        return defaultInstance
    }()
}

public extension BatchResultErrorEntry {
    /**
     Default instance of the BatchResultErrorEntry structure.
     */
    static let __default: SimpleQueueModel.BatchResultErrorEntry = {
        let defaultInstance = SimpleQueueModel.BatchResultErrorEntry(
            code: "value",
            id: "value",
            message: nil,
            senderFault: false)

        return defaultInstance
    }()
}

public extension ChangeMessageVisibilityBatchRequest {
    /**
     Default instance of the ChangeMessageVisibilityBatchRequest structure.
     */
    static let __default: SimpleQueueModel.ChangeMessageVisibilityBatchRequest = {
        let defaultInstance = SimpleQueueModel.ChangeMessageVisibilityBatchRequest(
            entries: [],
            queueUrl: "value")

        return defaultInstance
    }()
}

public extension ChangeMessageVisibilityBatchRequestEntry {
    /**
     Default instance of the ChangeMessageVisibilityBatchRequestEntry structure.
     */
    static let __default: SimpleQueueModel.ChangeMessageVisibilityBatchRequestEntry = {
        let defaultInstance = SimpleQueueModel.ChangeMessageVisibilityBatchRequestEntry(
            id: "value",
            receiptHandle: "value",
            visibilityTimeout: nil)

        return defaultInstance
    }()
}

public extension ChangeMessageVisibilityBatchResult {
    /**
     Default instance of the ChangeMessageVisibilityBatchResult structure.
     */
    static let __default: SimpleQueueModel.ChangeMessageVisibilityBatchResult = {
        let defaultInstance = SimpleQueueModel.ChangeMessageVisibilityBatchResult(
            failed: nil,
            successful: nil)

        return defaultInstance
    }()
}

public extension ChangeMessageVisibilityBatchResultEntry {
    /**
     Default instance of the ChangeMessageVisibilityBatchResultEntry structure.
     */
    static let __default: SimpleQueueModel.ChangeMessageVisibilityBatchResultEntry = {
        let defaultInstance = SimpleQueueModel.ChangeMessageVisibilityBatchResultEntry(
            id: "value")

        return defaultInstance
    }()
}

public extension ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch {
    /**
     Default instance of the ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch structure.
     */
    static let __default: SimpleQueueModel.ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch = {
        let defaultInstance = SimpleQueueModel.ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch(
            changeMessageVisibilityBatchResult: ChangeMessageVisibilityBatchResult.__default)

        return defaultInstance
    }()
}

public extension ChangeMessageVisibilityRequest {
    /**
     Default instance of the ChangeMessageVisibilityRequest structure.
     */
    static let __default: SimpleQueueModel.ChangeMessageVisibilityRequest = {
        let defaultInstance = SimpleQueueModel.ChangeMessageVisibilityRequest(
            queueUrl: "value",
            receiptHandle: "value",
            visibilityTimeout: 0)

        return defaultInstance
    }()
}

public extension CreateQueueRequest {
    /**
     Default instance of the CreateQueueRequest structure.
     */
    static let __default: SimpleQueueModel.CreateQueueRequest = {
        let defaultInstance = SimpleQueueModel.CreateQueueRequest(
            attributes: nil,
            queueName: "value",
            tags: nil)

        return defaultInstance
    }()
}

public extension CreateQueueResult {
    /**
     Default instance of the CreateQueueResult structure.
     */
    static let __default: SimpleQueueModel.CreateQueueResult = {
        let defaultInstance = SimpleQueueModel.CreateQueueResult(
            queueUrl: nil)

        return defaultInstance
    }()
}

public extension CreateQueueResultForCreateQueue {
    /**
     Default instance of the CreateQueueResultForCreateQueue structure.
     */
    static let __default: SimpleQueueModel.CreateQueueResultForCreateQueue = {
        let defaultInstance = SimpleQueueModel.CreateQueueResultForCreateQueue(
            createQueueResult: CreateQueueResult.__default)

        return defaultInstance
    }()
}

public extension DeleteMessageBatchRequest {
    /**
     Default instance of the DeleteMessageBatchRequest structure.
     */
    static let __default: SimpleQueueModel.DeleteMessageBatchRequest = {
        let defaultInstance = SimpleQueueModel.DeleteMessageBatchRequest(
            entries: [],
            queueUrl: "value")

        return defaultInstance
    }()
}

public extension DeleteMessageBatchRequestEntry {
    /**
     Default instance of the DeleteMessageBatchRequestEntry structure.
     */
    static let __default: SimpleQueueModel.DeleteMessageBatchRequestEntry = {
        let defaultInstance = SimpleQueueModel.DeleteMessageBatchRequestEntry(
            id: "value",
            receiptHandle: "value")

        return defaultInstance
    }()
}

public extension DeleteMessageBatchResult {
    /**
     Default instance of the DeleteMessageBatchResult structure.
     */
    static let __default: SimpleQueueModel.DeleteMessageBatchResult = {
        let defaultInstance = SimpleQueueModel.DeleteMessageBatchResult(
            failed: nil,
            successful: nil)

        return defaultInstance
    }()
}

public extension DeleteMessageBatchResultEntry {
    /**
     Default instance of the DeleteMessageBatchResultEntry structure.
     */
    static let __default: SimpleQueueModel.DeleteMessageBatchResultEntry = {
        let defaultInstance = SimpleQueueModel.DeleteMessageBatchResultEntry(
            id: "value")

        return defaultInstance
    }()
}

public extension DeleteMessageBatchResultForDeleteMessageBatch {
    /**
     Default instance of the DeleteMessageBatchResultForDeleteMessageBatch structure.
     */
    static let __default: SimpleQueueModel.DeleteMessageBatchResultForDeleteMessageBatch = {
        let defaultInstance = SimpleQueueModel.DeleteMessageBatchResultForDeleteMessageBatch(
            deleteMessageBatchResult: DeleteMessageBatchResult.__default)

        return defaultInstance
    }()
}

public extension DeleteMessageRequest {
    /**
     Default instance of the DeleteMessageRequest structure.
     */
    static let __default: SimpleQueueModel.DeleteMessageRequest = {
        let defaultInstance = SimpleQueueModel.DeleteMessageRequest(
            queueUrl: "value",
            receiptHandle: "value")

        return defaultInstance
    }()
}

public extension DeleteQueueRequest {
    /**
     Default instance of the DeleteQueueRequest structure.
     */
    static let __default: SimpleQueueModel.DeleteQueueRequest = {
        let defaultInstance = SimpleQueueModel.DeleteQueueRequest(
            queueUrl: "value")

        return defaultInstance
    }()
}

public extension EmptyBatchRequest {
    /**
     Default instance of the EmptyBatchRequest structure.
     */
    static let __default: SimpleQueueModel.EmptyBatchRequest = {
        let defaultInstance = SimpleQueueModel.EmptyBatchRequest()

        return defaultInstance
    }()
}

public extension GetQueueAttributesRequest {
    /**
     Default instance of the GetQueueAttributesRequest structure.
     */
    static let __default: SimpleQueueModel.GetQueueAttributesRequest = {
        let defaultInstance = SimpleQueueModel.GetQueueAttributesRequest(
            attributeNames: nil,
            queueUrl: "value")

        return defaultInstance
    }()
}

public extension GetQueueAttributesResult {
    /**
     Default instance of the GetQueueAttributesResult structure.
     */
    static let __default: SimpleQueueModel.GetQueueAttributesResult = {
        let defaultInstance = SimpleQueueModel.GetQueueAttributesResult(
            attributes: nil)

        return defaultInstance
    }()
}

public extension GetQueueAttributesResultForGetQueueAttributes {
    /**
     Default instance of the GetQueueAttributesResultForGetQueueAttributes structure.
     */
    static let __default: SimpleQueueModel.GetQueueAttributesResultForGetQueueAttributes = {
        let defaultInstance = SimpleQueueModel.GetQueueAttributesResultForGetQueueAttributes(
            getQueueAttributesResult: GetQueueAttributesResult.__default)

        return defaultInstance
    }()
}

public extension GetQueueUrlRequest {
    /**
     Default instance of the GetQueueUrlRequest structure.
     */
    static let __default: SimpleQueueModel.GetQueueUrlRequest = {
        let defaultInstance = SimpleQueueModel.GetQueueUrlRequest(
            queueName: "value",
            queueOwnerAWSAccountId: nil)

        return defaultInstance
    }()
}

public extension GetQueueUrlResult {
    /**
     Default instance of the GetQueueUrlResult structure.
     */
    static let __default: SimpleQueueModel.GetQueueUrlResult = {
        let defaultInstance = SimpleQueueModel.GetQueueUrlResult(
            queueUrl: nil)

        return defaultInstance
    }()
}

public extension GetQueueUrlResultForGetQueueUrl {
    /**
     Default instance of the GetQueueUrlResultForGetQueueUrl structure.
     */
    static let __default: SimpleQueueModel.GetQueueUrlResultForGetQueueUrl = {
        let defaultInstance = SimpleQueueModel.GetQueueUrlResultForGetQueueUrl(
            getQueueUrlResult: GetQueueUrlResult.__default)

        return defaultInstance
    }()
}

public extension InvalidAttributeName {
    /**
     Default instance of the InvalidAttributeName structure.
     */
    static let __default: SimpleQueueModel.InvalidAttributeName = {
        let defaultInstance = SimpleQueueModel.InvalidAttributeName()

        return defaultInstance
    }()
}

public extension InvalidBatchEntryId {
    /**
     Default instance of the InvalidBatchEntryId structure.
     */
    static let __default: SimpleQueueModel.InvalidBatchEntryId = {
        let defaultInstance = SimpleQueueModel.InvalidBatchEntryId()

        return defaultInstance
    }()
}

public extension InvalidIdFormat {
    /**
     Default instance of the InvalidIdFormat structure.
     */
    static let __default: SimpleQueueModel.InvalidIdFormat = {
        let defaultInstance = SimpleQueueModel.InvalidIdFormat()

        return defaultInstance
    }()
}

public extension InvalidMessageContents {
    /**
     Default instance of the InvalidMessageContents structure.
     */
    static let __default: SimpleQueueModel.InvalidMessageContents = {
        let defaultInstance = SimpleQueueModel.InvalidMessageContents()

        return defaultInstance
    }()
}

public extension ListDeadLetterSourceQueuesRequest {
    /**
     Default instance of the ListDeadLetterSourceQueuesRequest structure.
     */
    static let __default: SimpleQueueModel.ListDeadLetterSourceQueuesRequest = {
        let defaultInstance = SimpleQueueModel.ListDeadLetterSourceQueuesRequest(
            queueUrl: "value")

        return defaultInstance
    }()
}

public extension ListDeadLetterSourceQueuesResult {
    /**
     Default instance of the ListDeadLetterSourceQueuesResult structure.
     */
    static let __default: SimpleQueueModel.ListDeadLetterSourceQueuesResult = {
        let defaultInstance = SimpleQueueModel.ListDeadLetterSourceQueuesResult(
            queueUrls: nil)

        return defaultInstance
    }()
}

public extension ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues {
    /**
     Default instance of the ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues structure.
     */
    static let __default: SimpleQueueModel.ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues = {
        let defaultInstance = SimpleQueueModel.ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues(
            listDeadLetterSourceQueuesResult: ListDeadLetterSourceQueuesResult.__default)

        return defaultInstance
    }()
}

public extension ListQueueTagsRequest {
    /**
     Default instance of the ListQueueTagsRequest structure.
     */
    static let __default: SimpleQueueModel.ListQueueTagsRequest = {
        let defaultInstance = SimpleQueueModel.ListQueueTagsRequest(
            queueUrl: "value")

        return defaultInstance
    }()
}

public extension ListQueueTagsResult {
    /**
     Default instance of the ListQueueTagsResult structure.
     */
    static let __default: SimpleQueueModel.ListQueueTagsResult = {
        let defaultInstance = SimpleQueueModel.ListQueueTagsResult(
            tags: nil)

        return defaultInstance
    }()
}

public extension ListQueueTagsResultForListQueueTags {
    /**
     Default instance of the ListQueueTagsResultForListQueueTags structure.
     */
    static let __default: SimpleQueueModel.ListQueueTagsResultForListQueueTags = {
        let defaultInstance = SimpleQueueModel.ListQueueTagsResultForListQueueTags(
            listQueueTagsResult: ListQueueTagsResult.__default)

        return defaultInstance
    }()
}

public extension ListQueuesRequest {
    /**
     Default instance of the ListQueuesRequest structure.
     */
    static let __default: SimpleQueueModel.ListQueuesRequest = {
        let defaultInstance = SimpleQueueModel.ListQueuesRequest(
            queueNamePrefix: nil)

        return defaultInstance
    }()
}

public extension ListQueuesResult {
    /**
     Default instance of the ListQueuesResult structure.
     */
    static let __default: SimpleQueueModel.ListQueuesResult = {
        let defaultInstance = SimpleQueueModel.ListQueuesResult(
            queueUrls: nil)

        return defaultInstance
    }()
}

public extension ListQueuesResultForListQueues {
    /**
     Default instance of the ListQueuesResultForListQueues structure.
     */
    static let __default: SimpleQueueModel.ListQueuesResultForListQueues = {
        let defaultInstance = SimpleQueueModel.ListQueuesResultForListQueues(
            listQueuesResult: ListQueuesResult.__default)

        return defaultInstance
    }()
}

public extension Message {
    /**
     Default instance of the Message structure.
     */
    static let __default: SimpleQueueModel.Message = {
        let defaultInstance = SimpleQueueModel.Message(
            attributes: nil,
            body: nil,
            mD5OfBody: nil,
            mD5OfMessageAttributes: nil,
            messageAttributes: nil,
            messageId: nil,
            receiptHandle: nil)

        return defaultInstance
    }()
}

public extension MessageAttributeValue {
    /**
     Default instance of the MessageAttributeValue structure.
     */
    static let __default: SimpleQueueModel.MessageAttributeValue = {
        let defaultInstance = SimpleQueueModel.MessageAttributeValue(
            binaryListValues: nil,
            binaryValue: nil,
            dataType: "value",
            stringListValues: nil,
            stringValue: nil)

        return defaultInstance
    }()
}

public extension MessageNotInflight {
    /**
     Default instance of the MessageNotInflight structure.
     */
    static let __default: SimpleQueueModel.MessageNotInflight = {
        let defaultInstance = SimpleQueueModel.MessageNotInflight()

        return defaultInstance
    }()
}

public extension MessageSystemAttributeValue {
    /**
     Default instance of the MessageSystemAttributeValue structure.
     */
    static let __default: SimpleQueueModel.MessageSystemAttributeValue = {
        let defaultInstance = SimpleQueueModel.MessageSystemAttributeValue(
            binaryListValues: nil,
            binaryValue: nil,
            dataType: "value",
            stringListValues: nil,
            stringValue: nil)

        return defaultInstance
    }()
}

public extension OverLimit {
    /**
     Default instance of the OverLimit structure.
     */
    static let __default: SimpleQueueModel.OverLimit = {
        let defaultInstance = SimpleQueueModel.OverLimit()

        return defaultInstance
    }()
}

public extension PurgeQueueInProgress {
    /**
     Default instance of the PurgeQueueInProgress structure.
     */
    static let __default: SimpleQueueModel.PurgeQueueInProgress = {
        let defaultInstance = SimpleQueueModel.PurgeQueueInProgress()

        return defaultInstance
    }()
}

public extension PurgeQueueRequest {
    /**
     Default instance of the PurgeQueueRequest structure.
     */
    static let __default: SimpleQueueModel.PurgeQueueRequest = {
        let defaultInstance = SimpleQueueModel.PurgeQueueRequest(
            queueUrl: "value")

        return defaultInstance
    }()
}

public extension QueueDeletedRecently {
    /**
     Default instance of the QueueDeletedRecently structure.
     */
    static let __default: SimpleQueueModel.QueueDeletedRecently = {
        let defaultInstance = SimpleQueueModel.QueueDeletedRecently()

        return defaultInstance
    }()
}

public extension QueueDoesNotExist {
    /**
     Default instance of the QueueDoesNotExist structure.
     */
    static let __default: SimpleQueueModel.QueueDoesNotExist = {
        let defaultInstance = SimpleQueueModel.QueueDoesNotExist()

        return defaultInstance
    }()
}

public extension QueueNameExists {
    /**
     Default instance of the QueueNameExists structure.
     */
    static let __default: SimpleQueueModel.QueueNameExists = {
        let defaultInstance = SimpleQueueModel.QueueNameExists()

        return defaultInstance
    }()
}

public extension ReceiptHandleIsInvalid {
    /**
     Default instance of the ReceiptHandleIsInvalid structure.
     */
    static let __default: SimpleQueueModel.ReceiptHandleIsInvalid = {
        let defaultInstance = SimpleQueueModel.ReceiptHandleIsInvalid()

        return defaultInstance
    }()
}

public extension ReceiveMessageRequest {
    /**
     Default instance of the ReceiveMessageRequest structure.
     */
    static let __default: SimpleQueueModel.ReceiveMessageRequest = {
        let defaultInstance = SimpleQueueModel.ReceiveMessageRequest(
            attributeNames: nil,
            maxNumberOfMessages: nil,
            messageAttributeNames: nil,
            queueUrl: "value",
            receiveRequestAttemptId: nil,
            visibilityTimeout: nil,
            waitTimeSeconds: nil)

        return defaultInstance
    }()
}

public extension ReceiveMessageResult {
    /**
     Default instance of the ReceiveMessageResult structure.
     */
    static let __default: SimpleQueueModel.ReceiveMessageResult = {
        let defaultInstance = SimpleQueueModel.ReceiveMessageResult(
            messages: nil)

        return defaultInstance
    }()
}

public extension ReceiveMessageResultForReceiveMessage {
    /**
     Default instance of the ReceiveMessageResultForReceiveMessage structure.
     */
    static let __default: SimpleQueueModel.ReceiveMessageResultForReceiveMessage = {
        let defaultInstance = SimpleQueueModel.ReceiveMessageResultForReceiveMessage(
            receiveMessageResult: ReceiveMessageResult.__default)

        return defaultInstance
    }()
}

public extension RemovePermissionRequest {
    /**
     Default instance of the RemovePermissionRequest structure.
     */
    static let __default: SimpleQueueModel.RemovePermissionRequest = {
        let defaultInstance = SimpleQueueModel.RemovePermissionRequest(
            label: "value",
            queueUrl: "value")

        return defaultInstance
    }()
}

public extension SendMessageBatchRequest {
    /**
     Default instance of the SendMessageBatchRequest structure.
     */
    static let __default: SimpleQueueModel.SendMessageBatchRequest = {
        let defaultInstance = SimpleQueueModel.SendMessageBatchRequest(
            entries: [],
            queueUrl: "value")

        return defaultInstance
    }()
}

public extension SendMessageBatchRequestEntry {
    /**
     Default instance of the SendMessageBatchRequestEntry structure.
     */
    static let __default: SimpleQueueModel.SendMessageBatchRequestEntry = {
        let defaultInstance = SimpleQueueModel.SendMessageBatchRequestEntry(
            delaySeconds: nil,
            id: "value",
            messageAttributes: nil,
            messageBody: "value",
            messageDeduplicationId: nil,
            messageGroupId: nil,
            messageSystemAttributes: nil)

        return defaultInstance
    }()
}

public extension SendMessageBatchResult {
    /**
     Default instance of the SendMessageBatchResult structure.
     */
    static let __default: SimpleQueueModel.SendMessageBatchResult = {
        let defaultInstance = SimpleQueueModel.SendMessageBatchResult(
            failed: nil,
            successful: nil)

        return defaultInstance
    }()
}

public extension SendMessageBatchResultEntry {
    /**
     Default instance of the SendMessageBatchResultEntry structure.
     */
    static let __default: SimpleQueueModel.SendMessageBatchResultEntry = {
        let defaultInstance = SimpleQueueModel.SendMessageBatchResultEntry(
            id: "value",
            mD5OfMessageAttributes: nil,
            mD5OfMessageBody: "value",
            mD5OfMessageSystemAttributes: nil,
            messageId: "value",
            sequenceNumber: nil)

        return defaultInstance
    }()
}

public extension SendMessageBatchResultForSendMessageBatch {
    /**
     Default instance of the SendMessageBatchResultForSendMessageBatch structure.
     */
    static let __default: SimpleQueueModel.SendMessageBatchResultForSendMessageBatch = {
        let defaultInstance = SimpleQueueModel.SendMessageBatchResultForSendMessageBatch(
            sendMessageBatchResult: SendMessageBatchResult.__default)

        return defaultInstance
    }()
}

public extension SendMessageRequest {
    /**
     Default instance of the SendMessageRequest structure.
     */
    static let __default: SimpleQueueModel.SendMessageRequest = {
        let defaultInstance = SimpleQueueModel.SendMessageRequest(
            delaySeconds: nil,
            messageAttributes: nil,
            messageBody: "value",
            messageDeduplicationId: nil,
            messageGroupId: nil,
            messageSystemAttributes: nil,
            queueUrl: "value")

        return defaultInstance
    }()
}

public extension SendMessageResult {
    /**
     Default instance of the SendMessageResult structure.
     */
    static let __default: SimpleQueueModel.SendMessageResult = {
        let defaultInstance = SimpleQueueModel.SendMessageResult(
            mD5OfMessageAttributes: nil,
            mD5OfMessageBody: nil,
            mD5OfMessageSystemAttributes: nil,
            messageId: nil,
            sequenceNumber: nil)

        return defaultInstance
    }()
}

public extension SendMessageResultForSendMessage {
    /**
     Default instance of the SendMessageResultForSendMessage structure.
     */
    static let __default: SimpleQueueModel.SendMessageResultForSendMessage = {
        let defaultInstance = SimpleQueueModel.SendMessageResultForSendMessage(
            sendMessageResult: SendMessageResult.__default)

        return defaultInstance
    }()
}

public extension SetQueueAttributesRequest {
    /**
     Default instance of the SetQueueAttributesRequest structure.
     */
    static let __default: SimpleQueueModel.SetQueueAttributesRequest = {
        let defaultInstance = SimpleQueueModel.SetQueueAttributesRequest(
            attributes: [:],
            queueUrl: "value")

        return defaultInstance
    }()
}

public extension TagQueueRequest {
    /**
     Default instance of the TagQueueRequest structure.
     */
    static let __default: SimpleQueueModel.TagQueueRequest = {
        let defaultInstance = SimpleQueueModel.TagQueueRequest(
            queueUrl: "value",
            tags: [:])

        return defaultInstance
    }()
}

public extension TooManyEntriesInBatchRequest {
    /**
     Default instance of the TooManyEntriesInBatchRequest structure.
     */
    static let __default: SimpleQueueModel.TooManyEntriesInBatchRequest = {
        let defaultInstance = SimpleQueueModel.TooManyEntriesInBatchRequest()

        return defaultInstance
    }()
}

public extension UnsupportedOperation {
    /**
     Default instance of the UnsupportedOperation structure.
     */
    static let __default: SimpleQueueModel.UnsupportedOperation = {
        let defaultInstance = SimpleQueueModel.UnsupportedOperation()

        return defaultInstance
    }()
}

public extension UntagQueueRequest {
    /**
     Default instance of the UntagQueueRequest structure.
     */
    static let __default: SimpleQueueModel.UntagQueueRequest = {
        let defaultInstance = SimpleQueueModel.UntagQueueRequest(
            queueUrl: "value",
            tagKeys: [])

        return defaultInstance
    }()
}
