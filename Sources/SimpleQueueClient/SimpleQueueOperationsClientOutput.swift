// Copyright 2018-2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
// SimpleQueueOperationsClientOutput.swift
// SimpleQueueClient
//

import Foundation
import SmokeHTTPClient
import SimpleQueueModel

/**
 Type to handle the output from the ChangeMessageVisibilityBatch operation in a HTTP client.
 */
extension ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch: HTTPResponseOutputProtocol {
    public typealias BodyType = ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch
    public typealias HeadersType = ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateQueue operation in a HTTP client.
 */
extension CreateQueueResultForCreateQueue: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateQueueResultForCreateQueue
    public typealias HeadersType = CreateQueueResultForCreateQueue

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateQueueResultForCreateQueue {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DeleteMessageBatch operation in a HTTP client.
 */
extension DeleteMessageBatchResultForDeleteMessageBatch: HTTPResponseOutputProtocol {
    public typealias BodyType = DeleteMessageBatchResultForDeleteMessageBatch
    public typealias HeadersType = DeleteMessageBatchResultForDeleteMessageBatch

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DeleteMessageBatchResultForDeleteMessageBatch {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetQueueAttributes operation in a HTTP client.
 */
extension GetQueueAttributesResultForGetQueueAttributes: HTTPResponseOutputProtocol {
    public typealias BodyType = GetQueueAttributesResultForGetQueueAttributes
    public typealias HeadersType = GetQueueAttributesResultForGetQueueAttributes

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetQueueAttributesResultForGetQueueAttributes {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetQueueUrl operation in a HTTP client.
 */
extension GetQueueUrlResultForGetQueueUrl: HTTPResponseOutputProtocol {
    public typealias BodyType = GetQueueUrlResultForGetQueueUrl
    public typealias HeadersType = GetQueueUrlResultForGetQueueUrl

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetQueueUrlResultForGetQueueUrl {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListDeadLetterSourceQueues operation in a HTTP client.
 */
extension ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues: HTTPResponseOutputProtocol {
    public typealias BodyType = ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues
    public typealias HeadersType = ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListQueueTags operation in a HTTP client.
 */
extension ListQueueTagsResultForListQueueTags: HTTPResponseOutputProtocol {
    public typealias BodyType = ListQueueTagsResultForListQueueTags
    public typealias HeadersType = ListQueueTagsResultForListQueueTags

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListQueueTagsResultForListQueueTags {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListQueues operation in a HTTP client.
 */
extension ListQueuesResultForListQueues: HTTPResponseOutputProtocol {
    public typealias BodyType = ListQueuesResultForListQueues
    public typealias HeadersType = ListQueuesResultForListQueues

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListQueuesResultForListQueues {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ReceiveMessage operation in a HTTP client.
 */
extension ReceiveMessageResultForReceiveMessage: HTTPResponseOutputProtocol {
    public typealias BodyType = ReceiveMessageResultForReceiveMessage
    public typealias HeadersType = ReceiveMessageResultForReceiveMessage

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ReceiveMessageResultForReceiveMessage {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the SendMessage operation in a HTTP client.
 */
extension SendMessageResultForSendMessage: HTTPResponseOutputProtocol {
    public typealias BodyType = SendMessageResultForSendMessage
    public typealias HeadersType = SendMessageResultForSendMessage

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> SendMessageResultForSendMessage {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the SendMessageBatch operation in a HTTP client.
 */
extension SendMessageBatchResultForSendMessageBatch: HTTPResponseOutputProtocol {
    public typealias BodyType = SendMessageBatchResultForSendMessageBatch
    public typealias HeadersType = SendMessageBatchResultForSendMessageBatch

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> SendMessageBatchResultForSendMessageBatch {
        return try bodyDecodableProvider()
    }
}
