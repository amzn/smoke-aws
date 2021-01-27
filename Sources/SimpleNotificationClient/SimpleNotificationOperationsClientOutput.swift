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
// SimpleNotificationOperationsClientOutput.swift
// SimpleNotificationClient
//

import Foundation
import SmokeHTTPClient
import SimpleNotificationModel

/**
 Type to handle the output from the CheckIfPhoneNumberIsOptedOut operation in a HTTP client.
 */
extension CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut: HTTPResponseOutputProtocol {
    public typealias BodyType = CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut
    public typealias HeadersType = CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ConfirmSubscription operation in a HTTP client.
 */
extension ConfirmSubscriptionResponseForConfirmSubscription: HTTPResponseOutputProtocol {
    public typealias BodyType = ConfirmSubscriptionResponseForConfirmSubscription
    public typealias HeadersType = ConfirmSubscriptionResponseForConfirmSubscription

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ConfirmSubscriptionResponseForConfirmSubscription {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreatePlatformApplication operation in a HTTP client.
 */
extension CreatePlatformApplicationResponseForCreatePlatformApplication: HTTPResponseOutputProtocol {
    public typealias BodyType = CreatePlatformApplicationResponseForCreatePlatformApplication
    public typealias HeadersType = CreatePlatformApplicationResponseForCreatePlatformApplication

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreatePlatformApplicationResponseForCreatePlatformApplication {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreatePlatformEndpoint operation in a HTTP client.
 */
extension CreateEndpointResponseForCreatePlatformEndpoint: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateEndpointResponseForCreatePlatformEndpoint
    public typealias HeadersType = CreateEndpointResponseForCreatePlatformEndpoint

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateEndpointResponseForCreatePlatformEndpoint {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the CreateTopic operation in a HTTP client.
 */
extension CreateTopicResponseForCreateTopic: HTTPResponseOutputProtocol {
    public typealias BodyType = CreateTopicResponseForCreateTopic
    public typealias HeadersType = CreateTopicResponseForCreateTopic

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> CreateTopicResponseForCreateTopic {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetEndpointAttributes operation in a HTTP client.
 */
extension GetEndpointAttributesResponseForGetEndpointAttributes: HTTPResponseOutputProtocol {
    public typealias BodyType = GetEndpointAttributesResponseForGetEndpointAttributes
    public typealias HeadersType = GetEndpointAttributesResponseForGetEndpointAttributes

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetEndpointAttributesResponseForGetEndpointAttributes {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetPlatformApplicationAttributes operation in a HTTP client.
 */
extension GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes: HTTPResponseOutputProtocol {
    public typealias BodyType = GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes
    public typealias HeadersType = GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetSMSAttributes operation in a HTTP client.
 */
extension GetSMSAttributesResponseForGetSMSAttributes: HTTPResponseOutputProtocol {
    public typealias BodyType = GetSMSAttributesResponseForGetSMSAttributes
    public typealias HeadersType = GetSMSAttributesResponseForGetSMSAttributes

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetSMSAttributesResponseForGetSMSAttributes {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetSubscriptionAttributes operation in a HTTP client.
 */
extension GetSubscriptionAttributesResponseForGetSubscriptionAttributes: HTTPResponseOutputProtocol {
    public typealias BodyType = GetSubscriptionAttributesResponseForGetSubscriptionAttributes
    public typealias HeadersType = GetSubscriptionAttributesResponseForGetSubscriptionAttributes

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetSubscriptionAttributesResponseForGetSubscriptionAttributes {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetTopicAttributes operation in a HTTP client.
 */
extension GetTopicAttributesResponseForGetTopicAttributes: HTTPResponseOutputProtocol {
    public typealias BodyType = GetTopicAttributesResponseForGetTopicAttributes
    public typealias HeadersType = GetTopicAttributesResponseForGetTopicAttributes

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetTopicAttributesResponseForGetTopicAttributes {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListEndpointsByPlatformApplication operation in a HTTP client.
 */
extension ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication: HTTPResponseOutputProtocol {
    public typealias BodyType = ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication
    public typealias HeadersType = ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListPhoneNumbersOptedOut operation in a HTTP client.
 */
extension ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut: HTTPResponseOutputProtocol {
    public typealias BodyType = ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut
    public typealias HeadersType = ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListPlatformApplications operation in a HTTP client.
 */
extension ListPlatformApplicationsResponseForListPlatformApplications: HTTPResponseOutputProtocol {
    public typealias BodyType = ListPlatformApplicationsResponseForListPlatformApplications
    public typealias HeadersType = ListPlatformApplicationsResponseForListPlatformApplications

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListPlatformApplicationsResponseForListPlatformApplications {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListSubscriptions operation in a HTTP client.
 */
extension ListSubscriptionsResponseForListSubscriptions: HTTPResponseOutputProtocol {
    public typealias BodyType = ListSubscriptionsResponseForListSubscriptions
    public typealias HeadersType = ListSubscriptionsResponseForListSubscriptions

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListSubscriptionsResponseForListSubscriptions {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListSubscriptionsByTopic operation in a HTTP client.
 */
extension ListSubscriptionsByTopicResponseForListSubscriptionsByTopic: HTTPResponseOutputProtocol {
    public typealias BodyType = ListSubscriptionsByTopicResponseForListSubscriptionsByTopic
    public typealias HeadersType = ListSubscriptionsByTopicResponseForListSubscriptionsByTopic

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListSubscriptionsByTopicResponseForListSubscriptionsByTopic {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListTagsForResource operation in a HTTP client.
 */
extension ListTagsForResourceResponseForListTagsForResource: HTTPResponseOutputProtocol {
    public typealias BodyType = ListTagsForResourceResponseForListTagsForResource
    public typealias HeadersType = ListTagsForResourceResponseForListTagsForResource

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListTagsForResourceResponseForListTagsForResource {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the ListTopics operation in a HTTP client.
 */
extension ListTopicsResponseForListTopics: HTTPResponseOutputProtocol {
    public typealias BodyType = ListTopicsResponseForListTopics
    public typealias HeadersType = ListTopicsResponseForListTopics

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> ListTopicsResponseForListTopics {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the OptInPhoneNumber operation in a HTTP client.
 */
extension OptInPhoneNumberResponseForOptInPhoneNumber: HTTPResponseOutputProtocol {
    public typealias BodyType = OptInPhoneNumberResponseForOptInPhoneNumber
    public typealias HeadersType = OptInPhoneNumberResponseForOptInPhoneNumber

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> OptInPhoneNumberResponseForOptInPhoneNumber {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the Publish operation in a HTTP client.
 */
extension PublishResponseForPublish: HTTPResponseOutputProtocol {
    public typealias BodyType = PublishResponseForPublish
    public typealias HeadersType = PublishResponseForPublish

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> PublishResponseForPublish {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the SetSMSAttributes operation in a HTTP client.
 */
extension SetSMSAttributesResponseForSetSMSAttributes: HTTPResponseOutputProtocol {
    public typealias BodyType = SetSMSAttributesResponseForSetSMSAttributes
    public typealias HeadersType = SetSMSAttributesResponseForSetSMSAttributes

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> SetSMSAttributesResponseForSetSMSAttributes {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the Subscribe operation in a HTTP client.
 */
extension SubscribeResponseForSubscribe: HTTPResponseOutputProtocol {
    public typealias BodyType = SubscribeResponseForSubscribe
    public typealias HeadersType = SubscribeResponseForSubscribe

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> SubscribeResponseForSubscribe {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the TagResource operation in a HTTP client.
 */
extension TagResourceResponseForTagResource: HTTPResponseOutputProtocol {
    public typealias BodyType = TagResourceResponseForTagResource
    public typealias HeadersType = TagResourceResponseForTagResource

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> TagResourceResponseForTagResource {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the UntagResource operation in a HTTP client.
 */
extension UntagResourceResponseForUntagResource: HTTPResponseOutputProtocol {
    public typealias BodyType = UntagResourceResponseForUntagResource
    public typealias HeadersType = UntagResourceResponseForUntagResource

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> UntagResourceResponseForUntagResource {
        return try bodyDecodableProvider()
    }
}
