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
// SimpleNotificationInvocationsReporting.swift
// SimpleNotificationClient
//

import Foundation
import SmokeHTTPClient
import SmokeAWSHttp
import SimpleNotificationModel

/**
 Invocations reporting for the SimpleNotificationModel.
 */
public struct SimpleNotificationInvocationsReporting<InvocationReportingType: HTTPClientCoreInvocationReporting> {
    public let addPermission: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let checkIfPhoneNumberIsOptedOut: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let confirmSubscription: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createPlatformApplication: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createPlatformEndpoint: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createSMSSandboxPhoneNumber: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let createTopic: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteEndpoint: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deletePlatformApplication: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteSMSSandboxPhoneNumber: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let deleteTopic: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getEndpointAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getPlatformApplicationAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getSMSAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getSMSSandboxAccountStatus: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getSubscriptionAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let getTopicAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listEndpointsByPlatformApplication: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listOriginationNumbers: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listPhoneNumbersOptedOut: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listPlatformApplications: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listSMSSandboxPhoneNumbers: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listSubscriptions: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listSubscriptionsByTopic: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listTagsForResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let listTopics: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let optInPhoneNumber: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let publish: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let publishBatch: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let removePermission: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let setEndpointAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let setPlatformApplicationAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let setSMSAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let setSubscriptionAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let setTopicAttributes: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let subscribe: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let tagResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let unsubscribe: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let untagResource: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    public let verifySMSSandboxPhoneNumber: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>

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
        self.createSMSSandboxPhoneNumber = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createSMSSandboxPhoneNumber)
        self.createTopic = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createTopic)
        self.deleteEndpoint = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteEndpoint)
        self.deletePlatformApplication = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deletePlatformApplication)
        self.deleteSMSSandboxPhoneNumber = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteSMSSandboxPhoneNumber)
        self.deleteTopic = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteTopic)
        self.getEndpointAttributes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getEndpointAttributes)
        self.getPlatformApplicationAttributes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getPlatformApplicationAttributes)
        self.getSMSAttributes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getSMSAttributes)
        self.getSMSSandboxAccountStatus = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getSMSSandboxAccountStatus)
        self.getSubscriptionAttributes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getSubscriptionAttributes)
        self.getTopicAttributes = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getTopicAttributes)
        self.listEndpointsByPlatformApplication = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listEndpointsByPlatformApplication)
        self.listOriginationNumbers = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listOriginationNumbers)
        self.listPhoneNumbersOptedOut = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listPhoneNumbersOptedOut)
        self.listPlatformApplications = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listPlatformApplications)
        self.listSMSSandboxPhoneNumbers = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listSMSSandboxPhoneNumbers)
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
        self.publishBatch = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.publishBatch)
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
        self.verifySMSSandboxPhoneNumber = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.verifySMSSandboxPhoneNumber)
    }
}
