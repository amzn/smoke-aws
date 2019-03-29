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
// SecurityTokenModelErrors.swift
// SecurityTokenModel
//

import Foundation
import LoggerAPI

private let expiredTokenIdentity = "ExpiredTokenException"
private let iDPCommunicationErrorIdentity = "IDPCommunicationError"
private let iDPRejectedClaimIdentity = "IDPRejectedClaim"
private let invalidAuthorizationMessageIdentity = "InvalidAuthorizationMessageException"
private let invalidIdentityTokenIdentity = "InvalidIdentityToken"
private let malformedPolicyDocumentIdentity = "MalformedPolicyDocument"
private let packedPolicyTooLargeIdentity = "PackedPolicyTooLarge"
private let regionDisabledIdentity = "RegionDisabledException"
private let __accessDeniedIdentity = "AccessDenied"

public enum SecurityTokenCodingError: Swift.Error {
    case unknownError
    case validationError(reason: String)
    case unrecognizedError(String, String?)
}

public enum SecurityTokenError: Swift.Error, Decodable {
    case expiredToken(ExpiredTokenException)
    case iDPCommunicationError(IDPCommunicationErrorException)
    case iDPRejectedClaim(IDPRejectedClaimException)
    case invalidAuthorizationMessage(InvalidAuthorizationMessageException)
    case invalidIdentityToken(InvalidIdentityTokenException)
    case malformedPolicyDocument(MalformedPolicyDocumentException)
    case packedPolicyTooLarge(PackedPolicyTooLargeException)
    case regionDisabled(RegionDisabledException)
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
        case expiredTokenIdentity:
            let errorPayload = try ExpiredTokenException(from: decoder)
            self = SecurityTokenError.expiredToken(errorPayload)
        case iDPCommunicationErrorIdentity:
            let errorPayload = try IDPCommunicationErrorException(from: decoder)
            self = SecurityTokenError.iDPCommunicationError(errorPayload)
        case iDPRejectedClaimIdentity:
            let errorPayload = try IDPRejectedClaimException(from: decoder)
            self = SecurityTokenError.iDPRejectedClaim(errorPayload)
        case invalidAuthorizationMessageIdentity:
            let errorPayload = try InvalidAuthorizationMessageException(from: decoder)
            self = SecurityTokenError.invalidAuthorizationMessage(errorPayload)
        case invalidIdentityTokenIdentity:
            let errorPayload = try InvalidIdentityTokenException(from: decoder)
            self = SecurityTokenError.invalidIdentityToken(errorPayload)
        case malformedPolicyDocumentIdentity:
            let errorPayload = try MalformedPolicyDocumentException(from: decoder)
            self = SecurityTokenError.malformedPolicyDocument(errorPayload)
        case packedPolicyTooLargeIdentity:
            let errorPayload = try PackedPolicyTooLargeException(from: decoder)
            self = SecurityTokenError.packedPolicyTooLarge(errorPayload)
        case regionDisabledIdentity:
            let errorPayload = try RegionDisabledException(from: decoder)
            self = SecurityTokenError.regionDisabled(errorPayload)
        case __accessDeniedIdentity:
            self = .accessDenied(message: errorMessage)
        default:
            throw SecurityTokenCodingError.unrecognizedError(errorReason, errorMessage)
        }
    }
    
}

