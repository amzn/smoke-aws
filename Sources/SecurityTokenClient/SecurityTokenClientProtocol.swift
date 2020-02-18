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
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment type_body_length
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
    typealias AssumeRoleSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SecurityTokenModel.AssumeRoleRequest,
            _ reporting: InvocationReportingType) throws -> SecurityTokenModel.AssumeRoleResponseForAssumeRole
    typealias AssumeRoleAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SecurityTokenModel.AssumeRoleRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SecurityTokenModel.AssumeRoleResponseForAssumeRole, HTTPClientError>) -> ()) throws -> ()
    typealias AssumeRoleWithSAMLSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SecurityTokenModel.AssumeRoleWithSAMLRequest,
            _ reporting: InvocationReportingType) throws -> SecurityTokenModel.AssumeRoleWithSAMLResponseForAssumeRoleWithSAML
    typealias AssumeRoleWithSAMLAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SecurityTokenModel.AssumeRoleWithSAMLRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SecurityTokenModel.AssumeRoleWithSAMLResponseForAssumeRoleWithSAML, HTTPClientError>) -> ()) throws -> ()
    typealias AssumeRoleWithWebIdentitySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SecurityTokenModel.AssumeRoleWithWebIdentityRequest,
            _ reporting: InvocationReportingType) throws -> SecurityTokenModel.AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity
    typealias AssumeRoleWithWebIdentityAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SecurityTokenModel.AssumeRoleWithWebIdentityRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SecurityTokenModel.AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity, HTTPClientError>) -> ()) throws -> ()
    typealias DecodeAuthorizationMessageSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SecurityTokenModel.DecodeAuthorizationMessageRequest,
            _ reporting: InvocationReportingType) throws -> SecurityTokenModel.DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage
    typealias DecodeAuthorizationMessageAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SecurityTokenModel.DecodeAuthorizationMessageRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SecurityTokenModel.DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage, HTTPClientError>) -> ()) throws -> ()
    typealias GetAccessKeyInfoSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SecurityTokenModel.GetAccessKeyInfoRequest,
            _ reporting: InvocationReportingType) throws -> SecurityTokenModel.GetAccessKeyInfoResponseForGetAccessKeyInfo
    typealias GetAccessKeyInfoAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SecurityTokenModel.GetAccessKeyInfoRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SecurityTokenModel.GetAccessKeyInfoResponseForGetAccessKeyInfo, HTTPClientError>) -> ()) throws -> ()
    typealias GetCallerIdentitySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SecurityTokenModel.GetCallerIdentityRequest,
            _ reporting: InvocationReportingType) throws -> SecurityTokenModel.GetCallerIdentityResponseForGetCallerIdentity
    typealias GetCallerIdentityAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SecurityTokenModel.GetCallerIdentityRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SecurityTokenModel.GetCallerIdentityResponseForGetCallerIdentity, HTTPClientError>) -> ()) throws -> ()
    typealias GetFederationTokenSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SecurityTokenModel.GetFederationTokenRequest,
            _ reporting: InvocationReportingType) throws -> SecurityTokenModel.GetFederationTokenResponseForGetFederationToken
    typealias GetFederationTokenAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SecurityTokenModel.GetFederationTokenRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SecurityTokenModel.GetFederationTokenResponseForGetFederationToken, HTTPClientError>) -> ()) throws -> ()
    typealias GetSessionTokenSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SecurityTokenModel.GetSessionTokenRequest,
            _ reporting: InvocationReportingType) throws -> SecurityTokenModel.GetSessionTokenResponseForGetSessionToken
    typealias GetSessionTokenAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: SecurityTokenModel.GetSessionTokenRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<SecurityTokenModel.GetSessionTokenResponseForGetSessionToken, HTTPClientError>) -> ()) throws -> ()

    /**
     Invokes the AssumeRole operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssumeRoleRequest object being passed to this operation.
         - completion: The AssumeRoleResponseForAssumeRole object or an error will be passed to this 
           callback when the operation is complete. The AssumeRoleResponseForAssumeRole
           object will be validated before being returned to caller.
           The possible errors are: malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    func assumeRoleAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SecurityTokenModel.AssumeRoleRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SecurityTokenModel.AssumeRoleResponseForAssumeRole, HTTPClientError>) -> ()) throws

    /**
     Invokes the AssumeRole operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssumeRoleRequest object being passed to this operation.
     - Returns: The AssumeRoleResponseForAssumeRole object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    func assumeRoleSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SecurityTokenModel.AssumeRoleRequest,
            reporting: InvocationReportingType) throws -> SecurityTokenModel.AssumeRoleResponseForAssumeRole

    /**
     Invokes the AssumeRoleWithSAML operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssumeRoleWithSAMLRequest object being passed to this operation.
         - completion: The AssumeRoleWithSAMLResponseForAssumeRoleWithSAML object or an error will be passed to this 
           callback when the operation is complete. The AssumeRoleWithSAMLResponseForAssumeRoleWithSAML
           object will be validated before being returned to caller.
           The possible errors are: expiredToken, iDPRejectedClaim, invalidIdentityToken, malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    func assumeRoleWithSAMLAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SecurityTokenModel.AssumeRoleWithSAMLRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SecurityTokenModel.AssumeRoleWithSAMLResponseForAssumeRoleWithSAML, HTTPClientError>) -> ()) throws

    /**
     Invokes the AssumeRoleWithSAML operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssumeRoleWithSAMLRequest object being passed to this operation.
     - Returns: The AssumeRoleWithSAMLResponseForAssumeRoleWithSAML object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: expiredToken, iDPRejectedClaim, invalidIdentityToken, malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    func assumeRoleWithSAMLSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SecurityTokenModel.AssumeRoleWithSAMLRequest,
            reporting: InvocationReportingType) throws -> SecurityTokenModel.AssumeRoleWithSAMLResponseForAssumeRoleWithSAML

    /**
     Invokes the AssumeRoleWithWebIdentity operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssumeRoleWithWebIdentityRequest object being passed to this operation.
         - completion: The AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity object or an error will be passed to this 
           callback when the operation is complete. The AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity
           object will be validated before being returned to caller.
           The possible errors are: expiredToken, iDPCommunicationError, iDPRejectedClaim, invalidIdentityToken, malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    func assumeRoleWithWebIdentityAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SecurityTokenModel.AssumeRoleWithWebIdentityRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SecurityTokenModel.AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity, HTTPClientError>) -> ()) throws

    /**
     Invokes the AssumeRoleWithWebIdentity operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssumeRoleWithWebIdentityRequest object being passed to this operation.
     - Returns: The AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: expiredToken, iDPCommunicationError, iDPRejectedClaim, invalidIdentityToken, malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    func assumeRoleWithWebIdentitySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SecurityTokenModel.AssumeRoleWithWebIdentityRequest,
            reporting: InvocationReportingType) throws -> SecurityTokenModel.AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity

    /**
     Invokes the DecodeAuthorizationMessage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DecodeAuthorizationMessageRequest object being passed to this operation.
         - completion: The DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage object or an error will be passed to this 
           callback when the operation is complete. The DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage
           object will be validated before being returned to caller.
           The possible errors are: invalidAuthorizationMessage.
     */
    func decodeAuthorizationMessageAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SecurityTokenModel.DecodeAuthorizationMessageRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SecurityTokenModel.DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage, HTTPClientError>) -> ()) throws

    /**
     Invokes the DecodeAuthorizationMessage operation waiting for the response before returning.

     - Parameters:
         - input: The validated DecodeAuthorizationMessageRequest object being passed to this operation.
     - Returns: The DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidAuthorizationMessage.
     */
    func decodeAuthorizationMessageSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SecurityTokenModel.DecodeAuthorizationMessageRequest,
            reporting: InvocationReportingType) throws -> SecurityTokenModel.DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage

    /**
     Invokes the GetAccessKeyInfo operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetAccessKeyInfoRequest object being passed to this operation.
         - completion: The GetAccessKeyInfoResponseForGetAccessKeyInfo object or an error will be passed to this 
           callback when the operation is complete. The GetAccessKeyInfoResponseForGetAccessKeyInfo
           object will be validated before being returned to caller.
     */
    func getAccessKeyInfoAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SecurityTokenModel.GetAccessKeyInfoRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SecurityTokenModel.GetAccessKeyInfoResponseForGetAccessKeyInfo, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetAccessKeyInfo operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetAccessKeyInfoRequest object being passed to this operation.
     - Returns: The GetAccessKeyInfoResponseForGetAccessKeyInfo object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getAccessKeyInfoSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SecurityTokenModel.GetAccessKeyInfoRequest,
            reporting: InvocationReportingType) throws -> SecurityTokenModel.GetAccessKeyInfoResponseForGetAccessKeyInfo

    /**
     Invokes the GetCallerIdentity operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetCallerIdentityRequest object being passed to this operation.
         - completion: The GetCallerIdentityResponseForGetCallerIdentity object or an error will be passed to this 
           callback when the operation is complete. The GetCallerIdentityResponseForGetCallerIdentity
           object will be validated before being returned to caller.
     */
    func getCallerIdentityAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SecurityTokenModel.GetCallerIdentityRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SecurityTokenModel.GetCallerIdentityResponseForGetCallerIdentity, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetCallerIdentity operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetCallerIdentityRequest object being passed to this operation.
     - Returns: The GetCallerIdentityResponseForGetCallerIdentity object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getCallerIdentitySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SecurityTokenModel.GetCallerIdentityRequest,
            reporting: InvocationReportingType) throws -> SecurityTokenModel.GetCallerIdentityResponseForGetCallerIdentity

    /**
     Invokes the GetFederationToken operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetFederationTokenRequest object being passed to this operation.
         - completion: The GetFederationTokenResponseForGetFederationToken object or an error will be passed to this 
           callback when the operation is complete. The GetFederationTokenResponseForGetFederationToken
           object will be validated before being returned to caller.
           The possible errors are: malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    func getFederationTokenAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SecurityTokenModel.GetFederationTokenRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SecurityTokenModel.GetFederationTokenResponseForGetFederationToken, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetFederationToken operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetFederationTokenRequest object being passed to this operation.
     - Returns: The GetFederationTokenResponseForGetFederationToken object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    func getFederationTokenSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SecurityTokenModel.GetFederationTokenRequest,
            reporting: InvocationReportingType) throws -> SecurityTokenModel.GetFederationTokenResponseForGetFederationToken

    /**
     Invokes the GetSessionToken operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetSessionTokenRequest object being passed to this operation.
         - completion: The GetSessionTokenResponseForGetSessionToken object or an error will be passed to this 
           callback when the operation is complete. The GetSessionTokenResponseForGetSessionToken
           object will be validated before being returned to caller.
           The possible errors are: regionDisabled.
     */
    func getSessionTokenAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SecurityTokenModel.GetSessionTokenRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SecurityTokenModel.GetSessionTokenResponseForGetSessionToken, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetSessionToken operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetSessionTokenRequest object being passed to this operation.
     - Returns: The GetSessionTokenResponseForGetSessionToken object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: regionDisabled.
     */
    func getSessionTokenSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SecurityTokenModel.GetSessionTokenRequest,
            reporting: InvocationReportingType) throws -> SecurityTokenModel.GetSessionTokenResponseForGetSessionToken
}
