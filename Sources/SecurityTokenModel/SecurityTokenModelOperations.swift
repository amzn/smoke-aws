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
// SecurityTokenModelOperations.swift
// SecurityTokenModel
//

import Foundation

/**
 Operation enumeration for the SecurityTokenModel.
 */
public enum SecurityTokenModelOperations: String, Hashable, CustomStringConvertible {
    case assumeRole = "AssumeRole"
    case assumeRoleWithSAML = "AssumeRoleWithSAML"
    case assumeRoleWithWebIdentity = "AssumeRoleWithWebIdentity"
    case decodeAuthorizationMessage = "DecodeAuthorizationMessage"
    case getAccessKeyInfo = "GetAccessKeyInfo"
    case getCallerIdentity = "GetCallerIdentity"
    case getFederationToken = "GetFederationToken"
    case getSessionToken = "GetSessionToken"

    public var description: String {
        return rawValue
    }

    public var operationPath: String {
        switch self {
        case .assumeRole:
            return "/"
        case .assumeRoleWithSAML:
            return "/"
        case .assumeRoleWithWebIdentity:
            return "/"
        case .decodeAuthorizationMessage:
            return "/"
        case .getAccessKeyInfo:
            return "/"
        case .getCallerIdentity:
            return "/"
        case .getFederationToken:
            return "/"
        case .getSessionToken:
            return "/"
        }
    }
}
