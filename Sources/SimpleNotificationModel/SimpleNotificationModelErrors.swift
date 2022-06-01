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
// SimpleNotificationModelErrors.swift
// SimpleNotificationModel
//

import Foundation
import Logging

public typealias SimpleNotificationErrorResult<SuccessPayload> = Result<SuccessPayload, SimpleNotificationError>

public extension Swift.Error {
    func asUnrecognizedSimpleNotificationError() -> SimpleNotificationError {
        let errorType = String(describing: type(of: self))
        let errorDescription = String(describing: self)
        return .unrecognizedError(errorType, errorDescription)
    }
}

private let authorizationErrorIdentity = "AuthorizationError"
private let batchEntryIdsNotDistinctIdentity = "BatchEntryIdsNotDistinct"
private let batchRequestTooLongIdentity = "BatchRequestTooLong"
private let concurrentAccessIdentity = "ConcurrentAccess"
private let emptyBatchRequestIdentity = "EmptyBatchRequest"
private let endpointDisabledIdentity = "EndpointDisabled"
private let filterPolicyLimitExceededIdentity = "FilterPolicyLimitExceeded"
private let internalErrorIdentity = "InternalError"
private let invalidBatchEntryIdIdentity = "InvalidBatchEntryId"
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
private let optedOutIdentity = "OptedOut"
private let platformApplicationDisabledIdentity = "PlatformApplicationDisabled"
private let resourceNotFoundIdentity = "ResourceNotFound"
private let staleTagIdentity = "StaleTag"
private let subscriptionLimitExceededIdentity = "SubscriptionLimitExceeded"
private let tagLimitExceededIdentity = "TagLimitExceeded"
private let tagPolicyIdentity = "TagPolicy"
private let throttledIdentity = "Throttled"
private let tooManyEntriesInBatchRequestIdentity = "TooManyEntriesInBatchRequest"
private let topicLimitExceededIdentity = "TopicLimitExceeded"
private let userErrorIdentity = "UserError"
private let validationIdentity = "ValidationException"
private let verificationIdentity = "VerificationException"
private let __accessDeniedIdentity = "AccessDenied"

public enum SimpleNotificationError: Swift.Error, Decodable {
    case authorizationError(AuthorizationErrorException)
    case batchEntryIdsNotDistinct(BatchEntryIdsNotDistinctException)
    case batchRequestTooLong(BatchRequestTooLongException)
    case concurrentAccess(ConcurrentAccessException)
    case emptyBatchRequest(EmptyBatchRequestException)
    case endpointDisabled(EndpointDisabledException)
    case filterPolicyLimitExceeded(FilterPolicyLimitExceededException)
    case internalError(InternalErrorException)
    case invalidBatchEntryId(InvalidBatchEntryIdException)
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
    case optedOut(OptedOutException)
    case platformApplicationDisabled(PlatformApplicationDisabledException)
    case resourceNotFound(ResourceNotFoundException)
    case staleTag(StaleTagException)
    case subscriptionLimitExceeded(SubscriptionLimitExceededException)
    case tagLimitExceeded(TagLimitExceededException)
    case tagPolicy(TagPolicyException)
    case throttled(ThrottledException)
    case tooManyEntriesInBatchRequest(TooManyEntriesInBatchRequestException)
    case topicLimitExceeded(TopicLimitExceededException)
    case userError(UserErrorException)
    case validation(ValidationException)
    case verification(VerificationException)
    case accessDenied(message: String?)
    case validationError(reason: String)
    case unrecognizedError(String, String?)

    enum CodingKeys: String, CodingKey {
        case type = "Code"
        case message = "Message"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        var errorReason = try values.decode(String.self, forKey: .type)
        let errorMessage = try values.decodeIfPresent(String.self, forKey: .message)
        
        if let index = errorReason.firstIndex(of: "#") {
            errorReason = String(errorReason[errorReason.index(index, offsetBy: 1)...])
        }

        switch errorReason {
        case authorizationErrorIdentity:
            let errorPayload = try AuthorizationErrorException(from: decoder)
            self = SimpleNotificationError.authorizationError(errorPayload)
        case batchEntryIdsNotDistinctIdentity:
            let errorPayload = try BatchEntryIdsNotDistinctException(from: decoder)
            self = SimpleNotificationError.batchEntryIdsNotDistinct(errorPayload)
        case batchRequestTooLongIdentity:
            let errorPayload = try BatchRequestTooLongException(from: decoder)
            self = SimpleNotificationError.batchRequestTooLong(errorPayload)
        case concurrentAccessIdentity:
            let errorPayload = try ConcurrentAccessException(from: decoder)
            self = SimpleNotificationError.concurrentAccess(errorPayload)
        case emptyBatchRequestIdentity:
            let errorPayload = try EmptyBatchRequestException(from: decoder)
            self = SimpleNotificationError.emptyBatchRequest(errorPayload)
        case endpointDisabledIdentity:
            let errorPayload = try EndpointDisabledException(from: decoder)
            self = SimpleNotificationError.endpointDisabled(errorPayload)
        case filterPolicyLimitExceededIdentity:
            let errorPayload = try FilterPolicyLimitExceededException(from: decoder)
            self = SimpleNotificationError.filterPolicyLimitExceeded(errorPayload)
        case internalErrorIdentity:
            let errorPayload = try InternalErrorException(from: decoder)
            self = SimpleNotificationError.internalError(errorPayload)
        case invalidBatchEntryIdIdentity:
            let errorPayload = try InvalidBatchEntryIdException(from: decoder)
            self = SimpleNotificationError.invalidBatchEntryId(errorPayload)
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
        case optedOutIdentity:
            let errorPayload = try OptedOutException(from: decoder)
            self = SimpleNotificationError.optedOut(errorPayload)
        case platformApplicationDisabledIdentity:
            let errorPayload = try PlatformApplicationDisabledException(from: decoder)
            self = SimpleNotificationError.platformApplicationDisabled(errorPayload)
        case resourceNotFoundIdentity:
            let errorPayload = try ResourceNotFoundException(from: decoder)
            self = SimpleNotificationError.resourceNotFound(errorPayload)
        case staleTagIdentity:
            let errorPayload = try StaleTagException(from: decoder)
            self = SimpleNotificationError.staleTag(errorPayload)
        case subscriptionLimitExceededIdentity:
            let errorPayload = try SubscriptionLimitExceededException(from: decoder)
            self = SimpleNotificationError.subscriptionLimitExceeded(errorPayload)
        case tagLimitExceededIdentity:
            let errorPayload = try TagLimitExceededException(from: decoder)
            self = SimpleNotificationError.tagLimitExceeded(errorPayload)
        case tagPolicyIdentity:
            let errorPayload = try TagPolicyException(from: decoder)
            self = SimpleNotificationError.tagPolicy(errorPayload)
        case throttledIdentity:
            let errorPayload = try ThrottledException(from: decoder)
            self = SimpleNotificationError.throttled(errorPayload)
        case tooManyEntriesInBatchRequestIdentity:
            let errorPayload = try TooManyEntriesInBatchRequestException(from: decoder)
            self = SimpleNotificationError.tooManyEntriesInBatchRequest(errorPayload)
        case topicLimitExceededIdentity:
            let errorPayload = try TopicLimitExceededException(from: decoder)
            self = SimpleNotificationError.topicLimitExceeded(errorPayload)
        case userErrorIdentity:
            let errorPayload = try UserErrorException(from: decoder)
            self = SimpleNotificationError.userError(errorPayload)
        case validationIdentity:
            let errorPayload = try ValidationException(from: decoder)
            self = SimpleNotificationError.validation(errorPayload)
        case verificationIdentity:
            let errorPayload = try VerificationException(from: decoder)
            self = SimpleNotificationError.verification(errorPayload)
        case __accessDeniedIdentity:
            self = .accessDenied(message: errorMessage)
        default:
            self = SimpleNotificationError.unrecognizedError(errorReason, errorMessage)
        }
    }
    
}

