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
// EventBridgeSchedulerModelErrors.swift
// EventBridgeSchedulerModel
//

import Foundation
import Logging

public typealias EventBridgeSchedulerErrorResult<SuccessPayload> = Result<SuccessPayload, EventBridgeSchedulerError>

public extension Swift.Error {
    func asUnrecognizedEventBridgeSchedulerError() -> EventBridgeSchedulerError {
        let errorType = String(describing: type(of: self))
        let errorDescription = String(describing: self)
        return .unrecognizedError(errorType, errorDescription)
    }
}

private let conflictIdentity = "ConflictException"
private let internalServerIdentity = "InternalServerException"
private let resourceNotFoundIdentity = "ResourceNotFoundException"
private let serviceQuotaExceededIdentity = "ServiceQuotaExceededException"
private let throttlingIdentity = "ThrottlingException"
private let validationIdentity = "ValidationException"
private let __accessDeniedIdentity = "AccessDenied"

public enum EventBridgeSchedulerError: Swift.Error, Decodable {
    case conflict(ConflictException)
    case internalServer(InternalServerException)
    case resourceNotFound(ResourceNotFoundException)
    case serviceQuotaExceeded(ServiceQuotaExceededException)
    case throttling(ThrottlingException)
    case validation(ValidationException)
    case accessDenied(message: String?)
    case validationError(reason: String)
    case unrecognizedError(String, String?)

    enum CodingKeys: String, CodingKey {
        case type = "__type"
        case message = "message"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        var errorReason = try values.decodeIfPresent(String.self, forKey: .type) ?? "Unspecified"
        let errorMessage = try values.decodeIfPresent(String.self, forKey: .message)
        
        if let index = errorReason.firstIndex(of: "#") {
            errorReason = String(errorReason[errorReason.index(index, offsetBy: 1)...])
        }

        switch errorReason {
        case conflictIdentity:
            let errorPayload = try ConflictException(from: decoder)
            self = EventBridgeSchedulerError.conflict(errorPayload)
        case internalServerIdentity:
            let errorPayload = try InternalServerException(from: decoder)
            self = EventBridgeSchedulerError.internalServer(errorPayload)
        case resourceNotFoundIdentity:
            let errorPayload = try ResourceNotFoundException(from: decoder)
            self = EventBridgeSchedulerError.resourceNotFound(errorPayload)
        case serviceQuotaExceededIdentity:
            let errorPayload = try ServiceQuotaExceededException(from: decoder)
            self = EventBridgeSchedulerError.serviceQuotaExceeded(errorPayload)
        case throttlingIdentity:
            let errorPayload = try ThrottlingException(from: decoder)
            self = EventBridgeSchedulerError.throttling(errorPayload)
        case validationIdentity:
            let errorPayload = try ValidationException(from: decoder)
            self = EventBridgeSchedulerError.validation(errorPayload)
        case __accessDeniedIdentity:
            self = .accessDenied(message: errorMessage)
        default:
            self = EventBridgeSchedulerError.unrecognizedError(errorReason, errorMessage)
        }
    }
    
}

