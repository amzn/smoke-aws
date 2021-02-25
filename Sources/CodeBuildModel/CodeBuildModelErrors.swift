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
// swiftlint:disable type_body_length function_body_length generic_type_name cyclomatic_complexity
// -- Generated Code; do not edit --
//
// CodeBuildModelErrors.swift
// CodeBuildModel
//

import Foundation
import Logging

public typealias CodeBuildErrorResult<SuccessPayload> = Result<SuccessPayload, CodeBuildError>

public extension Swift.Error {
    func asUnrecognizedCodeBuildError() -> CodeBuildError {
        let errorType = String(describing: type(of: self))
        let errorDescription = String(describing: self)
        return .unrecognizedError(errorType, errorDescription)
    }
}

private let accountLimitExceededIdentity = "AccountLimitExceededException"
private let invalidInputIdentity = "InvalidInputException"
private let oAuthProviderIdentity = "OAuthProviderException"
private let resourceAlreadyExistsIdentity = "ResourceAlreadyExistsException"
private let resourceNotFoundIdentity = "ResourceNotFoundException"
private let __accessDeniedIdentity = "AccessDenied"

public enum CodeBuildError: Swift.Error, Decodable {
    case accountLimitExceeded(AccountLimitExceededException)
    case invalidInput(InvalidInputException)
    case oAuthProvider(OAuthProviderException)
    case resourceAlreadyExists(ResourceAlreadyExistsException)
    case resourceNotFound(ResourceNotFoundException)
    case accessDenied(message: String?)
    case validationError(reason: String)
    case unrecognizedError(String, String?)

    enum CodingKeys: String, CodingKey {
        case type = "__type"
        case message = "message"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        var errorReason = try values.decode(String.self, forKey: .type)
        let errorMessage = try values.decodeIfPresent(String.self, forKey: .message)
        
        if let index = errorReason.firstIndex(of: "#") {
            errorReason = String(errorReason[errorReason.index(index, offsetBy: 1)...])
        }

        switch errorReason {
        case accountLimitExceededIdentity:
            let errorPayload = try AccountLimitExceededException(from: decoder)
            self = CodeBuildError.accountLimitExceeded(errorPayload)
        case invalidInputIdentity:
            let errorPayload = try InvalidInputException(from: decoder)
            self = CodeBuildError.invalidInput(errorPayload)
        case oAuthProviderIdentity:
            let errorPayload = try OAuthProviderException(from: decoder)
            self = CodeBuildError.oAuthProvider(errorPayload)
        case resourceAlreadyExistsIdentity:
            let errorPayload = try ResourceAlreadyExistsException(from: decoder)
            self = CodeBuildError.resourceAlreadyExists(errorPayload)
        case resourceNotFoundIdentity:
            let errorPayload = try ResourceNotFoundException(from: decoder)
            self = CodeBuildError.resourceNotFound(errorPayload)
        case __accessDeniedIdentity:
            self = .accessDenied(message: errorMessage)
        default:
            self = CodeBuildError.unrecognizedError(errorReason, errorMessage)
        }
    }
    
}

