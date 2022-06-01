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
// RDSDataModelErrors.swift
// RDSDataModel
//

import Foundation
import Logging

public typealias RDSDataErrorResult<SuccessPayload> = Result<SuccessPayload, RDSDataError>

public extension Swift.Error {
    func asUnrecognizedRDSDataError() -> RDSDataError {
        let errorType = String(describing: type(of: self))
        let errorDescription = String(describing: self)
        return .unrecognizedError(errorType, errorDescription)
    }
}

private let accessDeniedIdentity = "AccessDeniedException"
private let badRequestIdentity = "BadRequestException"
private let forbiddenIdentity = "ForbiddenException"
private let internalServerErrorIdentity = "InternalServerErrorException"
private let notFoundIdentity = "NotFoundException"
private let serviceUnavailableIdentity = "ServiceUnavailableError"
private let statementTimeoutIdentity = "StatementTimeoutException"

public enum RDSDataError: Swift.Error, Decodable {
    case accessDenied(AccessDeniedException)
    case badRequest(BadRequestException)
    case forbidden(ForbiddenException)
    case internalServerError(InternalServerErrorException)
    case notFound(NotFoundException)
    case serviceUnavailable(ServiceUnavailableError)
    case statementTimeout(StatementTimeoutException)
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
        case accessDeniedIdentity:
            let errorPayload = try AccessDeniedException(from: decoder)
            self = RDSDataError.accessDenied(errorPayload)
        case badRequestIdentity:
            let errorPayload = try BadRequestException(from: decoder)
            self = RDSDataError.badRequest(errorPayload)
        case forbiddenIdentity:
            let errorPayload = try ForbiddenException(from: decoder)
            self = RDSDataError.forbidden(errorPayload)
        case internalServerErrorIdentity:
            let errorPayload = try InternalServerErrorException(from: decoder)
            self = RDSDataError.internalServerError(errorPayload)
        case notFoundIdentity:
            let errorPayload = try NotFoundException(from: decoder)
            self = RDSDataError.notFound(errorPayload)
        case serviceUnavailableIdentity:
            let errorPayload = try ServiceUnavailableError(from: decoder)
            self = RDSDataError.serviceUnavailable(errorPayload)
        case statementTimeoutIdentity:
            let errorPayload = try StatementTimeoutException(from: decoder)
            self = RDSDataError.statementTimeout(errorPayload)
        default:
            self = RDSDataError.unrecognizedError(errorReason, errorMessage)
        }
    }
    
}

