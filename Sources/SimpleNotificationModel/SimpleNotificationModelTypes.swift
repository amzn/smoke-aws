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
// -- Generated Code; do not edit --
//
// SimpleNotificationModelTypes.swift
// SimpleNotificationModel
//

import Foundation

/**
 Type definition for the ActionsList field.
 */
public typealias ActionsList = [Action]

/**
 Type definition for the AmazonResourceName field.
 */
public typealias AmazonResourceName = String

/**
 Type definition for the Binary field.
 */
public typealias Binary = Data

/**
 Type definition for the DelegatesList field.
 */
public typealias DelegatesList = [Delegate]

/**
 Type definition for the ListOfEndpoints field.
 */
public typealias ListOfEndpoints = [Endpoint]

/**
 Type definition for the ListOfPlatformApplications field.
 */
public typealias ListOfPlatformApplications = [PlatformApplication]

/**
 Type definition for the ListString field.
 */
public typealias ListString = [String]

/**
 Type definition for the MapStringToString field.
 */
public typealias MapStringToString = [String: String]

/**
 Type definition for the MessageAttributeMap field.
 */
public typealias MessageAttributeMap = [String: MessageAttributeValue]

/**
 Type definition for the PhoneNumber field.
 */
public typealias PhoneNumber = String

/**
 Type definition for the PhoneNumberList field.
 */
public typealias PhoneNumberList = [PhoneNumber]

/**
 Type definition for the SubscriptionAttributesMap field.
 */
public typealias SubscriptionAttributesMap = [AttributeName: AttributeValue]

/**
 Type definition for the SubscriptionsList field.
 */
public typealias SubscriptionsList = [Subscription]

/**
 Type definition for the TagKey field.
 */
public typealias TagKey = String

/**
 Type definition for the TagKeyList field.
 */
public typealias TagKeyList = [TagKey]

/**
 Type definition for the TagList field.
 */
public typealias TagList = [Tag]

/**
 Type definition for the TagValue field.
 */
public typealias TagValue = String

/**
 Type definition for the TopicAttributesMap field.
 */
public typealias TopicAttributesMap = [AttributeName: AttributeValue]

/**
 Type definition for the TopicsList field.
 */
public typealias TopicsList = [Topic]

/**
 Type definition for the Account field.
 */
public typealias Account = String

/**
 Type definition for the Action field.
 */
public typealias Action = String

/**
 Type definition for the AttributeName field.
 */
public typealias AttributeName = String

/**
 Type definition for the AttributeValue field.
 */
public typealias AttributeValue = String

/**
 Type definition for the AuthenticateOnUnsubscribe field.
 */
public typealias AuthenticateOnUnsubscribe = String

/**
 Type definition for the Boolean field.
 */
public typealias Boolean = Bool

/**
 Type definition for the Delegate field.
 */
public typealias Delegate = String

/**
 Type definition for the EndpointString field.
 */
public typealias EndpointString = String

/**
 Type definition for the Label field.
 */
public typealias Label = String

/**
 Type definition for the Message field.
 */
public typealias Message = String

/**
 Type definition for the MessageId field.
 */
public typealias MessageId = String

/**
 Type definition for the MessageStructure field.
 */
public typealias MessageStructure = String

/**
 Type definition for the NextToken field.
 */
public typealias NextToken = String

/**
 Type definition for the Protocol field.
 */
public typealias Protocol = String

/**
 Type definition for the Subject field.
 */
public typealias Subject = String

/**
 Type definition for the SubscriptionARN field.
 */
public typealias SubscriptionARN = String

/**
 Type definition for the Token field.
 */
public typealias Token = String

/**
 Type definition for the TopicARN field.
 */
public typealias TopicARN = String

/**
 Type definition for the TopicName field.
 */
public typealias TopicName = String

/**
 Validation for the AmazonResourceName field.
*/
extension SimpleNotificationModel.AmazonResourceName {
    public func validateAsAmazonResourceName() throws {
        if self.count < 1 {
            throw SimpleNotificationError.validationError(reason: "The provided value to AmazonResourceName violated the minimum length constraint.")
        }

        if self.count > 1011 {
            throw SimpleNotificationError.validationError(reason: "The provided value to AmazonResourceName violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TagKey field.
*/
extension SimpleNotificationModel.TagKey {
    public func validateAsTagKey() throws {
        if self.count < 1 {
            throw SimpleNotificationError.validationError(reason: "The provided value to TagKey violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw SimpleNotificationError.validationError(reason: "The provided value to TagKey violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TagValue field.
*/
extension SimpleNotificationModel.TagValue {
    public func validateAsTagValue() throws {
        if self.count < 0 {
            throw SimpleNotificationError.validationError(reason: "The provided value to TagValue violated the minimum length constraint.")
        }

        if self.count > 256 {
            throw SimpleNotificationError.validationError(reason: "The provided value to TagValue violated the maximum length constraint.")
        }
    }
}
