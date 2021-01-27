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
// SecurityTokenOperationsClientOutput.swift
// SecurityTokenClient
//

import Foundation
import SmokeHTTPClient
import SecurityTokenModel

/**
 Type to handle the output from the AssumeRole operation in a HTTP client.
 */
extension AssumeRoleResponseForAssumeRole: HTTPResponseOutputProtocol {
    public typealias BodyType = AssumeRoleResponseForAssumeRole
    public typealias HeadersType = AssumeRoleResponseForAssumeRole

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> AssumeRoleResponseForAssumeRole {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the AssumeRoleWithSAML operation in a HTTP client.
 */
extension AssumeRoleWithSAMLResponseForAssumeRoleWithSAML: HTTPResponseOutputProtocol {
    public typealias BodyType = AssumeRoleWithSAMLResponseForAssumeRoleWithSAML
    public typealias HeadersType = AssumeRoleWithSAMLResponseForAssumeRoleWithSAML

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> AssumeRoleWithSAMLResponseForAssumeRoleWithSAML {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the AssumeRoleWithWebIdentity operation in a HTTP client.
 */
extension AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity: HTTPResponseOutputProtocol {
    public typealias BodyType = AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity
    public typealias HeadersType = AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the DecodeAuthorizationMessage operation in a HTTP client.
 */
extension DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage: HTTPResponseOutputProtocol {
    public typealias BodyType = DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage
    public typealias HeadersType = DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetAccessKeyInfo operation in a HTTP client.
 */
extension GetAccessKeyInfoResponseForGetAccessKeyInfo: HTTPResponseOutputProtocol {
    public typealias BodyType = GetAccessKeyInfoResponseForGetAccessKeyInfo
    public typealias HeadersType = GetAccessKeyInfoResponseForGetAccessKeyInfo

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetAccessKeyInfoResponseForGetAccessKeyInfo {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetCallerIdentity operation in a HTTP client.
 */
extension GetCallerIdentityResponseForGetCallerIdentity: HTTPResponseOutputProtocol {
    public typealias BodyType = GetCallerIdentityResponseForGetCallerIdentity
    public typealias HeadersType = GetCallerIdentityResponseForGetCallerIdentity

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetCallerIdentityResponseForGetCallerIdentity {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetFederationToken operation in a HTTP client.
 */
extension GetFederationTokenResponseForGetFederationToken: HTTPResponseOutputProtocol {
    public typealias BodyType = GetFederationTokenResponseForGetFederationToken
    public typealias HeadersType = GetFederationTokenResponseForGetFederationToken

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetFederationTokenResponseForGetFederationToken {
        return try bodyDecodableProvider()
    }
}

/**
 Type to handle the output from the GetSessionToken operation in a HTTP client.
 */
extension GetSessionTokenResponseForGetSessionToken: HTTPResponseOutputProtocol {
    public typealias BodyType = GetSessionTokenResponseForGetSessionToken
    public typealias HeadersType = GetSessionTokenResponseForGetSessionToken

    public static func compose(bodyDecodableProvider: () throws -> BodyType,
                               headersDecodableProvider: () throws -> HeadersType) throws -> GetSessionTokenResponseForGetSessionToken {
        return try bodyDecodableProvider()
    }
}
