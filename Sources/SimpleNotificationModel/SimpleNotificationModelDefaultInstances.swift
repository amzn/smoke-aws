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
// SimpleNotificationModelDefaultInstances.swift
// SimpleNotificationModel
//

import Foundation

public extension AddPermissionInput {
    /**
     Default instance of the AddPermissionInput structure.
     */
    static let __default: SimpleNotificationModel.AddPermissionInput = {
        let defaultInstance = SimpleNotificationModel.AddPermissionInput(
            aWSAccountId: [],
            actionName: [],
            label: "value",
            topicArn: "value")

        return defaultInstance
    }()
}

public extension AuthorizationErrorException {
    /**
     Default instance of the AuthorizationErrorException structure.
     */
    static let __default: SimpleNotificationModel.AuthorizationErrorException = {
        let defaultInstance = SimpleNotificationModel.AuthorizationErrorException(
            message: nil)

        return defaultInstance
    }()
}

public extension CheckIfPhoneNumberIsOptedOutInput {
    /**
     Default instance of the CheckIfPhoneNumberIsOptedOutInput structure.
     */
    static let __default: SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutInput = {
        let defaultInstance = SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutInput(
            phoneNumber: "value")

        return defaultInstance
    }()
}

public extension CheckIfPhoneNumberIsOptedOutResponse {
    /**
     Default instance of the CheckIfPhoneNumberIsOptedOutResponse structure.
     */
    static let __default: SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutResponse = {
        let defaultInstance = SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutResponse(
            isOptedOut: nil)

        return defaultInstance
    }()
}

public extension CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut {
    /**
     Default instance of the CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut structure.
     */
    static let __default: SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut = {
        let defaultInstance = SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut(
            checkIfPhoneNumberIsOptedOutResult: CheckIfPhoneNumberIsOptedOutResponse.__default)

        return defaultInstance
    }()
}

public extension ConcurrentAccessException {
    /**
     Default instance of the ConcurrentAccessException structure.
     */
    static let __default: SimpleNotificationModel.ConcurrentAccessException = {
        let defaultInstance = SimpleNotificationModel.ConcurrentAccessException(
            message: nil)

        return defaultInstance
    }()
}

public extension ConfirmSubscriptionInput {
    /**
     Default instance of the ConfirmSubscriptionInput structure.
     */
    static let __default: SimpleNotificationModel.ConfirmSubscriptionInput = {
        let defaultInstance = SimpleNotificationModel.ConfirmSubscriptionInput(
            authenticateOnUnsubscribe: nil,
            token: "value",
            topicArn: "value")

        return defaultInstance
    }()
}

public extension ConfirmSubscriptionResponse {
    /**
     Default instance of the ConfirmSubscriptionResponse structure.
     */
    static let __default: SimpleNotificationModel.ConfirmSubscriptionResponse = {
        let defaultInstance = SimpleNotificationModel.ConfirmSubscriptionResponse(
            subscriptionArn: nil)

        return defaultInstance
    }()
}

public extension ConfirmSubscriptionResponseForConfirmSubscription {
    /**
     Default instance of the ConfirmSubscriptionResponseForConfirmSubscription structure.
     */
    static let __default: SimpleNotificationModel.ConfirmSubscriptionResponseForConfirmSubscription = {
        let defaultInstance = SimpleNotificationModel.ConfirmSubscriptionResponseForConfirmSubscription(
            confirmSubscriptionResult: ConfirmSubscriptionResponse.__default)

        return defaultInstance
    }()
}

public extension CreateEndpointResponse {
    /**
     Default instance of the CreateEndpointResponse structure.
     */
    static let __default: SimpleNotificationModel.CreateEndpointResponse = {
        let defaultInstance = SimpleNotificationModel.CreateEndpointResponse(
            endpointArn: nil)

        return defaultInstance
    }()
}

public extension CreateEndpointResponseForCreatePlatformEndpoint {
    /**
     Default instance of the CreateEndpointResponseForCreatePlatformEndpoint structure.
     */
    static let __default: SimpleNotificationModel.CreateEndpointResponseForCreatePlatformEndpoint = {
        let defaultInstance = SimpleNotificationModel.CreateEndpointResponseForCreatePlatformEndpoint(
            createPlatformEndpointResult: CreateEndpointResponse.__default)

        return defaultInstance
    }()
}

public extension CreatePlatformApplicationInput {
    /**
     Default instance of the CreatePlatformApplicationInput structure.
     */
    static let __default: SimpleNotificationModel.CreatePlatformApplicationInput = {
        let defaultInstance = SimpleNotificationModel.CreatePlatformApplicationInput(
            attributes: [:],
            name: "value",
            platform: "value")

        return defaultInstance
    }()
}

public extension CreatePlatformApplicationResponse {
    /**
     Default instance of the CreatePlatformApplicationResponse structure.
     */
    static let __default: SimpleNotificationModel.CreatePlatformApplicationResponse = {
        let defaultInstance = SimpleNotificationModel.CreatePlatformApplicationResponse(
            platformApplicationArn: nil)

        return defaultInstance
    }()
}

public extension CreatePlatformApplicationResponseForCreatePlatformApplication {
    /**
     Default instance of the CreatePlatformApplicationResponseForCreatePlatformApplication structure.
     */
    static let __default: SimpleNotificationModel.CreatePlatformApplicationResponseForCreatePlatformApplication = {
        let defaultInstance = SimpleNotificationModel.CreatePlatformApplicationResponseForCreatePlatformApplication(
            createPlatformApplicationResult: CreatePlatformApplicationResponse.__default)

        return defaultInstance
    }()
}

public extension CreatePlatformEndpointInput {
    /**
     Default instance of the CreatePlatformEndpointInput structure.
     */
    static let __default: SimpleNotificationModel.CreatePlatformEndpointInput = {
        let defaultInstance = SimpleNotificationModel.CreatePlatformEndpointInput(
            attributes: nil,
            customUserData: nil,
            platformApplicationArn: "value",
            token: "value")

        return defaultInstance
    }()
}

public extension CreateTopicInput {
    /**
     Default instance of the CreateTopicInput structure.
     */
    static let __default: SimpleNotificationModel.CreateTopicInput = {
        let defaultInstance = SimpleNotificationModel.CreateTopicInput(
            attributes: nil,
            name: "value",
            tags: nil)

        return defaultInstance
    }()
}

public extension CreateTopicResponse {
    /**
     Default instance of the CreateTopicResponse structure.
     */
    static let __default: SimpleNotificationModel.CreateTopicResponse = {
        let defaultInstance = SimpleNotificationModel.CreateTopicResponse(
            topicArn: nil)

        return defaultInstance
    }()
}

public extension CreateTopicResponseForCreateTopic {
    /**
     Default instance of the CreateTopicResponseForCreateTopic structure.
     */
    static let __default: SimpleNotificationModel.CreateTopicResponseForCreateTopic = {
        let defaultInstance = SimpleNotificationModel.CreateTopicResponseForCreateTopic(
            createTopicResult: CreateTopicResponse.__default)

        return defaultInstance
    }()
}

public extension DeleteEndpointInput {
    /**
     Default instance of the DeleteEndpointInput structure.
     */
    static let __default: SimpleNotificationModel.DeleteEndpointInput = {
        let defaultInstance = SimpleNotificationModel.DeleteEndpointInput(
            endpointArn: "value")

        return defaultInstance
    }()
}

public extension DeletePlatformApplicationInput {
    /**
     Default instance of the DeletePlatformApplicationInput structure.
     */
    static let __default: SimpleNotificationModel.DeletePlatformApplicationInput = {
        let defaultInstance = SimpleNotificationModel.DeletePlatformApplicationInput(
            platformApplicationArn: "value")

        return defaultInstance
    }()
}

public extension DeleteTopicInput {
    /**
     Default instance of the DeleteTopicInput structure.
     */
    static let __default: SimpleNotificationModel.DeleteTopicInput = {
        let defaultInstance = SimpleNotificationModel.DeleteTopicInput(
            topicArn: "value")

        return defaultInstance
    }()
}

public extension Endpoint {
    /**
     Default instance of the Endpoint structure.
     */
    static let __default: SimpleNotificationModel.Endpoint = {
        let defaultInstance = SimpleNotificationModel.Endpoint(
            attributes: nil,
            endpointArn: nil)

        return defaultInstance
    }()
}

public extension EndpointDisabledException {
    /**
     Default instance of the EndpointDisabledException structure.
     */
    static let __default: SimpleNotificationModel.EndpointDisabledException = {
        let defaultInstance = SimpleNotificationModel.EndpointDisabledException(
            message: nil)

        return defaultInstance
    }()
}

public extension FilterPolicyLimitExceededException {
    /**
     Default instance of the FilterPolicyLimitExceededException structure.
     */
    static let __default: SimpleNotificationModel.FilterPolicyLimitExceededException = {
        let defaultInstance = SimpleNotificationModel.FilterPolicyLimitExceededException(
            message: nil)

        return defaultInstance
    }()
}

public extension GetEndpointAttributesInput {
    /**
     Default instance of the GetEndpointAttributesInput structure.
     */
    static let __default: SimpleNotificationModel.GetEndpointAttributesInput = {
        let defaultInstance = SimpleNotificationModel.GetEndpointAttributesInput(
            endpointArn: "value")

        return defaultInstance
    }()
}

public extension GetEndpointAttributesResponse {
    /**
     Default instance of the GetEndpointAttributesResponse structure.
     */
    static let __default: SimpleNotificationModel.GetEndpointAttributesResponse = {
        let defaultInstance = SimpleNotificationModel.GetEndpointAttributesResponse(
            attributes: nil)

        return defaultInstance
    }()
}

public extension GetEndpointAttributesResponseForGetEndpointAttributes {
    /**
     Default instance of the GetEndpointAttributesResponseForGetEndpointAttributes structure.
     */
    static let __default: SimpleNotificationModel.GetEndpointAttributesResponseForGetEndpointAttributes = {
        let defaultInstance = SimpleNotificationModel.GetEndpointAttributesResponseForGetEndpointAttributes(
            getEndpointAttributesResult: GetEndpointAttributesResponse.__default)

        return defaultInstance
    }()
}

public extension GetPlatformApplicationAttributesInput {
    /**
     Default instance of the GetPlatformApplicationAttributesInput structure.
     */
    static let __default: SimpleNotificationModel.GetPlatformApplicationAttributesInput = {
        let defaultInstance = SimpleNotificationModel.GetPlatformApplicationAttributesInput(
            platformApplicationArn: "value")

        return defaultInstance
    }()
}

public extension GetPlatformApplicationAttributesResponse {
    /**
     Default instance of the GetPlatformApplicationAttributesResponse structure.
     */
    static let __default: SimpleNotificationModel.GetPlatformApplicationAttributesResponse = {
        let defaultInstance = SimpleNotificationModel.GetPlatformApplicationAttributesResponse(
            attributes: nil)

        return defaultInstance
    }()
}

public extension GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes {
    /**
     Default instance of the GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes structure.
     */
    static let __default: SimpleNotificationModel.GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes = {
        let defaultInstance = SimpleNotificationModel.GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes(
            getPlatformApplicationAttributesResult: GetPlatformApplicationAttributesResponse.__default)

        return defaultInstance
    }()
}

public extension GetSMSAttributesInput {
    /**
     Default instance of the GetSMSAttributesInput structure.
     */
    static let __default: SimpleNotificationModel.GetSMSAttributesInput = {
        let defaultInstance = SimpleNotificationModel.GetSMSAttributesInput(
            attributes: nil)

        return defaultInstance
    }()
}

public extension GetSMSAttributesResponse {
    /**
     Default instance of the GetSMSAttributesResponse structure.
     */
    static let __default: SimpleNotificationModel.GetSMSAttributesResponse = {
        let defaultInstance = SimpleNotificationModel.GetSMSAttributesResponse(
            attributes: nil)

        return defaultInstance
    }()
}

public extension GetSMSAttributesResponseForGetSMSAttributes {
    /**
     Default instance of the GetSMSAttributesResponseForGetSMSAttributes structure.
     */
    static let __default: SimpleNotificationModel.GetSMSAttributesResponseForGetSMSAttributes = {
        let defaultInstance = SimpleNotificationModel.GetSMSAttributesResponseForGetSMSAttributes(
            getSMSAttributesResult: GetSMSAttributesResponse.__default)

        return defaultInstance
    }()
}

public extension GetSubscriptionAttributesInput {
    /**
     Default instance of the GetSubscriptionAttributesInput structure.
     */
    static let __default: SimpleNotificationModel.GetSubscriptionAttributesInput = {
        let defaultInstance = SimpleNotificationModel.GetSubscriptionAttributesInput(
            subscriptionArn: "value")

        return defaultInstance
    }()
}

public extension GetSubscriptionAttributesResponse {
    /**
     Default instance of the GetSubscriptionAttributesResponse structure.
     */
    static let __default: SimpleNotificationModel.GetSubscriptionAttributesResponse = {
        let defaultInstance = SimpleNotificationModel.GetSubscriptionAttributesResponse(
            attributes: nil)

        return defaultInstance
    }()
}

public extension GetSubscriptionAttributesResponseForGetSubscriptionAttributes {
    /**
     Default instance of the GetSubscriptionAttributesResponseForGetSubscriptionAttributes structure.
     */
    static let __default: SimpleNotificationModel.GetSubscriptionAttributesResponseForGetSubscriptionAttributes = {
        let defaultInstance = SimpleNotificationModel.GetSubscriptionAttributesResponseForGetSubscriptionAttributes(
            getSubscriptionAttributesResult: GetSubscriptionAttributesResponse.__default)

        return defaultInstance
    }()
}

public extension GetTopicAttributesInput {
    /**
     Default instance of the GetTopicAttributesInput structure.
     */
    static let __default: SimpleNotificationModel.GetTopicAttributesInput = {
        let defaultInstance = SimpleNotificationModel.GetTopicAttributesInput(
            topicArn: "value")

        return defaultInstance
    }()
}

public extension GetTopicAttributesResponse {
    /**
     Default instance of the GetTopicAttributesResponse structure.
     */
    static let __default: SimpleNotificationModel.GetTopicAttributesResponse = {
        let defaultInstance = SimpleNotificationModel.GetTopicAttributesResponse(
            attributes: nil)

        return defaultInstance
    }()
}

public extension GetTopicAttributesResponseForGetTopicAttributes {
    /**
     Default instance of the GetTopicAttributesResponseForGetTopicAttributes structure.
     */
    static let __default: SimpleNotificationModel.GetTopicAttributesResponseForGetTopicAttributes = {
        let defaultInstance = SimpleNotificationModel.GetTopicAttributesResponseForGetTopicAttributes(
            getTopicAttributesResult: GetTopicAttributesResponse.__default)

        return defaultInstance
    }()
}

public extension InternalErrorException {
    /**
     Default instance of the InternalErrorException structure.
     */
    static let __default: SimpleNotificationModel.InternalErrorException = {
        let defaultInstance = SimpleNotificationModel.InternalErrorException(
            message: nil)

        return defaultInstance
    }()
}

public extension InvalidParameterException {
    /**
     Default instance of the InvalidParameterException structure.
     */
    static let __default: SimpleNotificationModel.InvalidParameterException = {
        let defaultInstance = SimpleNotificationModel.InvalidParameterException(
            message: nil)

        return defaultInstance
    }()
}

public extension InvalidParameterValueException {
    /**
     Default instance of the InvalidParameterValueException structure.
     */
    static let __default: SimpleNotificationModel.InvalidParameterValueException = {
        let defaultInstance = SimpleNotificationModel.InvalidParameterValueException(
            message: nil)

        return defaultInstance
    }()
}

public extension InvalidSecurityException {
    /**
     Default instance of the InvalidSecurityException structure.
     */
    static let __default: SimpleNotificationModel.InvalidSecurityException = {
        let defaultInstance = SimpleNotificationModel.InvalidSecurityException(
            message: nil)

        return defaultInstance
    }()
}

public extension KMSAccessDeniedException {
    /**
     Default instance of the KMSAccessDeniedException structure.
     */
    static let __default: SimpleNotificationModel.KMSAccessDeniedException = {
        let defaultInstance = SimpleNotificationModel.KMSAccessDeniedException(
            message: nil)

        return defaultInstance
    }()
}

public extension KMSDisabledException {
    /**
     Default instance of the KMSDisabledException structure.
     */
    static let __default: SimpleNotificationModel.KMSDisabledException = {
        let defaultInstance = SimpleNotificationModel.KMSDisabledException(
            message: nil)

        return defaultInstance
    }()
}

public extension KMSInvalidStateException {
    /**
     Default instance of the KMSInvalidStateException structure.
     */
    static let __default: SimpleNotificationModel.KMSInvalidStateException = {
        let defaultInstance = SimpleNotificationModel.KMSInvalidStateException(
            message: nil)

        return defaultInstance
    }()
}

public extension KMSNotFoundException {
    /**
     Default instance of the KMSNotFoundException structure.
     */
    static let __default: SimpleNotificationModel.KMSNotFoundException = {
        let defaultInstance = SimpleNotificationModel.KMSNotFoundException(
            message: nil)

        return defaultInstance
    }()
}

public extension KMSOptInRequired {
    /**
     Default instance of the KMSOptInRequired structure.
     */
    static let __default: SimpleNotificationModel.KMSOptInRequired = {
        let defaultInstance = SimpleNotificationModel.KMSOptInRequired(
            message: nil)

        return defaultInstance
    }()
}

public extension KMSThrottlingException {
    /**
     Default instance of the KMSThrottlingException structure.
     */
    static let __default: SimpleNotificationModel.KMSThrottlingException = {
        let defaultInstance = SimpleNotificationModel.KMSThrottlingException(
            message: nil)

        return defaultInstance
    }()
}

public extension ListEndpointsByPlatformApplicationInput {
    /**
     Default instance of the ListEndpointsByPlatformApplicationInput structure.
     */
    static let __default: SimpleNotificationModel.ListEndpointsByPlatformApplicationInput = {
        let defaultInstance = SimpleNotificationModel.ListEndpointsByPlatformApplicationInput(
            nextToken: nil,
            platformApplicationArn: "value")

        return defaultInstance
    }()
}

public extension ListEndpointsByPlatformApplicationResponse {
    /**
     Default instance of the ListEndpointsByPlatformApplicationResponse structure.
     */
    static let __default: SimpleNotificationModel.ListEndpointsByPlatformApplicationResponse = {
        let defaultInstance = SimpleNotificationModel.ListEndpointsByPlatformApplicationResponse(
            endpoints: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication {
    /**
     Default instance of the ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication structure.
     */
    static let __default: SimpleNotificationModel.ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication = {
        let defaultInstance = SimpleNotificationModel.ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication(
            listEndpointsByPlatformApplicationResult: ListEndpointsByPlatformApplicationResponse.__default)

        return defaultInstance
    }()
}

public extension ListPhoneNumbersOptedOutInput {
    /**
     Default instance of the ListPhoneNumbersOptedOutInput structure.
     */
    static let __default: SimpleNotificationModel.ListPhoneNumbersOptedOutInput = {
        let defaultInstance = SimpleNotificationModel.ListPhoneNumbersOptedOutInput(
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListPhoneNumbersOptedOutResponse {
    /**
     Default instance of the ListPhoneNumbersOptedOutResponse structure.
     */
    static let __default: SimpleNotificationModel.ListPhoneNumbersOptedOutResponse = {
        let defaultInstance = SimpleNotificationModel.ListPhoneNumbersOptedOutResponse(
            nextToken: nil,
            phoneNumbers: nil)

        return defaultInstance
    }()
}

public extension ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut {
    /**
     Default instance of the ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut structure.
     */
    static let __default: SimpleNotificationModel.ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut = {
        let defaultInstance = SimpleNotificationModel.ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut(
            listPhoneNumbersOptedOutResult: ListPhoneNumbersOptedOutResponse.__default)

        return defaultInstance
    }()
}

public extension ListPlatformApplicationsInput {
    /**
     Default instance of the ListPlatformApplicationsInput structure.
     */
    static let __default: SimpleNotificationModel.ListPlatformApplicationsInput = {
        let defaultInstance = SimpleNotificationModel.ListPlatformApplicationsInput(
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListPlatformApplicationsResponse {
    /**
     Default instance of the ListPlatformApplicationsResponse structure.
     */
    static let __default: SimpleNotificationModel.ListPlatformApplicationsResponse = {
        let defaultInstance = SimpleNotificationModel.ListPlatformApplicationsResponse(
            nextToken: nil,
            platformApplications: nil)

        return defaultInstance
    }()
}

public extension ListPlatformApplicationsResponseForListPlatformApplications {
    /**
     Default instance of the ListPlatformApplicationsResponseForListPlatformApplications structure.
     */
    static let __default: SimpleNotificationModel.ListPlatformApplicationsResponseForListPlatformApplications = {
        let defaultInstance = SimpleNotificationModel.ListPlatformApplicationsResponseForListPlatformApplications(
            listPlatformApplicationsResult: ListPlatformApplicationsResponse.__default)

        return defaultInstance
    }()
}

public extension ListSubscriptionsByTopicInput {
    /**
     Default instance of the ListSubscriptionsByTopicInput structure.
     */
    static let __default: SimpleNotificationModel.ListSubscriptionsByTopicInput = {
        let defaultInstance = SimpleNotificationModel.ListSubscriptionsByTopicInput(
            nextToken: nil,
            topicArn: "value")

        return defaultInstance
    }()
}

public extension ListSubscriptionsByTopicResponse {
    /**
     Default instance of the ListSubscriptionsByTopicResponse structure.
     */
    static let __default: SimpleNotificationModel.ListSubscriptionsByTopicResponse = {
        let defaultInstance = SimpleNotificationModel.ListSubscriptionsByTopicResponse(
            nextToken: nil,
            subscriptions: nil)

        return defaultInstance
    }()
}

public extension ListSubscriptionsByTopicResponseForListSubscriptionsByTopic {
    /**
     Default instance of the ListSubscriptionsByTopicResponseForListSubscriptionsByTopic structure.
     */
    static let __default: SimpleNotificationModel.ListSubscriptionsByTopicResponseForListSubscriptionsByTopic = {
        let defaultInstance = SimpleNotificationModel.ListSubscriptionsByTopicResponseForListSubscriptionsByTopic(
            listSubscriptionsByTopicResult: ListSubscriptionsByTopicResponse.__default)

        return defaultInstance
    }()
}

public extension ListSubscriptionsInput {
    /**
     Default instance of the ListSubscriptionsInput structure.
     */
    static let __default: SimpleNotificationModel.ListSubscriptionsInput = {
        let defaultInstance = SimpleNotificationModel.ListSubscriptionsInput(
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListSubscriptionsResponse {
    /**
     Default instance of the ListSubscriptionsResponse structure.
     */
    static let __default: SimpleNotificationModel.ListSubscriptionsResponse = {
        let defaultInstance = SimpleNotificationModel.ListSubscriptionsResponse(
            nextToken: nil,
            subscriptions: nil)

        return defaultInstance
    }()
}

public extension ListSubscriptionsResponseForListSubscriptions {
    /**
     Default instance of the ListSubscriptionsResponseForListSubscriptions structure.
     */
    static let __default: SimpleNotificationModel.ListSubscriptionsResponseForListSubscriptions = {
        let defaultInstance = SimpleNotificationModel.ListSubscriptionsResponseForListSubscriptions(
            listSubscriptionsResult: ListSubscriptionsResponse.__default)

        return defaultInstance
    }()
}

public extension ListTagsForResourceRequest {
    /**
     Default instance of the ListTagsForResourceRequest structure.
     */
    static let __default: SimpleNotificationModel.ListTagsForResourceRequest = {
        let defaultInstance = SimpleNotificationModel.ListTagsForResourceRequest(
            resourceArn: "0")

        return defaultInstance
    }()
}

public extension ListTagsForResourceResponse {
    /**
     Default instance of the ListTagsForResourceResponse structure.
     */
    static let __default: SimpleNotificationModel.ListTagsForResourceResponse = {
        let defaultInstance = SimpleNotificationModel.ListTagsForResourceResponse(
            tags: nil)

        return defaultInstance
    }()
}

public extension ListTagsForResourceResponseForListTagsForResource {
    /**
     Default instance of the ListTagsForResourceResponseForListTagsForResource structure.
     */
    static let __default: SimpleNotificationModel.ListTagsForResourceResponseForListTagsForResource = {
        let defaultInstance = SimpleNotificationModel.ListTagsForResourceResponseForListTagsForResource(
            listTagsForResourceResult: ListTagsForResourceResponse.__default)

        return defaultInstance
    }()
}

public extension ListTopicsInput {
    /**
     Default instance of the ListTopicsInput structure.
     */
    static let __default: SimpleNotificationModel.ListTopicsInput = {
        let defaultInstance = SimpleNotificationModel.ListTopicsInput(
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListTopicsResponse {
    /**
     Default instance of the ListTopicsResponse structure.
     */
    static let __default: SimpleNotificationModel.ListTopicsResponse = {
        let defaultInstance = SimpleNotificationModel.ListTopicsResponse(
            nextToken: nil,
            topics: nil)

        return defaultInstance
    }()
}

public extension ListTopicsResponseForListTopics {
    /**
     Default instance of the ListTopicsResponseForListTopics structure.
     */
    static let __default: SimpleNotificationModel.ListTopicsResponseForListTopics = {
        let defaultInstance = SimpleNotificationModel.ListTopicsResponseForListTopics(
            listTopicsResult: ListTopicsResponse.__default)

        return defaultInstance
    }()
}

public extension MessageAttributeValue {
    /**
     Default instance of the MessageAttributeValue structure.
     */
    static let __default: SimpleNotificationModel.MessageAttributeValue = {
        let defaultInstance = SimpleNotificationModel.MessageAttributeValue(
            binaryValue: nil,
            dataType: "value",
            stringValue: nil)

        return defaultInstance
    }()
}

public extension NotFoundException {
    /**
     Default instance of the NotFoundException structure.
     */
    static let __default: SimpleNotificationModel.NotFoundException = {
        let defaultInstance = SimpleNotificationModel.NotFoundException(
            message: nil)

        return defaultInstance
    }()
}

public extension OptInPhoneNumberInput {
    /**
     Default instance of the OptInPhoneNumberInput structure.
     */
    static let __default: SimpleNotificationModel.OptInPhoneNumberInput = {
        let defaultInstance = SimpleNotificationModel.OptInPhoneNumberInput(
            phoneNumber: "value")

        return defaultInstance
    }()
}

public extension OptInPhoneNumberResponse {
    /**
     Default instance of the OptInPhoneNumberResponse structure.
     */
    static let __default: SimpleNotificationModel.OptInPhoneNumberResponse = {
        let defaultInstance = SimpleNotificationModel.OptInPhoneNumberResponse()

        return defaultInstance
    }()
}

public extension OptInPhoneNumberResponseForOptInPhoneNumber {
    /**
     Default instance of the OptInPhoneNumberResponseForOptInPhoneNumber structure.
     */
    static let __default: SimpleNotificationModel.OptInPhoneNumberResponseForOptInPhoneNumber = {
        let defaultInstance = SimpleNotificationModel.OptInPhoneNumberResponseForOptInPhoneNumber(
            optInPhoneNumberResult: OptInPhoneNumberResponse.__default)

        return defaultInstance
    }()
}

public extension PlatformApplication {
    /**
     Default instance of the PlatformApplication structure.
     */
    static let __default: SimpleNotificationModel.PlatformApplication = {
        let defaultInstance = SimpleNotificationModel.PlatformApplication(
            attributes: nil,
            platformApplicationArn: nil)

        return defaultInstance
    }()
}

public extension PlatformApplicationDisabledException {
    /**
     Default instance of the PlatformApplicationDisabledException structure.
     */
    static let __default: SimpleNotificationModel.PlatformApplicationDisabledException = {
        let defaultInstance = SimpleNotificationModel.PlatformApplicationDisabledException(
            message: nil)

        return defaultInstance
    }()
}

public extension PublishInput {
    /**
     Default instance of the PublishInput structure.
     */
    static let __default: SimpleNotificationModel.PublishInput = {
        let defaultInstance = SimpleNotificationModel.PublishInput(
            message: "value",
            messageAttributes: nil,
            messageDeduplicationId: nil,
            messageGroupId: nil,
            messageStructure: nil,
            phoneNumber: nil,
            subject: nil,
            targetArn: nil,
            topicArn: nil)

        return defaultInstance
    }()
}

public extension PublishResponse {
    /**
     Default instance of the PublishResponse structure.
     */
    static let __default: SimpleNotificationModel.PublishResponse = {
        let defaultInstance = SimpleNotificationModel.PublishResponse(
            messageId: nil,
            sequenceNumber: nil)

        return defaultInstance
    }()
}

public extension PublishResponseForPublish {
    /**
     Default instance of the PublishResponseForPublish structure.
     */
    static let __default: SimpleNotificationModel.PublishResponseForPublish = {
        let defaultInstance = SimpleNotificationModel.PublishResponseForPublish(
            publishResult: PublishResponse.__default)

        return defaultInstance
    }()
}

public extension RemovePermissionInput {
    /**
     Default instance of the RemovePermissionInput structure.
     */
    static let __default: SimpleNotificationModel.RemovePermissionInput = {
        let defaultInstance = SimpleNotificationModel.RemovePermissionInput(
            label: "value",
            topicArn: "value")

        return defaultInstance
    }()
}

public extension ResourceNotFoundException {
    /**
     Default instance of the ResourceNotFoundException structure.
     */
    static let __default: SimpleNotificationModel.ResourceNotFoundException = {
        let defaultInstance = SimpleNotificationModel.ResourceNotFoundException(
            message: nil)

        return defaultInstance
    }()
}

public extension SetEndpointAttributesInput {
    /**
     Default instance of the SetEndpointAttributesInput structure.
     */
    static let __default: SimpleNotificationModel.SetEndpointAttributesInput = {
        let defaultInstance = SimpleNotificationModel.SetEndpointAttributesInput(
            attributes: [:],
            endpointArn: "value")

        return defaultInstance
    }()
}

public extension SetPlatformApplicationAttributesInput {
    /**
     Default instance of the SetPlatformApplicationAttributesInput structure.
     */
    static let __default: SimpleNotificationModel.SetPlatformApplicationAttributesInput = {
        let defaultInstance = SimpleNotificationModel.SetPlatformApplicationAttributesInput(
            attributes: [:],
            platformApplicationArn: "value")

        return defaultInstance
    }()
}

public extension SetSMSAttributesInput {
    /**
     Default instance of the SetSMSAttributesInput structure.
     */
    static let __default: SimpleNotificationModel.SetSMSAttributesInput = {
        let defaultInstance = SimpleNotificationModel.SetSMSAttributesInput(
            attributes: [:])

        return defaultInstance
    }()
}

public extension SetSMSAttributesResponse {
    /**
     Default instance of the SetSMSAttributesResponse structure.
     */
    static let __default: SimpleNotificationModel.SetSMSAttributesResponse = {
        let defaultInstance = SimpleNotificationModel.SetSMSAttributesResponse()

        return defaultInstance
    }()
}

public extension SetSMSAttributesResponseForSetSMSAttributes {
    /**
     Default instance of the SetSMSAttributesResponseForSetSMSAttributes structure.
     */
    static let __default: SimpleNotificationModel.SetSMSAttributesResponseForSetSMSAttributes = {
        let defaultInstance = SimpleNotificationModel.SetSMSAttributesResponseForSetSMSAttributes(
            setSMSAttributesResult: SetSMSAttributesResponse.__default)

        return defaultInstance
    }()
}

public extension SetSubscriptionAttributesInput {
    /**
     Default instance of the SetSubscriptionAttributesInput structure.
     */
    static let __default: SimpleNotificationModel.SetSubscriptionAttributesInput = {
        let defaultInstance = SimpleNotificationModel.SetSubscriptionAttributesInput(
            attributeName: "value",
            attributeValue: nil,
            subscriptionArn: "value")

        return defaultInstance
    }()
}

public extension SetTopicAttributesInput {
    /**
     Default instance of the SetTopicAttributesInput structure.
     */
    static let __default: SimpleNotificationModel.SetTopicAttributesInput = {
        let defaultInstance = SimpleNotificationModel.SetTopicAttributesInput(
            attributeName: "value",
            attributeValue: nil,
            topicArn: "value")

        return defaultInstance
    }()
}

public extension StaleTagException {
    /**
     Default instance of the StaleTagException structure.
     */
    static let __default: SimpleNotificationModel.StaleTagException = {
        let defaultInstance = SimpleNotificationModel.StaleTagException(
            message: nil)

        return defaultInstance
    }()
}

public extension SubscribeInput {
    /**
     Default instance of the SubscribeInput structure.
     */
    static let __default: SimpleNotificationModel.SubscribeInput = {
        let defaultInstance = SimpleNotificationModel.SubscribeInput(
            attributes: nil,
            endpoint: nil,
            protocol: "value",
            returnSubscriptionArn: nil,
            topicArn: "value")

        return defaultInstance
    }()
}

public extension SubscribeResponse {
    /**
     Default instance of the SubscribeResponse structure.
     */
    static let __default: SimpleNotificationModel.SubscribeResponse = {
        let defaultInstance = SimpleNotificationModel.SubscribeResponse(
            subscriptionArn: nil)

        return defaultInstance
    }()
}

public extension SubscribeResponseForSubscribe {
    /**
     Default instance of the SubscribeResponseForSubscribe structure.
     */
    static let __default: SimpleNotificationModel.SubscribeResponseForSubscribe = {
        let defaultInstance = SimpleNotificationModel.SubscribeResponseForSubscribe(
            subscribeResult: SubscribeResponse.__default)

        return defaultInstance
    }()
}

public extension Subscription {
    /**
     Default instance of the Subscription structure.
     */
    static let __default: SimpleNotificationModel.Subscription = {
        let defaultInstance = SimpleNotificationModel.Subscription(
            endpoint: nil,
            owner: nil,
            protocol: nil,
            subscriptionArn: nil,
            topicArn: nil)

        return defaultInstance
    }()
}

public extension SubscriptionLimitExceededException {
    /**
     Default instance of the SubscriptionLimitExceededException structure.
     */
    static let __default: SimpleNotificationModel.SubscriptionLimitExceededException = {
        let defaultInstance = SimpleNotificationModel.SubscriptionLimitExceededException(
            message: nil)

        return defaultInstance
    }()
}

public extension Tag {
    /**
     Default instance of the Tag structure.
     */
    static let __default: SimpleNotificationModel.Tag = {
        let defaultInstance = SimpleNotificationModel.Tag(
            key: "0",
            value: "")

        return defaultInstance
    }()
}

public extension TagLimitExceededException {
    /**
     Default instance of the TagLimitExceededException structure.
     */
    static let __default: SimpleNotificationModel.TagLimitExceededException = {
        let defaultInstance = SimpleNotificationModel.TagLimitExceededException(
            message: nil)

        return defaultInstance
    }()
}

public extension TagPolicyException {
    /**
     Default instance of the TagPolicyException structure.
     */
    static let __default: SimpleNotificationModel.TagPolicyException = {
        let defaultInstance = SimpleNotificationModel.TagPolicyException(
            message: nil)

        return defaultInstance
    }()
}

public extension TagResourceRequest {
    /**
     Default instance of the TagResourceRequest structure.
     */
    static let __default: SimpleNotificationModel.TagResourceRequest = {
        let defaultInstance = SimpleNotificationModel.TagResourceRequest(
            resourceArn: "0",
            tags: [])

        return defaultInstance
    }()
}

public extension TagResourceResponse {
    /**
     Default instance of the TagResourceResponse structure.
     */
    static let __default: SimpleNotificationModel.TagResourceResponse = {
        let defaultInstance = SimpleNotificationModel.TagResourceResponse()

        return defaultInstance
    }()
}

public extension TagResourceResponseForTagResource {
    /**
     Default instance of the TagResourceResponseForTagResource structure.
     */
    static let __default: SimpleNotificationModel.TagResourceResponseForTagResource = {
        let defaultInstance = SimpleNotificationModel.TagResourceResponseForTagResource(
            tagResourceResult: TagResourceResponse.__default)

        return defaultInstance
    }()
}

public extension ThrottledException {
    /**
     Default instance of the ThrottledException structure.
     */
    static let __default: SimpleNotificationModel.ThrottledException = {
        let defaultInstance = SimpleNotificationModel.ThrottledException(
            message: nil)

        return defaultInstance
    }()
}

public extension Topic {
    /**
     Default instance of the Topic structure.
     */
    static let __default: SimpleNotificationModel.Topic = {
        let defaultInstance = SimpleNotificationModel.Topic(
            topicArn: nil)

        return defaultInstance
    }()
}

public extension TopicLimitExceededException {
    /**
     Default instance of the TopicLimitExceededException structure.
     */
    static let __default: SimpleNotificationModel.TopicLimitExceededException = {
        let defaultInstance = SimpleNotificationModel.TopicLimitExceededException(
            message: nil)

        return defaultInstance
    }()
}

public extension UnsubscribeInput {
    /**
     Default instance of the UnsubscribeInput structure.
     */
    static let __default: SimpleNotificationModel.UnsubscribeInput = {
        let defaultInstance = SimpleNotificationModel.UnsubscribeInput(
            subscriptionArn: "value")

        return defaultInstance
    }()
}

public extension UntagResourceRequest {
    /**
     Default instance of the UntagResourceRequest structure.
     */
    static let __default: SimpleNotificationModel.UntagResourceRequest = {
        let defaultInstance = SimpleNotificationModel.UntagResourceRequest(
            resourceArn: "0",
            tagKeys: [])

        return defaultInstance
    }()
}

public extension UntagResourceResponse {
    /**
     Default instance of the UntagResourceResponse structure.
     */
    static let __default: SimpleNotificationModel.UntagResourceResponse = {
        let defaultInstance = SimpleNotificationModel.UntagResourceResponse()

        return defaultInstance
    }()
}

public extension UntagResourceResponseForUntagResource {
    /**
     Default instance of the UntagResourceResponseForUntagResource structure.
     */
    static let __default: SimpleNotificationModel.UntagResourceResponseForUntagResource = {
        let defaultInstance = SimpleNotificationModel.UntagResourceResponseForUntagResource(
            untagResourceResult: UntagResourceResponse.__default)

        return defaultInstance
    }()
}
