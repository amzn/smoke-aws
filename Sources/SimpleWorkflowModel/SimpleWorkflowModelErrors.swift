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
// SimpleWorkflowModelErrors.swift
// SimpleWorkflowModel
//

import Foundation
import Logging

public typealias SimpleWorkflowErrorResult<SuccessPayload> = Result<SuccessPayload, SimpleWorkflowError>

public extension Swift.Error {
    func asUnrecognizedSimpleWorkflowError() -> SimpleWorkflowError {
        let errorType = String(describing: type(of: self))
        let errorDescription = String(describing: self)
        return .unrecognizedError(errorType, errorDescription)
    }
}

private let defaultUndefinedIdentity = "DefaultUndefinedFault"
private let domainAlreadyExistsIdentity = "DomainAlreadyExistsFault"
private let domainDeprecatedIdentity = "DomainDeprecatedFault"
private let limitExceededIdentity = "LimitExceededFault"
private let operationNotPermittedIdentity = "OperationNotPermittedFault"
private let tooManyTagsIdentity = "TooManyTagsFault"
private let typeAlreadyExistsIdentity = "TypeAlreadyExistsFault"
private let typeDeprecatedIdentity = "TypeDeprecatedFault"
private let unknownResourceIdentity = "UnknownResourceFault"
private let workflowExecutionAlreadyStartedIdentity = "WorkflowExecutionAlreadyStartedFault"
private let __accessDeniedIdentity = "AccessDenied"

public enum SimpleWorkflowError: Swift.Error, Decodable {
    case defaultUndefined(DefaultUndefinedFault)
    case domainAlreadyExists(DomainAlreadyExistsFault)
    case domainDeprecated(DomainDeprecatedFault)
    case limitExceeded(LimitExceededFault)
    case operationNotPermitted(OperationNotPermittedFault)
    case tooManyTags(TooManyTagsFault)
    case typeAlreadyExists(TypeAlreadyExistsFault)
    case typeDeprecated(TypeDeprecatedFault)
    case unknownResource(UnknownResourceFault)
    case workflowExecutionAlreadyStarted(WorkflowExecutionAlreadyStartedFault)
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
        case defaultUndefinedIdentity:
            let errorPayload = try DefaultUndefinedFault(from: decoder)
            self = SimpleWorkflowError.defaultUndefined(errorPayload)
        case domainAlreadyExistsIdentity:
            let errorPayload = try DomainAlreadyExistsFault(from: decoder)
            self = SimpleWorkflowError.domainAlreadyExists(errorPayload)
        case domainDeprecatedIdentity:
            let errorPayload = try DomainDeprecatedFault(from: decoder)
            self = SimpleWorkflowError.domainDeprecated(errorPayload)
        case limitExceededIdentity:
            let errorPayload = try LimitExceededFault(from: decoder)
            self = SimpleWorkflowError.limitExceeded(errorPayload)
        case operationNotPermittedIdentity:
            let errorPayload = try OperationNotPermittedFault(from: decoder)
            self = SimpleWorkflowError.operationNotPermitted(errorPayload)
        case tooManyTagsIdentity:
            let errorPayload = try TooManyTagsFault(from: decoder)
            self = SimpleWorkflowError.tooManyTags(errorPayload)
        case typeAlreadyExistsIdentity:
            let errorPayload = try TypeAlreadyExistsFault(from: decoder)
            self = SimpleWorkflowError.typeAlreadyExists(errorPayload)
        case typeDeprecatedIdentity:
            let errorPayload = try TypeDeprecatedFault(from: decoder)
            self = SimpleWorkflowError.typeDeprecated(errorPayload)
        case unknownResourceIdentity:
            let errorPayload = try UnknownResourceFault(from: decoder)
            self = SimpleWorkflowError.unknownResource(errorPayload)
        case workflowExecutionAlreadyStartedIdentity:
            let errorPayload = try WorkflowExecutionAlreadyStartedFault(from: decoder)
            self = SimpleWorkflowError.workflowExecutionAlreadyStarted(errorPayload)
        case __accessDeniedIdentity:
            self = .accessDenied(message: errorMessage)
        default:
            self = SimpleWorkflowError.unrecognizedError(errorReason, errorMessage)
        }
    }
    
}

