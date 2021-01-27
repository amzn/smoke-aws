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
// SimpleNotificationOperationsReporting.swift
// SimpleNotificationClient
//

import Foundation
import SmokeAWSCore
import SimpleNotificationModel

/**
 Operation reporting for the SimpleNotificationModel.
 */
public struct SimpleNotificationOperationsReporting {
    let addPermission: StandardSmokeAWSOperationReporting<SimpleNotificationModelOperations>
    let checkIfPhoneNumberIsOptedOut: StandardSmokeAWSOperationReporting<SimpleNotificationModelOperations>
    let confirmSubscription: StandardSmokeAWSOperationReporting<SimpleNotificationModelOperations>
    let createPlatformApplication: StandardSmokeAWSOperationReporting<SimpleNotificationModelOperations>
    let createPlatformEndpoint: StandardSmokeAWSOperationReporting<SimpleNotificationModelOperations>
    let createTopic: StandardSmokeAWSOperationReporting<SimpleNotificationModelOperations>
    let deleteEndpoint: StandardSmokeAWSOperationReporting<SimpleNotificationModelOperations>
    let deletePlatformApplication: StandardSmokeAWSOperationReporting<SimpleNotificationModelOperations>
    let deleteTopic: StandardSmokeAWSOperationReporting<SimpleNotificationModelOperations>
    let getEndpointAttributes: StandardSmokeAWSOperationReporting<SimpleNotificationModelOperations>
    let getPlatformApplicationAttributes: StandardSmokeAWSOperationReporting<SimpleNotificationModelOperations>
    let getSMSAttributes: StandardSmokeAWSOperationReporting<SimpleNotificationModelOperations>
    let getSubscriptionAttributes: StandardSmokeAWSOperationReporting<SimpleNotificationModelOperations>
    let getTopicAttributes: StandardSmokeAWSOperationReporting<SimpleNotificationModelOperations>
    let listEndpointsByPlatformApplication: StandardSmokeAWSOperationReporting<SimpleNotificationModelOperations>
    let listPhoneNumbersOptedOut: StandardSmokeAWSOperationReporting<SimpleNotificationModelOperations>
    let listPlatformApplications: StandardSmokeAWSOperationReporting<SimpleNotificationModelOperations>
    let listSubscriptions: StandardSmokeAWSOperationReporting<SimpleNotificationModelOperations>
    let listSubscriptionsByTopic: StandardSmokeAWSOperationReporting<SimpleNotificationModelOperations>
    let listTagsForResource: StandardSmokeAWSOperationReporting<SimpleNotificationModelOperations>
    let listTopics: StandardSmokeAWSOperationReporting<SimpleNotificationModelOperations>
    let optInPhoneNumber: StandardSmokeAWSOperationReporting<SimpleNotificationModelOperations>
    let publish: StandardSmokeAWSOperationReporting<SimpleNotificationModelOperations>
    let removePermission: StandardSmokeAWSOperationReporting<SimpleNotificationModelOperations>
    let setEndpointAttributes: StandardSmokeAWSOperationReporting<SimpleNotificationModelOperations>
    let setPlatformApplicationAttributes: StandardSmokeAWSOperationReporting<SimpleNotificationModelOperations>
    let setSMSAttributes: StandardSmokeAWSOperationReporting<SimpleNotificationModelOperations>
    let setSubscriptionAttributes: StandardSmokeAWSOperationReporting<SimpleNotificationModelOperations>
    let setTopicAttributes: StandardSmokeAWSOperationReporting<SimpleNotificationModelOperations>
    let subscribe: StandardSmokeAWSOperationReporting<SimpleNotificationModelOperations>
    let tagResource: StandardSmokeAWSOperationReporting<SimpleNotificationModelOperations>
    let unsubscribe: StandardSmokeAWSOperationReporting<SimpleNotificationModelOperations>
    let untagResource: StandardSmokeAWSOperationReporting<SimpleNotificationModelOperations>

    public init(clientName: String, reportingConfiguration: SmokeAWSClientReportingConfiguration<SimpleNotificationModelOperations>) {
        self.addPermission = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .addPermission, configuration: reportingConfiguration)
        self.checkIfPhoneNumberIsOptedOut = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .checkIfPhoneNumberIsOptedOut, configuration: reportingConfiguration)
        self.confirmSubscription = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .confirmSubscription, configuration: reportingConfiguration)
        self.createPlatformApplication = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createPlatformApplication, configuration: reportingConfiguration)
        self.createPlatformEndpoint = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createPlatformEndpoint, configuration: reportingConfiguration)
        self.createTopic = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createTopic, configuration: reportingConfiguration)
        self.deleteEndpoint = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteEndpoint, configuration: reportingConfiguration)
        self.deletePlatformApplication = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deletePlatformApplication, configuration: reportingConfiguration)
        self.deleteTopic = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteTopic, configuration: reportingConfiguration)
        self.getEndpointAttributes = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getEndpointAttributes, configuration: reportingConfiguration)
        self.getPlatformApplicationAttributes = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getPlatformApplicationAttributes, configuration: reportingConfiguration)
        self.getSMSAttributes = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getSMSAttributes, configuration: reportingConfiguration)
        self.getSubscriptionAttributes = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getSubscriptionAttributes, configuration: reportingConfiguration)
        self.getTopicAttributes = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getTopicAttributes, configuration: reportingConfiguration)
        self.listEndpointsByPlatformApplication = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listEndpointsByPlatformApplication, configuration: reportingConfiguration)
        self.listPhoneNumbersOptedOut = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listPhoneNumbersOptedOut, configuration: reportingConfiguration)
        self.listPlatformApplications = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listPlatformApplications, configuration: reportingConfiguration)
        self.listSubscriptions = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listSubscriptions, configuration: reportingConfiguration)
        self.listSubscriptionsByTopic = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listSubscriptionsByTopic, configuration: reportingConfiguration)
        self.listTagsForResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listTagsForResource, configuration: reportingConfiguration)
        self.listTopics = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listTopics, configuration: reportingConfiguration)
        self.optInPhoneNumber = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .optInPhoneNumber, configuration: reportingConfiguration)
        self.publish = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .publish, configuration: reportingConfiguration)
        self.removePermission = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .removePermission, configuration: reportingConfiguration)
        self.setEndpointAttributes = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .setEndpointAttributes, configuration: reportingConfiguration)
        self.setPlatformApplicationAttributes = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .setPlatformApplicationAttributes, configuration: reportingConfiguration)
        self.setSMSAttributes = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .setSMSAttributes, configuration: reportingConfiguration)
        self.setSubscriptionAttributes = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .setSubscriptionAttributes, configuration: reportingConfiguration)
        self.setTopicAttributes = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .setTopicAttributes, configuration: reportingConfiguration)
        self.subscribe = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .subscribe, configuration: reportingConfiguration)
        self.tagResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .tagResource, configuration: reportingConfiguration)
        self.unsubscribe = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .unsubscribe, configuration: reportingConfiguration)
        self.untagResource = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .untagResource, configuration: reportingConfiguration)
    }
}
