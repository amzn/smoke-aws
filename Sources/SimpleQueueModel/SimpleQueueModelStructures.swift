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
// SimpleQueueModelStructures.swift
// SimpleQueueModel
//

import Foundation

public struct AddPermissionRequest: Codable, Equatable {
    public var aWSAccountIds: AWSAccountIdList
    public var actions: ActionNameList
    public var label: String
    public var queueUrl: String

    public init(aWSAccountIds: AWSAccountIdList,
                actions: ActionNameList,
                label: String,
                queueUrl: String) {
        self.aWSAccountIds = aWSAccountIds
        self.actions = actions
        self.label = label
        self.queueUrl = queueUrl
    }

    enum CodingKeys: String, CodingKey {
        case aWSAccountIds = "AWSAccountId"
        case actions = "ActionName"
        case label = "Label"
        case queueUrl = "QueueUrl"
    }

    public func validate() throws {
    }
}

public struct BatchEntryIdsNotDistinct: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct BatchRequestTooLong: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct BatchResultErrorEntry: Codable, Equatable {
    public var code: String
    public var id: String
    public var message: String?
    public var senderFault: Boolean

    public init(code: String,
                id: String,
                message: String? = nil,
                senderFault: Boolean) {
        self.code = code
        self.id = id
        self.message = message
        self.senderFault = senderFault
    }

    enum CodingKeys: String, CodingKey {
        case code = "Code"
        case id = "Id"
        case message = "Message"
        case senderFault = "SenderFault"
    }

    public func validate() throws {
    }
}

public struct ChangeMessageVisibilityBatchRequest: Codable, Equatable {
    public var entries: ChangeMessageVisibilityBatchRequestEntryList
    public var queueUrl: String

    public init(entries: ChangeMessageVisibilityBatchRequestEntryList,
                queueUrl: String) {
        self.entries = entries
        self.queueUrl = queueUrl
    }

    enum CodingKeys: String, CodingKey {
        case entries = "ChangeMessageVisibilityBatchRequestEntry"
        case queueUrl = "QueueUrl"
    }

    public func validate() throws {
    }
}

public struct ChangeMessageVisibilityBatchRequestEntry: Codable, Equatable {
    public var id: String
    public var receiptHandle: String
    public var visibilityTimeout: Integer?

    public init(id: String,
                receiptHandle: String,
                visibilityTimeout: Integer? = nil) {
        self.id = id
        self.receiptHandle = receiptHandle
        self.visibilityTimeout = visibilityTimeout
    }

    enum CodingKeys: String, CodingKey {
        case id = "Id"
        case receiptHandle = "ReceiptHandle"
        case visibilityTimeout = "VisibilityTimeout"
    }

    public func validate() throws {
    }
}

public struct ChangeMessageVisibilityBatchResult: Codable, Equatable {
    public var failed: BatchResultErrorEntryList?
    public var successful: ChangeMessageVisibilityBatchResultEntryList?

    public init(failed: BatchResultErrorEntryList? = nil,
                successful: ChangeMessageVisibilityBatchResultEntryList? = nil) {
        self.failed = failed
        self.successful = successful
    }

    enum CodingKeys: String, CodingKey {
        case failed = "BatchResultErrorEntry"
        case successful = "ChangeMessageVisibilityBatchResultEntry"
    }

    public func validate() throws {
    }
}

public struct ChangeMessageVisibilityBatchResultEntry: Codable, Equatable {
    public var id: String

    public init(id: String) {
        self.id = id
    }

    enum CodingKeys: String, CodingKey {
        case id = "Id"
    }

    public func validate() throws {
    }
}

public struct ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch: Codable, Equatable {
    public var changeMessageVisibilityBatchResult: ChangeMessageVisibilityBatchResult

    public init(changeMessageVisibilityBatchResult: ChangeMessageVisibilityBatchResult) {
        self.changeMessageVisibilityBatchResult = changeMessageVisibilityBatchResult
    }

    enum CodingKeys: String, CodingKey {
        case changeMessageVisibilityBatchResult = "ChangeMessageVisibilityBatchResult"
    }

    public func validate() throws {
        try changeMessageVisibilityBatchResult.validate()
    }
}

public struct ChangeMessageVisibilityRequest: Codable, Equatable {
    public var queueUrl: String
    public var receiptHandle: String
    public var visibilityTimeout: Integer

    public init(queueUrl: String,
                receiptHandle: String,
                visibilityTimeout: Integer) {
        self.queueUrl = queueUrl
        self.receiptHandle = receiptHandle
        self.visibilityTimeout = visibilityTimeout
    }

    enum CodingKeys: String, CodingKey {
        case queueUrl = "QueueUrl"
        case receiptHandle = "ReceiptHandle"
        case visibilityTimeout = "VisibilityTimeout"
    }

    public func validate() throws {
    }
}

public struct CreateQueueRequest: Codable, Equatable {
    public var attributes: QueueAttributeMap?
    public var queueName: String
    public var tags: TagMap?

    public init(attributes: QueueAttributeMap? = nil,
                queueName: String,
                tags: TagMap? = nil) {
        self.attributes = attributes
        self.queueName = queueName
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case attributes = "Attribute"
        case queueName = "QueueName"
        case tags = "Tag"
    }

    public func validate() throws {
    }
}

public struct CreateQueueResult: Codable, Equatable {
    public var queueUrl: String?

    public init(queueUrl: String? = nil) {
        self.queueUrl = queueUrl
    }

    enum CodingKeys: String, CodingKey {
        case queueUrl = "QueueUrl"
    }

    public func validate() throws {
    }
}

public struct CreateQueueResultForCreateQueue: Codable, Equatable {
    public var createQueueResult: CreateQueueResult

    public init(createQueueResult: CreateQueueResult) {
        self.createQueueResult = createQueueResult
    }

    enum CodingKeys: String, CodingKey {
        case createQueueResult = "CreateQueueResult"
    }

    public func validate() throws {
        try createQueueResult.validate()
    }
}

public struct DeleteMessageBatchRequest: Codable, Equatable {
    public var entries: DeleteMessageBatchRequestEntryList
    public var queueUrl: String

    public init(entries: DeleteMessageBatchRequestEntryList,
                queueUrl: String) {
        self.entries = entries
        self.queueUrl = queueUrl
    }

    enum CodingKeys: String, CodingKey {
        case entries = "DeleteMessageBatchRequestEntry"
        case queueUrl = "QueueUrl"
    }

    public func validate() throws {
    }
}

public struct DeleteMessageBatchRequestEntry: Codable, Equatable {
    public var id: String
    public var receiptHandle: String

    public init(id: String,
                receiptHandle: String) {
        self.id = id
        self.receiptHandle = receiptHandle
    }

    enum CodingKeys: String, CodingKey {
        case id = "Id"
        case receiptHandle = "ReceiptHandle"
    }

    public func validate() throws {
    }
}

public struct DeleteMessageBatchResult: Codable, Equatable {
    public var failed: BatchResultErrorEntryList?
    public var successful: DeleteMessageBatchResultEntryList?

    public init(failed: BatchResultErrorEntryList? = nil,
                successful: DeleteMessageBatchResultEntryList? = nil) {
        self.failed = failed
        self.successful = successful
    }

    enum CodingKeys: String, CodingKey {
        case failed = "BatchResultErrorEntry"
        case successful = "DeleteMessageBatchResultEntry"
    }

    public func validate() throws {
    }
}

public struct DeleteMessageBatchResultEntry: Codable, Equatable {
    public var id: String

    public init(id: String) {
        self.id = id
    }

    enum CodingKeys: String, CodingKey {
        case id = "Id"
    }

    public func validate() throws {
    }
}

public struct DeleteMessageBatchResultForDeleteMessageBatch: Codable, Equatable {
    public var deleteMessageBatchResult: DeleteMessageBatchResult

    public init(deleteMessageBatchResult: DeleteMessageBatchResult) {
        self.deleteMessageBatchResult = deleteMessageBatchResult
    }

    enum CodingKeys: String, CodingKey {
        case deleteMessageBatchResult = "DeleteMessageBatchResult"
    }

    public func validate() throws {
        try deleteMessageBatchResult.validate()
    }
}

public struct DeleteMessageRequest: Codable, Equatable {
    public var queueUrl: String
    public var receiptHandle: String

    public init(queueUrl: String,
                receiptHandle: String) {
        self.queueUrl = queueUrl
        self.receiptHandle = receiptHandle
    }

    enum CodingKeys: String, CodingKey {
        case queueUrl = "QueueUrl"
        case receiptHandle = "ReceiptHandle"
    }

    public func validate() throws {
    }
}

public struct DeleteQueueRequest: Codable, Equatable {
    public var queueUrl: String

    public init(queueUrl: String) {
        self.queueUrl = queueUrl
    }

    enum CodingKeys: String, CodingKey {
        case queueUrl = "QueueUrl"
    }

    public func validate() throws {
    }
}

public struct EmptyBatchRequest: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct GetQueueAttributesRequest: Codable, Equatable {
    public var attributeNames: AttributeNameList?
    public var queueUrl: String

    public init(attributeNames: AttributeNameList? = nil,
                queueUrl: String) {
        self.attributeNames = attributeNames
        self.queueUrl = queueUrl
    }

    enum CodingKeys: String, CodingKey {
        case attributeNames = "AttributeName"
        case queueUrl = "QueueUrl"
    }

    public func validate() throws {
    }
}

public struct GetQueueAttributesResult: Codable, Equatable {
    public var attributes: QueueAttributeMap?

    public init(attributes: QueueAttributeMap? = nil) {
        self.attributes = attributes
    }

    enum CodingKeys: String, CodingKey {
        case attributes = "Attribute"
    }

    public func validate() throws {
    }
}

public struct GetQueueAttributesResultForGetQueueAttributes: Codable, Equatable {
    public var getQueueAttributesResult: GetQueueAttributesResult

    public init(getQueueAttributesResult: GetQueueAttributesResult) {
        self.getQueueAttributesResult = getQueueAttributesResult
    }

    enum CodingKeys: String, CodingKey {
        case getQueueAttributesResult = "GetQueueAttributesResult"
    }

    public func validate() throws {
        try getQueueAttributesResult.validate()
    }
}

public struct GetQueueUrlRequest: Codable, Equatable {
    public var queueName: String
    public var queueOwnerAWSAccountId: String?

    public init(queueName: String,
                queueOwnerAWSAccountId: String? = nil) {
        self.queueName = queueName
        self.queueOwnerAWSAccountId = queueOwnerAWSAccountId
    }

    enum CodingKeys: String, CodingKey {
        case queueName = "QueueName"
        case queueOwnerAWSAccountId = "QueueOwnerAWSAccountId"
    }

    public func validate() throws {
    }
}

public struct GetQueueUrlResult: Codable, Equatable {
    public var queueUrl: String?

    public init(queueUrl: String? = nil) {
        self.queueUrl = queueUrl
    }

    enum CodingKeys: String, CodingKey {
        case queueUrl = "QueueUrl"
    }

    public func validate() throws {
    }
}

public struct GetQueueUrlResultForGetQueueUrl: Codable, Equatable {
    public var getQueueUrlResult: GetQueueUrlResult

    public init(getQueueUrlResult: GetQueueUrlResult) {
        self.getQueueUrlResult = getQueueUrlResult
    }

    enum CodingKeys: String, CodingKey {
        case getQueueUrlResult = "GetQueueUrlResult"
    }

    public func validate() throws {
        try getQueueUrlResult.validate()
    }
}

public struct InvalidAttributeName: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InvalidBatchEntryId: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InvalidIdFormat: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InvalidMessageContents: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ListDeadLetterSourceQueuesRequest: Codable, Equatable {
    public var queueUrl: String

    public init(queueUrl: String) {
        self.queueUrl = queueUrl
    }

    enum CodingKeys: String, CodingKey {
        case queueUrl = "QueueUrl"
    }

    public func validate() throws {
    }
}

public struct ListDeadLetterSourceQueuesResult: Codable, Equatable {
    public var queueUrls: QueueUrlList?

    public init(queueUrls: QueueUrlList? = nil) {
        self.queueUrls = queueUrls
    }

    enum CodingKeys: String, CodingKey {
        case queueUrls = "QueueUrl"
    }

    public func validate() throws {
    }
}

public struct ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues: Codable, Equatable {
    public var listDeadLetterSourceQueuesResult: ListDeadLetterSourceQueuesResult

    public init(listDeadLetterSourceQueuesResult: ListDeadLetterSourceQueuesResult) {
        self.listDeadLetterSourceQueuesResult = listDeadLetterSourceQueuesResult
    }

    enum CodingKeys: String, CodingKey {
        case listDeadLetterSourceQueuesResult = "ListDeadLetterSourceQueuesResult"
    }

    public func validate() throws {
        try listDeadLetterSourceQueuesResult.validate()
    }
}

public struct ListQueueTagsRequest: Codable, Equatable {
    public var queueUrl: String

    public init(queueUrl: String) {
        self.queueUrl = queueUrl
    }

    enum CodingKeys: String, CodingKey {
        case queueUrl = "QueueUrl"
    }

    public func validate() throws {
    }
}

public struct ListQueueTagsResult: Codable, Equatable {
    public var tags: TagMap?

    public init(tags: TagMap? = nil) {
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case tags = "Tag"
    }

    public func validate() throws {
    }
}

public struct ListQueueTagsResultForListQueueTags: Codable, Equatable {
    public var listQueueTagsResult: ListQueueTagsResult

    public init(listQueueTagsResult: ListQueueTagsResult) {
        self.listQueueTagsResult = listQueueTagsResult
    }

    enum CodingKeys: String, CodingKey {
        case listQueueTagsResult = "ListQueueTagsResult"
    }

    public func validate() throws {
        try listQueueTagsResult.validate()
    }
}

public struct ListQueuesRequest: Codable, Equatable {
    public var queueNamePrefix: String?

    public init(queueNamePrefix: String? = nil) {
        self.queueNamePrefix = queueNamePrefix
    }

    enum CodingKeys: String, CodingKey {
        case queueNamePrefix = "QueueNamePrefix"
    }

    public func validate() throws {
    }
}

public struct ListQueuesResult: Codable, Equatable {
    public var queueUrls: QueueUrlList?

    public init(queueUrls: QueueUrlList? = nil) {
        self.queueUrls = queueUrls
    }

    enum CodingKeys: String, CodingKey {
        case queueUrls = "QueueUrls"
    }

    public func validate() throws {
    }
}

public struct ListQueuesResultForListQueues: Codable, Equatable {
    public var listQueuesResult: ListQueuesResult

    public init(listQueuesResult: ListQueuesResult) {
        self.listQueuesResult = listQueuesResult
    }

    enum CodingKeys: String, CodingKey {
        case listQueuesResult = "ListQueuesResult"
    }

    public func validate() throws {
        try listQueuesResult.validate()
    }
}

public struct Message: Codable, Equatable {
    public var attributes: MessageSystemAttributeMap?
    public var body: String?
    public var mD5OfBody: String?
    public var mD5OfMessageAttributes: String?
    public var messageAttributes: MessageBodyAttributeMap?
    public var messageId: String?
    public var receiptHandle: String?

    public init(attributes: MessageSystemAttributeMap? = nil,
                body: String? = nil,
                mD5OfBody: String? = nil,
                mD5OfMessageAttributes: String? = nil,
                messageAttributes: MessageBodyAttributeMap? = nil,
                messageId: String? = nil,
                receiptHandle: String? = nil) {
        self.attributes = attributes
        self.body = body
        self.mD5OfBody = mD5OfBody
        self.mD5OfMessageAttributes = mD5OfMessageAttributes
        self.messageAttributes = messageAttributes
        self.messageId = messageId
        self.receiptHandle = receiptHandle
    }

    enum CodingKeys: String, CodingKey {
        case attributes = "Attribute"
        case body = "Body"
        case mD5OfBody = "MD5OfBody"
        case mD5OfMessageAttributes = "MD5OfMessageAttributes"
        case messageAttributes = "MessageAttribute"
        case messageId = "MessageId"
        case receiptHandle = "ReceiptHandle"
    }

    public func validate() throws {
    }
}

public struct MessageAttributeValue: Codable, Equatable {
    public var binaryListValues: BinaryList?
    public var binaryValue: Binary?
    public var dataType: String
    public var stringListValues: StringList?
    public var stringValue: String?

    public init(binaryListValues: BinaryList? = nil,
                binaryValue: Binary? = nil,
                dataType: String,
                stringListValues: StringList? = nil,
                stringValue: String? = nil) {
        self.binaryListValues = binaryListValues
        self.binaryValue = binaryValue
        self.dataType = dataType
        self.stringListValues = stringListValues
        self.stringValue = stringValue
    }

    enum CodingKeys: String, CodingKey {
        case binaryListValues = "BinaryListValue"
        case binaryValue = "BinaryValue"
        case dataType = "DataType"
        case stringListValues = "StringListValue"
        case stringValue = "StringValue"
    }

    public func validate() throws {
    }
}

public struct MessageNotInflight: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct MessageSystemAttributeValue: Codable, Equatable {
    public var binaryListValues: BinaryList?
    public var binaryValue: Binary?
    public var dataType: String
    public var stringListValues: StringList?
    public var stringValue: String?

    public init(binaryListValues: BinaryList? = nil,
                binaryValue: Binary? = nil,
                dataType: String,
                stringListValues: StringList? = nil,
                stringValue: String? = nil) {
        self.binaryListValues = binaryListValues
        self.binaryValue = binaryValue
        self.dataType = dataType
        self.stringListValues = stringListValues
        self.stringValue = stringValue
    }

    enum CodingKeys: String, CodingKey {
        case binaryListValues = "BinaryListValue"
        case binaryValue = "BinaryValue"
        case dataType = "DataType"
        case stringListValues = "StringListValue"
        case stringValue = "StringValue"
    }

    public func validate() throws {
    }
}

public struct OverLimit: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct PurgeQueueInProgress: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct PurgeQueueRequest: Codable, Equatable {
    public var queueUrl: String

    public init(queueUrl: String) {
        self.queueUrl = queueUrl
    }

    enum CodingKeys: String, CodingKey {
        case queueUrl = "QueueUrl"
    }

    public func validate() throws {
    }
}

public struct QueueDeletedRecently: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct QueueDoesNotExist: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct QueueNameExists: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ReceiptHandleIsInvalid: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ReceiveMessageRequest: Codable, Equatable {
    public var attributeNames: AttributeNameList?
    public var maxNumberOfMessages: Integer?
    public var messageAttributeNames: MessageAttributeNameList?
    public var queueUrl: String
    public var receiveRequestAttemptId: String?
    public var visibilityTimeout: Integer?
    public var waitTimeSeconds: Integer?

    public init(attributeNames: AttributeNameList? = nil,
                maxNumberOfMessages: Integer? = nil,
                messageAttributeNames: MessageAttributeNameList? = nil,
                queueUrl: String,
                receiveRequestAttemptId: String? = nil,
                visibilityTimeout: Integer? = nil,
                waitTimeSeconds: Integer? = nil) {
        self.attributeNames = attributeNames
        self.maxNumberOfMessages = maxNumberOfMessages
        self.messageAttributeNames = messageAttributeNames
        self.queueUrl = queueUrl
        self.receiveRequestAttemptId = receiveRequestAttemptId
        self.visibilityTimeout = visibilityTimeout
        self.waitTimeSeconds = waitTimeSeconds
    }

    enum CodingKeys: String, CodingKey {
        case attributeNames = "AttributeName"
        case maxNumberOfMessages = "MaxNumberOfMessages"
        case messageAttributeNames = "MessageAttributeName"
        case queueUrl = "QueueUrl"
        case receiveRequestAttemptId = "ReceiveRequestAttemptId"
        case visibilityTimeout = "VisibilityTimeout"
        case waitTimeSeconds = "WaitTimeSeconds"
    }

    public func validate() throws {
    }
}

public struct ReceiveMessageResult: Codable, Equatable {
    public var messages: MessageList?

    public init(messages: MessageList? = nil) {
        self.messages = messages
    }

    enum CodingKeys: String, CodingKey {
        case messages = "Message"
    }

    public func validate() throws {
    }
}

public struct ReceiveMessageResultForReceiveMessage: Codable, Equatable {
    public var receiveMessageResult: ReceiveMessageResult

    public init(receiveMessageResult: ReceiveMessageResult) {
        self.receiveMessageResult = receiveMessageResult
    }

    enum CodingKeys: String, CodingKey {
        case receiveMessageResult = "ReceiveMessageResult"
    }

    public func validate() throws {
        try receiveMessageResult.validate()
    }
}

public struct RemovePermissionRequest: Codable, Equatable {
    public var label: String
    public var queueUrl: String

    public init(label: String,
                queueUrl: String) {
        self.label = label
        self.queueUrl = queueUrl
    }

    enum CodingKeys: String, CodingKey {
        case label = "Label"
        case queueUrl = "QueueUrl"
    }

    public func validate() throws {
    }
}

public struct SendMessageBatchRequest: Codable, Equatable {
    public var entries: SendMessageBatchRequestEntryList
    public var queueUrl: String

    public init(entries: SendMessageBatchRequestEntryList,
                queueUrl: String) {
        self.entries = entries
        self.queueUrl = queueUrl
    }

    enum CodingKeys: String, CodingKey {
        case entries = "SendMessageBatchRequestEntry"
        case queueUrl = "QueueUrl"
    }

    public func validate() throws {
    }
}

public struct SendMessageBatchRequestEntry: Codable, Equatable {
    public var delaySeconds: Integer?
    public var id: String
    public var messageAttributes: MessageBodyAttributeMap?
    public var messageBody: String
    public var messageDeduplicationId: String?
    public var messageGroupId: String?
    public var messageSystemAttributes: MessageBodySystemAttributeMap?

    public init(delaySeconds: Integer? = nil,
                id: String,
                messageAttributes: MessageBodyAttributeMap? = nil,
                messageBody: String,
                messageDeduplicationId: String? = nil,
                messageGroupId: String? = nil,
                messageSystemAttributes: MessageBodySystemAttributeMap? = nil) {
        self.delaySeconds = delaySeconds
        self.id = id
        self.messageAttributes = messageAttributes
        self.messageBody = messageBody
        self.messageDeduplicationId = messageDeduplicationId
        self.messageGroupId = messageGroupId
        self.messageSystemAttributes = messageSystemAttributes
    }

    enum CodingKeys: String, CodingKey {
        case delaySeconds = "DelaySeconds"
        case id = "Id"
        case messageAttributes = "MessageAttribute"
        case messageBody = "MessageBody"
        case messageDeduplicationId = "MessageDeduplicationId"
        case messageGroupId = "MessageGroupId"
        case messageSystemAttributes = "MessageSystemAttribute"
    }

    public func validate() throws {
    }
}

public struct SendMessageBatchResult: Codable, Equatable {
    public var failed: BatchResultErrorEntryList?
    public var successful: SendMessageBatchResultEntryList?

    public init(failed: BatchResultErrorEntryList? = nil,
                successful: SendMessageBatchResultEntryList? = nil) {
        self.failed = failed
        self.successful = successful
    }

    enum CodingKeys: String, CodingKey {
        case failed = "BatchResultErrorEntry"
        case successful = "SendMessageBatchResultEntry"
    }

    public func validate() throws {
    }
}

public struct SendMessageBatchResultEntry: Codable, Equatable {
    public var id: String
    public var mD5OfMessageAttributes: String?
    public var mD5OfMessageBody: String
    public var mD5OfMessageSystemAttributes: String?
    public var messageId: String
    public var sequenceNumber: String?

    public init(id: String,
                mD5OfMessageAttributes: String? = nil,
                mD5OfMessageBody: String,
                mD5OfMessageSystemAttributes: String? = nil,
                messageId: String,
                sequenceNumber: String? = nil) {
        self.id = id
        self.mD5OfMessageAttributes = mD5OfMessageAttributes
        self.mD5OfMessageBody = mD5OfMessageBody
        self.mD5OfMessageSystemAttributes = mD5OfMessageSystemAttributes
        self.messageId = messageId
        self.sequenceNumber = sequenceNumber
    }

    enum CodingKeys: String, CodingKey {
        case id = "Id"
        case mD5OfMessageAttributes = "MD5OfMessageAttributes"
        case mD5OfMessageBody = "MD5OfMessageBody"
        case mD5OfMessageSystemAttributes = "MD5OfMessageSystemAttributes"
        case messageId = "MessageId"
        case sequenceNumber = "SequenceNumber"
    }

    public func validate() throws {
    }
}

public struct SendMessageBatchResultForSendMessageBatch: Codable, Equatable {
    public var sendMessageBatchResult: SendMessageBatchResult

    public init(sendMessageBatchResult: SendMessageBatchResult) {
        self.sendMessageBatchResult = sendMessageBatchResult
    }

    enum CodingKeys: String, CodingKey {
        case sendMessageBatchResult = "SendMessageBatchResult"
    }

    public func validate() throws {
        try sendMessageBatchResult.validate()
    }
}

public struct SendMessageRequest: Codable, Equatable {
    public var delaySeconds: Integer?
    public var messageAttributes: MessageBodyAttributeMap?
    public var messageBody: String
    public var messageDeduplicationId: String?
    public var messageGroupId: String?
    public var messageSystemAttributes: MessageBodySystemAttributeMap?
    public var queueUrl: String

    public init(delaySeconds: Integer? = nil,
                messageAttributes: MessageBodyAttributeMap? = nil,
                messageBody: String,
                messageDeduplicationId: String? = nil,
                messageGroupId: String? = nil,
                messageSystemAttributes: MessageBodySystemAttributeMap? = nil,
                queueUrl: String) {
        self.delaySeconds = delaySeconds
        self.messageAttributes = messageAttributes
        self.messageBody = messageBody
        self.messageDeduplicationId = messageDeduplicationId
        self.messageGroupId = messageGroupId
        self.messageSystemAttributes = messageSystemAttributes
        self.queueUrl = queueUrl
    }

    enum CodingKeys: String, CodingKey {
        case delaySeconds = "DelaySeconds"
        case messageAttributes = "MessageAttribute"
        case messageBody = "MessageBody"
        case messageDeduplicationId = "MessageDeduplicationId"
        case messageGroupId = "MessageGroupId"
        case messageSystemAttributes = "MessageSystemAttribute"
        case queueUrl = "QueueUrl"
    }

    public func validate() throws {
    }
}

public struct SendMessageResult: Codable, Equatable {
    public var mD5OfMessageAttributes: String?
    public var mD5OfMessageBody: String?
    public var mD5OfMessageSystemAttributes: String?
    public var messageId: String?
    public var sequenceNumber: String?

    public init(mD5OfMessageAttributes: String? = nil,
                mD5OfMessageBody: String? = nil,
                mD5OfMessageSystemAttributes: String? = nil,
                messageId: String? = nil,
                sequenceNumber: String? = nil) {
        self.mD5OfMessageAttributes = mD5OfMessageAttributes
        self.mD5OfMessageBody = mD5OfMessageBody
        self.mD5OfMessageSystemAttributes = mD5OfMessageSystemAttributes
        self.messageId = messageId
        self.sequenceNumber = sequenceNumber
    }

    enum CodingKeys: String, CodingKey {
        case mD5OfMessageAttributes = "MD5OfMessageAttributes"
        case mD5OfMessageBody = "MD5OfMessageBody"
        case mD5OfMessageSystemAttributes = "MD5OfMessageSystemAttributes"
        case messageId = "MessageId"
        case sequenceNumber = "SequenceNumber"
    }

    public func validate() throws {
    }
}

public struct SendMessageResultForSendMessage: Codable, Equatable {
    public var sendMessageResult: SendMessageResult

    public init(sendMessageResult: SendMessageResult) {
        self.sendMessageResult = sendMessageResult
    }

    enum CodingKeys: String, CodingKey {
        case sendMessageResult = "SendMessageResult"
    }

    public func validate() throws {
        try sendMessageResult.validate()
    }
}

public struct SetQueueAttributesRequest: Codable, Equatable {
    public var attributes: QueueAttributeMap
    public var queueUrl: String

    public init(attributes: QueueAttributeMap,
                queueUrl: String) {
        self.attributes = attributes
        self.queueUrl = queueUrl
    }

    enum CodingKeys: String, CodingKey {
        case attributes = "Attribute"
        case queueUrl = "QueueUrl"
    }

    public func validate() throws {
    }
}

public struct TagQueueRequest: Codable, Equatable {
    public var queueUrl: String
    public var tags: TagMap

    public init(queueUrl: String,
                tags: TagMap) {
        self.queueUrl = queueUrl
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case queueUrl = "QueueUrl"
        case tags = "Tags"
    }

    public func validate() throws {
    }
}

public struct TooManyEntriesInBatchRequest: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct UnsupportedOperation: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct UntagQueueRequest: Codable, Equatable {
    public var queueUrl: String
    public var tagKeys: TagKeyList

    public init(queueUrl: String,
                tagKeys: TagKeyList) {
        self.queueUrl = queueUrl
        self.tagKeys = tagKeys
    }

    enum CodingKeys: String, CodingKey {
        case queueUrl = "QueueUrl"
        case tagKeys = "TagKey"
    }

    public func validate() throws {
    }
}
