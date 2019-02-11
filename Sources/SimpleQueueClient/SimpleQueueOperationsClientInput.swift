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
// SimpleQueueOperationsClientInput.swift
// SimpleQueueClient
//

import Foundation
import SmokeHTTPClient
import SimpleQueueModel

/**
 Type to handle the input to the AddPermission operation in a HTTP client.
 */
public struct AddPermissionOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: AddPermissionOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: AddPermissionRequest) {
        self.queryEncodable = encodable.asSimpleQueueModelAddPermissionOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = encodable.queueUrl
    }
}

/**
 Type to handle the input to the ChangeMessageVisibility operation in a HTTP client.
 */
public struct ChangeMessageVisibilityOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ChangeMessageVisibilityOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ChangeMessageVisibilityRequest) {
        self.queryEncodable = encodable.asSimpleQueueModelChangeMessageVisibilityOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = encodable.queueUrl
    }
}

/**
 Type to handle the input to the ChangeMessageVisibilityBatch operation in a HTTP client.
 */
public struct ChangeMessageVisibilityBatchOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ChangeMessageVisibilityBatchOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ChangeMessageVisibilityBatchRequest) {
        self.queryEncodable = encodable.asSimpleQueueModelChangeMessageVisibilityBatchOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = encodable.queueUrl
    }
}

/**
 Type to handle the input to the CreateQueue operation in a HTTP client.
 */
public typealias CreateQueueOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the DeleteMessage operation in a HTTP client.
 */
public struct DeleteMessageOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: DeleteMessageOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DeleteMessageRequest) {
        self.queryEncodable = encodable.asSimpleQueueModelDeleteMessageOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = encodable.queueUrl
    }
}

/**
 Type to handle the input to the DeleteMessageBatch operation in a HTTP client.
 */
public struct DeleteMessageBatchOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: DeleteMessageBatchOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DeleteMessageBatchRequest) {
        self.queryEncodable = encodable.asSimpleQueueModelDeleteMessageBatchOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = encodable.queueUrl
    }
}

/**
 Type to handle the input to the DeleteQueue operation in a HTTP client.
 */
public struct DeleteQueueOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: DeleteQueueRequest) {
        self.queryEncodable = nil
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = encodable.queueUrl
    }
}

/**
 Type to handle the input to the GetQueueAttributes operation in a HTTP client.
 */
public struct GetQueueAttributesOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: GetQueueAttributesOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: GetQueueAttributesRequest) {
        self.queryEncodable = encodable.asSimpleQueueModelGetQueueAttributesOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = encodable.queueUrl
    }
}

/**
 Type to handle the input to the GetQueueUrl operation in a HTTP client.
 */
public typealias GetQueueUrlOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the ListDeadLetterSourceQueues operation in a HTTP client.
 */
public struct ListDeadLetterSourceQueuesOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListDeadLetterSourceQueuesRequest) {
        self.queryEncodable = nil
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = encodable.queueUrl
    }
}

/**
 Type to handle the input to the ListQueueTags operation in a HTTP client.
 */
public struct ListQueueTagsOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ListQueueTagsRequest) {
        self.queryEncodable = nil
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = encodable.queueUrl
    }
}

/**
 Type to handle the input to the ListQueues operation in a HTTP client.
 */
public typealias ListQueuesOperationHTTPRequestInput = QueryHTTPRequestInput

/**
 Type to handle the input to the PurgeQueue operation in a HTTP client.
 */
public struct PurgeQueueOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: String?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: PurgeQueueRequest) {
        self.queryEncodable = nil
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = encodable.queueUrl
    }
}

/**
 Type to handle the input to the ReceiveMessage operation in a HTTP client.
 */
public struct ReceiveMessageOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: ReceiveMessageOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: ReceiveMessageRequest) {
        self.queryEncodable = encodable.asSimpleQueueModelReceiveMessageOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = encodable.queueUrl
    }
}

/**
 Type to handle the input to the RemovePermission operation in a HTTP client.
 */
public struct RemovePermissionOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: RemovePermissionOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: RemovePermissionRequest) {
        self.queryEncodable = encodable.asSimpleQueueModelRemovePermissionOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = encodable.queueUrl
    }
}

/**
 Type to handle the input to the SendMessage operation in a HTTP client.
 */
public struct SendMessageOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: SendMessageOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: SendMessageRequest) {
        self.queryEncodable = encodable.asSimpleQueueModelSendMessageOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = encodable.queueUrl
    }
}

/**
 Type to handle the input to the SendMessageBatch operation in a HTTP client.
 */
public struct SendMessageBatchOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: SendMessageBatchOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: SendMessageBatchRequest) {
        self.queryEncodable = encodable.asSimpleQueueModelSendMessageBatchOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = encodable.queueUrl
    }
}

/**
 Type to handle the input to the SetQueueAttributes operation in a HTTP client.
 */
public struct SetQueueAttributesOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: SetQueueAttributesOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: SetQueueAttributesRequest) {
        self.queryEncodable = encodable.asSimpleQueueModelSetQueueAttributesOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = encodable.queueUrl
    }
}

/**
 Type to handle the input to the TagQueue operation in a HTTP client.
 */
public struct TagQueueOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: TagQueueOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: TagQueueRequest) {
        self.queryEncodable = encodable.asSimpleQueueModelTagQueueOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = encodable.queueUrl
    }
}

/**
 Type to handle the input to the UntagQueue operation in a HTTP client.
 */
public struct UntagQueueOperationHTTPRequestInput: HTTPRequestInputProtocol {
    public let queryEncodable: UntagQueueOperationInputQuery?
    public let pathEncodable: String?
    public let bodyEncodable: String?
    public let additionalHeadersEncodable: String?
    public let pathPostfix: String?

    public init(encodable: UntagQueueRequest) {
        self.queryEncodable = encodable.asSimpleQueueModelUntagQueueOperationInputQuery()
        self.pathEncodable = nil
        self.bodyEncodable = nil
        self.additionalHeadersEncodable = nil
        self.pathPostfix = encodable.queueUrl
    }
}
