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
// swiftlint:disable type_body_length function_body_length generic_type_name cyclomatic_complexity
// -- Generated Code; do not edit --
//
// SimpleQueueOperationsReporting.swift
// SimpleQueueClient
//

import Foundation
import SmokeAWSCore
import SimpleQueueModel

/**
 Operation reporting for the SimpleQueueModel.
 */
public struct SimpleQueueOperationsReporting {
    let addPermission: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>
    let changeMessageVisibility: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>
    let changeMessageVisibilityBatch: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>
    let createQueue: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>
    let deleteMessage: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>
    let deleteMessageBatch: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>
    let deleteQueue: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>
    let getQueueAttributes: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>
    let getQueueUrl: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>
    let listDeadLetterSourceQueues: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>
    let listQueueTags: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>
    let listQueues: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>
    let purgeQueue: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>
    let receiveMessage: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>
    let removePermission: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>
    let sendMessage: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>
    let sendMessageBatch: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>
    let setQueueAttributes: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>
    let tagQueue: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>
    let untagQueue: StandardSmokeAWSOperationReporting<SimpleQueueModelOperations>

    public init(clientName: String, reportingConfiguration: SmokeAWSClientReportingConfiguration<SimpleQueueModelOperations>) {
        self.addPermission = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .addPermission, configuration: reportingConfiguration)
        self.changeMessageVisibility = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .changeMessageVisibility, configuration: reportingConfiguration)
        self.changeMessageVisibilityBatch = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .changeMessageVisibilityBatch, configuration: reportingConfiguration)
        self.createQueue = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createQueue, configuration: reportingConfiguration)
        self.deleteMessage = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteMessage, configuration: reportingConfiguration)
        self.deleteMessageBatch = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteMessageBatch, configuration: reportingConfiguration)
        self.deleteQueue = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteQueue, configuration: reportingConfiguration)
        self.getQueueAttributes = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getQueueAttributes, configuration: reportingConfiguration)
        self.getQueueUrl = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getQueueUrl, configuration: reportingConfiguration)
        self.listDeadLetterSourceQueues = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listDeadLetterSourceQueues, configuration: reportingConfiguration)
        self.listQueueTags = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listQueueTags, configuration: reportingConfiguration)
        self.listQueues = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listQueues, configuration: reportingConfiguration)
        self.purgeQueue = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .purgeQueue, configuration: reportingConfiguration)
        self.receiveMessage = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .receiveMessage, configuration: reportingConfiguration)
        self.removePermission = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .removePermission, configuration: reportingConfiguration)
        self.sendMessage = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .sendMessage, configuration: reportingConfiguration)
        self.sendMessageBatch = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .sendMessageBatch, configuration: reportingConfiguration)
        self.setQueueAttributes = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .setQueueAttributes, configuration: reportingConfiguration)
        self.tagQueue = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .tagQueue, configuration: reportingConfiguration)
        self.untagQueue = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .untagQueue, configuration: reportingConfiguration)
    }
}
