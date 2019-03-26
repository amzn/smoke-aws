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
// SimpleNotificationModelStructures.swift
// SimpleNotificationModel
//

import Foundation

public struct AddPermissionInput: Codable, Equatable {
    public var aWSAccountId: DelegatesList
    public var actionName: ActionsList
    public var label: Label
    public var topicArn: TopicARN

    public init(aWSAccountId: DelegatesList,
                actionName: ActionsList,
                label: Label,
                topicArn: TopicARN) {
        self.aWSAccountId = aWSAccountId
        self.actionName = actionName
        self.label = label
        self.topicArn = topicArn
    }

    enum CodingKeys: String, CodingKey {
        case aWSAccountId = "AWSAccountId"
        case actionName = "ActionName"
        case label = "Label"
        case topicArn = "TopicArn"
    }

    public func validate() throws {
    }
}

public struct AuthorizationErrorException: Codable, Equatable {
    public var message: String?

    public init(message: String? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message = "Message"
    }

    public func validate() throws {
    }
}

public struct CheckIfPhoneNumberIsOptedOutInput: Codable, Equatable {
    public var phoneNumber: PhoneNumber

    public init(phoneNumber: PhoneNumber) {
        self.phoneNumber = phoneNumber
    }

    enum CodingKeys: String, CodingKey {
        case phoneNumber
    }

    public func validate() throws {
    }
}

public struct CheckIfPhoneNumberIsOptedOutResponse: Codable, Equatable {
    public var isOptedOut: Boolean?

    public init(isOptedOut: Boolean? = nil) {
        self.isOptedOut = isOptedOut
    }

    enum CodingKeys: String, CodingKey {
        case isOptedOut
    }

    public func validate() throws {
    }
}

public struct CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut: Codable, Equatable {
    public var checkIfPhoneNumberIsOptedOutResult: CheckIfPhoneNumberIsOptedOutResponse

    public init(checkIfPhoneNumberIsOptedOutResult: CheckIfPhoneNumberIsOptedOutResponse) {
        self.checkIfPhoneNumberIsOptedOutResult = checkIfPhoneNumberIsOptedOutResult
    }

    enum CodingKeys: String, CodingKey {
        case checkIfPhoneNumberIsOptedOutResult = "CheckIfPhoneNumberIsOptedOutResult"
    }

    public func validate() throws {
        try checkIfPhoneNumberIsOptedOutResult.validate()
    }
}

public struct ConfirmSubscriptionInput: Codable, Equatable {
    public var authenticateOnUnsubscribe: AuthenticateOnUnsubscribe?
    public var token: Token
    public var topicArn: TopicARN

    public init(authenticateOnUnsubscribe: AuthenticateOnUnsubscribe? = nil,
                token: Token,
                topicArn: TopicARN) {
        self.authenticateOnUnsubscribe = authenticateOnUnsubscribe
        self.token = token
        self.topicArn = topicArn
    }

    enum CodingKeys: String, CodingKey {
        case authenticateOnUnsubscribe = "AuthenticateOnUnsubscribe"
        case token = "Token"
        case topicArn = "TopicArn"
    }

    public func validate() throws {
    }
}

public struct ConfirmSubscriptionResponse: Codable, Equatable {
    public var subscriptionArn: SubscriptionARN?

    public init(subscriptionArn: SubscriptionARN? = nil) {
        self.subscriptionArn = subscriptionArn
    }

    enum CodingKeys: String, CodingKey {
        case subscriptionArn = "SubscriptionArn"
    }

    public func validate() throws {
    }
}

public struct ConfirmSubscriptionResponseForConfirmSubscription: Codable, Equatable {
    public var confirmSubscriptionResult: ConfirmSubscriptionResponse

    public init(confirmSubscriptionResult: ConfirmSubscriptionResponse) {
        self.confirmSubscriptionResult = confirmSubscriptionResult
    }

    enum CodingKeys: String, CodingKey {
        case confirmSubscriptionResult = "ConfirmSubscriptionResult"
    }

    public func validate() throws {
        try confirmSubscriptionResult.validate()
    }
}

public struct CreateEndpointResponse: Codable, Equatable {
    public var endpointArn: String?

    public init(endpointArn: String? = nil) {
        self.endpointArn = endpointArn
    }

    enum CodingKeys: String, CodingKey {
        case endpointArn = "EndpointArn"
    }

    public func validate() throws {
    }
}

public struct CreateEndpointResponseForCreatePlatformEndpoint: Codable, Equatable {
    public var createPlatformEndpointResult: CreateEndpointResponse

    public init(createPlatformEndpointResult: CreateEndpointResponse) {
        self.createPlatformEndpointResult = createPlatformEndpointResult
    }

    enum CodingKeys: String, CodingKey {
        case createPlatformEndpointResult = "CreatePlatformEndpointResult"
    }

    public func validate() throws {
        try createPlatformEndpointResult.validate()
    }
}

public struct CreatePlatformApplicationInput: Codable, Equatable {
    public var attributes: MapStringToString
    public var name: String
    public var platform: String

    public init(attributes: MapStringToString,
                name: String,
                platform: String) {
        self.attributes = attributes
        self.name = name
        self.platform = platform
    }

    enum CodingKeys: String, CodingKey {
        case attributes = "Attributes"
        case name = "Name"
        case platform = "Platform"
    }

    public func validate() throws {
    }
}

public struct CreatePlatformApplicationResponse: Codable, Equatable {
    public var platformApplicationArn: String?

    public init(platformApplicationArn: String? = nil) {
        self.platformApplicationArn = platformApplicationArn
    }

    enum CodingKeys: String, CodingKey {
        case platformApplicationArn = "PlatformApplicationArn"
    }

    public func validate() throws {
    }
}

public struct CreatePlatformApplicationResponseForCreatePlatformApplication: Codable, Equatable {
    public var createPlatformApplicationResult: CreatePlatformApplicationResponse

    public init(createPlatformApplicationResult: CreatePlatformApplicationResponse) {
        self.createPlatformApplicationResult = createPlatformApplicationResult
    }

    enum CodingKeys: String, CodingKey {
        case createPlatformApplicationResult = "CreatePlatformApplicationResult"
    }

    public func validate() throws {
        try createPlatformApplicationResult.validate()
    }
}

public struct CreatePlatformEndpointInput: Codable, Equatable {
    public var attributes: MapStringToString?
    public var customUserData: String?
    public var platformApplicationArn: String
    public var token: String

    public init(attributes: MapStringToString? = nil,
                customUserData: String? = nil,
                platformApplicationArn: String,
                token: String) {
        self.attributes = attributes
        self.customUserData = customUserData
        self.platformApplicationArn = platformApplicationArn
        self.token = token
    }

    enum CodingKeys: String, CodingKey {
        case attributes = "Attributes"
        case customUserData = "CustomUserData"
        case platformApplicationArn = "PlatformApplicationArn"
        case token = "Token"
    }

    public func validate() throws {
    }
}

public struct CreateTopicInput: Codable, Equatable {
    public var attributes: TopicAttributesMap?
    public var name: TopicName

    public init(attributes: TopicAttributesMap? = nil,
                name: TopicName) {
        self.attributes = attributes
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case attributes = "Attributes"
        case name = "Name"
    }

    public func validate() throws {
    }
}

public struct CreateTopicResponse: Codable, Equatable {
    public var topicArn: TopicARN?

    public init(topicArn: TopicARN? = nil) {
        self.topicArn = topicArn
    }

    enum CodingKeys: String, CodingKey {
        case topicArn = "TopicArn"
    }

    public func validate() throws {
    }
}

public struct CreateTopicResponseForCreateTopic: Codable, Equatable {
    public var createTopicResult: CreateTopicResponse

    public init(createTopicResult: CreateTopicResponse) {
        self.createTopicResult = createTopicResult
    }

    enum CodingKeys: String, CodingKey {
        case createTopicResult = "CreateTopicResult"
    }

    public func validate() throws {
        try createTopicResult.validate()
    }
}

public struct DeleteEndpointInput: Codable, Equatable {
    public var endpointArn: String

    public init(endpointArn: String) {
        self.endpointArn = endpointArn
    }

    enum CodingKeys: String, CodingKey {
        case endpointArn = "EndpointArn"
    }

    public func validate() throws {
    }
}

public struct DeletePlatformApplicationInput: Codable, Equatable {
    public var platformApplicationArn: String

    public init(platformApplicationArn: String) {
        self.platformApplicationArn = platformApplicationArn
    }

    enum CodingKeys: String, CodingKey {
        case platformApplicationArn = "PlatformApplicationArn"
    }

    public func validate() throws {
    }
}

public struct DeleteTopicInput: Codable, Equatable {
    public var topicArn: TopicARN

    public init(topicArn: TopicARN) {
        self.topicArn = topicArn
    }

    enum CodingKeys: String, CodingKey {
        case topicArn = "TopicArn"
    }

    public func validate() throws {
    }
}

public struct Endpoint: Codable, Equatable {
    public var attributes: MapStringToString?
    public var endpointArn: String?

    public init(attributes: MapStringToString? = nil,
                endpointArn: String? = nil) {
        self.attributes = attributes
        self.endpointArn = endpointArn
    }

    enum CodingKeys: String, CodingKey {
        case attributes = "Attributes"
        case endpointArn = "EndpointArn"
    }

    public func validate() throws {
    }
}

public struct EndpointDisabledException: Codable, Equatable {
    public var message: String?

    public init(message: String? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message = "Message"
    }

    public func validate() throws {
    }
}

public struct FilterPolicyLimitExceededException: Codable, Equatable {
    public var message: String?

    public init(message: String? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message = "Message"
    }

    public func validate() throws {
    }
}

public struct GetEndpointAttributesInput: Codable, Equatable {
    public var endpointArn: String

    public init(endpointArn: String) {
        self.endpointArn = endpointArn
    }

    enum CodingKeys: String, CodingKey {
        case endpointArn = "EndpointArn"
    }

    public func validate() throws {
    }
}

public struct GetEndpointAttributesResponse: Codable, Equatable {
    public var attributes: MapStringToString?

    public init(attributes: MapStringToString? = nil) {
        self.attributes = attributes
    }

    enum CodingKeys: String, CodingKey {
        case attributes = "Attributes"
    }

    public func validate() throws {
    }
}

public struct GetEndpointAttributesResponseForGetEndpointAttributes: Codable, Equatable {
    public var getEndpointAttributesResult: GetEndpointAttributesResponse

    public init(getEndpointAttributesResult: GetEndpointAttributesResponse) {
        self.getEndpointAttributesResult = getEndpointAttributesResult
    }

    enum CodingKeys: String, CodingKey {
        case getEndpointAttributesResult = "GetEndpointAttributesResult"
    }

    public func validate() throws {
        try getEndpointAttributesResult.validate()
    }
}

public struct GetPlatformApplicationAttributesInput: Codable, Equatable {
    public var platformApplicationArn: String

    public init(platformApplicationArn: String) {
        self.platformApplicationArn = platformApplicationArn
    }

    enum CodingKeys: String, CodingKey {
        case platformApplicationArn = "PlatformApplicationArn"
    }

    public func validate() throws {
    }
}

public struct GetPlatformApplicationAttributesResponse: Codable, Equatable {
    public var attributes: MapStringToString?

    public init(attributes: MapStringToString? = nil) {
        self.attributes = attributes
    }

    enum CodingKeys: String, CodingKey {
        case attributes = "Attributes"
    }

    public func validate() throws {
    }
}

public struct GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes: Codable, Equatable {
    public var getPlatformApplicationAttributesResult: GetPlatformApplicationAttributesResponse

    public init(getPlatformApplicationAttributesResult: GetPlatformApplicationAttributesResponse) {
        self.getPlatformApplicationAttributesResult = getPlatformApplicationAttributesResult
    }

    enum CodingKeys: String, CodingKey {
        case getPlatformApplicationAttributesResult = "GetPlatformApplicationAttributesResult"
    }

    public func validate() throws {
        try getPlatformApplicationAttributesResult.validate()
    }
}

public struct GetSMSAttributesInput: Codable, Equatable {
    public var attributes: ListString?

    public init(attributes: ListString? = nil) {
        self.attributes = attributes
    }

    enum CodingKeys: String, CodingKey {
        case attributes
    }

    public func validate() throws {
    }
}

public struct GetSMSAttributesResponse: Codable, Equatable {
    public var attributes: MapStringToString?

    public init(attributes: MapStringToString? = nil) {
        self.attributes = attributes
    }

    enum CodingKeys: String, CodingKey {
        case attributes
    }

    public func validate() throws {
    }
}

public struct GetSMSAttributesResponseForGetSMSAttributes: Codable, Equatable {
    public var getSMSAttributesResult: GetSMSAttributesResponse

    public init(getSMSAttributesResult: GetSMSAttributesResponse) {
        self.getSMSAttributesResult = getSMSAttributesResult
    }

    enum CodingKeys: String, CodingKey {
        case getSMSAttributesResult = "GetSMSAttributesResult"
    }

    public func validate() throws {
        try getSMSAttributesResult.validate()
    }
}

public struct GetSubscriptionAttributesInput: Codable, Equatable {
    public var subscriptionArn: SubscriptionARN

    public init(subscriptionArn: SubscriptionARN) {
        self.subscriptionArn = subscriptionArn
    }

    enum CodingKeys: String, CodingKey {
        case subscriptionArn = "SubscriptionArn"
    }

    public func validate() throws {
    }
}

public struct GetSubscriptionAttributesResponse: Codable, Equatable {
    public var attributes: SubscriptionAttributesMap?

    public init(attributes: SubscriptionAttributesMap? = nil) {
        self.attributes = attributes
    }

    enum CodingKeys: String, CodingKey {
        case attributes = "Attributes"
    }

    public func validate() throws {
    }
}

public struct GetSubscriptionAttributesResponseForGetSubscriptionAttributes: Codable, Equatable {
    public var getSubscriptionAttributesResult: GetSubscriptionAttributesResponse

    public init(getSubscriptionAttributesResult: GetSubscriptionAttributesResponse) {
        self.getSubscriptionAttributesResult = getSubscriptionAttributesResult
    }

    enum CodingKeys: String, CodingKey {
        case getSubscriptionAttributesResult = "GetSubscriptionAttributesResult"
    }

    public func validate() throws {
        try getSubscriptionAttributesResult.validate()
    }
}

public struct GetTopicAttributesInput: Codable, Equatable {
    public var topicArn: TopicARN

    public init(topicArn: TopicARN) {
        self.topicArn = topicArn
    }

    enum CodingKeys: String, CodingKey {
        case topicArn = "TopicArn"
    }

    public func validate() throws {
    }
}

public struct GetTopicAttributesResponse: Codable, Equatable {
    public var attributes: TopicAttributesMap?

    public init(attributes: TopicAttributesMap? = nil) {
        self.attributes = attributes
    }

    enum CodingKeys: String, CodingKey {
        case attributes = "Attributes"
    }

    public func validate() throws {
    }
}

public struct GetTopicAttributesResponseForGetTopicAttributes: Codable, Equatable {
    public var getTopicAttributesResult: GetTopicAttributesResponse

    public init(getTopicAttributesResult: GetTopicAttributesResponse) {
        self.getTopicAttributesResult = getTopicAttributesResult
    }

    enum CodingKeys: String, CodingKey {
        case getTopicAttributesResult = "GetTopicAttributesResult"
    }

    public func validate() throws {
        try getTopicAttributesResult.validate()
    }
}

public struct InternalErrorException: Codable, Equatable {
    public var message: String?

    public init(message: String? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message = "Message"
    }

    public func validate() throws {
    }
}

public struct InvalidParameterException: Codable, Equatable {
    public var message: String?

    public init(message: String? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message = "Message"
    }

    public func validate() throws {
    }
}

public struct InvalidParameterValueException: Codable, Equatable {
    public var message: String?

    public init(message: String? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message = "Message"
    }

    public func validate() throws {
    }
}

public struct InvalidSecurityException: Codable, Equatable {
    public var message: String?

    public init(message: String? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message = "Message"
    }

    public func validate() throws {
    }
}

public struct KMSAccessDeniedException: Codable, Equatable {
    public var message: String?

    public init(message: String? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message = "Message"
    }

    public func validate() throws {
    }
}

public struct KMSDisabledException: Codable, Equatable {
    public var message: String?

    public init(message: String? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message = "Message"
    }

    public func validate() throws {
    }
}

public struct KMSInvalidStateException: Codable, Equatable {
    public var message: String?

    public init(message: String? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message = "Message"
    }

    public func validate() throws {
    }
}

public struct KMSNotFoundException: Codable, Equatable {
    public var message: String?

    public init(message: String? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message = "Message"
    }

    public func validate() throws {
    }
}

public struct KMSOptInRequired: Codable, Equatable {
    public var message: String?

    public init(message: String? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct KMSThrottlingException: Codable, Equatable {
    public var message: String?

    public init(message: String? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message = "Message"
    }

    public func validate() throws {
    }
}

public struct ListEndpointsByPlatformApplicationInput: Codable, Equatable {
    public var nextToken: String?
    public var platformApplicationArn: String

    public init(nextToken: String? = nil,
                platformApplicationArn: String) {
        self.nextToken = nextToken
        self.platformApplicationArn = platformApplicationArn
    }

    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case platformApplicationArn = "PlatformApplicationArn"
    }

    public func validate() throws {
    }
}

public struct ListEndpointsByPlatformApplicationResponse: Codable, Equatable {
    public var endpoints: ListOfEndpoints?
    public var nextToken: String?

    public init(endpoints: ListOfEndpoints? = nil,
                nextToken: String? = nil) {
        self.endpoints = endpoints
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case endpoints = "Endpoints"
        case nextToken = "NextToken"
    }

    public func validate() throws {
    }
}

public struct ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication: Codable, Equatable {
    public var listEndpointsByPlatformApplicationResult: ListEndpointsByPlatformApplicationResponse

    public init(listEndpointsByPlatformApplicationResult: ListEndpointsByPlatformApplicationResponse) {
        self.listEndpointsByPlatformApplicationResult = listEndpointsByPlatformApplicationResult
    }

    enum CodingKeys: String, CodingKey {
        case listEndpointsByPlatformApplicationResult = "ListEndpointsByPlatformApplicationResult"
    }

    public func validate() throws {
        try listEndpointsByPlatformApplicationResult.validate()
    }
}

public struct ListPhoneNumbersOptedOutInput: Codable, Equatable {
    public var nextToken: String?

    public init(nextToken: String? = nil) {
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
    }

    public func validate() throws {
    }
}

public struct ListPhoneNumbersOptedOutResponse: Codable, Equatable {
    public var nextToken: String?
    public var phoneNumbers: PhoneNumberList?

    public init(nextToken: String? = nil,
                phoneNumbers: PhoneNumberList? = nil) {
        self.nextToken = nextToken
        self.phoneNumbers = phoneNumbers
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case phoneNumbers
    }

    public func validate() throws {
    }
}

public struct ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut: Codable, Equatable {
    public var listPhoneNumbersOptedOutResult: ListPhoneNumbersOptedOutResponse

    public init(listPhoneNumbersOptedOutResult: ListPhoneNumbersOptedOutResponse) {
        self.listPhoneNumbersOptedOutResult = listPhoneNumbersOptedOutResult
    }

    enum CodingKeys: String, CodingKey {
        case listPhoneNumbersOptedOutResult = "ListPhoneNumbersOptedOutResult"
    }

    public func validate() throws {
        try listPhoneNumbersOptedOutResult.validate()
    }
}

public struct ListPlatformApplicationsInput: Codable, Equatable {
    public var nextToken: String?

    public init(nextToken: String? = nil) {
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
    }

    public func validate() throws {
    }
}

public struct ListPlatformApplicationsResponse: Codable, Equatable {
    public var nextToken: String?
    public var platformApplications: ListOfPlatformApplications?

    public init(nextToken: String? = nil,
                platformApplications: ListOfPlatformApplications? = nil) {
        self.nextToken = nextToken
        self.platformApplications = platformApplications
    }

    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case platformApplications = "PlatformApplications"
    }

    public func validate() throws {
    }
}

public struct ListPlatformApplicationsResponseForListPlatformApplications: Codable, Equatable {
    public var listPlatformApplicationsResult: ListPlatformApplicationsResponse

    public init(listPlatformApplicationsResult: ListPlatformApplicationsResponse) {
        self.listPlatformApplicationsResult = listPlatformApplicationsResult
    }

    enum CodingKeys: String, CodingKey {
        case listPlatformApplicationsResult = "ListPlatformApplicationsResult"
    }

    public func validate() throws {
        try listPlatformApplicationsResult.validate()
    }
}

public struct ListSubscriptionsByTopicInput: Codable, Equatable {
    public var nextToken: NextToken?
    public var topicArn: TopicARN

    public init(nextToken: NextToken? = nil,
                topicArn: TopicARN) {
        self.nextToken = nextToken
        self.topicArn = topicArn
    }

    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case topicArn = "TopicArn"
    }

    public func validate() throws {
    }
}

public struct ListSubscriptionsByTopicResponse: Codable, Equatable {
    public var nextToken: NextToken?
    public var subscriptions: SubscriptionsList?

    public init(nextToken: NextToken? = nil,
                subscriptions: SubscriptionsList? = nil) {
        self.nextToken = nextToken
        self.subscriptions = subscriptions
    }

    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case subscriptions = "Subscriptions"
    }

    public func validate() throws {
    }
}

public struct ListSubscriptionsByTopicResponseForListSubscriptionsByTopic: Codable, Equatable {
    public var listSubscriptionsByTopicResult: ListSubscriptionsByTopicResponse

    public init(listSubscriptionsByTopicResult: ListSubscriptionsByTopicResponse) {
        self.listSubscriptionsByTopicResult = listSubscriptionsByTopicResult
    }

    enum CodingKeys: String, CodingKey {
        case listSubscriptionsByTopicResult = "ListSubscriptionsByTopicResult"
    }

    public func validate() throws {
        try listSubscriptionsByTopicResult.validate()
    }
}

public struct ListSubscriptionsInput: Codable, Equatable {
    public var nextToken: NextToken?

    public init(nextToken: NextToken? = nil) {
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
    }

    public func validate() throws {
    }
}

public struct ListSubscriptionsResponse: Codable, Equatable {
    public var nextToken: NextToken?
    public var subscriptions: SubscriptionsList?

    public init(nextToken: NextToken? = nil,
                subscriptions: SubscriptionsList? = nil) {
        self.nextToken = nextToken
        self.subscriptions = subscriptions
    }

    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case subscriptions = "Subscriptions"
    }

    public func validate() throws {
    }
}

public struct ListSubscriptionsResponseForListSubscriptions: Codable, Equatable {
    public var listSubscriptionsResult: ListSubscriptionsResponse

    public init(listSubscriptionsResult: ListSubscriptionsResponse) {
        self.listSubscriptionsResult = listSubscriptionsResult
    }

    enum CodingKeys: String, CodingKey {
        case listSubscriptionsResult = "ListSubscriptionsResult"
    }

    public func validate() throws {
        try listSubscriptionsResult.validate()
    }
}

public struct ListTopicsInput: Codable, Equatable {
    public var nextToken: NextToken?

    public init(nextToken: NextToken? = nil) {
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
    }

    public func validate() throws {
    }
}

public struct ListTopicsResponse: Codable, Equatable {
    public var nextToken: NextToken?
    public var topics: TopicsList?

    public init(nextToken: NextToken? = nil,
                topics: TopicsList? = nil) {
        self.nextToken = nextToken
        self.topics = topics
    }

    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case topics = "Topics"
    }

    public func validate() throws {
    }
}

public struct ListTopicsResponseForListTopics: Codable, Equatable {
    public var listTopicsResult: ListTopicsResponse

    public init(listTopicsResult: ListTopicsResponse) {
        self.listTopicsResult = listTopicsResult
    }

    enum CodingKeys: String, CodingKey {
        case listTopicsResult = "ListTopicsResult"
    }

    public func validate() throws {
        try listTopicsResult.validate()
    }
}

public struct MessageAttributeValue: Codable, Equatable {
    public var binaryValue: Binary?
    public var dataType: String
    public var stringValue: String?

    public init(binaryValue: Binary? = nil,
                dataType: String,
                stringValue: String? = nil) {
        self.binaryValue = binaryValue
        self.dataType = dataType
        self.stringValue = stringValue
    }

    enum CodingKeys: String, CodingKey {
        case binaryValue = "BinaryValue"
        case dataType = "DataType"
        case stringValue = "StringValue"
    }

    public func validate() throws {
    }
}

public struct NotFoundException: Codable, Equatable {
    public var message: String?

    public init(message: String? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message = "Message"
    }

    public func validate() throws {
    }
}

public struct OptInPhoneNumberInput: Codable, Equatable {
    public var phoneNumber: PhoneNumber

    public init(phoneNumber: PhoneNumber) {
        self.phoneNumber = phoneNumber
    }

    enum CodingKeys: String, CodingKey {
        case phoneNumber
    }

    public func validate() throws {
    }
}

public struct OptInPhoneNumberResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct OptInPhoneNumberResponseForOptInPhoneNumber: Codable, Equatable {
    public var optInPhoneNumberResult: OptInPhoneNumberResponse

    public init(optInPhoneNumberResult: OptInPhoneNumberResponse) {
        self.optInPhoneNumberResult = optInPhoneNumberResult
    }

    enum CodingKeys: String, CodingKey {
        case optInPhoneNumberResult = "OptInPhoneNumberResult"
    }

    public func validate() throws {
        try optInPhoneNumberResult.validate()
    }
}

public struct PlatformApplication: Codable, Equatable {
    public var attributes: MapStringToString?
    public var platformApplicationArn: String?

    public init(attributes: MapStringToString? = nil,
                platformApplicationArn: String? = nil) {
        self.attributes = attributes
        self.platformApplicationArn = platformApplicationArn
    }

    enum CodingKeys: String, CodingKey {
        case attributes = "Attributes"
        case platformApplicationArn = "PlatformApplicationArn"
    }

    public func validate() throws {
    }
}

public struct PlatformApplicationDisabledException: Codable, Equatable {
    public var message: String?

    public init(message: String? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message = "Message"
    }

    public func validate() throws {
    }
}

public struct PublishInput: Codable, Equatable {
    public var message: Message
    public var messageAttributes: MessageAttributeMap?
    public var messageStructure: MessageStructure?
    public var phoneNumber: String?
    public var subject: Subject?
    public var targetArn: String?
    public var topicArn: TopicARN?

    public init(message: Message,
                messageAttributes: MessageAttributeMap? = nil,
                messageStructure: MessageStructure? = nil,
                phoneNumber: String? = nil,
                subject: Subject? = nil,
                targetArn: String? = nil,
                topicArn: TopicARN? = nil) {
        self.message = message
        self.messageAttributes = messageAttributes
        self.messageStructure = messageStructure
        self.phoneNumber = phoneNumber
        self.subject = subject
        self.targetArn = targetArn
        self.topicArn = topicArn
    }

    enum CodingKeys: String, CodingKey {
        case message = "Message"
        case messageAttributes = "MessageAttributes"
        case messageStructure = "MessageStructure"
        case phoneNumber = "PhoneNumber"
        case subject = "Subject"
        case targetArn = "TargetArn"
        case topicArn = "TopicArn"
    }

    public func validate() throws {
    }
}

public struct PublishResponse: Codable, Equatable {
    public var messageId: MessageId?

    public init(messageId: MessageId? = nil) {
        self.messageId = messageId
    }

    enum CodingKeys: String, CodingKey {
        case messageId = "MessageId"
    }

    public func validate() throws {
    }
}

public struct PublishResponseForPublish: Codable, Equatable {
    public var publishResult: PublishResponse

    public init(publishResult: PublishResponse) {
        self.publishResult = publishResult
    }

    enum CodingKeys: String, CodingKey {
        case publishResult = "PublishResult"
    }

    public func validate() throws {
        try publishResult.validate()
    }
}

public struct RemovePermissionInput: Codable, Equatable {
    public var label: Label
    public var topicArn: TopicARN

    public init(label: Label,
                topicArn: TopicARN) {
        self.label = label
        self.topicArn = topicArn
    }

    enum CodingKeys: String, CodingKey {
        case label = "Label"
        case topicArn = "TopicArn"
    }

    public func validate() throws {
    }
}

public struct SetEndpointAttributesInput: Codable, Equatable {
    public var attributes: MapStringToString
    public var endpointArn: String

    public init(attributes: MapStringToString,
                endpointArn: String) {
        self.attributes = attributes
        self.endpointArn = endpointArn
    }

    enum CodingKeys: String, CodingKey {
        case attributes = "Attributes"
        case endpointArn = "EndpointArn"
    }

    public func validate() throws {
    }
}

public struct SetPlatformApplicationAttributesInput: Codable, Equatable {
    public var attributes: MapStringToString
    public var platformApplicationArn: String

    public init(attributes: MapStringToString,
                platformApplicationArn: String) {
        self.attributes = attributes
        self.platformApplicationArn = platformApplicationArn
    }

    enum CodingKeys: String, CodingKey {
        case attributes = "Attributes"
        case platformApplicationArn = "PlatformApplicationArn"
    }

    public func validate() throws {
    }
}

public struct SetSMSAttributesInput: Codable, Equatable {
    public var attributes: MapStringToString

    public init(attributes: MapStringToString) {
        self.attributes = attributes
    }

    enum CodingKeys: String, CodingKey {
        case attributes
    }

    public func validate() throws {
    }
}

public struct SetSMSAttributesResponse: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct SetSMSAttributesResponseForSetSMSAttributes: Codable, Equatable {
    public var setSMSAttributesResult: SetSMSAttributesResponse

    public init(setSMSAttributesResult: SetSMSAttributesResponse) {
        self.setSMSAttributesResult = setSMSAttributesResult
    }

    enum CodingKeys: String, CodingKey {
        case setSMSAttributesResult = "SetSMSAttributesResult"
    }

    public func validate() throws {
        try setSMSAttributesResult.validate()
    }
}

public struct SetSubscriptionAttributesInput: Codable, Equatable {
    public var attributeName: AttributeName
    public var attributeValue: AttributeValue?
    public var subscriptionArn: SubscriptionARN

    public init(attributeName: AttributeName,
                attributeValue: AttributeValue? = nil,
                subscriptionArn: SubscriptionARN) {
        self.attributeName = attributeName
        self.attributeValue = attributeValue
        self.subscriptionArn = subscriptionArn
    }

    enum CodingKeys: String, CodingKey {
        case attributeName = "AttributeName"
        case attributeValue = "AttributeValue"
        case subscriptionArn = "SubscriptionArn"
    }

    public func validate() throws {
    }
}

public struct SetTopicAttributesInput: Codable, Equatable {
    public var attributeName: AttributeName
    public var attributeValue: AttributeValue?
    public var topicArn: TopicARN

    public init(attributeName: AttributeName,
                attributeValue: AttributeValue? = nil,
                topicArn: TopicARN) {
        self.attributeName = attributeName
        self.attributeValue = attributeValue
        self.topicArn = topicArn
    }

    enum CodingKeys: String, CodingKey {
        case attributeName = "AttributeName"
        case attributeValue = "AttributeValue"
        case topicArn = "TopicArn"
    }

    public func validate() throws {
    }
}

public struct SubscribeInput: Codable, Equatable {
    public var attributes: SubscriptionAttributesMap?
    public var endpoint: EndpointString?
    public var `protocol`: Protocol
    public var returnSubscriptionArn: Boolean?
    public var topicArn: TopicARN

    public init(attributes: SubscriptionAttributesMap? = nil,
                endpoint: EndpointString? = nil,
                `protocol`: Protocol,
                returnSubscriptionArn: Boolean? = nil,
                topicArn: TopicARN) {
        self.attributes = attributes
        self.endpoint = endpoint
        self.`protocol` = `protocol`
        self.returnSubscriptionArn = returnSubscriptionArn
        self.topicArn = topicArn
    }

    enum CodingKeys: String, CodingKey {
        case attributes = "Attributes"
        case endpoint = "Endpoint"
        case `protocol` = "Protocol"
        case returnSubscriptionArn = "ReturnSubscriptionArn"
        case topicArn = "TopicArn"
    }

    public func validate() throws {
    }
}

public struct SubscribeResponse: Codable, Equatable {
    public var subscriptionArn: SubscriptionARN?

    public init(subscriptionArn: SubscriptionARN? = nil) {
        self.subscriptionArn = subscriptionArn
    }

    enum CodingKeys: String, CodingKey {
        case subscriptionArn = "SubscriptionArn"
    }

    public func validate() throws {
    }
}

public struct SubscribeResponseForSubscribe: Codable, Equatable {
    public var subscribeResult: SubscribeResponse

    public init(subscribeResult: SubscribeResponse) {
        self.subscribeResult = subscribeResult
    }

    enum CodingKeys: String, CodingKey {
        case subscribeResult = "SubscribeResult"
    }

    public func validate() throws {
        try subscribeResult.validate()
    }
}

public struct Subscription: Codable, Equatable {
    public var endpoint: EndpointString?
    public var owner: Account?
    public var `protocol`: Protocol?
    public var subscriptionArn: SubscriptionARN?
    public var topicArn: TopicARN?

    public init(endpoint: EndpointString? = nil,
                owner: Account? = nil,
                `protocol`: Protocol? = nil,
                subscriptionArn: SubscriptionARN? = nil,
                topicArn: TopicARN? = nil) {
        self.endpoint = endpoint
        self.owner = owner
        self.`protocol` = `protocol`
        self.subscriptionArn = subscriptionArn
        self.topicArn = topicArn
    }

    enum CodingKeys: String, CodingKey {
        case endpoint = "Endpoint"
        case owner = "Owner"
        case `protocol` = "Protocol"
        case subscriptionArn = "SubscriptionArn"
        case topicArn = "TopicArn"
    }

    public func validate() throws {
    }
}

public struct SubscriptionLimitExceededException: Codable, Equatable {
    public var message: String?

    public init(message: String? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message = "Message"
    }

    public func validate() throws {
    }
}

public struct ThrottledException: Codable, Equatable {
    public var message: String?

    public init(message: String? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message = "Message"
    }

    public func validate() throws {
    }
}

public struct Topic: Codable, Equatable {
    public var topicArn: TopicARN?

    public init(topicArn: TopicARN? = nil) {
        self.topicArn = topicArn
    }

    enum CodingKeys: String, CodingKey {
        case topicArn = "TopicArn"
    }

    public func validate() throws {
    }
}

public struct TopicLimitExceededException: Codable, Equatable {
    public var message: String?

    public init(message: String? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message = "Message"
    }

    public func validate() throws {
    }
}

public struct UnsubscribeInput: Codable, Equatable {
    public var subscriptionArn: SubscriptionARN

    public init(subscriptionArn: SubscriptionARN) {
        self.subscriptionArn = subscriptionArn
    }

    enum CodingKeys: String, CodingKey {
        case subscriptionArn = "SubscriptionArn"
    }

    public func validate() throws {
    }
}
