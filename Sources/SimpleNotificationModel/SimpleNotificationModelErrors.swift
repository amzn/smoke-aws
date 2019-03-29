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
// SimpleNotificationModelErrors.swift
// SimpleNotificationModel
//

import Foundation
import LoggerAPI

private let authorizationErrorIdentity = "AuthorizationError"
private let endpointDisabledIdentity = "EndpointDisabled"
private let filterPolicyLimitExceededIdentity = "FilterPolicyLimitExceeded"
private let internalErrorIdentity = "InternalError"
private let invalidParameterIdentity = "InvalidParameter"
private let invalidParameterValueIdentity = "ParameterValueInvalid"
private let invalidSecurityIdentity = "InvalidSecurity"
private let kMSAccessDeniedIdentity = "KMSAccessDenied"
private let kMSDisabledIdentity = "KMSDisabled"
private let kMSInvalidStateIdentity = "KMSInvalidState"
private let kMSNotFoundIdentity = "KMSNotFound"
private let kMSOptInRequiredIdentity = "KMSOptInRequired"
private let kMSThrottlingIdentity = "KMSThrottling"
private let notFoundIdentity = "NotFound"
private let platformApplicationDisabledIdentity = "PlatformApplicationDisabled"
private let subscriptionLimitExceededIdentity = "SubscriptionLimitExceeded"
private let throttledIdentity = "Throttled"
private let topicLimitExceededIdentity = "TopicLimitExceeded"
private let __accessDeniedIdentity = "AccessDenied"

public enum SimpleNotificationCodingError: Swift.Error {
    case unknownError
    case validationError(reason: String)
    case unrecognizedError(String, String?)
}

public enum SimpleNotificationError: Swift.Error, Decodable {
    case authorizationError(AuthorizationErrorException)
    case endpointDisabled(EndpointDisabledException)
    case filterPolicyLimitExceeded(FilterPolicyLimitExceededException)
    case internalError(InternalErrorException)
    case invalidParameter(InvalidParameterException)
    case invalidParameterValue(InvalidParameterValueException)
    case invalidSecurity(InvalidSecurityException)
    case kMSAccessDenied(KMSAccessDeniedException)
    case kMSDisabled(KMSDisabledException)
    case kMSInvalidState(KMSInvalidStateException)
    case kMSNotFound(KMSNotFoundException)
    case kMSOptInRequired(KMSOptInRequired)
    case kMSThrottling(KMSThrottlingException)
    case notFound(NotFoundException)
    case platformApplicationDisabled(PlatformApplicationDisabledException)
    case subscriptionLimitExceeded(SubscriptionLimitExceededException)
    case throttled(ThrottledException)
    case topicLimitExceeded(TopicLimitExceededException)
    case accessDenied(message: String?)

    enum CodingKeys: String, CodingKey {
        case type = "Code"
        case message = "Message"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        var errorReason = try values.decode(String.self, forKey: .type)
        let errorMessage = try values.decodeIfPresent(String.self, forKey: .message)
        
        if let index = errorReason.index(of: "#") {
            errorReason = String(errorReason[errorReason.index(index, offsetBy: 1)...])
        }

        switch errorReason {
        case authorizationErrorIdentity:
            let errorPayload = try AuthorizationErrorException(from: decoder)
            self = SimpleNotificationError.authorizationError(errorPayload)
        case endpointDisabledIdentity:
            let errorPayload = try EndpointDisabledException(from: decoder)
            self = SimpleNotificationError.endpointDisabled(errorPayload)
        case filterPolicyLimitExceededIdentity:
            let errorPayload = try FilterPolicyLimitExceededException(from: decoder)
            self = SimpleNotificationError.filterPolicyLimitExceeded(errorPayload)
        case internalErrorIdentity:
            let errorPayload = try InternalErrorException(from: decoder)
            self = SimpleNotificationError.internalError(errorPayload)
        case invalidParameterIdentity:
            let errorPayload = try InvalidParameterException(from: decoder)
            self = SimpleNotificationError.invalidParameter(errorPayload)
        case invalidParameterValueIdentity:
            let errorPayload = try InvalidParameterValueException(from: decoder)
            self = SimpleNotificationError.invalidParameterValue(errorPayload)
        case invalidSecurityIdentity:
            let errorPayload = try InvalidSecurityException(from: decoder)
            self = SimpleNotificationError.invalidSecurity(errorPayload)
        case kMSAccessDeniedIdentity:
            let errorPayload = try KMSAccessDeniedException(from: decoder)
            self = SimpleNotificationError.kMSAccessDenied(errorPayload)
        case kMSDisabledIdentity:
            let errorPayload = try KMSDisabledException(from: decoder)
            self = SimpleNotificationError.kMSDisabled(errorPayload)
        case kMSInvalidStateIdentity:
            let errorPayload = try KMSInvalidStateException(from: decoder)
            self = SimpleNotificationError.kMSInvalidState(errorPayload)
        case kMSNotFoundIdentity:
            let errorPayload = try KMSNotFoundException(from: decoder)
            self = SimpleNotificationError.kMSNotFound(errorPayload)
        case kMSOptInRequiredIdentity:
            let errorPayload = try KMSOptInRequired(from: decoder)
            self = SimpleNotificationError.kMSOptInRequired(errorPayload)
        case kMSThrottlingIdentity:
            let errorPayload = try KMSThrottlingException(from: decoder)
            self = SimpleNotificationError.kMSThrottling(errorPayload)
        case notFoundIdentity:
            let errorPayload = try NotFoundException(from: decoder)
            self = SimpleNotificationError.notFound(errorPayload)
        case platformApplicationDisabledIdentity:
            let errorPayload = try PlatformApplicationDisabledException(from: decoder)
            self = SimpleNotificationError.platformApplicationDisabled(errorPayload)
        case subscriptionLimitExceededIdentity:
            let errorPayload = try SubscriptionLimitExceededException(from: decoder)
            self = SimpleNotificationError.subscriptionLimitExceeded(errorPayload)
        case throttledIdentity:
            let errorPayload = try ThrottledException(from: decoder)
            self = SimpleNotificationError.throttled(errorPayload)
        case topicLimitExceededIdentity:
            let errorPayload = try TopicLimitExceededException(from: decoder)
            self = SimpleNotificationError.topicLimitExceeded(errorPayload)
        case __accessDeniedIdentity:
            self = .accessDenied(message: errorMessage)
        default:
            throw SimpleNotificationCodingError.unrecognizedError(errorReason, errorMessage)
        }
    }
    
}

