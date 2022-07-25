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
// SimpleNotificationModelStructures.swift
// SimpleNotificationModel
//

import Foundation

extension Foundation.Data: @unchecked Sendable { }

public struct AddPermissionInput: Codable, Equatable, Sendable {
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

public struct AuthorizationErrorException: Codable, Equatable, Sendable {
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

public struct BatchEntryIdsNotDistinctException: Codable, Equatable, Sendable {
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

public struct BatchRequestTooLongException: Codable, Equatable, Sendable {
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

public struct BatchResultErrorEntry: Codable, Equatable, Sendable {
    public var code: String
    public var id: String
    public var message: String?
    public var senderFault: Boolean

    public init(code: String,
                id: String,
                message: String? = nil,
                senderFault: Boolean) {
        self.code = code
        self.id = id
        self.message = message
        self.senderFault = senderFault
    }

    enum CodingKeys: String, CodingKey {
        case code = "Code"
        case id = "Id"
        case message = "Message"
        case senderFault = "SenderFault"
    }

    public func validate() throws {
    }
}

public struct CheckIfPhoneNumberIsOptedOutInput: Codable, Equatable, Sendable {
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

public struct CheckIfPhoneNumberIsOptedOutResponse: Codable, Equatable, Sendable {
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

public struct CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut: Codable, Equatable, Sendable {
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

public struct ConcurrentAccessException: Codable, Equatable, Sendable {
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

public struct ConfirmSubscriptionInput: Codable, Equatable, Sendable {
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

public struct ConfirmSubscriptionResponse: Codable, Equatable, Sendable {
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

public struct ConfirmSubscriptionResponseForConfirmSubscription: Codable, Equatable, Sendable {
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

public struct CreateEndpointResponse: Codable, Equatable, Sendable {
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

public struct CreateEndpointResponseForCreatePlatformEndpoint: Codable, Equatable, Sendable {
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

public struct CreatePlatformApplicationInput: Codable, Equatable, Sendable {
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

public struct CreatePlatformApplicationResponse: Codable, Equatable, Sendable {
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

public struct CreatePlatformApplicationResponseForCreatePlatformApplication: Codable, Equatable, Sendable {
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

public struct CreatePlatformEndpointInput: Codable, Equatable, Sendable {
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

public struct CreateSMSSandboxPhoneNumberInput: Codable, Equatable, Sendable {
    public var languageCode: LanguageCodeString?
    public var phoneNumber: PhoneNumberString

    public init(languageCode: LanguageCodeString? = nil,
                phoneNumber: PhoneNumberString) {
        self.languageCode = languageCode
        self.phoneNumber = phoneNumber
    }

    enum CodingKeys: String, CodingKey {
        case languageCode = "LanguageCode"
        case phoneNumber = "PhoneNumber"
    }

    public func validate() throws {
        try phoneNumber.validateAsPhoneNumberString()
    }
}

public struct CreateSMSSandboxPhoneNumberResult: Codable, Equatable, Sendable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct CreateSMSSandboxPhoneNumberResultForCreateSMSSandboxPhoneNumber: Codable, Equatable, Sendable {
    public var createSMSSandboxPhoneNumberResult: CreateSMSSandboxPhoneNumberResult

    public init(createSMSSandboxPhoneNumberResult: CreateSMSSandboxPhoneNumberResult) {
        self.createSMSSandboxPhoneNumberResult = createSMSSandboxPhoneNumberResult
    }

    enum CodingKeys: String, CodingKey {
        case createSMSSandboxPhoneNumberResult = "CreateSMSSandboxPhoneNumberResult"
    }

    public func validate() throws {
        try createSMSSandboxPhoneNumberResult.validate()
    }
}

public struct CreateTopicInput: Codable, Equatable, Sendable {
    public var attributes: TopicAttributesMap?
    public var name: TopicName
    public var tags: TagList?

    public init(attributes: TopicAttributesMap? = nil,
                name: TopicName,
                tags: TagList? = nil) {
        self.attributes = attributes
        self.name = name
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case attributes = "Attributes"
        case name = "Name"
        case tags = "Tags"
    }

    public func validate() throws {
    }
}

public struct CreateTopicResponse: Codable, Equatable, Sendable {
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

public struct CreateTopicResponseForCreateTopic: Codable, Equatable, Sendable {
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

public struct DeleteEndpointInput: Codable, Equatable, Sendable {
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

public struct DeletePlatformApplicationInput: Codable, Equatable, Sendable {
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

public struct DeleteSMSSandboxPhoneNumberInput: Codable, Equatable, Sendable {
    public var phoneNumber: PhoneNumberString

    public init(phoneNumber: PhoneNumberString) {
        self.phoneNumber = phoneNumber
    }

    enum CodingKeys: String, CodingKey {
        case phoneNumber = "PhoneNumber"
    }

    public func validate() throws {
        try phoneNumber.validateAsPhoneNumberString()
    }
}

public struct DeleteSMSSandboxPhoneNumberResult: Codable, Equatable, Sendable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DeleteSMSSandboxPhoneNumberResultForDeleteSMSSandboxPhoneNumber: Codable, Equatable, Sendable {
    public var deleteSMSSandboxPhoneNumberResult: DeleteSMSSandboxPhoneNumberResult

    public init(deleteSMSSandboxPhoneNumberResult: DeleteSMSSandboxPhoneNumberResult) {
        self.deleteSMSSandboxPhoneNumberResult = deleteSMSSandboxPhoneNumberResult
    }

    enum CodingKeys: String, CodingKey {
        case deleteSMSSandboxPhoneNumberResult = "DeleteSMSSandboxPhoneNumberResult"
    }

    public func validate() throws {
        try deleteSMSSandboxPhoneNumberResult.validate()
    }
}

public struct DeleteTopicInput: Codable, Equatable, Sendable {
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

public struct EmptyBatchRequestException: Codable, Equatable, Sendable {
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

public struct Endpoint: Codable, Equatable, Sendable {
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

public struct EndpointDisabledException: Codable, Equatable, Sendable {
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

public struct FilterPolicyLimitExceededException: Codable, Equatable, Sendable {
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

public struct GetEndpointAttributesInput: Codable, Equatable, Sendable {
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

public struct GetEndpointAttributesResponse: Codable, Equatable, Sendable {
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

public struct GetEndpointAttributesResponseForGetEndpointAttributes: Codable, Equatable, Sendable {
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

public struct GetPlatformApplicationAttributesInput: Codable, Equatable, Sendable {
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

public struct GetPlatformApplicationAttributesResponse: Codable, Equatable, Sendable {
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

public struct GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes: Codable, Equatable, Sendable {
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

public struct GetSMSAttributesInput: Codable, Equatable, Sendable {
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

public struct GetSMSAttributesResponse: Codable, Equatable, Sendable {
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

public struct GetSMSAttributesResponseForGetSMSAttributes: Codable, Equatable, Sendable {
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

public struct GetSMSSandboxAccountStatusInput: Codable, Equatable, Sendable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct GetSMSSandboxAccountStatusResult: Codable, Equatable, Sendable {
    public var isInSandbox: Boolean

    public init(isInSandbox: Boolean) {
        self.isInSandbox = isInSandbox
    }

    enum CodingKeys: String, CodingKey {
        case isInSandbox = "IsInSandbox"
    }

    public func validate() throws {
    }
}

public struct GetSMSSandboxAccountStatusResultForGetSMSSandboxAccountStatus: Codable, Equatable, Sendable {
    public var getSMSSandboxAccountStatusResult: GetSMSSandboxAccountStatusResult

    public init(getSMSSandboxAccountStatusResult: GetSMSSandboxAccountStatusResult) {
        self.getSMSSandboxAccountStatusResult = getSMSSandboxAccountStatusResult
    }

    enum CodingKeys: String, CodingKey {
        case getSMSSandboxAccountStatusResult = "GetSMSSandboxAccountStatusResult"
    }

    public func validate() throws {
        try getSMSSandboxAccountStatusResult.validate()
    }
}

public struct GetSubscriptionAttributesInput: Codable, Equatable, Sendable {
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

public struct GetSubscriptionAttributesResponse: Codable, Equatable, Sendable {
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

public struct GetSubscriptionAttributesResponseForGetSubscriptionAttributes: Codable, Equatable, Sendable {
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

public struct GetTopicAttributesInput: Codable, Equatable, Sendable {
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

public struct GetTopicAttributesResponse: Codable, Equatable, Sendable {
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

public struct GetTopicAttributesResponseForGetTopicAttributes: Codable, Equatable, Sendable {
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

public struct InternalErrorException: Codable, Equatable, Sendable {
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

public struct InvalidBatchEntryIdException: Codable, Equatable, Sendable {
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

public struct InvalidParameterException: Codable, Equatable, Sendable {
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

public struct InvalidParameterValueException: Codable, Equatable, Sendable {
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

public struct InvalidSecurityException: Codable, Equatable, Sendable {
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

public struct KMSAccessDeniedException: Codable, Equatable, Sendable {
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

public struct KMSDisabledException: Codable, Equatable, Sendable {
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

public struct KMSInvalidStateException: Codable, Equatable, Sendable {
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

public struct KMSNotFoundException: Codable, Equatable, Sendable {
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

public struct KMSOptInRequired: Codable, Equatable, Sendable {
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

public struct KMSThrottlingException: Codable, Equatable, Sendable {
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

public struct ListEndpointsByPlatformApplicationInput: Codable, Equatable, Sendable {
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

public struct ListEndpointsByPlatformApplicationResponse: Codable, Equatable, Sendable {
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

public struct ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication: Codable, Equatable, Sendable {
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

public struct ListOriginationNumbersRequest: Codable, Equatable, Sendable {
    public var maxResults: MaxItemsListOriginationNumbers?
    public var nextToken: NextToken?

    public init(maxResults: MaxItemsListOriginationNumbers? = nil,
                nextToken: NextToken? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public func validate() throws {
        try maxResults?.validateAsMaxItemsListOriginationNumbers()
    }
}

public struct ListOriginationNumbersResult: Codable, Equatable, Sendable {
    public var nextToken: NextToken?
    public var phoneNumbers: PhoneNumberInformationList?

    public init(nextToken: NextToken? = nil,
                phoneNumbers: PhoneNumberInformationList? = nil) {
        self.nextToken = nextToken
        self.phoneNumbers = phoneNumbers
    }

    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case phoneNumbers = "PhoneNumbers"
    }

    public func validate() throws {
    }
}

public struct ListOriginationNumbersResultForListOriginationNumbers: Codable, Equatable, Sendable {
    public var listOriginationNumbersResult: ListOriginationNumbersResult

    public init(listOriginationNumbersResult: ListOriginationNumbersResult) {
        self.listOriginationNumbersResult = listOriginationNumbersResult
    }

    enum CodingKeys: String, CodingKey {
        case listOriginationNumbersResult = "ListOriginationNumbersResult"
    }

    public func validate() throws {
        try listOriginationNumbersResult.validate()
    }
}

public struct ListPhoneNumbersOptedOutInput: Codable, Equatable, Sendable {
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

public struct ListPhoneNumbersOptedOutResponse: Codable, Equatable, Sendable {
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

public struct ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut: Codable, Equatable, Sendable {
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

public struct ListPlatformApplicationsInput: Codable, Equatable, Sendable {
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

public struct ListPlatformApplicationsResponse: Codable, Equatable, Sendable {
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

public struct ListPlatformApplicationsResponseForListPlatformApplications: Codable, Equatable, Sendable {
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

public struct ListSMSSandboxPhoneNumbersInput: Codable, Equatable, Sendable {
    public var maxResults: MaxItems?
    public var nextToken: NextToken?

    public init(maxResults: MaxItems? = nil,
                nextToken: NextToken? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public func validate() throws {
        try maxResults?.validateAsMaxItems()
    }
}

public struct ListSMSSandboxPhoneNumbersResult: Codable, Equatable, Sendable {
    public var nextToken: String?
    public var phoneNumbers: SMSSandboxPhoneNumberList

    public init(nextToken: String? = nil,
                phoneNumbers: SMSSandboxPhoneNumberList) {
        self.nextToken = nextToken
        self.phoneNumbers = phoneNumbers
    }

    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case phoneNumbers = "PhoneNumbers"
    }

    public func validate() throws {
    }
}

public struct ListSMSSandboxPhoneNumbersResultForListSMSSandboxPhoneNumbers: Codable, Equatable, Sendable {
    public var listSMSSandboxPhoneNumbersResult: ListSMSSandboxPhoneNumbersResult

    public init(listSMSSandboxPhoneNumbersResult: ListSMSSandboxPhoneNumbersResult) {
        self.listSMSSandboxPhoneNumbersResult = listSMSSandboxPhoneNumbersResult
    }

    enum CodingKeys: String, CodingKey {
        case listSMSSandboxPhoneNumbersResult = "ListSMSSandboxPhoneNumbersResult"
    }

    public func validate() throws {
        try listSMSSandboxPhoneNumbersResult.validate()
    }
}

public struct ListSubscriptionsByTopicInput: Codable, Equatable, Sendable {
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

public struct ListSubscriptionsByTopicResponse: Codable, Equatable, Sendable {
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

public struct ListSubscriptionsByTopicResponseForListSubscriptionsByTopic: Codable, Equatable, Sendable {
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

public struct ListSubscriptionsInput: Codable, Equatable, Sendable {
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

public struct ListSubscriptionsResponse: Codable, Equatable, Sendable {
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

public struct ListSubscriptionsResponseForListSubscriptions: Codable, Equatable, Sendable {
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

public struct ListTagsForResourceRequest: Codable, Equatable, Sendable {
    public var resourceArn: AmazonResourceName

    public init(resourceArn: AmazonResourceName) {
        self.resourceArn = resourceArn
    }

    enum CodingKeys: String, CodingKey {
        case resourceArn = "ResourceArn"
    }

    public func validate() throws {
        try resourceArn.validateAsAmazonResourceName()
    }
}

public struct ListTagsForResourceResponse: Codable, Equatable, Sendable {
    public var tags: TagList?

    public init(tags: TagList? = nil) {
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case tags = "Tags"
    }

    public func validate() throws {
    }
}

public struct ListTagsForResourceResponseForListTagsForResource: Codable, Equatable, Sendable {
    public var listTagsForResourceResult: ListTagsForResourceResponse

    public init(listTagsForResourceResult: ListTagsForResourceResponse) {
        self.listTagsForResourceResult = listTagsForResourceResult
    }

    enum CodingKeys: String, CodingKey {
        case listTagsForResourceResult = "ListTagsForResourceResult"
    }

    public func validate() throws {
        try listTagsForResourceResult.validate()
    }
}

public struct ListTopicsInput: Codable, Equatable, Sendable {
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

public struct ListTopicsResponse: Codable, Equatable, Sendable {
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

public struct ListTopicsResponseForListTopics: Codable, Equatable, Sendable {
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

public struct MessageAttributeValue: Codable, Equatable, Sendable {
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

public struct NotFoundException: Codable, Equatable, Sendable {
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

public struct OptInPhoneNumberInput: Codable, Equatable, Sendable {
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

public struct OptInPhoneNumberResponse: Codable, Equatable, Sendable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct OptInPhoneNumberResponseForOptInPhoneNumber: Codable, Equatable, Sendable {
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

public struct OptedOutException: Codable, Equatable, Sendable {
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

public struct PhoneNumberInformation: Codable, Equatable, Sendable {
    public var createdAt: Timestamp?
    public var iso2CountryCode: Iso2CountryCode?
    public var numberCapabilities: NumberCapabilityList?
    public var phoneNumber: String?
    public var routeType: RouteType?
    public var status: String?

    public init(createdAt: Timestamp? = nil,
                iso2CountryCode: Iso2CountryCode? = nil,
                numberCapabilities: NumberCapabilityList? = nil,
                phoneNumber: String? = nil,
                routeType: RouteType? = nil,
                status: String? = nil) {
        self.createdAt = createdAt
        self.iso2CountryCode = iso2CountryCode
        self.numberCapabilities = numberCapabilities
        self.phoneNumber = phoneNumber
        self.routeType = routeType
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case createdAt = "CreatedAt"
        case iso2CountryCode = "Iso2CountryCode"
        case numberCapabilities = "NumberCapabilities"
        case phoneNumber = "PhoneNumber"
        case routeType = "RouteType"
        case status = "Status"
    }

    public func validate() throws {
        try iso2CountryCode?.validateAsIso2CountryCode()
    }
}

public struct PlatformApplication: Codable, Equatable, Sendable {
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

public struct PlatformApplicationDisabledException: Codable, Equatable, Sendable {
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

public struct PublishBatchInput: Codable, Equatable, Sendable {
    public var publishBatchRequestEntries: PublishBatchRequestEntryList
    public var topicArn: TopicARN

    public init(publishBatchRequestEntries: PublishBatchRequestEntryList,
                topicArn: TopicARN) {
        self.publishBatchRequestEntries = publishBatchRequestEntries
        self.topicArn = topicArn
    }

    enum CodingKeys: String, CodingKey {
        case publishBatchRequestEntries = "PublishBatchRequestEntries"
        case topicArn = "TopicArn"
    }

    public func validate() throws {
    }
}

public struct PublishBatchRequestEntry: Codable, Equatable, Sendable {
    public var id: String
    public var message: Message
    public var messageAttributes: MessageAttributeMap?
    public var messageDeduplicationId: String?
    public var messageGroupId: String?
    public var messageStructure: MessageStructure?
    public var subject: Subject?

    public init(id: String,
                message: Message,
                messageAttributes: MessageAttributeMap? = nil,
                messageDeduplicationId: String? = nil,
                messageGroupId: String? = nil,
                messageStructure: MessageStructure? = nil,
                subject: Subject? = nil) {
        self.id = id
        self.message = message
        self.messageAttributes = messageAttributes
        self.messageDeduplicationId = messageDeduplicationId
        self.messageGroupId = messageGroupId
        self.messageStructure = messageStructure
        self.subject = subject
    }

    enum CodingKeys: String, CodingKey {
        case id = "Id"
        case message = "Message"
        case messageAttributes = "MessageAttributes"
        case messageDeduplicationId = "MessageDeduplicationId"
        case messageGroupId = "MessageGroupId"
        case messageStructure = "MessageStructure"
        case subject = "Subject"
    }

    public func validate() throws {
    }
}

public struct PublishBatchResponse: Codable, Equatable, Sendable {
    public var failed: BatchResultErrorEntryList?
    public var successful: PublishBatchResultEntryList?

    public init(failed: BatchResultErrorEntryList? = nil,
                successful: PublishBatchResultEntryList? = nil) {
        self.failed = failed
        self.successful = successful
    }

    enum CodingKeys: String, CodingKey {
        case failed = "Failed"
        case successful = "Successful"
    }

    public func validate() throws {
    }
}

public struct PublishBatchResponseForPublishBatch: Codable, Equatable, Sendable {
    public var publishBatchResult: PublishBatchResponse

    public init(publishBatchResult: PublishBatchResponse) {
        self.publishBatchResult = publishBatchResult
    }

    enum CodingKeys: String, CodingKey {
        case publishBatchResult = "PublishBatchResult"
    }

    public func validate() throws {
        try publishBatchResult.validate()
    }
}

public struct PublishBatchResultEntry: Codable, Equatable, Sendable {
    public var id: String?
    public var messageId: MessageId?
    public var sequenceNumber: String?

    public init(id: String? = nil,
                messageId: MessageId? = nil,
                sequenceNumber: String? = nil) {
        self.id = id
        self.messageId = messageId
        self.sequenceNumber = sequenceNumber
    }

    enum CodingKeys: String, CodingKey {
        case id = "Id"
        case messageId = "MessageId"
        case sequenceNumber = "SequenceNumber"
    }

    public func validate() throws {
    }
}

public struct PublishInput: Codable, Equatable, Sendable {
    public var message: Message
    public var messageAttributes: MessageAttributeMap?
    public var messageDeduplicationId: String?
    public var messageGroupId: String?
    public var messageStructure: MessageStructure?
    public var phoneNumber: String?
    public var subject: Subject?
    public var targetArn: String?
    public var topicArn: TopicARN?

    public init(message: Message,
                messageAttributes: MessageAttributeMap? = nil,
                messageDeduplicationId: String? = nil,
                messageGroupId: String? = nil,
                messageStructure: MessageStructure? = nil,
                phoneNumber: String? = nil,
                subject: Subject? = nil,
                targetArn: String? = nil,
                topicArn: TopicARN? = nil) {
        self.message = message
        self.messageAttributes = messageAttributes
        self.messageDeduplicationId = messageDeduplicationId
        self.messageGroupId = messageGroupId
        self.messageStructure = messageStructure
        self.phoneNumber = phoneNumber
        self.subject = subject
        self.targetArn = targetArn
        self.topicArn = topicArn
    }

    enum CodingKeys: String, CodingKey {
        case message = "Message"
        case messageAttributes = "MessageAttributes"
        case messageDeduplicationId = "MessageDeduplicationId"
        case messageGroupId = "MessageGroupId"
        case messageStructure = "MessageStructure"
        case phoneNumber = "PhoneNumber"
        case subject = "Subject"
        case targetArn = "TargetArn"
        case topicArn = "TopicArn"
    }

    public func validate() throws {
    }
}

public struct PublishResponse: Codable, Equatable, Sendable {
    public var messageId: MessageId?
    public var sequenceNumber: String?

    public init(messageId: MessageId? = nil,
                sequenceNumber: String? = nil) {
        self.messageId = messageId
        self.sequenceNumber = sequenceNumber
    }

    enum CodingKeys: String, CodingKey {
        case messageId = "MessageId"
        case sequenceNumber = "SequenceNumber"
    }

    public func validate() throws {
    }
}

public struct PublishResponseForPublish: Codable, Equatable, Sendable {
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

public struct RemovePermissionInput: Codable, Equatable, Sendable {
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

public struct ResourceNotFoundException: Codable, Equatable, Sendable {
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

public struct SMSSandboxPhoneNumber: Codable, Equatable, Sendable {
    public var phoneNumber: PhoneNumberString?
    public var status: SMSSandboxPhoneNumberVerificationStatus?

    public init(phoneNumber: PhoneNumberString? = nil,
                status: SMSSandboxPhoneNumberVerificationStatus? = nil) {
        self.phoneNumber = phoneNumber
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case phoneNumber = "PhoneNumber"
        case status = "Status"
    }

    public func validate() throws {
        try phoneNumber?.validateAsPhoneNumberString()
    }
}

public struct SetEndpointAttributesInput: Codable, Equatable, Sendable {
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

public struct SetPlatformApplicationAttributesInput: Codable, Equatable, Sendable {
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

public struct SetSMSAttributesInput: Codable, Equatable, Sendable {
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

public struct SetSMSAttributesResponse: Codable, Equatable, Sendable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct SetSMSAttributesResponseForSetSMSAttributes: Codable, Equatable, Sendable {
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

public struct SetSubscriptionAttributesInput: Codable, Equatable, Sendable {
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

public struct SetTopicAttributesInput: Codable, Equatable, Sendable {
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

public struct StaleTagException: Codable, Equatable, Sendable {
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

public struct SubscribeInput: Codable, Equatable, Sendable {
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

public struct SubscribeResponse: Codable, Equatable, Sendable {
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

public struct SubscribeResponseForSubscribe: Codable, Equatable, Sendable {
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

public struct Subscription: Codable, Equatable, Sendable {
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

public struct SubscriptionLimitExceededException: Codable, Equatable, Sendable {
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

public struct Tag: Codable, Equatable, Sendable {
    public var key: TagKey
    public var value: TagValue

    public init(key: TagKey,
                value: TagValue) {
        self.key = key
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case key = "Key"
        case value = "Value"
    }

    public func validate() throws {
        try key.validateAsTagKey()
        try value.validateAsTagValue()
    }
}

public struct TagLimitExceededException: Codable, Equatable, Sendable {
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

public struct TagPolicyException: Codable, Equatable, Sendable {
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

public struct TagResourceRequest: Codable, Equatable, Sendable {
    public var resourceArn: AmazonResourceName
    public var tags: TagList

    public init(resourceArn: AmazonResourceName,
                tags: TagList) {
        self.resourceArn = resourceArn
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case resourceArn = "ResourceArn"
        case tags = "Tags"
    }

    public func validate() throws {
        try resourceArn.validateAsAmazonResourceName()
    }
}

public struct TagResourceResponse: Codable, Equatable, Sendable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct TagResourceResponseForTagResource: Codable, Equatable, Sendable {
    public var tagResourceResult: TagResourceResponse

    public init(tagResourceResult: TagResourceResponse) {
        self.tagResourceResult = tagResourceResult
    }

    enum CodingKeys: String, CodingKey {
        case tagResourceResult = "TagResourceResult"
    }

    public func validate() throws {
        try tagResourceResult.validate()
    }
}

public struct ThrottledException: Codable, Equatable, Sendable {
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

public struct TooManyEntriesInBatchRequestException: Codable, Equatable, Sendable {
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

public struct Topic: Codable, Equatable, Sendable {
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

public struct TopicLimitExceededException: Codable, Equatable, Sendable {
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

public struct UnsubscribeInput: Codable, Equatable, Sendable {
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

public struct UntagResourceRequest: Codable, Equatable, Sendable {
    public var resourceArn: AmazonResourceName
    public var tagKeys: TagKeyList

    public init(resourceArn: AmazonResourceName,
                tagKeys: TagKeyList) {
        self.resourceArn = resourceArn
        self.tagKeys = tagKeys
    }

    enum CodingKeys: String, CodingKey {
        case resourceArn = "ResourceArn"
        case tagKeys = "TagKeys"
    }

    public func validate() throws {
        try resourceArn.validateAsAmazonResourceName()
    }
}

public struct UntagResourceResponse: Codable, Equatable, Sendable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct UntagResourceResponseForUntagResource: Codable, Equatable, Sendable {
    public var untagResourceResult: UntagResourceResponse

    public init(untagResourceResult: UntagResourceResponse) {
        self.untagResourceResult = untagResourceResult
    }

    enum CodingKeys: String, CodingKey {
        case untagResourceResult = "UntagResourceResult"
    }

    public func validate() throws {
        try untagResourceResult.validate()
    }
}

public struct UserErrorException: Codable, Equatable, Sendable {
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

public struct ValidationException: Codable, Equatable, Sendable {
    public var message: String

    public init(message: String) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message = "Message"
    }

    public func validate() throws {
    }
}

public struct VerificationException: Codable, Equatable, Sendable {
    public var message: String
    public var status: String

    public init(message: String,
                status: String) {
        self.message = message
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case message = "Message"
        case status = "Status"
    }

    public func validate() throws {
    }
}

public struct VerifySMSSandboxPhoneNumberInput: Codable, Equatable, Sendable {
    public var oneTimePassword: OTPCode
    public var phoneNumber: PhoneNumberString

    public init(oneTimePassword: OTPCode,
                phoneNumber: PhoneNumberString) {
        self.oneTimePassword = oneTimePassword
        self.phoneNumber = phoneNumber
    }

    enum CodingKeys: String, CodingKey {
        case oneTimePassword = "OneTimePassword"
        case phoneNumber = "PhoneNumber"
    }

    public func validate() throws {
        try oneTimePassword.validateAsOTPCode()
        try phoneNumber.validateAsPhoneNumberString()
    }
}

public struct VerifySMSSandboxPhoneNumberResult: Codable, Equatable, Sendable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct VerifySMSSandboxPhoneNumberResultForVerifySMSSandboxPhoneNumber: Codable, Equatable, Sendable {
    public var verifySMSSandboxPhoneNumberResult: VerifySMSSandboxPhoneNumberResult

    public init(verifySMSSandboxPhoneNumberResult: VerifySMSSandboxPhoneNumberResult) {
        self.verifySMSSandboxPhoneNumberResult = verifySMSSandboxPhoneNumberResult
    }

    enum CodingKeys: String, CodingKey {
        case verifySMSSandboxPhoneNumberResult = "VerifySMSSandboxPhoneNumberResult"
    }

    public func validate() throws {
        try verifySMSSandboxPhoneNumberResult.validate()
    }
}
