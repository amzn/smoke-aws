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
// SecurityTokenModelTypes.swift
// SecurityTokenModel
//

import Foundation

/**
 Type definition for the Audience field.
 */
public typealias Audience = String

/**
 Type definition for the Issuer field.
 */
public typealias Issuer = String

/**
 Type definition for the NameQualifier field.
 */
public typealias NameQualifier = String

/**
 Type definition for the SAMLAssertionType field.
 */
public typealias SAMLAssertionType = String

/**
 Type definition for the Subject field.
 */
public typealias Subject = String

/**
 Type definition for the SubjectType field.
 */
public typealias SubjectType = String

/**
 Type definition for the AccessKeyIdType field.
 */
public typealias AccessKeyIdType = String

/**
 Type definition for the AccessKeySecretType field.
 */
public typealias AccessKeySecretType = String

/**
 Type definition for the AccountType field.
 */
public typealias AccountType = String

/**
 Type definition for the ArnType field.
 */
public typealias ArnType = String

/**
 Type definition for the AssumedRoleIdType field.
 */
public typealias AssumedRoleIdType = String

/**
 Type definition for the ClientTokenType field.
 */
public typealias ClientTokenType = String

/**
 Type definition for the DateType field.
 */
public typealias DateType = String

/**
 Type definition for the DecodedMessageType field.
 */
public typealias DecodedMessageType = String

/**
 Type definition for the DurationSecondsType field.
 */
public typealias DurationSecondsType = Int

/**
 Type definition for the EncodedMessageType field.
 */
public typealias EncodedMessageType = String

/**
 Type definition for the ExpiredIdentityTokenMessage field.
 */
public typealias ExpiredIdentityTokenMessage = String

/**
 Type definition for the ExternalIdType field.
 */
public typealias ExternalIdType = String

/**
 Type definition for the FederatedIdType field.
 */
public typealias FederatedIdType = String

/**
 Type definition for the IdpCommunicationErrorMessage field.
 */
public typealias IdpCommunicationErrorMessage = String

/**
 Type definition for the IdpRejectedClaimMessage field.
 */
public typealias IdpRejectedClaimMessage = String

/**
 Type definition for the InvalidAuthorizationMessage field.
 */
public typealias InvalidAuthorizationMessage = String

/**
 Type definition for the InvalidIdentityTokenMessage field.
 */
public typealias InvalidIdentityTokenMessage = String

/**
 Type definition for the MalformedPolicyDocumentMessage field.
 */
public typealias MalformedPolicyDocumentMessage = String

/**
 Type definition for the NonNegativeIntegerType field.
 */
public typealias NonNegativeIntegerType = Int

/**
 Type definition for the PackedPolicyTooLargeMessage field.
 */
public typealias PackedPolicyTooLargeMessage = String

/**
 Type definition for the RegionDisabledMessage field.
 */
public typealias RegionDisabledMessage = String

/**
 Type definition for the RoleDurationSecondsType field.
 */
public typealias RoleDurationSecondsType = Int

/**
 Type definition for the RoleSessionNameType field.
 */
public typealias RoleSessionNameType = String

/**
 Type definition for the SerialNumberType field.
 */
public typealias SerialNumberType = String

/**
 Type definition for the SessionPolicyDocumentType field.
 */
public typealias SessionPolicyDocumentType = String

/**
 Type definition for the TokenCodeType field.
 */
public typealias TokenCodeType = String

/**
 Type definition for the TokenType field.
 */
public typealias TokenType = String

/**
 Type definition for the UrlType field.
 */
public typealias UrlType = String

/**
 Type definition for the UserIdType field.
 */
public typealias UserIdType = String

/**
 Type definition for the UserNameType field.
 */
public typealias UserNameType = String

/**
 Type definition for the WebIdentitySubjectType field.
 */
public typealias WebIdentitySubjectType = String

/**
 Validation for the SAMLAssertionType field.
*/
extension SecurityTokenModel.SAMLAssertionType {
    public func validateAsSAMLAssertionType() throws {
        if self.count < 4 {
            throw SecurityTokenCodingError.validationError(reason: "The provided value to SAMLAssertionType violated the minimum length constraint.")
        }

        if self.count > 100000 {
            throw SecurityTokenCodingError.validationError(reason: "The provided value to SAMLAssertionType violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the AccessKeyIdType field.
*/
extension SecurityTokenModel.AccessKeyIdType {
    public func validateAsAccessKeyIdType() throws {
        if self.count < 16 {
            throw SecurityTokenCodingError.validationError(reason: "The provided value to accessKeyIdType violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw SecurityTokenCodingError.validationError(reason: "The provided value to accessKeyIdType violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[\\w]*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw SecurityTokenCodingError.validationError(
                    reason: "The provided value to accessKeyIdType violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the ArnType field.
*/
extension SecurityTokenModel.ArnType {
    public func validateAsArnType() throws {
        if self.count < 20 {
            throw SecurityTokenCodingError.validationError(reason: "The provided value to arnType violated the minimum length constraint.")
        }

        if self.count > 2048 {
            throw SecurityTokenCodingError.validationError(reason: "The provided value to arnType violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw SecurityTokenCodingError.validationError(
                    reason: "The provided value to arnType violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the AssumedRoleIdType field.
*/
extension SecurityTokenModel.AssumedRoleIdType {
    public func validateAsAssumedRoleIdType() throws {
        if self.count < 2 {
            throw SecurityTokenCodingError.validationError(reason: "The provided value to assumedRoleIdType violated the minimum length constraint.")
        }

        if self.count > 193 {
            throw SecurityTokenCodingError.validationError(reason: "The provided value to assumedRoleIdType violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[\\w+=,.@:-]*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw SecurityTokenCodingError.validationError(
                    reason: "The provided value to assumedRoleIdType violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the ClientTokenType field.
*/
extension SecurityTokenModel.ClientTokenType {
    public func validateAsClientTokenType() throws {
        if self.count < 4 {
            throw SecurityTokenCodingError.validationError(reason: "The provided value to clientTokenType violated the minimum length constraint.")
        }

        if self.count > 2048 {
            throw SecurityTokenCodingError.validationError(reason: "The provided value to clientTokenType violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the DurationSecondsType field.
*/
extension SecurityTokenModel.DurationSecondsType {
    public func validateAsDurationSecondsType() throws {
        if self < 900 {
            throw SecurityTokenCodingError.validationError(reason: "The provided value to durationSecondsType violated the minimum range constraint.")
        }

        if self > 129600 {
            throw SecurityTokenCodingError.validationError(reason: "The provided value to durationSecondsType violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the EncodedMessageType field.
*/
extension SecurityTokenModel.EncodedMessageType {
    public func validateAsEncodedMessageType() throws {
        if self.count < 1 {
            throw SecurityTokenCodingError.validationError(reason: "The provided value to encodedMessageType violated the minimum length constraint.")
        }

        if self.count > 10240 {
            throw SecurityTokenCodingError.validationError(reason: "The provided value to encodedMessageType violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ExternalIdType field.
*/
extension SecurityTokenModel.ExternalIdType {
    public func validateAsExternalIdType() throws {
        if self.count < 2 {
            throw SecurityTokenCodingError.validationError(reason: "The provided value to externalIdType violated the minimum length constraint.")
        }

        if self.count > 1224 {
            throw SecurityTokenCodingError.validationError(reason: "The provided value to externalIdType violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[\\w+=,.@:\\/-]*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw SecurityTokenCodingError.validationError(
                    reason: "The provided value to externalIdType violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the FederatedIdType field.
*/
extension SecurityTokenModel.FederatedIdType {
    public func validateAsFederatedIdType() throws {
        if self.count < 2 {
            throw SecurityTokenCodingError.validationError(reason: "The provided value to federatedIdType violated the minimum length constraint.")
        }

        if self.count > 193 {
            throw SecurityTokenCodingError.validationError(reason: "The provided value to federatedIdType violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[\\w+=,.@\\:-]*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw SecurityTokenCodingError.validationError(
                    reason: "The provided value to federatedIdType violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the NonNegativeIntegerType field.
*/
extension SecurityTokenModel.NonNegativeIntegerType {
    public func validateAsNonNegativeIntegerType() throws {
        if self < 0 {
            throw SecurityTokenCodingError.validationError(reason: "The provided value to nonNegativeIntegerType violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the RoleDurationSecondsType field.
*/
extension SecurityTokenModel.RoleDurationSecondsType {
    public func validateAsRoleDurationSecondsType() throws {
        if self < 900 {
            throw SecurityTokenCodingError.validationError(reason: "The provided value to roleDurationSecondsType violated the minimum range constraint.")
        }

        if self > 43200 {
            throw SecurityTokenCodingError.validationError(reason: "The provided value to roleDurationSecondsType violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the RoleSessionNameType field.
*/
extension SecurityTokenModel.RoleSessionNameType {
    public func validateAsRoleSessionNameType() throws {
        if self.count < 2 {
            throw SecurityTokenCodingError.validationError(reason: "The provided value to roleSessionNameType violated the minimum length constraint.")
        }

        if self.count > 64 {
            throw SecurityTokenCodingError.validationError(reason: "The provided value to roleSessionNameType violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[\\w+=,.@-]*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw SecurityTokenCodingError.validationError(
                    reason: "The provided value to roleSessionNameType violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the SerialNumberType field.
*/
extension SecurityTokenModel.SerialNumberType {
    public func validateAsSerialNumberType() throws {
        if self.count < 9 {
            throw SecurityTokenCodingError.validationError(reason: "The provided value to serialNumberType violated the minimum length constraint.")
        }

        if self.count > 256 {
            throw SecurityTokenCodingError.validationError(reason: "The provided value to serialNumberType violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[\\w+=/:,.@-]*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw SecurityTokenCodingError.validationError(
                    reason: "The provided value to serialNumberType violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the SessionPolicyDocumentType field.
*/
extension SecurityTokenModel.SessionPolicyDocumentType {
    public func validateAsSessionPolicyDocumentType() throws {
        if self.count < 1 {
            throw SecurityTokenCodingError.validationError(reason: "The provided value to sessionPolicyDocumentType violated the minimum length constraint.")
        }

        if self.count > 2048 {
            throw SecurityTokenCodingError.validationError(reason: "The provided value to sessionPolicyDocumentType violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw SecurityTokenCodingError.validationError(
                    reason: "The provided value to sessionPolicyDocumentType violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the TokenCodeType field.
*/
extension SecurityTokenModel.TokenCodeType {
    public func validateAsTokenCodeType() throws {
        if self.count < 6 {
            throw SecurityTokenCodingError.validationError(reason: "The provided value to tokenCodeType violated the minimum length constraint.")
        }

        if self.count > 6 {
            throw SecurityTokenCodingError.validationError(reason: "The provided value to tokenCodeType violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[\\d]*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw SecurityTokenCodingError.validationError(
                    reason: "The provided value to tokenCodeType violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the UrlType field.
*/
extension SecurityTokenModel.UrlType {
    public func validateAsUrlType() throws {
        if self.count < 4 {
            throw SecurityTokenCodingError.validationError(reason: "The provided value to urlType violated the minimum length constraint.")
        }

        if self.count > 2048 {
            throw SecurityTokenCodingError.validationError(reason: "The provided value to urlType violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the UserNameType field.
*/
extension SecurityTokenModel.UserNameType {
    public func validateAsUserNameType() throws {
        if self.count < 2 {
            throw SecurityTokenCodingError.validationError(reason: "The provided value to userNameType violated the minimum length constraint.")
        }

        if self.count > 32 {
            throw SecurityTokenCodingError.validationError(reason: "The provided value to userNameType violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[\\w+=,.@-]*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw SecurityTokenCodingError.validationError(
                    reason: "The provided value to userNameType violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the WebIdentitySubjectType field.
*/
extension SecurityTokenModel.WebIdentitySubjectType {
    public func validateAsWebIdentitySubjectType() throws {
        if self.count < 6 {
            throw SecurityTokenCodingError.validationError(reason: "The provided value to webIdentitySubjectType violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw SecurityTokenCodingError.validationError(reason: "The provided value to webIdentitySubjectType violated the maximum length constraint.")
        }
    }
}
