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
// SimpleQueueInvocationsReporting.swift
// SimpleQueueClient
//

import Foundation
import SmokeHTTPClient
import SmokeAWSHttp
import SimpleQueueModel

/**
 Invocations reporting for the SimpleQueueModel.
 */
public struct SimpleQueueInvocationsReporting<InvocationReportingType: HTTPClientCoreInvocationReporting & Sendable> {
    public let addPermission: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let changeMessageVisibility: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let changeMessageVisibilityBatch: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createQueue: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteMessage: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteMessageBatch: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteQueue: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getQueueAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getQueueUrl: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listDeadLetterSourceQueues: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listQueueTags: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listQueues: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let purgeQueue: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let receiveMessage: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let removePermission: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let sendMessage: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let sendMessageBatch: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let setQueueAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let tagQueue: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let untagQueue: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>

    public init(reporting: InvocationReportingType, operationsReporting: SimpleQueueOperationsReporting) {
        self.addPermission = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.addPermission)
        self.changeMessageVisibility = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.changeMessageVisibility)
        self.changeMessageVisibilityBatch = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.changeMessageVisibilityBatch)
        self.createQueue = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createQueue)
        self.deleteMessage = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteMessage)
        self.deleteMessageBatch = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteMessageBatch)
        self.deleteQueue = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteQueue)
        self.getQueueAttributes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getQueueAttributes)
        self.getQueueUrl = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getQueueUrl)
        self.listDeadLetterSourceQueues = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listDeadLetterSourceQueues)
        self.listQueueTags = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listQueueTags)
        self.listQueues = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listQueues)
        self.purgeQueue = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.purgeQueue)
        self.receiveMessage = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.receiveMessage)
        self.removePermission = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.removePermission)
        self.sendMessage = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.sendMessage)
        self.sendMessageBatch = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.sendMessageBatch)
        self.setQueueAttributes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.setQueueAttributes)
        self.tagQueue = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.tagQueue)
        self.untagQueue = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.untagQueue)
    }
}
