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
// CloudWatchModelErrors.swift
// CloudWatchModel
//

import Foundation
import LoggerAPI

private let concurrentModificationIdentity = "ConcurrentModificationException"
private let dashboardInvalidInputIdentity = "InvalidParameterInput"
private let dashboardNotFoundIdentity = "ResourceNotFound"
private let internalServiceIdentity = "InternalServiceError"
private let invalidFormatIdentity = "InvalidFormat"
private let invalidNextTokenIdentity = "InvalidNextToken"
private let invalidParameterCombinationIdentity = "InvalidParameterCombination"
private let invalidParameterValueIdentity = "InvalidParameterValue"
private let limitExceededIdentity = "LimitExceeded"
private let missingRequiredParameterIdentity = "MissingParameter"
private let resourceNotFoundIdentity = "ResourceNotFound"
private let resourceNotFoundExceptionIdentity = "ResourceNotFoundException"
private let __accessDeniedIdentity = "AccessDenied"

public enum CloudWatchCodingError: Swift.Error {
    case unknownError
    case validationError(reason: String)
    case unrecognizedError(String, String?)
}

public enum CloudWatchError: Swift.Error, Decodable {
    case concurrentModification(ConcurrentModificationException)
    case dashboardInvalidInput(DashboardInvalidInputError)
    case dashboardNotFound(DashboardNotFoundError)
    case internalService(InternalServiceFault)
    case invalidFormat(InvalidFormatFault)
    case invalidNextToken(InvalidNextToken)
    case invalidParameterCombination(InvalidParameterCombinationException)
    case invalidParameterValue(InvalidParameterValueException)
    case limitExceeded(LimitExceededFault)
    case missingRequiredParameter(MissingRequiredParameterException)
    case resourceNotFound(ResourceNotFound)
    case resourceNotFoundException(ResourceNotFoundException)
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
        case concurrentModificationIdentity:
            let errorPayload = try ConcurrentModificationException(from: decoder)
            self = CloudWatchError.concurrentModification(errorPayload)
        case dashboardInvalidInputIdentity:
            let errorPayload = try DashboardInvalidInputError(from: decoder)
            self = CloudWatchError.dashboardInvalidInput(errorPayload)
        case dashboardNotFoundIdentity:
            let errorPayload = try DashboardNotFoundError(from: decoder)
            self = CloudWatchError.dashboardNotFound(errorPayload)
        case internalServiceIdentity:
            let errorPayload = try InternalServiceFault(from: decoder)
            self = CloudWatchError.internalService(errorPayload)
        case invalidFormatIdentity:
            let errorPayload = try InvalidFormatFault(from: decoder)
            self = CloudWatchError.invalidFormat(errorPayload)
        case invalidNextTokenIdentity:
            let errorPayload = try InvalidNextToken(from: decoder)
            self = CloudWatchError.invalidNextToken(errorPayload)
        case invalidParameterCombinationIdentity:
            let errorPayload = try InvalidParameterCombinationException(from: decoder)
            self = CloudWatchError.invalidParameterCombination(errorPayload)
        case invalidParameterValueIdentity:
            let errorPayload = try InvalidParameterValueException(from: decoder)
            self = CloudWatchError.invalidParameterValue(errorPayload)
        case limitExceededIdentity:
            let errorPayload = try LimitExceededFault(from: decoder)
            self = CloudWatchError.limitExceeded(errorPayload)
        case missingRequiredParameterIdentity:
            let errorPayload = try MissingRequiredParameterException(from: decoder)
            self = CloudWatchError.missingRequiredParameter(errorPayload)
        case resourceNotFoundIdentity:
            let errorPayload = try ResourceNotFound(from: decoder)
            self = CloudWatchError.resourceNotFound(errorPayload)
        case resourceNotFoundExceptionIdentity:
            let errorPayload = try ResourceNotFoundException(from: decoder)
            self = CloudWatchError.resourceNotFoundException(errorPayload)
        case __accessDeniedIdentity:
            self = .accessDenied(message: errorMessage)
        default:
            throw CloudWatchCodingError.unrecognizedError(errorReason, errorMessage)
        }
    }
    
}

