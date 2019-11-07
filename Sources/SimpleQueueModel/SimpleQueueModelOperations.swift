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
// SimpleQueueModelOperations.swift
// SimpleQueueModel
//

import Foundation

/**
 Operation enumeration for the SimpleQueueModel.
 */
public enum SimpleQueueModelOperations: String, Hashable, CustomStringConvertible {
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

    public var description: String {
        return rawValue
    }

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
public struct AddPermissionOperationInputQuery: Codable, Equatable {
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
    func asSimpleQueueModelAddPermissionOperationInputQuery() -> AddPermissionOperationInputQuery {
        return AddPermissionOperationInputQuery(
            aWSAccountIds: aWSAccountIds,
            actions: actions,
            label: label)
    }
}

/**
 Structure to encode the query input for the ChangeMessageVisibility
 operation.
 */
public struct ChangeMessageVisibilityOperationInputQuery: Codable, Equatable {
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
    func asSimpleQueueModelChangeMessageVisibilityOperationInputQuery() -> ChangeMessageVisibilityOperationInputQuery {
        return ChangeMessageVisibilityOperationInputQuery(
            receiptHandle: receiptHandle,
            visibilityTimeout: visibilityTimeout)
    }
}

/**
 Structure to encode the query input for the ChangeMessageVisibilityBatch
 operation.
 */
public struct ChangeMessageVisibilityBatchOperationInputQuery: Codable, Equatable {
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
    func asSimpleQueueModelChangeMessageVisibilityBatchOperationInputQuery() -> ChangeMessageVisibilityBatchOperationInputQuery {
        return ChangeMessageVisibilityBatchOperationInputQuery(
            entries: entries)
    }
}

/**
 Structure to encode the query input for the DeleteMessage
 operation.
 */
public struct DeleteMessageOperationInputQuery: Codable, Equatable {
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
    func asSimpleQueueModelDeleteMessageOperationInputQuery() -> DeleteMessageOperationInputQuery {
        return DeleteMessageOperationInputQuery(
            receiptHandle: receiptHandle)
    }
}

/**
 Structure to encode the query input for the DeleteMessageBatch
 operation.
 */
public struct DeleteMessageBatchOperationInputQuery: Codable, Equatable {
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
    func asSimpleQueueModelDeleteMessageBatchOperationInputQuery() -> DeleteMessageBatchOperationInputQuery {
        return DeleteMessageBatchOperationInputQuery(
            entries: entries)
    }
}

/**
 Structure to encode the query input for the GetQueueAttributes
 operation.
 */
public struct GetQueueAttributesOperationInputQuery: Codable, Equatable {
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
    func asSimpleQueueModelGetQueueAttributesOperationInputQuery() -> GetQueueAttributesOperationInputQuery {
        return GetQueueAttributesOperationInputQuery(
            attributeNames: attributeNames)
    }
}

/**
 Structure to encode the query input for the ReceiveMessage
 operation.
 */
public struct ReceiveMessageOperationInputQuery: Codable, Equatable {
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
    func asSimpleQueueModelReceiveMessageOperationInputQuery() -> ReceiveMessageOperationInputQuery {
        return ReceiveMessageOperationInputQuery(
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
public struct RemovePermissionOperationInputQuery: Codable, Equatable {
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
    func asSimpleQueueModelRemovePermissionOperationInputQuery() -> RemovePermissionOperationInputQuery {
        return RemovePermissionOperationInputQuery(
            label: label)
    }
}

/**
 Structure to encode the query input for the SendMessage
 operation.
 */
public struct SendMessageOperationInputQuery: Codable, Equatable {
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
    func asSimpleQueueModelSendMessageOperationInputQuery() -> SendMessageOperationInputQuery {
        return SendMessageOperationInputQuery(
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
public struct SendMessageBatchOperationInputQuery: Codable, Equatable {
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
    func asSimpleQueueModelSendMessageBatchOperationInputQuery() -> SendMessageBatchOperationInputQuery {
        return SendMessageBatchOperationInputQuery(
            entries: entries)
    }
}

/**
 Structure to encode the query input for the SetQueueAttributes
 operation.
 */
public struct SetQueueAttributesOperationInputQuery: Codable, Equatable {
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
    func asSimpleQueueModelSetQueueAttributesOperationInputQuery() -> SetQueueAttributesOperationInputQuery {
        return SetQueueAttributesOperationInputQuery(
            attributes: attributes)
    }
}

/**
 Structure to encode the query input for the TagQueue
 operation.
 */
public struct TagQueueOperationInputQuery: Codable, Equatable {
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
    func asSimpleQueueModelTagQueueOperationInputQuery() -> TagQueueOperationInputQuery {
        return TagQueueOperationInputQuery(
            tags: tags)
    }
}

/**
 Structure to encode the query input for the UntagQueue
 operation.
 */
public struct UntagQueueOperationInputQuery: Codable, Equatable {
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
    func asSimpleQueueModelUntagQueueOperationInputQuery() -> UntagQueueOperationInputQuery {
        return UntagQueueOperationInputQuery(
            tagKeys: tagKeys)
    }
}
