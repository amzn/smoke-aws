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
 Type definition for the BatchResultErrorEntryList field.
 */
public typealias BatchResultErrorEntryList = [BatchResultErrorEntry]

/**
 Type definition for the Binary field.
 */
public typealias Binary = Data

/**
 Type definition for the DelegatesList field.
 */
public typealias DelegatesList = [Delegate]

/**
 Type definition for the Iso2CountryCode field.
 */
public typealias Iso2CountryCode = String

/**
 Enumeration restricting the values of the LanguageCodeString field.
 */
public enum LanguageCodeString: String, Codable, CustomStringConvertible {
    case deDe = "de-DE"
    case enGb = "en-GB"
    case enUs = "en-US"
    case es419 = "es-419"
    case esEs = "es-ES"
    case frCa = "fr-CA"
    case frFr = "fr-FR"
    case itIt = "it-IT"
    case jaJp = "ja-JP"
    case krKr = "kr-KR"
    case ptBr = "pt-BR"
    case zhCn = "zh-CN"
    case zhTw = "zh-TW"

    public var description: String {
        return rawValue
    }
    
    public static let __default: LanguageCodeString = .deDe
}

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
 Type definition for the MaxItems field.
 */
public typealias MaxItems = Int

/**
 Type definition for the MaxItemsListOriginationNumbers field.
 */
public typealias MaxItemsListOriginationNumbers = Int

/**
 Type definition for the MessageAttributeMap field.
 */
public typealias MessageAttributeMap = [String: MessageAttributeValue]

/**
 Enumeration restricting the values of the NumberCapability field.
 */
public enum NumberCapability: String, Codable, CustomStringConvertible {
    case mms = "MMS"
    case sms = "SMS"
    case voice = "VOICE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: NumberCapability = .mms
}

/**
 Type definition for the NumberCapabilityList field.
 */
public typealias NumberCapabilityList = [NumberCapability]

/**
 Type definition for the OTPCode field.
 */
public typealias OTPCode = String

/**
 Type definition for the PhoneNumber field.
 */
public typealias PhoneNumber = String

/**
 Type definition for the PhoneNumberInformationList field.
 */
public typealias PhoneNumberInformationList = [PhoneNumberInformation]

/**
 Type definition for the PhoneNumberList field.
 */
public typealias PhoneNumberList = [PhoneNumber]

/**
 Type definition for the PhoneNumberString field.
 */
public typealias PhoneNumberString = String

/**
 Type definition for the PublishBatchRequestEntryList field.
 */
public typealias PublishBatchRequestEntryList = [PublishBatchRequestEntry]

/**
 Type definition for the PublishBatchResultEntryList field.
 */
public typealias PublishBatchResultEntryList = [PublishBatchResultEntry]

/**
 Enumeration restricting the values of the RouteType field.
 */
public enum RouteType: String, Codable, CustomStringConvertible {
    case premium = "Premium"
    case promotional = "Promotional"
    case transactional = "Transactional"

    public var description: String {
        return rawValue
    }
    
    public static let __default: RouteType = .premium
}

/**
 Type definition for the SMSSandboxPhoneNumberList field.
 */
public typealias SMSSandboxPhoneNumberList = [SMSSandboxPhoneNumber]

/**
 Enumeration restricting the values of the SMSSandboxPhoneNumberVerificationStatus field.
 */
public enum SMSSandboxPhoneNumberVerificationStatus: String, Codable, CustomStringConvertible {
    case pending = "Pending"
    case verified = "Verified"

    public var description: String {
        return rawValue
    }
    
    public static let __default: SMSSandboxPhoneNumberVerificationStatus = .pending
}

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
 Type definition for the Timestamp field.
 */
public typealias Timestamp = String

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
 Validation for the Iso2CountryCode field.
*/
extension SimpleNotificationModel.Iso2CountryCode {
    public func validateAsIso2CountryCode() throws {

        if self.count > 2 {
            throw SimpleNotificationError.validationError(reason: "The provided value to Iso2CountryCode violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "^[A-Za-z]{2}$", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw SimpleNotificationError.validationError(
                    reason: "The provided value to Iso2CountryCode violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the MaxItems field.
*/
extension SimpleNotificationModel.MaxItems {
    public func validateAsMaxItems() throws {
        if self < 1 {
            throw SimpleNotificationError.validationError(reason: "The provided value to MaxItems violated the minimum range constraint.")
        }

        if self > 100 {
            throw SimpleNotificationError.validationError(reason: "The provided value to MaxItems violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the MaxItemsListOriginationNumbers field.
*/
extension SimpleNotificationModel.MaxItemsListOriginationNumbers {
    public func validateAsMaxItemsListOriginationNumbers() throws {
        if self < 1 {
            throw SimpleNotificationError.validationError(reason: "The provided value to MaxItemsListOriginationNumbers violated the minimum range constraint.")
        }

        if self > 30 {
            throw SimpleNotificationError.validationError(reason: "The provided value to MaxItemsListOriginationNumbers violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the OTPCode field.
*/
extension SimpleNotificationModel.OTPCode {
    public func validateAsOTPCode() throws {
        if self.count < 5 {
            throw SimpleNotificationError.validationError(reason: "The provided value to OTPCode violated the minimum length constraint.")
        }

        if self.count > 8 {
            throw SimpleNotificationError.validationError(reason: "The provided value to OTPCode violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "^[0-9]+$", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw SimpleNotificationError.validationError(
                    reason: "The provided value to OTPCode violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the PhoneNumberString field.
*/
extension SimpleNotificationModel.PhoneNumberString {
    public func validateAsPhoneNumberString() throws {

        if self.count > 20 {
            throw SimpleNotificationError.validationError(reason: "The provided value to PhoneNumberString violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "^(\\+[0-9]{8,}|[0-9]{0,9})$", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw SimpleNotificationError.validationError(
                    reason: "The provided value to PhoneNumberString violated the regular expression constraint.")
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
