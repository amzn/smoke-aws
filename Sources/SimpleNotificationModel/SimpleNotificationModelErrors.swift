// Copyright 2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

private let authorizationErrorIdentity = "AuthorizationErrorException"
private let endpointDisabledIdentity = "EndpointDisabledException"
private let filterPolicyLimitExceededIdentity = "FilterPolicyLimitExceededException"
private let internalErrorIdentity = "InternalErrorException"
private let invalidParameterIdentity = "InvalidParameterException"
private let invalidParameterValueIdentity = "InvalidParameterValueException"
private let notFoundIdentity = "NotFoundException"
private let platformApplicationDisabledIdentity = "PlatformApplicationDisabledException"
private let subscriptionLimitExceededIdentity = "SubscriptionLimitExceededException"
private let throttledIdentity = "ThrottledException"
private let topicLimitExceededIdentity = "TopicLimitExceededException"

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
    case notFound(NotFoundException)
    case platformApplicationDisabled(PlatformApplicationDisabledException)
    case subscriptionLimitExceeded(SubscriptionLimitExceededException)
    case throttled(ThrottledException)
    case topicLimitExceeded(TopicLimitExceededException)
    
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
        default:
            throw SimpleNotificationCodingError.unrecognizedError(errorReason, errorMessage)
        }
    }
    
}

