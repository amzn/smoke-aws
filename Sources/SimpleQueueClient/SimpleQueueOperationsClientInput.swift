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
public struct AddPermissionOperationHTTPRequestInput<InputType: Encodable> : HTTPRequestInputProtocol {
        public let queryEncodable: AddPermissionRequestQuery?
        public let pathEncodable: String?
        public let bodyEncodable: String?
        public let additionalHeadersEncodable: String?
        public let pathPostfix: String?

        public init(encodable: AddPermissionRequest) {
            self.queryEncodable = encodable.asSimpleQueueModelAddPermissionRequestQuery()
            self.pathEncodable = nil
            self.bodyEncodable = nil
            self.additionalHeadersEncodable = nil
            self.pathPostfix = encodable.queueUrl
        }
    }
/**
 Type to handle the input to the ChangeMessageVisibility operation in a HTTP client.
 */
public struct ChangeMessageVisibilityOperationHTTPRequestInput<InputType: Encodable> : HTTPRequestInputProtocol {
        public let queryEncodable: ChangeMessageVisibilityRequestQuery?
        public let pathEncodable: String?
        public let bodyEncodable: String?
        public let additionalHeadersEncodable: String?
        public let pathPostfix: String?

        public init(encodable: ChangeMessageVisibilityRequest) {
            self.queryEncodable = encodable.asSimpleQueueModelChangeMessageVisibilityRequestQuery()
            self.pathEncodable = nil
            self.bodyEncodable = nil
            self.additionalHeadersEncodable = nil
            self.pathPostfix = encodable.queueUrl
        }
    }
/**
 Type to handle the input to the ChangeMessageVisibilityBatch operation in a HTTP client.
 */
public struct ChangeMessageVisibilityBatchOperationHTTPRequestInput<InputType: Encodable> : HTTPRequestInputProtocol {
        public let queryEncodable: ChangeMessageVisibilityBatchRequestQuery?
        public let pathEncodable: String?
        public let bodyEncodable: String?
        public let additionalHeadersEncodable: String?
        public let pathPostfix: String?

        public init(encodable: ChangeMessageVisibilityBatchRequest) {
            self.queryEncodable = encodable.asSimpleQueueModelChangeMessageVisibilityBatchRequestQuery()
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
public struct DeleteMessageOperationHTTPRequestInput<InputType: Encodable> : HTTPRequestInputProtocol {
        public let queryEncodable: DeleteMessageRequestQuery?
        public let pathEncodable: String?
        public let bodyEncodable: String?
        public let additionalHeadersEncodable: String?
        public let pathPostfix: String?

        public init(encodable: DeleteMessageRequest) {
            self.queryEncodable = encodable.asSimpleQueueModelDeleteMessageRequestQuery()
            self.pathEncodable = nil
            self.bodyEncodable = nil
            self.additionalHeadersEncodable = nil
            self.pathPostfix = encodable.queueUrl
        }
    }
/**
 Type to handle the input to the DeleteMessageBatch operation in a HTTP client.
 */
public struct DeleteMessageBatchOperationHTTPRequestInput<InputType: Encodable> : HTTPRequestInputProtocol {
        public let queryEncodable: DeleteMessageBatchRequestQuery?
        public let pathEncodable: String?
        public let bodyEncodable: String?
        public let additionalHeadersEncodable: String?
        public let pathPostfix: String?

        public init(encodable: DeleteMessageBatchRequest) {
            self.queryEncodable = encodable.asSimpleQueueModelDeleteMessageBatchRequestQuery()
            self.pathEncodable = nil
            self.bodyEncodable = nil
            self.additionalHeadersEncodable = nil
            self.pathPostfix = encodable.queueUrl
        }
    }
/**
 Type to handle the input to the DeleteQueue operation in a HTTP client.
 */
public struct DeleteQueueOperationHTTPRequestInput<InputType: Encodable> : HTTPRequestInputProtocol {
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
public struct GetQueueAttributesOperationHTTPRequestInput<InputType: Encodable> : HTTPRequestInputProtocol {
        public let queryEncodable: GetQueueAttributesRequestQuery?
        public let pathEncodable: String?
        public let bodyEncodable: String?
        public let additionalHeadersEncodable: String?
        public let pathPostfix: String?

        public init(encodable: GetQueueAttributesRequest) {
            self.queryEncodable = encodable.asSimpleQueueModelGetQueueAttributesRequestQuery()
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
public struct ListDeadLetterSourceQueuesOperationHTTPRequestInput<InputType: Encodable> : HTTPRequestInputProtocol {
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
public struct ListQueueTagsOperationHTTPRequestInput<InputType: Encodable> : HTTPRequestInputProtocol {
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
public struct PurgeQueueOperationHTTPRequestInput<InputType: Encodable> : HTTPRequestInputProtocol {
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
public struct ReceiveMessageOperationHTTPRequestInput<InputType: Encodable> : HTTPRequestInputProtocol {
        public let queryEncodable: ReceiveMessageRequestQuery?
        public let pathEncodable: String?
        public let bodyEncodable: String?
        public let additionalHeadersEncodable: String?
        public let pathPostfix: String?

        public init(encodable: ReceiveMessageRequest) {
            self.queryEncodable = encodable.asSimpleQueueModelReceiveMessageRequestQuery()
            self.pathEncodable = nil
            self.bodyEncodable = nil
            self.additionalHeadersEncodable = nil
            self.pathPostfix = encodable.queueUrl
        }
    }
/**
 Type to handle the input to the RemovePermission operation in a HTTP client.
 */
public struct RemovePermissionOperationHTTPRequestInput<InputType: Encodable> : HTTPRequestInputProtocol {
        public let queryEncodable: RemovePermissionRequestQuery?
        public let pathEncodable: String?
        public let bodyEncodable: String?
        public let additionalHeadersEncodable: String?
        public let pathPostfix: String?

        public init(encodable: RemovePermissionRequest) {
            self.queryEncodable = encodable.asSimpleQueueModelRemovePermissionRequestQuery()
            self.pathEncodable = nil
            self.bodyEncodable = nil
            self.additionalHeadersEncodable = nil
            self.pathPostfix = encodable.queueUrl
        }
    }
/**
 Type to handle the input to the SendMessage operation in a HTTP client.
 */
public struct SendMessageOperationHTTPRequestInput<InputType: Encodable> : HTTPRequestInputProtocol {
        public let queryEncodable: SendMessageRequestQuery?
        public let pathEncodable: String?
        public let bodyEncodable: String?
        public let additionalHeadersEncodable: String?
        public let pathPostfix: String?

        public init(encodable: SendMessageRequest) {
            self.queryEncodable = encodable.asSimpleQueueModelSendMessageRequestQuery()
            self.pathEncodable = nil
            self.bodyEncodable = nil
            self.additionalHeadersEncodable = nil
            self.pathPostfix = encodable.queueUrl
        }
    }
/**
 Type to handle the input to the SendMessageBatch operation in a HTTP client.
 */
public struct SendMessageBatchOperationHTTPRequestInput<InputType: Encodable> : HTTPRequestInputProtocol {
        public let queryEncodable: SendMessageBatchRequestQuery?
        public let pathEncodable: String?
        public let bodyEncodable: String?
        public let additionalHeadersEncodable: String?
        public let pathPostfix: String?

        public init(encodable: SendMessageBatchRequest) {
            self.queryEncodable = encodable.asSimpleQueueModelSendMessageBatchRequestQuery()
            self.pathEncodable = nil
            self.bodyEncodable = nil
            self.additionalHeadersEncodable = nil
            self.pathPostfix = encodable.queueUrl
        }
    }
/**
 Type to handle the input to the SetQueueAttributes operation in a HTTP client.
 */
public struct SetQueueAttributesOperationHTTPRequestInput<InputType: Encodable> : HTTPRequestInputProtocol {
        public let queryEncodable: SetQueueAttributesRequestQuery?
        public let pathEncodable: String?
        public let bodyEncodable: String?
        public let additionalHeadersEncodable: String?
        public let pathPostfix: String?

        public init(encodable: SetQueueAttributesRequest) {
            self.queryEncodable = encodable.asSimpleQueueModelSetQueueAttributesRequestQuery()
            self.pathEncodable = nil
            self.bodyEncodable = nil
            self.additionalHeadersEncodable = nil
            self.pathPostfix = encodable.queueUrl
        }
    }
/**
 Type to handle the input to the TagQueue operation in a HTTP client.
 */
public struct TagQueueOperationHTTPRequestInput<InputType: Encodable> : HTTPRequestInputProtocol {
        public let queryEncodable: TagQueueRequestQuery?
        public let pathEncodable: String?
        public let bodyEncodable: String?
        public let additionalHeadersEncodable: String?
        public let pathPostfix: String?

        public init(encodable: TagQueueRequest) {
            self.queryEncodable = encodable.asSimpleQueueModelTagQueueRequestQuery()
            self.pathEncodable = nil
            self.bodyEncodable = nil
            self.additionalHeadersEncodable = nil
            self.pathPostfix = encodable.queueUrl
        }
    }
/**
 Type to handle the input to the UntagQueue operation in a HTTP client.
 */
public struct UntagQueueOperationHTTPRequestInput<InputType: Encodable> : HTTPRequestInputProtocol {
        public let queryEncodable: UntagQueueRequestQuery?
        public let pathEncodable: String?
        public let bodyEncodable: String?
        public let additionalHeadersEncodable: String?
        public let pathPostfix: String?

        public init(encodable: UntagQueueRequest) {
            self.queryEncodable = encodable.asSimpleQueueModelUntagQueueRequestQuery()
            self.pathEncodable = nil
            self.bodyEncodable = nil
            self.additionalHeadersEncodable = nil
            self.pathPostfix = encodable.queueUrl
        }
    }
