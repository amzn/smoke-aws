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

private let accessDeniedIdentity = "AccessDeniedException"
private let alreadyExistsIdentity = "AlreadyExistsException"
private let cFNRegistryIdentity = "CFNRegistryException"
private let changeSetNotFoundIdentity = "ChangeSetNotFound"
private let createdButModifiedIdentity = "CreatedButModifiedException"
private let incompleteSignatureIdentity = "IncompleteSignature"
private let insufficientCapabilitiesIdentity = "InsufficientCapabilitiesException"
private let internalFailureIdentity = "InternalFailure"
private let invalidActionIdentity = "InvalidAction"
private let invalidChangeSetStatusIdentity = "InvalidChangeSetStatus"
private let invalidClientTokenIdIdentity = "InvalidClientTokenId"
private let invalidOperationIdentity = "InvalidOperationException"
private let invalidParameterCombinationIdentity = "InvalidParameterCombination"
private let invalidParameterValueIdentity = "InvalidParameterValue"
private let invalidQueryParameterIdentity = "InvalidQueryParameter"
private let invalidStateTransitionIdentity = "InvalidStateTransition"
private let limitExceededIdentity = "LimitExceededException"
private let malformedQueryStringIdentity = "MalformedQueryString"
private let missingActionIdentity = "MissingAction"
private let missingAuthenticationTokenIdentity = "MissingAuthenticationToken"
private let missingParameterIdentity = "MissingParameter"
private let nameAlreadyExistsIdentity = "NameAlreadyExistsException"
private let operationIdAlreadyExistsIdentity = "OperationIdAlreadyExistsException"
private let operationInProgressIdentity = "OperationInProgressException"
private let operationNotFoundIdentity = "OperationNotFoundException"
private let operationStatusCheckFailedIdentity = "ConditionalCheckFailed"
private let optInRequiredIdentity = "OptInRequired"
private let requestExpiredIdentity = "RequestExpired"
private let serviceUnavailableIdentity = "ServiceUnavailable"
private let stackInstanceNotFoundIdentity = "StackInstanceNotFoundException"
private let stackNotFoundIdentity = "StackNotFoundException"
private let stackSetNotEmptyIdentity = "StackSetNotEmptyException"
private let stackSetNotFoundIdentity = "StackSetNotFoundException"
private let staleRequestIdentity = "StaleRequestException"
private let throttlingIdentity = "ThrottlingException"
private let tokenAlreadyExistsIdentity = "TokenAlreadyExistsException"
private let typeConfigurationNotFoundIdentity = "TypeConfigurationNotFoundException"
private let typeNotFoundIdentity = "TypeNotFoundException"
private let validationIdentity = "ValidationError"

public struct CloudformationErrorPayload: Codable {
    public let type: String
    public let message: String

    enum CodingKeys: String, CodingKey {
        case type = "Code"
        case message = "Message"
    }
}

public enum CloudformationError: Swift.Error, Decodable {
    case accessDenied(CloudformationErrorPayload)
    case alreadyExists(AlreadyExistsException)
    case cFNRegistry(CFNRegistryException)
    case changeSetNotFound(ChangeSetNotFoundException)
    case createdButModified(CreatedButModifiedException)
    case incompleteSignature(CloudformationErrorPayload)
    case insufficientCapabilities(InsufficientCapabilitiesException)
    case internalFailure(CloudformationErrorPayload)
    case invalidAction(CloudformationErrorPayload)
    case invalidChangeSetStatus(InvalidChangeSetStatusException)
    case invalidClientTokenId(CloudformationErrorPayload)
    case invalidOperation(InvalidOperationException)
    case invalidParameterCombination(CloudformationErrorPayload)
    case invalidParameterValue(CloudformationErrorPayload)
    case invalidQueryParameter(CloudformationErrorPayload)
    case invalidStateTransition(InvalidStateTransitionException)
    case limitExceeded(LimitExceededException)
    case malformedQueryString(CloudformationErrorPayload)
    case missingAction(CloudformationErrorPayload)
    case missingAuthenticationToken(CloudformationErrorPayload)
    case missingParameter(CloudformationErrorPayload)
    case nameAlreadyExists(NameAlreadyExistsException)
    case operationIdAlreadyExists(OperationIdAlreadyExistsException)
    case operationInProgress(OperationInProgressException)
    case operationNotFound(OperationNotFoundException)
    case operationStatusCheckFailed(OperationStatusCheckFailedException)
    case optInRequired(CloudformationErrorPayload)
    case requestExpired(CloudformationErrorPayload)
    case serviceUnavailable(CloudformationErrorPayload)
    case stackInstanceNotFound(StackInstanceNotFoundException)
    case stackNotFound(StackNotFoundException)
    case stackSetNotEmpty(StackSetNotEmptyException)
    case stackSetNotFound(StackSetNotFoundException)
    case staleRequest(StaleRequestException)
    case throttling(CloudformationErrorPayload)
    case tokenAlreadyExists(TokenAlreadyExistsException)
    case typeConfigurationNotFound(TypeConfigurationNotFoundException)
    case typeNotFound(TypeNotFoundException)
    case validation(CloudformationErrorPayload)
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
        case accessDeniedIdentity:
            let errorPayload = try CloudformationErrorPayload(from: decoder)
            self = CloudformationError.accessDenied(errorPayload)
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
        case incompleteSignatureIdentity:
            let errorPayload = try CloudformationErrorPayload(from: decoder)
            self = CloudformationError.incompleteSignature(errorPayload)
        case insufficientCapabilitiesIdentity:
            let errorPayload = try InsufficientCapabilitiesException(from: decoder)
            self = CloudformationError.insufficientCapabilities(errorPayload)
        case internalFailureIdentity:
            let errorPayload = try CloudformationErrorPayload(from: decoder)
            self = CloudformationError.internalFailure(errorPayload)
        case invalidActionIdentity:
            let errorPayload = try CloudformationErrorPayload(from: decoder)
            self = CloudformationError.invalidAction(errorPayload)
        case invalidChangeSetStatusIdentity:
            let errorPayload = try InvalidChangeSetStatusException(from: decoder)
            self = CloudformationError.invalidChangeSetStatus(errorPayload)
        case invalidClientTokenIdIdentity:
            let errorPayload = try CloudformationErrorPayload(from: decoder)
            self = CloudformationError.invalidClientTokenId(errorPayload)
        case invalidOperationIdentity:
            let errorPayload = try InvalidOperationException(from: decoder)
            self = CloudformationError.invalidOperation(errorPayload)
        case invalidParameterCombinationIdentity:
            let errorPayload = try CloudformationErrorPayload(from: decoder)
            self = CloudformationError.invalidParameterCombination(errorPayload)
        case invalidParameterValueIdentity:
            let errorPayload = try CloudformationErrorPayload(from: decoder)
            self = CloudformationError.invalidParameterValue(errorPayload)
        case invalidQueryParameterIdentity:
            let errorPayload = try CloudformationErrorPayload(from: decoder)
            self = CloudformationError.invalidQueryParameter(errorPayload)
        case invalidStateTransitionIdentity:
            let errorPayload = try InvalidStateTransitionException(from: decoder)
            self = CloudformationError.invalidStateTransition(errorPayload)
        case limitExceededIdentity:
            let errorPayload = try LimitExceededException(from: decoder)
            self = CloudformationError.limitExceeded(errorPayload)
        case malformedQueryStringIdentity:
            let errorPayload = try CloudformationErrorPayload(from: decoder)
            self = CloudformationError.malformedQueryString(errorPayload)
        case missingActionIdentity:
            let errorPayload = try CloudformationErrorPayload(from: decoder)
            self = CloudformationError.missingAction(errorPayload)
        case missingAuthenticationTokenIdentity:
            let errorPayload = try CloudformationErrorPayload(from: decoder)
            self = CloudformationError.missingAuthenticationToken(errorPayload)
        case missingParameterIdentity:
            let errorPayload = try CloudformationErrorPayload(from: decoder)
            self = CloudformationError.missingParameter(errorPayload)
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
        case optInRequiredIdentity:
            let errorPayload = try CloudformationErrorPayload(from: decoder)
            self = CloudformationError.optInRequired(errorPayload)
        case requestExpiredIdentity:
            let errorPayload = try CloudformationErrorPayload(from: decoder)
            self = CloudformationError.requestExpired(errorPayload)
        case serviceUnavailableIdentity:
            let errorPayload = try CloudformationErrorPayload(from: decoder)
            self = CloudformationError.serviceUnavailable(errorPayload)
        case stackInstanceNotFoundIdentity:
            let errorPayload = try StackInstanceNotFoundException(from: decoder)
            self = CloudformationError.stackInstanceNotFound(errorPayload)
        case stackNotFoundIdentity:
            let errorPayload = try StackNotFoundException(from: decoder)
            self = CloudformationError.stackNotFound(errorPayload)
        case stackSetNotEmptyIdentity:
            let errorPayload = try StackSetNotEmptyException(from: decoder)
            self = CloudformationError.stackSetNotEmpty(errorPayload)
        case stackSetNotFoundIdentity:
            let errorPayload = try StackSetNotFoundException(from: decoder)
            self = CloudformationError.stackSetNotFound(errorPayload)
        case staleRequestIdentity:
            let errorPayload = try StaleRequestException(from: decoder)
            self = CloudformationError.staleRequest(errorPayload)
        case throttlingIdentity:
            let errorPayload = try CloudformationErrorPayload(from: decoder)
            self = CloudformationError.throttling(errorPayload)
        case tokenAlreadyExistsIdentity:
            let errorPayload = try TokenAlreadyExistsException(from: decoder)
            self = CloudformationError.tokenAlreadyExists(errorPayload)
        case typeConfigurationNotFoundIdentity:
            let errorPayload = try TypeConfigurationNotFoundException(from: decoder)
            self = CloudformationError.typeConfigurationNotFound(errorPayload)
        case typeNotFoundIdentity:
            let errorPayload = try TypeNotFoundException(from: decoder)
            self = CloudformationError.typeNotFound(errorPayload)
        case validationIdentity:
            let errorPayload = try CloudformationErrorPayload(from: decoder)
            self = CloudformationError.validation(errorPayload)
        default:
            self = CloudformationError.unrecognizedError(errorReason, errorMessage)
        }
    }
    
}

