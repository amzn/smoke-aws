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
// MockSecurityTokenClientV2.swift
// SecurityTokenClient
//

import Foundation
import SecurityTokenModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the SecurityToken service by default returns the `__default` property of its return type.
 */
public struct MockSecurityTokenClientV2: SecurityTokenClientProtocolV2 {
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    let assumeRoleOverride: AssumeRoleFunctionType?
    let assumeRoleWithSAMLOverride: AssumeRoleWithSAMLFunctionType?
    let assumeRoleWithWebIdentityOverride: AssumeRoleWithWebIdentityFunctionType?
    let decodeAuthorizationMessageOverride: DecodeAuthorizationMessageFunctionType?
    let getAccessKeyInfoOverride: GetAccessKeyInfoFunctionType?
    let getCallerIdentityOverride: GetCallerIdentityFunctionType?
    let getFederationTokenOverride: GetFederationTokenFunctionType?
    let getSessionTokenOverride: GetSessionTokenFunctionType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            assumeRole: AssumeRoleFunctionType? = nil,
            assumeRoleWithSAML: AssumeRoleWithSAMLFunctionType? = nil,
            assumeRoleWithWebIdentity: AssumeRoleWithWebIdentityFunctionType? = nil,
            decodeAuthorizationMessage: DecodeAuthorizationMessageFunctionType? = nil,
            getAccessKeyInfo: GetAccessKeyInfoFunctionType? = nil,
            getCallerIdentity: GetCallerIdentityFunctionType? = nil,
            getFederationToken: GetFederationTokenFunctionType? = nil,
            getSessionToken: GetSessionTokenFunctionType? = nil) {
        self.assumeRoleOverride = assumeRole
        self.assumeRoleWithSAMLOverride = assumeRoleWithSAML
        self.assumeRoleWithWebIdentityOverride = assumeRoleWithWebIdentity
        self.decodeAuthorizationMessageOverride = decodeAuthorizationMessage
        self.getAccessKeyInfoOverride = getAccessKeyInfo
        self.getCallerIdentityOverride = getCallerIdentity
        self.getFederationTokenOverride = getFederationToken
        self.getSessionTokenOverride = getSessionToken
    }

    /**
     Invokes the AssumeRole operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AssumeRoleRequest object being passed to this operation.
     - Returns: The AssumeRoleResponseForAssumeRole object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: expiredToken, malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    public func assumeRole(
            input: SecurityTokenModel.AssumeRoleRequest) async throws -> SecurityTokenModel.AssumeRoleResponseForAssumeRole {
        if let assumeRoleOverride = assumeRoleOverride {
            return try await assumeRoleOverride(input)
        }

        return AssumeRoleResponseForAssumeRole.__default
    }

    /**
     Invokes the AssumeRoleWithSAML operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AssumeRoleWithSAMLRequest object being passed to this operation.
     - Returns: The AssumeRoleWithSAMLResponseForAssumeRoleWithSAML object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: expiredToken, iDPRejectedClaim, invalidIdentityToken, malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    public func assumeRoleWithSAML(
            input: SecurityTokenModel.AssumeRoleWithSAMLRequest) async throws -> SecurityTokenModel.AssumeRoleWithSAMLResponseForAssumeRoleWithSAML {
        if let assumeRoleWithSAMLOverride = assumeRoleWithSAMLOverride {
            return try await assumeRoleWithSAMLOverride(input)
        }

        return AssumeRoleWithSAMLResponseForAssumeRoleWithSAML.__default
    }

    /**
     Invokes the AssumeRoleWithWebIdentity operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AssumeRoleWithWebIdentityRequest object being passed to this operation.
     - Returns: The AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: expiredToken, iDPCommunicationError, iDPRejectedClaim, invalidIdentityToken, malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    public func assumeRoleWithWebIdentity(
            input: SecurityTokenModel.AssumeRoleWithWebIdentityRequest) async throws -> SecurityTokenModel.AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity {
        if let assumeRoleWithWebIdentityOverride = assumeRoleWithWebIdentityOverride {
            return try await assumeRoleWithWebIdentityOverride(input)
        }

        return AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity.__default
    }

    /**
     Invokes the DecodeAuthorizationMessage operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DecodeAuthorizationMessageRequest object being passed to this operation.
     - Returns: The DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidAuthorizationMessage.
     */
    public func decodeAuthorizationMessage(
            input: SecurityTokenModel.DecodeAuthorizationMessageRequest) async throws -> SecurityTokenModel.DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage {
        if let decodeAuthorizationMessageOverride = decodeAuthorizationMessageOverride {
            return try await decodeAuthorizationMessageOverride(input)
        }

        return DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage.__default
    }

    /**
     Invokes the GetAccessKeyInfo operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetAccessKeyInfoRequest object being passed to this operation.
     - Returns: The GetAccessKeyInfoResponseForGetAccessKeyInfo object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getAccessKeyInfo(
            input: SecurityTokenModel.GetAccessKeyInfoRequest) async throws -> SecurityTokenModel.GetAccessKeyInfoResponseForGetAccessKeyInfo {
        if let getAccessKeyInfoOverride = getAccessKeyInfoOverride {
            return try await getAccessKeyInfoOverride(input)
        }

        return GetAccessKeyInfoResponseForGetAccessKeyInfo.__default
    }

    /**
     Invokes the GetCallerIdentity operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetCallerIdentityRequest object being passed to this operation.
     - Returns: The GetCallerIdentityResponseForGetCallerIdentity object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getCallerIdentity(
            input: SecurityTokenModel.GetCallerIdentityRequest) async throws -> SecurityTokenModel.GetCallerIdentityResponseForGetCallerIdentity {
        if let getCallerIdentityOverride = getCallerIdentityOverride {
            return try await getCallerIdentityOverride(input)
        }

        return GetCallerIdentityResponseForGetCallerIdentity.__default
    }

    /**
     Invokes the GetFederationToken operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetFederationTokenRequest object being passed to this operation.
     - Returns: The GetFederationTokenResponseForGetFederationToken object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    public func getFederationToken(
            input: SecurityTokenModel.GetFederationTokenRequest) async throws -> SecurityTokenModel.GetFederationTokenResponseForGetFederationToken {
        if let getFederationTokenOverride = getFederationTokenOverride {
            return try await getFederationTokenOverride(input)
        }

        return GetFederationTokenResponseForGetFederationToken.__default
    }

    /**
     Invokes the GetSessionToken operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetSessionTokenRequest object being passed to this operation.
     - Returns: The GetSessionTokenResponseForGetSessionToken object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: regionDisabled.
     */
    public func getSessionToken(
            input: SecurityTokenModel.GetSessionTokenRequest) async throws -> SecurityTokenModel.GetSessionTokenResponseForGetSessionToken {
        if let getSessionTokenOverride = getSessionTokenOverride {
            return try await getSessionTokenOverride(input)
        }

        return GetSessionTokenResponseForGetSessionToken.__default
    }
#endif
}
