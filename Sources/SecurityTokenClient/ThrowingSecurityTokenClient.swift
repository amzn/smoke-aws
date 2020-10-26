// Copyright 2018-2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
// ThrowingSecurityTokenClient.swift
// SecurityTokenClient
//

import Foundation
import SecurityTokenModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the SecurityToken service that by default always throws from its methods.
 */
public struct ThrowingSecurityTokenClient: SecurityTokenClientProtocol {
    let error: SecurityTokenError
    let assumeRoleAsyncOverride: AssumeRoleAsyncType?
    let assumeRoleSyncOverride: AssumeRoleSyncType?
    let assumeRoleWithSAMLAsyncOverride: AssumeRoleWithSAMLAsyncType?
    let assumeRoleWithSAMLSyncOverride: AssumeRoleWithSAMLSyncType?
    let assumeRoleWithWebIdentityAsyncOverride: AssumeRoleWithWebIdentityAsyncType?
    let assumeRoleWithWebIdentitySyncOverride: AssumeRoleWithWebIdentitySyncType?
    let decodeAuthorizationMessageAsyncOverride: DecodeAuthorizationMessageAsyncType?
    let decodeAuthorizationMessageSyncOverride: DecodeAuthorizationMessageSyncType?
    let getAccessKeyInfoAsyncOverride: GetAccessKeyInfoAsyncType?
    let getAccessKeyInfoSyncOverride: GetAccessKeyInfoSyncType?
    let getCallerIdentityAsyncOverride: GetCallerIdentityAsyncType?
    let getCallerIdentitySyncOverride: GetCallerIdentitySyncType?
    let getFederationTokenAsyncOverride: GetFederationTokenAsyncType?
    let getFederationTokenSyncOverride: GetFederationTokenSyncType?
    let getSessionTokenAsyncOverride: GetSessionTokenAsyncType?
    let getSessionTokenSyncOverride: GetSessionTokenSyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(error: SecurityTokenError,
            assumeRoleAsync: AssumeRoleAsyncType? = nil,
            assumeRoleSync: AssumeRoleSyncType? = nil,
            assumeRoleWithSAMLAsync: AssumeRoleWithSAMLAsyncType? = nil,
            assumeRoleWithSAMLSync: AssumeRoleWithSAMLSyncType? = nil,
            assumeRoleWithWebIdentityAsync: AssumeRoleWithWebIdentityAsyncType? = nil,
            assumeRoleWithWebIdentitySync: AssumeRoleWithWebIdentitySyncType? = nil,
            decodeAuthorizationMessageAsync: DecodeAuthorizationMessageAsyncType? = nil,
            decodeAuthorizationMessageSync: DecodeAuthorizationMessageSyncType? = nil,
            getAccessKeyInfoAsync: GetAccessKeyInfoAsyncType? = nil,
            getAccessKeyInfoSync: GetAccessKeyInfoSyncType? = nil,
            getCallerIdentityAsync: GetCallerIdentityAsyncType? = nil,
            getCallerIdentitySync: GetCallerIdentitySyncType? = nil,
            getFederationTokenAsync: GetFederationTokenAsyncType? = nil,
            getFederationTokenSync: GetFederationTokenSyncType? = nil,
            getSessionTokenAsync: GetSessionTokenAsyncType? = nil,
            getSessionTokenSync: GetSessionTokenSyncType? = nil) {
        self.error = error
        self.assumeRoleAsyncOverride = assumeRoleAsync
        self.assumeRoleSyncOverride = assumeRoleSync
        self.assumeRoleWithSAMLAsyncOverride = assumeRoleWithSAMLAsync
        self.assumeRoleWithSAMLSyncOverride = assumeRoleWithSAMLSync
        self.assumeRoleWithWebIdentityAsyncOverride = assumeRoleWithWebIdentityAsync
        self.assumeRoleWithWebIdentitySyncOverride = assumeRoleWithWebIdentitySync
        self.decodeAuthorizationMessageAsyncOverride = decodeAuthorizationMessageAsync
        self.decodeAuthorizationMessageSyncOverride = decodeAuthorizationMessageSync
        self.getAccessKeyInfoAsyncOverride = getAccessKeyInfoAsync
        self.getAccessKeyInfoSyncOverride = getAccessKeyInfoSync
        self.getCallerIdentityAsyncOverride = getCallerIdentityAsync
        self.getCallerIdentitySyncOverride = getCallerIdentitySync
        self.getFederationTokenAsyncOverride = getFederationTokenAsync
        self.getFederationTokenSyncOverride = getFederationTokenSync
        self.getSessionTokenAsyncOverride = getSessionTokenAsync
        self.getSessionTokenSyncOverride = getSessionTokenSync
    }

    /**
     Invokes the AssumeRole operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssumeRoleRequest object being passed to this operation.
         - completion: The AssumeRoleResponseForAssumeRole object or an error will be passed to this 
           callback when the operation is complete. The AssumeRoleResponseForAssumeRole
           object will be validated before being returned to caller.
           The possible errors are: expiredToken, malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    public func assumeRoleAsync(
            input: SecurityTokenModel.AssumeRoleRequest, 
            completion: @escaping (Result<SecurityTokenModel.AssumeRoleResponseForAssumeRole, SecurityTokenError>) -> ()) throws {
        if let assumeRoleAsyncOverride = assumeRoleAsyncOverride {
            return try assumeRoleAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the AssumeRole operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssumeRoleRequest object being passed to this operation.
     - Returns: The AssumeRoleResponseForAssumeRole object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: expiredToken, malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    public func assumeRoleSync(
            input: SecurityTokenModel.AssumeRoleRequest) throws -> SecurityTokenModel.AssumeRoleResponseForAssumeRole {
        if let assumeRoleSyncOverride = assumeRoleSyncOverride {
            return try assumeRoleSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the AssumeRoleWithSAML operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssumeRoleWithSAMLRequest object being passed to this operation.
         - completion: The AssumeRoleWithSAMLResponseForAssumeRoleWithSAML object or an error will be passed to this 
           callback when the operation is complete. The AssumeRoleWithSAMLResponseForAssumeRoleWithSAML
           object will be validated before being returned to caller.
           The possible errors are: expiredToken, iDPRejectedClaim, invalidIdentityToken, malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    public func assumeRoleWithSAMLAsync(
            input: SecurityTokenModel.AssumeRoleWithSAMLRequest, 
            completion: @escaping (Result<SecurityTokenModel.AssumeRoleWithSAMLResponseForAssumeRoleWithSAML, SecurityTokenError>) -> ()) throws {
        if let assumeRoleWithSAMLAsyncOverride = assumeRoleWithSAMLAsyncOverride {
            return try assumeRoleWithSAMLAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the AssumeRoleWithSAML operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssumeRoleWithSAMLRequest object being passed to this operation.
     - Returns: The AssumeRoleWithSAMLResponseForAssumeRoleWithSAML object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: expiredToken, iDPRejectedClaim, invalidIdentityToken, malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    public func assumeRoleWithSAMLSync(
            input: SecurityTokenModel.AssumeRoleWithSAMLRequest) throws -> SecurityTokenModel.AssumeRoleWithSAMLResponseForAssumeRoleWithSAML {
        if let assumeRoleWithSAMLSyncOverride = assumeRoleWithSAMLSyncOverride {
            return try assumeRoleWithSAMLSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the AssumeRoleWithWebIdentity operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AssumeRoleWithWebIdentityRequest object being passed to this operation.
         - completion: The AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity object or an error will be passed to this 
           callback when the operation is complete. The AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity
           object will be validated before being returned to caller.
           The possible errors are: expiredToken, iDPCommunicationError, iDPRejectedClaim, invalidIdentityToken, malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    public func assumeRoleWithWebIdentityAsync(
            input: SecurityTokenModel.AssumeRoleWithWebIdentityRequest, 
            completion: @escaping (Result<SecurityTokenModel.AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity, SecurityTokenError>) -> ()) throws {
        if let assumeRoleWithWebIdentityAsyncOverride = assumeRoleWithWebIdentityAsyncOverride {
            return try assumeRoleWithWebIdentityAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the AssumeRoleWithWebIdentity operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssumeRoleWithWebIdentityRequest object being passed to this operation.
     - Returns: The AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: expiredToken, iDPCommunicationError, iDPRejectedClaim, invalidIdentityToken, malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    public func assumeRoleWithWebIdentitySync(
            input: SecurityTokenModel.AssumeRoleWithWebIdentityRequest) throws -> SecurityTokenModel.AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity {
        if let assumeRoleWithWebIdentitySyncOverride = assumeRoleWithWebIdentitySyncOverride {
            return try assumeRoleWithWebIdentitySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DecodeAuthorizationMessage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DecodeAuthorizationMessageRequest object being passed to this operation.
         - completion: The DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage object or an error will be passed to this 
           callback when the operation is complete. The DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage
           object will be validated before being returned to caller.
           The possible errors are: invalidAuthorizationMessage.
     */
    public func decodeAuthorizationMessageAsync(
            input: SecurityTokenModel.DecodeAuthorizationMessageRequest, 
            completion: @escaping (Result<SecurityTokenModel.DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage, SecurityTokenError>) -> ()) throws {
        if let decodeAuthorizationMessageAsyncOverride = decodeAuthorizationMessageAsyncOverride {
            return try decodeAuthorizationMessageAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DecodeAuthorizationMessage operation waiting for the response before returning.

     - Parameters:
         - input: The validated DecodeAuthorizationMessageRequest object being passed to this operation.
     - Returns: The DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidAuthorizationMessage.
     */
    public func decodeAuthorizationMessageSync(
            input: SecurityTokenModel.DecodeAuthorizationMessageRequest) throws -> SecurityTokenModel.DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage {
        if let decodeAuthorizationMessageSyncOverride = decodeAuthorizationMessageSyncOverride {
            return try decodeAuthorizationMessageSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetAccessKeyInfo operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetAccessKeyInfoRequest object being passed to this operation.
         - completion: The GetAccessKeyInfoResponseForGetAccessKeyInfo object or an error will be passed to this 
           callback when the operation is complete. The GetAccessKeyInfoResponseForGetAccessKeyInfo
           object will be validated before being returned to caller.
     */
    public func getAccessKeyInfoAsync(
            input: SecurityTokenModel.GetAccessKeyInfoRequest, 
            completion: @escaping (Result<SecurityTokenModel.GetAccessKeyInfoResponseForGetAccessKeyInfo, SecurityTokenError>) -> ()) throws {
        if let getAccessKeyInfoAsyncOverride = getAccessKeyInfoAsyncOverride {
            return try getAccessKeyInfoAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetAccessKeyInfo operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetAccessKeyInfoRequest object being passed to this operation.
     - Returns: The GetAccessKeyInfoResponseForGetAccessKeyInfo object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getAccessKeyInfoSync(
            input: SecurityTokenModel.GetAccessKeyInfoRequest) throws -> SecurityTokenModel.GetAccessKeyInfoResponseForGetAccessKeyInfo {
        if let getAccessKeyInfoSyncOverride = getAccessKeyInfoSyncOverride {
            return try getAccessKeyInfoSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetCallerIdentity operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetCallerIdentityRequest object being passed to this operation.
         - completion: The GetCallerIdentityResponseForGetCallerIdentity object or an error will be passed to this 
           callback when the operation is complete. The GetCallerIdentityResponseForGetCallerIdentity
           object will be validated before being returned to caller.
     */
    public func getCallerIdentityAsync(
            input: SecurityTokenModel.GetCallerIdentityRequest, 
            completion: @escaping (Result<SecurityTokenModel.GetCallerIdentityResponseForGetCallerIdentity, SecurityTokenError>) -> ()) throws {
        if let getCallerIdentityAsyncOverride = getCallerIdentityAsyncOverride {
            return try getCallerIdentityAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetCallerIdentity operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetCallerIdentityRequest object being passed to this operation.
     - Returns: The GetCallerIdentityResponseForGetCallerIdentity object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getCallerIdentitySync(
            input: SecurityTokenModel.GetCallerIdentityRequest) throws -> SecurityTokenModel.GetCallerIdentityResponseForGetCallerIdentity {
        if let getCallerIdentitySyncOverride = getCallerIdentitySyncOverride {
            return try getCallerIdentitySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetFederationToken operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetFederationTokenRequest object being passed to this operation.
         - completion: The GetFederationTokenResponseForGetFederationToken object or an error will be passed to this 
           callback when the operation is complete. The GetFederationTokenResponseForGetFederationToken
           object will be validated before being returned to caller.
           The possible errors are: malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    public func getFederationTokenAsync(
            input: SecurityTokenModel.GetFederationTokenRequest, 
            completion: @escaping (Result<SecurityTokenModel.GetFederationTokenResponseForGetFederationToken, SecurityTokenError>) -> ()) throws {
        if let getFederationTokenAsyncOverride = getFederationTokenAsyncOverride {
            return try getFederationTokenAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetFederationToken operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetFederationTokenRequest object being passed to this operation.
     - Returns: The GetFederationTokenResponseForGetFederationToken object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    public func getFederationTokenSync(
            input: SecurityTokenModel.GetFederationTokenRequest) throws -> SecurityTokenModel.GetFederationTokenResponseForGetFederationToken {
        if let getFederationTokenSyncOverride = getFederationTokenSyncOverride {
            return try getFederationTokenSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetSessionToken operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetSessionTokenRequest object being passed to this operation.
         - completion: The GetSessionTokenResponseForGetSessionToken object or an error will be passed to this 
           callback when the operation is complete. The GetSessionTokenResponseForGetSessionToken
           object will be validated before being returned to caller.
           The possible errors are: regionDisabled.
     */
    public func getSessionTokenAsync(
            input: SecurityTokenModel.GetSessionTokenRequest, 
            completion: @escaping (Result<SecurityTokenModel.GetSessionTokenResponseForGetSessionToken, SecurityTokenError>) -> ()) throws {
        if let getSessionTokenAsyncOverride = getSessionTokenAsyncOverride {
            return try getSessionTokenAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetSessionToken operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetSessionTokenRequest object being passed to this operation.
     - Returns: The GetSessionTokenResponseForGetSessionToken object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: regionDisabled.
     */
    public func getSessionTokenSync(
            input: SecurityTokenModel.GetSessionTokenRequest) throws -> SecurityTokenModel.GetSessionTokenResponseForGetSessionToken {
        if let getSessionTokenSyncOverride = getSessionTokenSyncOverride {
            return try getSessionTokenSyncOverride(input)
        }

        throw error
    }
}
