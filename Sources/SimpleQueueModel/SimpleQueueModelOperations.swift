// Copyright 2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
// SimpleQueueModelOperations.swift
// SimpleQueueModel
//

import Foundation

/**
 Operation enumeration for the SimpleQueueModel.
 */
public enum SimpleQueueModelOperations: String {
    case addPermission = "AddPermission"
    case changeMessageVisibility = "ChangeMessageVisibility"
    case changeMessageVisibilityBatch = "ChangeMessageVisibilityBatch"
    case createQueue = "CreateQueue"
    case deleteMessage = "DeleteMessage"
    case deleteMessageBatch = "DeleteMessageBatch"
    case deleteQueue = "DeleteQueue"
    case getQueueAttributes = "GetQueueAttributes"
    case getQueueUrl = "GetQueueUrl"
    case listDeadLetterSourceQueues = "ListDeadLetterSourceQueues"
    case listQueueTags = "ListQueueTags"
    case listQueues = "ListQueues"
    case purgeQueue = "PurgeQueue"
    case receiveMessage = "ReceiveMessage"
    case removePermission = "RemovePermission"
    case sendMessage = "SendMessage"
    case sendMessageBatch = "SendMessageBatch"
    case setQueueAttributes = "SetQueueAttributes"
    case tagQueue = "TagQueue"
    case untagQueue = "UntagQueue"

    public var operationPath: String {
        switch self {
        case .addPermission:
            return "/"
        case .changeMessageVisibility:
            return "/"
        case .changeMessageVisibilityBatch:
            return "/"
        case .createQueue:
            return "/"
        case .deleteMessage:
            return "/"
        case .deleteMessageBatch:
            return "/"
        case .deleteQueue:
            return "/"
        case .getQueueAttributes:
            return "/"
        case .getQueueUrl:
            return "/"
        case .listDeadLetterSourceQueues:
            return "/"
        case .listQueueTags:
            return "/"
        case .listQueues:
            return "/"
        case .purgeQueue:
            return "/"
        case .receiveMessage:
            return "/"
        case .removePermission:
            return "/"
        case .sendMessage:
            return "/"
        case .sendMessageBatch:
            return "/"
        case .setQueueAttributes:
            return "/"
        case .tagQueue:
            return "/"
        case .untagQueue:
            return "/"
        }
    }
}


/**
 Structure to encode the query input for the AddPermission
 operation.
 */
public struct AddPermissionRequestQuery: Codable, Equatable {
    public var aWSAccountIds: AWSAccountIdList
    public var actions: ActionNameList
    public var label: String

    public init(aWSAccountIds: AWSAccountIdList,
                actions: ActionNameList,
                label: String) {
        self.aWSAccountIds = aWSAccountIds
        self.actions = actions
        self.label = label
    }

    enum CodingKeys: String, CodingKey {
        case aWSAccountIds = "AWSAccountId"
        case actions = "ActionName"
        case label = "Label"
    }

    public func validate() throws {
    }
}

public extension AddPermissionRequest {
    public func asSimpleQueueModelAddPermissionRequestQuery() -> AddPermissionRequestQuery {
        return AddPermissionRequestQuery(
            aWSAccountIds: aWSAccountIds,
            actions: actions,
            label: label)
    }
}


/**
 Structure to encode the query input for the ChangeMessageVisibility
 operation.
 */
public struct ChangeMessageVisibilityRequestQuery: Codable, Equatable {
    public var receiptHandle: String
    public var visibilityTimeout: Integer

    public init(receiptHandle: String,
                visibilityTimeout: Integer) {
        self.receiptHandle = receiptHandle
        self.visibilityTimeout = visibilityTimeout
    }

    enum CodingKeys: String, CodingKey {
        case receiptHandle = "ReceiptHandle"
        case visibilityTimeout = "VisibilityTimeout"
    }

    public func validate() throws {
    }
}

public extension ChangeMessageVisibilityRequest {
    public func asSimpleQueueModelChangeMessageVisibilityRequestQuery() -> ChangeMessageVisibilityRequestQuery {
        return ChangeMessageVisibilityRequestQuery(
            receiptHandle: receiptHandle,
            visibilityTimeout: visibilityTimeout)
    }
}


/**
 Structure to encode the query input for the ChangeMessageVisibilityBatch
 operation.
 */
public struct ChangeMessageVisibilityBatchRequestQuery: Codable, Equatable {
    public var entries: ChangeMessageVisibilityBatchRequestEntryList

    public init(entries: ChangeMessageVisibilityBatchRequestEntryList) {
        self.entries = entries
    }

    enum CodingKeys: String, CodingKey {
        case entries = "ChangeMessageVisibilityBatchRequestEntry"
    }

    public func validate() throws {
    }
}

public extension ChangeMessageVisibilityBatchRequest {
    public func asSimpleQueueModelChangeMessageVisibilityBatchRequestQuery() -> ChangeMessageVisibilityBatchRequestQuery {
        return ChangeMessageVisibilityBatchRequestQuery(
            entries: entries)
    }
}


/**
 Structure to encode the query input for the DeleteMessage
 operation.
 */
public struct DeleteMessageRequestQuery: Codable, Equatable {
    public var receiptHandle: String

    public init(receiptHandle: String) {
        self.receiptHandle = receiptHandle
    }

    enum CodingKeys: String, CodingKey {
        case receiptHandle = "ReceiptHandle"
    }

    public func validate() throws {
    }
}

public extension DeleteMessageRequest {
    public func asSimpleQueueModelDeleteMessageRequestQuery() -> DeleteMessageRequestQuery {
        return DeleteMessageRequestQuery(
            receiptHandle: receiptHandle)
    }
}


/**
 Structure to encode the query input for the DeleteMessageBatch
 operation.
 */
public struct DeleteMessageBatchRequestQuery: Codable, Equatable {
    public var entries: DeleteMessageBatchRequestEntryList

    public init(entries: DeleteMessageBatchRequestEntryList) {
        self.entries = entries
    }

    enum CodingKeys: String, CodingKey {
        case entries = "DeleteMessageBatchRequestEntry"
    }

    public func validate() throws {
    }
}

public extension DeleteMessageBatchRequest {
    public func asSimpleQueueModelDeleteMessageBatchRequestQuery() -> DeleteMessageBatchRequestQuery {
        return DeleteMessageBatchRequestQuery(
            entries: entries)
    }
}


/**
 Structure to encode the query input for the GetQueueAttributes
 operation.
 */
public struct GetQueueAttributesRequestQuery: Codable, Equatable {
    public var attributeNames: AttributeNameList?

    public init(attributeNames: AttributeNameList? = nil) {
        self.attributeNames = attributeNames
    }

    enum CodingKeys: String, CodingKey {
        case attributeNames = "AttributeName"
    }

    public func validate() throws {
    }
}

public extension GetQueueAttributesRequest {
    public func asSimpleQueueModelGetQueueAttributesRequestQuery() -> GetQueueAttributesRequestQuery {
        return GetQueueAttributesRequestQuery(
            attributeNames: attributeNames)
    }
}


/**
 Structure to encode the query input for the ReceiveMessage
 operation.
 */
public struct ReceiveMessageRequestQuery: Codable, Equatable {
    public var attributeNames: AttributeNameList?
    public var maxNumberOfMessages: Integer?
    public var messageAttributeNames: MessageAttributeNameList?
    public var receiveRequestAttemptId: String?
    public var visibilityTimeout: Integer?
    public var waitTimeSeconds: Integer?

    public init(attributeNames: AttributeNameList? = nil,
                maxNumberOfMessages: Integer? = nil,
                messageAttributeNames: MessageAttributeNameList? = nil,
                receiveRequestAttemptId: String? = nil,
                visibilityTimeout: Integer? = nil,
                waitTimeSeconds: Integer? = nil) {
        self.attributeNames = attributeNames
        self.maxNumberOfMessages = maxNumberOfMessages
        self.messageAttributeNames = messageAttributeNames
        self.receiveRequestAttemptId = receiveRequestAttemptId
        self.visibilityTimeout = visibilityTimeout
        self.waitTimeSeconds = waitTimeSeconds
    }

    enum CodingKeys: String, CodingKey {
        case attributeNames = "AttributeName"
        case maxNumberOfMessages = "MaxNumberOfMessages"
        case messageAttributeNames = "MessageAttributeName"
        case receiveRequestAttemptId = "ReceiveRequestAttemptId"
        case visibilityTimeout = "VisibilityTimeout"
        case waitTimeSeconds = "WaitTimeSeconds"
    }

    public func validate() throws {
    }
}

public extension ReceiveMessageRequest {
    public func asSimpleQueueModelReceiveMessageRequestQuery() -> ReceiveMessageRequestQuery {
        return ReceiveMessageRequestQuery(
            attributeNames: attributeNames,
            maxNumberOfMessages: maxNumberOfMessages,
            messageAttributeNames: messageAttributeNames,
            receiveRequestAttemptId: receiveRequestAttemptId,
            visibilityTimeout: visibilityTimeout,
            waitTimeSeconds: waitTimeSeconds)
    }
}


/**
 Structure to encode the query input for the RemovePermission
 operation.
 */
public struct RemovePermissionRequestQuery: Codable, Equatable {
    public var label: String

    public init(label: String) {
        self.label = label
    }

    enum CodingKeys: String, CodingKey {
        case label = "Label"
    }

    public func validate() throws {
    }
}

public extension RemovePermissionRequest {
    public func asSimpleQueueModelRemovePermissionRequestQuery() -> RemovePermissionRequestQuery {
        return RemovePermissionRequestQuery(
            label: label)
    }
}


/**
 Structure to encode the query input for the SendMessage
 operation.
 */
public struct SendMessageRequestQuery: Codable, Equatable {
    public var delaySeconds: Integer?
    public var messageAttributes: MessageBodyAttributeMap?
    public var messageBody: String
    public var messageDeduplicationId: String?
    public var messageGroupId: String?

    public init(delaySeconds: Integer? = nil,
                messageAttributes: MessageBodyAttributeMap? = nil,
                messageBody: String,
                messageDeduplicationId: String? = nil,
                messageGroupId: String? = nil) {
        self.delaySeconds = delaySeconds
        self.messageAttributes = messageAttributes
        self.messageBody = messageBody
        self.messageDeduplicationId = messageDeduplicationId
        self.messageGroupId = messageGroupId
    }

    enum CodingKeys: String, CodingKey {
        case delaySeconds = "DelaySeconds"
        case messageAttributes = "MessageAttribute"
        case messageBody = "MessageBody"
        case messageDeduplicationId = "MessageDeduplicationId"
        case messageGroupId = "MessageGroupId"
    }

    public func validate() throws {
    }
}

public extension SendMessageRequest {
    public func asSimpleQueueModelSendMessageRequestQuery() -> SendMessageRequestQuery {
        return SendMessageRequestQuery(
            delaySeconds: delaySeconds,
            messageAttributes: messageAttributes,
            messageBody: messageBody,
            messageDeduplicationId: messageDeduplicationId,
            messageGroupId: messageGroupId)
    }
}


/**
 Structure to encode the query input for the SendMessageBatch
 operation.
 */
public struct SendMessageBatchRequestQuery: Codable, Equatable {
    public var entries: SendMessageBatchRequestEntryList

    public init(entries: SendMessageBatchRequestEntryList) {
        self.entries = entries
    }

    enum CodingKeys: String, CodingKey {
        case entries = "SendMessageBatchRequestEntry"
    }

    public func validate() throws {
    }
}

public extension SendMessageBatchRequest {
    public func asSimpleQueueModelSendMessageBatchRequestQuery() -> SendMessageBatchRequestQuery {
        return SendMessageBatchRequestQuery(
            entries: entries)
    }
}


/**
 Structure to encode the query input for the SetQueueAttributes
 operation.
 */
public struct SetQueueAttributesRequestQuery: Codable, Equatable {
    public var attributes: QueueAttributeMap

    public init(attributes: QueueAttributeMap) {
        self.attributes = attributes
    }

    enum CodingKeys: String, CodingKey {
        case attributes = "Attribute"
    }

    public func validate() throws {
    }
}

public extension SetQueueAttributesRequest {
    public func asSimpleQueueModelSetQueueAttributesRequestQuery() -> SetQueueAttributesRequestQuery {
        return SetQueueAttributesRequestQuery(
            attributes: attributes)
    }
}


/**
 Structure to encode the query input for the TagQueue
 operation.
 */
public struct TagQueueRequestQuery: Codable, Equatable {
    public var tags: TagMap

    public init(tags: TagMap) {
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case tags = "Tags"
    }

    public func validate() throws {
    }
}

public extension TagQueueRequest {
    public func asSimpleQueueModelTagQueueRequestQuery() -> TagQueueRequestQuery {
        return TagQueueRequestQuery(
            tags: tags)
    }
}


/**
 Structure to encode the query input for the UntagQueue
 operation.
 */
public struct UntagQueueRequestQuery: Codable, Equatable {
    public var tagKeys: TagKeyList

    public init(tagKeys: TagKeyList) {
        self.tagKeys = tagKeys
    }

    enum CodingKeys: String, CodingKey {
        case tagKeys = "TagKey"
    }

    public func validate() throws {
    }
}

public extension UntagQueueRequest {
    public func asSimpleQueueModelUntagQueueRequestQuery() -> UntagQueueRequestQuery {
        return UntagQueueRequestQuery(
            tagKeys: tagKeys)
    }
}

