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
// SecurityTokenClientProtocolV2.swift
// SecurityTokenClient
//

import Foundation
import SecurityTokenModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Client Protocol for the SecurityToken service.
 */
public protocol SecurityTokenClientProtocolV2 {
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    typealias AssumeRoleFunctionType = (
            _ input: SecurityTokenModel.AssumeRoleRequest) async throws -> SecurityTokenModel.AssumeRoleResponseForAssumeRole
    typealias AssumeRoleWithSAMLFunctionType = (
            _ input: SecurityTokenModel.AssumeRoleWithSAMLRequest) async throws -> SecurityTokenModel.AssumeRoleWithSAMLResponseForAssumeRoleWithSAML
    typealias AssumeRoleWithWebIdentityFunctionType = (
            _ input: SecurityTokenModel.AssumeRoleWithWebIdentityRequest) async throws -> SecurityTokenModel.AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity
    typealias DecodeAuthorizationMessageFunctionType = (
            _ input: SecurityTokenModel.DecodeAuthorizationMessageRequest) async throws -> SecurityTokenModel.DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage
    typealias GetAccessKeyInfoFunctionType = (
            _ input: SecurityTokenModel.GetAccessKeyInfoRequest) async throws -> SecurityTokenModel.GetAccessKeyInfoResponseForGetAccessKeyInfo
    typealias GetCallerIdentityFunctionType = (
            _ input: SecurityTokenModel.GetCallerIdentityRequest) async throws -> SecurityTokenModel.GetCallerIdentityResponseForGetCallerIdentity
    typealias GetFederationTokenFunctionType = (
            _ input: SecurityTokenModel.GetFederationTokenRequest) async throws -> SecurityTokenModel.GetFederationTokenResponseForGetFederationToken
    typealias GetSessionTokenFunctionType = (
            _ input: SecurityTokenModel.GetSessionTokenRequest) async throws -> SecurityTokenModel.GetSessionTokenResponseForGetSessionToken

    /**
     Invokes the AssumeRole operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AssumeRoleRequest object being passed to this operation.
     - Returns: The AssumeRoleResponseForAssumeRole object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: expiredToken, malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    func assumeRole(
            input: SecurityTokenModel.AssumeRoleRequest) async throws -> SecurityTokenModel.AssumeRoleResponseForAssumeRole

    /**
     Invokes the AssumeRoleWithSAML operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AssumeRoleWithSAMLRequest object being passed to this operation.
     - Returns: The AssumeRoleWithSAMLResponseForAssumeRoleWithSAML object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: expiredToken, iDPRejectedClaim, invalidIdentityToken, malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    func assumeRoleWithSAML(
            input: SecurityTokenModel.AssumeRoleWithSAMLRequest) async throws -> SecurityTokenModel.AssumeRoleWithSAMLResponseForAssumeRoleWithSAML

    /**
     Invokes the AssumeRoleWithWebIdentity operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AssumeRoleWithWebIdentityRequest object being passed to this operation.
     - Returns: The AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: expiredToken, iDPCommunicationError, iDPRejectedClaim, invalidIdentityToken, malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    func assumeRoleWithWebIdentity(
            input: SecurityTokenModel.AssumeRoleWithWebIdentityRequest) async throws -> SecurityTokenModel.AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity

    /**
     Invokes the DecodeAuthorizationMessage operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DecodeAuthorizationMessageRequest object being passed to this operation.
     - Returns: The DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidAuthorizationMessage.
     */
    func decodeAuthorizationMessage(
            input: SecurityTokenModel.DecodeAuthorizationMessageRequest) async throws -> SecurityTokenModel.DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage

    /**
     Invokes the GetAccessKeyInfo operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetAccessKeyInfoRequest object being passed to this operation.
     - Returns: The GetAccessKeyInfoResponseForGetAccessKeyInfo object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getAccessKeyInfo(
            input: SecurityTokenModel.GetAccessKeyInfoRequest) async throws -> SecurityTokenModel.GetAccessKeyInfoResponseForGetAccessKeyInfo

    /**
     Invokes the GetCallerIdentity operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetCallerIdentityRequest object being passed to this operation.
     - Returns: The GetCallerIdentityResponseForGetCallerIdentity object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getCallerIdentity(
            input: SecurityTokenModel.GetCallerIdentityRequest) async throws -> SecurityTokenModel.GetCallerIdentityResponseForGetCallerIdentity

    /**
     Invokes the GetFederationToken operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetFederationTokenRequest object being passed to this operation.
     - Returns: The GetFederationTokenResponseForGetFederationToken object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    func getFederationToken(
            input: SecurityTokenModel.GetFederationTokenRequest) async throws -> SecurityTokenModel.GetFederationTokenResponseForGetFederationToken

    /**
     Invokes the GetSessionToken operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetSessionTokenRequest object being passed to this operation.
     - Returns: The GetSessionTokenResponseForGetSessionToken object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: regionDisabled.
     */
    func getSessionToken(
            input: SecurityTokenModel.GetSessionTokenRequest) async throws -> SecurityTokenModel.GetSessionTokenResponseForGetSessionToken
#endif
}
