// Copyright 2018-2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
// SimpleNotificationInvocationsReporting.swift
// SimpleNotificationClient
//

import Foundation
import SmokeAWSCore
import SmokeAWSHttp
import SimpleNotificationModel

/**
 Operation reporting for the SimpleNotificationModel.
 */
public struct SimpleNotificationInvocationsReporting<InvocationReportingType: SmokeAWSInvocationReporting> {
    let addPermission: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let checkIfPhoneNumberIsOptedOut: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let confirmSubscription: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createPlatformApplication: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createPlatformEndpoint: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createTopic: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteEndpoint: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deletePlatformApplication: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteTopic: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getEndpointAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getPlatformApplicationAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getSMSAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getSubscriptionAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getTopicAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listEndpointsByPlatformApplication: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listPhoneNumbersOptedOut: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listPlatformApplications: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listSubscriptions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listSubscriptionsByTopic: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listTagsForResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listTopics: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let optInPhoneNumber: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let publish: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let removePermission: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let setEndpointAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let setPlatformApplicationAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let setSMSAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let setSubscriptionAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let setTopicAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let subscribe: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let tagResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let unsubscribe: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let untagResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>

    public init(reporting: InvocationReportingType, operationsReporting: SimpleNotificationOperationsReporting) {
        self.addPermission = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.addPermission)
        self.checkIfPhoneNumberIsOptedOut = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.checkIfPhoneNumberIsOptedOut)
        self.confirmSubscription = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.confirmSubscription)
        self.createPlatformApplication = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createPlatformApplication)
        self.createPlatformEndpoint = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createPlatformEndpoint)
        self.createTopic = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createTopic)
        self.deleteEndpoint = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteEndpoint)
        self.deletePlatformApplication = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deletePlatformApplication)
        self.deleteTopic = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteTopic)
        self.getEndpointAttributes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getEndpointAttributes)
        self.getPlatformApplicationAttributes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getPlatformApplicationAttributes)
        self.getSMSAttributes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getSMSAttributes)
        self.getSubscriptionAttributes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getSubscriptionAttributes)
        self.getTopicAttributes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getTopicAttributes)
        self.listEndpointsByPlatformApplication = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listEndpointsByPlatformApplication)
        self.listPhoneNumbersOptedOut = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listPhoneNumbersOptedOut)
        self.listPlatformApplications = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listPlatformApplications)
        self.listSubscriptions = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listSubscriptions)
        self.listSubscriptionsByTopic = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listSubscriptionsByTopic)
        self.listTagsForResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listTagsForResource)
        self.listTopics = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listTopics)
        self.optInPhoneNumber = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.optInPhoneNumber)
        self.publish = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.publish)
        self.removePermission = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.removePermission)
        self.setEndpointAttributes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.setEndpointAttributes)
        self.setPlatformApplicationAttributes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.setPlatformApplicationAttributes)
        self.setSMSAttributes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.setSMSAttributes)
        self.setSubscriptionAttributes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.setSubscriptionAttributes)
        self.setTopicAttributes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.setTopicAttributes)
        self.subscribe = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.subscribe)
        self.tagResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.tagResource)
        self.unsubscribe = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.unsubscribe)
        self.untagResource = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.untagResource)
    }
}
