// Copyright 2018-2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
// CloudformationModelErrors.swift
// CloudformationModel
//

import Foundation
import Logging

public typealias CloudformationErrorResult<SuccessPayload> = Result<SuccessPayload, CloudformationError>

public extension Swift.Error {
    func asUnrecognizedCloudformationError() -> CloudformationError {
        let errorType = String(describing: type(of: self))
        let errorDescription = String(describing: self)
        return .unrecognizedError(errorType, errorDescription)
    }
}

private let alreadyExistsIdentity = "AlreadyExistsException"
private let cFNRegistryIdentity = "CFNRegistryException"
private let changeSetNotFoundIdentity = "ChangeSetNotFound"
private let createdButModifiedIdentity = "CreatedButModifiedException"
private let insufficientCapabilitiesIdentity = "InsufficientCapabilitiesException"
private let invalidChangeSetStatusIdentity = "InvalidChangeSetStatus"
private let invalidOperationIdentity = "InvalidOperationException"
private let invalidStateTransitionIdentity = "InvalidStateTransition"
private let limitExceededIdentity = "LimitExceededException"
private let nameAlreadyExistsIdentity = "NameAlreadyExistsException"
private let operationIdAlreadyExistsIdentity = "OperationIdAlreadyExistsException"
private let operationInProgressIdentity = "OperationInProgressException"
private let operationNotFoundIdentity = "OperationNotFoundException"
private let operationStatusCheckFailedIdentity = "ConditionalCheckFailed"
private let stackInstanceNotFoundIdentity = "StackInstanceNotFoundException"
private let stackSetNotEmptyIdentity = "StackSetNotEmptyException"
private let stackSetNotFoundIdentity = "StackSetNotFoundException"
private let staleRequestIdentity = "StaleRequestException"
private let tokenAlreadyExistsIdentity = "TokenAlreadyExistsException"
private let typeNotFoundIdentity = "TypeNotFoundException"
private let __accessDeniedIdentity = "AccessDenied"

public enum CloudformationError: Swift.Error, Decodable {
    case alreadyExists(AlreadyExistsException)
    case cFNRegistry(CFNRegistryException)
    case changeSetNotFound(ChangeSetNotFoundException)
    case createdButModified(CreatedButModifiedException)
    case insufficientCapabilities(InsufficientCapabilitiesException)
    case invalidChangeSetStatus(InvalidChangeSetStatusException)
    case invalidOperation(InvalidOperationException)
    case invalidStateTransition(InvalidStateTransitionException)
    case limitExceeded(LimitExceededException)
    case nameAlreadyExists(NameAlreadyExistsException)
    case operationIdAlreadyExists(OperationIdAlreadyExistsException)
    case operationInProgress(OperationInProgressException)
    case operationNotFound(OperationNotFoundException)
    case operationStatusCheckFailed(OperationStatusCheckFailedException)
    case stackInstanceNotFound(StackInstanceNotFoundException)
    case stackSetNotEmpty(StackSetNotEmptyException)
    case stackSetNotFound(StackSetNotFoundException)
    case staleRequest(StaleRequestException)
    case tokenAlreadyExists(TokenAlreadyExistsException)
    case typeNotFound(TypeNotFoundException)
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
        case alreadyExistsIdentity:
            let errorPayload = try AlreadyExistsException(from: decoder)
            self = CloudformationError.alreadyExists(errorPayload)
        case cFNRegistryIdentity:
            let errorPayload = try CFNRegistryException(from: decoder)
            self = CloudformationError.cFNRegistry(errorPayload)
        case changeSetNotFoundIdentity:
            let errorPayload = try ChangeSetNotFoundException(from: decoder)
            self = CloudformationError.changeSetNotFound(errorPayload)
        case createdButModifiedIdentity:
            let errorPayload = try CreatedButModifiedException(from: decoder)
            self = CloudformationError.createdButModified(errorPayload)
        case insufficientCapabilitiesIdentity:
            let errorPayload = try InsufficientCapabilitiesException(from: decoder)
            self = CloudformationError.insufficientCapabilities(errorPayload)
        case invalidChangeSetStatusIdentity:
            let errorPayload = try InvalidChangeSetStatusException(from: decoder)
            self = CloudformationError.invalidChangeSetStatus(errorPayload)
        case invalidOperationIdentity:
            let errorPayload = try InvalidOperationException(from: decoder)
            self = CloudformationError.invalidOperation(errorPayload)
        case invalidStateTransitionIdentity:
            let errorPayload = try InvalidStateTransitionException(from: decoder)
            self = CloudformationError.invalidStateTransition(errorPayload)
        case limitExceededIdentity:
            let errorPayload = try LimitExceededException(from: decoder)
            self = CloudformationError.limitExceeded(errorPayload)
        case nameAlreadyExistsIdentity:
            let errorPayload = try NameAlreadyExistsException(from: decoder)
            self = CloudformationError.nameAlreadyExists(errorPayload)
        case operationIdAlreadyExistsIdentity:
            let errorPayload = try OperationIdAlreadyExistsException(from: decoder)
            self = CloudformationError.operationIdAlreadyExists(errorPayload)
        case operationInProgressIdentity:
            let errorPayload = try OperationInProgressException(from: decoder)
            self = CloudformationError.operationInProgress(errorPayload)
        case operationNotFoundIdentity:
            let errorPayload = try OperationNotFoundException(from: decoder)
            self = CloudformationError.operationNotFound(errorPayload)
        case operationStatusCheckFailedIdentity:
            let errorPayload = try OperationStatusCheckFailedException(from: decoder)
            self = CloudformationError.operationStatusCheckFailed(errorPayload)
        case stackInstanceNotFoundIdentity:
            let errorPayload = try StackInstanceNotFoundException(from: decoder)
            self = CloudformationError.stackInstanceNotFound(errorPayload)
        case stackSetNotEmptyIdentity:
            let errorPayload = try StackSetNotEmptyException(from: decoder)
            self = CloudformationError.stackSetNotEmpty(errorPayload)
        case stackSetNotFoundIdentity:
            let errorPayload = try StackSetNotFoundException(from: decoder)
            self = CloudformationError.stackSetNotFound(errorPayload)
        case staleRequestIdentity:
            let errorPayload = try StaleRequestException(from: decoder)
            self = CloudformationError.staleRequest(errorPayload)
        case tokenAlreadyExistsIdentity:
            let errorPayload = try TokenAlreadyExistsException(from: decoder)
            self = CloudformationError.tokenAlreadyExists(errorPayload)
        case typeNotFoundIdentity:
            let errorPayload = try TypeNotFoundException(from: decoder)
            self = CloudformationError.typeNotFound(errorPayload)
        case __accessDeniedIdentity:
            self = .accessDenied(message: errorMessage)
        default:
            self = CloudformationError.unrecognizedError(errorReason, errorMessage)
        }
    }
    
}

