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
// SecurityTokenClientProtocol.swift
// SecurityTokenClient
//

import Foundation
import SecurityTokenModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Client Protocol for the SecurityToken service.
 */
public protocol SecurityTokenClientProtocol {
    typealias AssumeRoleSyncType = (
            _ input: SecurityTokenModel.AssumeRoleRequest) throws -> SecurityTokenModel.AssumeRoleResponseForAssumeRole
    typealias AssumeRoleAsyncType = (
            _ input: SecurityTokenModel.AssumeRoleRequest, 
            _ completion: @escaping (Result<SecurityTokenModel.AssumeRoleResponseForAssumeRole, SecurityTokenError>) -> ()) throws -> ()
    typealias AssumeRoleWithSAMLSyncType = (
            _ input: SecurityTokenModel.AssumeRoleWithSAMLRequest) throws -> SecurityTokenModel.AssumeRoleWithSAMLResponseForAssumeRoleWithSAML
    typealias AssumeRoleWithSAMLAsyncType = (
            _ input: SecurityTokenModel.AssumeRoleWithSAMLRequest, 
            _ completion: @escaping (Result<SecurityTokenModel.AssumeRoleWithSAMLResponseForAssumeRoleWithSAML, SecurityTokenError>) -> ()) throws -> ()
    typealias AssumeRoleWithWebIdentitySyncType = (
            _ input: SecurityTokenModel.AssumeRoleWithWebIdentityRequest) throws -> SecurityTokenModel.AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity
    typealias AssumeRoleWithWebIdentityAsyncType = (
            _ input: SecurityTokenModel.AssumeRoleWithWebIdentityRequest, 
            _ completion: @escaping (Result<SecurityTokenModel.AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity, SecurityTokenError>) -> ()) throws -> ()
    typealias DecodeAuthorizationMessageSyncType = (
            _ input: SecurityTokenModel.DecodeAuthorizationMessageRequest) throws -> SecurityTokenModel.DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage
    typealias DecodeAuthorizationMessageAsyncType = (
            _ input: SecurityTokenModel.DecodeAuthorizationMessageRequest, 
            _ completion: @escaping (Result<SecurityTokenModel.DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage, SecurityTokenError>) -> ()) throws -> ()
    typealias GetAccessKeyInfoSyncType = (
            _ input: SecurityTokenModel.GetAccessKeyInfoRequest) throws -> SecurityTokenModel.GetAccessKeyInfoResponseForGetAccessKeyInfo
    typealias GetAccessKeyInfoAsyncType = (
            _ input: SecurityTokenModel.GetAccessKeyInfoRequest, 
            _ completion: @escaping (Result<SecurityTokenModel.GetAccessKeyInfoResponseForGetAccessKeyInfo, SecurityTokenError>) -> ()) throws -> ()
    typealias GetCallerIdentitySyncType = (
            _ input: SecurityTokenModel.GetCallerIdentityRequest) throws -> SecurityTokenModel.GetCallerIdentityResponseForGetCallerIdentity
    typealias GetCallerIdentityAsyncType = (
            _ input: SecurityTokenModel.GetCallerIdentityRequest, 
            _ completion: @escaping (Result<SecurityTokenModel.GetCallerIdentityResponseForGetCallerIdentity, SecurityTokenError>) -> ()) throws -> ()
    typealias GetFederationTokenSyncType = (
            _ input: SecurityTokenModel.GetFederationTokenRequest) throws -> SecurityTokenModel.GetFederationTokenResponseForGetFederationToken
    typealias GetFederationTokenAsyncType = (
            _ input: SecurityTokenModel.GetFederationTokenRequest, 
            _ completion: @escaping (Result<SecurityTokenModel.GetFederationTokenResponseForGetFederationToken, SecurityTokenError>) -> ()) throws -> ()
    typealias GetSessionTokenSyncType = (
            _ input: SecurityTokenModel.GetSessionTokenRequest) throws -> SecurityTokenModel.GetSessionTokenResponseForGetSessionToken
    typealias GetSessionTokenAsyncType = (
            _ input: SecurityTokenModel.GetSessionTokenRequest, 
            _ completion: @escaping (Result<SecurityTokenModel.GetSessionTokenResponseForGetSessionToken, SecurityTokenError>) -> ()) throws -> ()

    /**
     Invokes the AssumeRole operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssumeRoleRequest object being passed to this operation.
         - completion: The AssumeRoleResponseForAssumeRole object or an error will be passed to this 
           callback when the operation is complete. The AssumeRoleResponseForAssumeRole
           object will be validated before being returned to caller.
           The possible errors are: expiredToken, malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    func assumeRoleAsync(
            input: SecurityTokenModel.AssumeRoleRequest, 
            completion: @escaping (Result<SecurityTokenModel.AssumeRoleResponseForAssumeRole, SecurityTokenError>) -> ()) throws

    /**
     Invokes the AssumeRole operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssumeRoleRequest object being passed to this operation.
     - Returns: The AssumeRoleResponseForAssumeRole object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: expiredToken, malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    func assumeRoleSync(
            input: SecurityTokenModel.AssumeRoleRequest) throws -> SecurityTokenModel.AssumeRoleResponseForAssumeRole

    /**
     Invokes the AssumeRoleWithSAML operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssumeRoleWithSAMLRequest object being passed to this operation.
         - completion: The AssumeRoleWithSAMLResponseForAssumeRoleWithSAML object or an error will be passed to this 
           callback when the operation is complete. The AssumeRoleWithSAMLResponseForAssumeRoleWithSAML
           object will be validated before being returned to caller.
           The possible errors are: expiredToken, iDPRejectedClaim, invalidIdentityToken, malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    func assumeRoleWithSAMLAsync(
            input: SecurityTokenModel.AssumeRoleWithSAMLRequest, 
            completion: @escaping (Result<SecurityTokenModel.AssumeRoleWithSAMLResponseForAssumeRoleWithSAML, SecurityTokenError>) -> ()) throws

    /**
     Invokes the AssumeRoleWithSAML operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssumeRoleWithSAMLRequest object being passed to this operation.
     - Returns: The AssumeRoleWithSAMLResponseForAssumeRoleWithSAML object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: expiredToken, iDPRejectedClaim, invalidIdentityToken, malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    func assumeRoleWithSAMLSync(
            input: SecurityTokenModel.AssumeRoleWithSAMLRequest) throws -> SecurityTokenModel.AssumeRoleWithSAMLResponseForAssumeRoleWithSAML

    /**
     Invokes the AssumeRoleWithWebIdentity operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssumeRoleWithWebIdentityRequest object being passed to this operation.
         - completion: The AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity object or an error will be passed to this 
           callback when the operation is complete. The AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity
           object will be validated before being returned to caller.
           The possible errors are: expiredToken, iDPCommunicationError, iDPRejectedClaim, invalidIdentityToken, malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    func assumeRoleWithWebIdentityAsync(
            input: SecurityTokenModel.AssumeRoleWithWebIdentityRequest, 
            completion: @escaping (Result<SecurityTokenModel.AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity, SecurityTokenError>) -> ()) throws

    /**
     Invokes the AssumeRoleWithWebIdentity operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssumeRoleWithWebIdentityRequest object being passed to this operation.
     - Returns: The AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: expiredToken, iDPCommunicationError, iDPRejectedClaim, invalidIdentityToken, malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    func assumeRoleWithWebIdentitySync(
            input: SecurityTokenModel.AssumeRoleWithWebIdentityRequest) throws -> SecurityTokenModel.AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity

    /**
     Invokes the DecodeAuthorizationMessage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DecodeAuthorizationMessageRequest object being passed to this operation.
         - completion: The DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage object or an error will be passed to this 
           callback when the operation is complete. The DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage
           object will be validated before being returned to caller.
           The possible errors are: invalidAuthorizationMessage.
     */
    func decodeAuthorizationMessageAsync(
            input: SecurityTokenModel.DecodeAuthorizationMessageRequest, 
            completion: @escaping (Result<SecurityTokenModel.DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage, SecurityTokenError>) -> ()) throws

    /**
     Invokes the DecodeAuthorizationMessage operation waiting for the response before returning.

     - Parameters:
         - input: The validated DecodeAuthorizationMessageRequest object being passed to this operation.
     - Returns: The DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidAuthorizationMessage.
     */
    func decodeAuthorizationMessageSync(
            input: SecurityTokenModel.DecodeAuthorizationMessageRequest) throws -> SecurityTokenModel.DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage

    /**
     Invokes the GetAccessKeyInfo operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetAccessKeyInfoRequest object being passed to this operation.
         - completion: The GetAccessKeyInfoResponseForGetAccessKeyInfo object or an error will be passed to this 
           callback when the operation is complete. The GetAccessKeyInfoResponseForGetAccessKeyInfo
           object will be validated before being returned to caller.
     */
    func getAccessKeyInfoAsync(
            input: SecurityTokenModel.GetAccessKeyInfoRequest, 
            completion: @escaping (Result<SecurityTokenModel.GetAccessKeyInfoResponseForGetAccessKeyInfo, SecurityTokenError>) -> ()) throws

    /**
     Invokes the GetAccessKeyInfo operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetAccessKeyInfoRequest object being passed to this operation.
     - Returns: The GetAccessKeyInfoResponseForGetAccessKeyInfo object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getAccessKeyInfoSync(
            input: SecurityTokenModel.GetAccessKeyInfoRequest) throws -> SecurityTokenModel.GetAccessKeyInfoResponseForGetAccessKeyInfo

    /**
     Invokes the GetCallerIdentity operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetCallerIdentityRequest object being passed to this operation.
         - completion: The GetCallerIdentityResponseForGetCallerIdentity object or an error will be passed to this 
           callback when the operation is complete. The GetCallerIdentityResponseForGetCallerIdentity
           object will be validated before being returned to caller.
     */
    func getCallerIdentityAsync(
            input: SecurityTokenModel.GetCallerIdentityRequest, 
            completion: @escaping (Result<SecurityTokenModel.GetCallerIdentityResponseForGetCallerIdentity, SecurityTokenError>) -> ()) throws

    /**
     Invokes the GetCallerIdentity operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetCallerIdentityRequest object being passed to this operation.
     - Returns: The GetCallerIdentityResponseForGetCallerIdentity object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getCallerIdentitySync(
            input: SecurityTokenModel.GetCallerIdentityRequest) throws -> SecurityTokenModel.GetCallerIdentityResponseForGetCallerIdentity

    /**
     Invokes the GetFederationToken operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetFederationTokenRequest object being passed to this operation.
         - completion: The GetFederationTokenResponseForGetFederationToken object or an error will be passed to this 
           callback when the operation is complete. The GetFederationTokenResponseForGetFederationToken
           object will be validated before being returned to caller.
           The possible errors are: malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    func getFederationTokenAsync(
            input: SecurityTokenModel.GetFederationTokenRequest, 
            completion: @escaping (Result<SecurityTokenModel.GetFederationTokenResponseForGetFederationToken, SecurityTokenError>) -> ()) throws

    /**
     Invokes the GetFederationToken operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetFederationTokenRequest object being passed to this operation.
     - Returns: The GetFederationTokenResponseForGetFederationToken object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    func getFederationTokenSync(
            input: SecurityTokenModel.GetFederationTokenRequest) throws -> SecurityTokenModel.GetFederationTokenResponseForGetFederationToken

    /**
     Invokes the GetSessionToken operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetSessionTokenRequest object being passed to this operation.
         - completion: The GetSessionTokenResponseForGetSessionToken object or an error will be passed to this 
           callback when the operation is complete. The GetSessionTokenResponseForGetSessionToken
           object will be validated before being returned to caller.
           The possible errors are: regionDisabled.
     */
    func getSessionTokenAsync(
            input: SecurityTokenModel.GetSessionTokenRequest, 
            completion: @escaping (Result<SecurityTokenModel.GetSessionTokenResponseForGetSessionToken, SecurityTokenError>) -> ()) throws

    /**
     Invokes the GetSessionToken operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetSessionTokenRequest object being passed to this operation.
     - Returns: The GetSessionTokenResponseForGetSessionToken object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: regionDisabled.
     */
    func getSessionTokenSync(
            input: SecurityTokenModel.GetSessionTokenRequest) throws -> SecurityTokenModel.GetSessionTokenResponseForGetSessionToken
}
