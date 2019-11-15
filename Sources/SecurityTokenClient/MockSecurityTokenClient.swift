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
// MockSecurityTokenClient.swift
// SecurityTokenClient
//

import Foundation
import SecurityTokenModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the SecurityToken service by default returns the `__default` property of its return type.
 */
public struct MockSecurityTokenClient: SecurityTokenClientProtocol {
    let assumeRoleAsyncOverride: SecurityTokenClientProtocol.AssumeRoleAsyncType?
    let assumeRoleSyncOverride: SecurityTokenClientProtocol.AssumeRoleSyncType?
    let assumeRoleWithSAMLAsyncOverride: SecurityTokenClientProtocol.AssumeRoleWithSAMLAsyncType?
    let assumeRoleWithSAMLSyncOverride: SecurityTokenClientProtocol.AssumeRoleWithSAMLSyncType?
    let assumeRoleWithWebIdentityAsyncOverride: SecurityTokenClientProtocol.AssumeRoleWithWebIdentityAsyncType?
    let assumeRoleWithWebIdentitySyncOverride: SecurityTokenClientProtocol.AssumeRoleWithWebIdentitySyncType?
    let decodeAuthorizationMessageAsyncOverride: SecurityTokenClientProtocol.DecodeAuthorizationMessageAsyncType?
    let decodeAuthorizationMessageSyncOverride: SecurityTokenClientProtocol.DecodeAuthorizationMessageSyncType?
    let getAccessKeyInfoAsyncOverride: SecurityTokenClientProtocol.GetAccessKeyInfoAsyncType?
    let getAccessKeyInfoSyncOverride: SecurityTokenClientProtocol.GetAccessKeyInfoSyncType?
    let getCallerIdentityAsyncOverride: SecurityTokenClientProtocol.GetCallerIdentityAsyncType?
    let getCallerIdentitySyncOverride: SecurityTokenClientProtocol.GetCallerIdentitySyncType?
    let getFederationTokenAsyncOverride: SecurityTokenClientProtocol.GetFederationTokenAsyncType?
    let getFederationTokenSyncOverride: SecurityTokenClientProtocol.GetFederationTokenSyncType?
    let getSessionTokenAsyncOverride: SecurityTokenClientProtocol.GetSessionTokenAsyncType?
    let getSessionTokenSyncOverride: SecurityTokenClientProtocol.GetSessionTokenSyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            assumeRoleAsync: SecurityTokenClientProtocol.AssumeRoleAsyncType? = nil,
            assumeRoleSync: SecurityTokenClientProtocol.AssumeRoleSyncType? = nil,
            assumeRoleWithSAMLAsync: SecurityTokenClientProtocol.AssumeRoleWithSAMLAsyncType? = nil,
            assumeRoleWithSAMLSync: SecurityTokenClientProtocol.AssumeRoleWithSAMLSyncType? = nil,
            assumeRoleWithWebIdentityAsync: SecurityTokenClientProtocol.AssumeRoleWithWebIdentityAsyncType? = nil,
            assumeRoleWithWebIdentitySync: SecurityTokenClientProtocol.AssumeRoleWithWebIdentitySyncType? = nil,
            decodeAuthorizationMessageAsync: SecurityTokenClientProtocol.DecodeAuthorizationMessageAsyncType? = nil,
            decodeAuthorizationMessageSync: SecurityTokenClientProtocol.DecodeAuthorizationMessageSyncType? = nil,
            getAccessKeyInfoAsync: SecurityTokenClientProtocol.GetAccessKeyInfoAsyncType? = nil,
            getAccessKeyInfoSync: SecurityTokenClientProtocol.GetAccessKeyInfoSyncType? = nil,
            getCallerIdentityAsync: SecurityTokenClientProtocol.GetCallerIdentityAsyncType? = nil,
            getCallerIdentitySync: SecurityTokenClientProtocol.GetCallerIdentitySyncType? = nil,
            getFederationTokenAsync: SecurityTokenClientProtocol.GetFederationTokenAsyncType? = nil,
            getFederationTokenSync: SecurityTokenClientProtocol.GetFederationTokenSyncType? = nil,
            getSessionTokenAsync: SecurityTokenClientProtocol.GetSessionTokenAsyncType? = nil,
            getSessionTokenSync: SecurityTokenClientProtocol.GetSessionTokenSyncType? = nil) {
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
           The possible errors are: malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    public func assumeRoleAsync(
            input: SecurityTokenModel.AssumeRoleRequest, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SecurityTokenModel.AssumeRoleResponseForAssumeRole, HTTPClientError>) -> ()) throws {
        if let assumeRoleAsyncOverride = assumeRoleAsyncOverride {
            return try assumeRoleAsyncOverride(input, reporting, completion)
        }

        let result = AssumeRoleResponseForAssumeRole.__default
        
        completion(.success(result))
    }

    /**
     Invokes the AssumeRole operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssumeRoleRequest object being passed to this operation.
     - Returns: The AssumeRoleResponseForAssumeRole object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    public func assumeRoleSync(
            input: SecurityTokenModel.AssumeRoleRequest,
            reporting: SmokeAWSInvocationReporting) throws -> SecurityTokenModel.AssumeRoleResponseForAssumeRole {
        if let assumeRoleSyncOverride = assumeRoleSyncOverride {
            return try assumeRoleSyncOverride(input, reporting)
        }

        return AssumeRoleResponseForAssumeRole.__default
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SecurityTokenModel.AssumeRoleWithSAMLResponseForAssumeRoleWithSAML, HTTPClientError>) -> ()) throws {
        if let assumeRoleWithSAMLAsyncOverride = assumeRoleWithSAMLAsyncOverride {
            return try assumeRoleWithSAMLAsyncOverride(input, reporting, completion)
        }

        let result = AssumeRoleWithSAMLResponseForAssumeRoleWithSAML.__default
        
        completion(.success(result))
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
            input: SecurityTokenModel.AssumeRoleWithSAMLRequest,
            reporting: SmokeAWSInvocationReporting) throws -> SecurityTokenModel.AssumeRoleWithSAMLResponseForAssumeRoleWithSAML {
        if let assumeRoleWithSAMLSyncOverride = assumeRoleWithSAMLSyncOverride {
            return try assumeRoleWithSAMLSyncOverride(input, reporting)
        }

        return AssumeRoleWithSAMLResponseForAssumeRoleWithSAML.__default
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SecurityTokenModel.AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity, HTTPClientError>) -> ()) throws {
        if let assumeRoleWithWebIdentityAsyncOverride = assumeRoleWithWebIdentityAsyncOverride {
            return try assumeRoleWithWebIdentityAsyncOverride(input, reporting, completion)
        }

        let result = AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity.__default
        
        completion(.success(result))
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
            input: SecurityTokenModel.AssumeRoleWithWebIdentityRequest,
            reporting: SmokeAWSInvocationReporting) throws -> SecurityTokenModel.AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity {
        if let assumeRoleWithWebIdentitySyncOverride = assumeRoleWithWebIdentitySyncOverride {
            return try assumeRoleWithWebIdentitySyncOverride(input, reporting)
        }

        return AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity.__default
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SecurityTokenModel.DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage, HTTPClientError>) -> ()) throws {
        if let decodeAuthorizationMessageAsyncOverride = decodeAuthorizationMessageAsyncOverride {
            return try decodeAuthorizationMessageAsyncOverride(input, reporting, completion)
        }

        let result = DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage.__default
        
        completion(.success(result))
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
            input: SecurityTokenModel.DecodeAuthorizationMessageRequest,
            reporting: SmokeAWSInvocationReporting) throws -> SecurityTokenModel.DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage {
        if let decodeAuthorizationMessageSyncOverride = decodeAuthorizationMessageSyncOverride {
            return try decodeAuthorizationMessageSyncOverride(input, reporting)
        }

        return DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage.__default
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SecurityTokenModel.GetAccessKeyInfoResponseForGetAccessKeyInfo, HTTPClientError>) -> ()) throws {
        if let getAccessKeyInfoAsyncOverride = getAccessKeyInfoAsyncOverride {
            return try getAccessKeyInfoAsyncOverride(input, reporting, completion)
        }

        let result = GetAccessKeyInfoResponseForGetAccessKeyInfo.__default
        
        completion(.success(result))
    }

    /**
     Invokes the GetAccessKeyInfo operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetAccessKeyInfoRequest object being passed to this operation.
     - Returns: The GetAccessKeyInfoResponseForGetAccessKeyInfo object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getAccessKeyInfoSync(
            input: SecurityTokenModel.GetAccessKeyInfoRequest,
            reporting: SmokeAWSInvocationReporting) throws -> SecurityTokenModel.GetAccessKeyInfoResponseForGetAccessKeyInfo {
        if let getAccessKeyInfoSyncOverride = getAccessKeyInfoSyncOverride {
            return try getAccessKeyInfoSyncOverride(input, reporting)
        }

        return GetAccessKeyInfoResponseForGetAccessKeyInfo.__default
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SecurityTokenModel.GetCallerIdentityResponseForGetCallerIdentity, HTTPClientError>) -> ()) throws {
        if let getCallerIdentityAsyncOverride = getCallerIdentityAsyncOverride {
            return try getCallerIdentityAsyncOverride(input, reporting, completion)
        }

        let result = GetCallerIdentityResponseForGetCallerIdentity.__default
        
        completion(.success(result))
    }

    /**
     Invokes the GetCallerIdentity operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetCallerIdentityRequest object being passed to this operation.
     - Returns: The GetCallerIdentityResponseForGetCallerIdentity object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getCallerIdentitySync(
            input: SecurityTokenModel.GetCallerIdentityRequest,
            reporting: SmokeAWSInvocationReporting) throws -> SecurityTokenModel.GetCallerIdentityResponseForGetCallerIdentity {
        if let getCallerIdentitySyncOverride = getCallerIdentitySyncOverride {
            return try getCallerIdentitySyncOverride(input, reporting)
        }

        return GetCallerIdentityResponseForGetCallerIdentity.__default
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SecurityTokenModel.GetFederationTokenResponseForGetFederationToken, HTTPClientError>) -> ()) throws {
        if let getFederationTokenAsyncOverride = getFederationTokenAsyncOverride {
            return try getFederationTokenAsyncOverride(input, reporting, completion)
        }

        let result = GetFederationTokenResponseForGetFederationToken.__default
        
        completion(.success(result))
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
            input: SecurityTokenModel.GetFederationTokenRequest,
            reporting: SmokeAWSInvocationReporting) throws -> SecurityTokenModel.GetFederationTokenResponseForGetFederationToken {
        if let getFederationTokenSyncOverride = getFederationTokenSyncOverride {
            return try getFederationTokenSyncOverride(input, reporting)
        }

        return GetFederationTokenResponseForGetFederationToken.__default
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<SecurityTokenModel.GetSessionTokenResponseForGetSessionToken, HTTPClientError>) -> ()) throws {
        if let getSessionTokenAsyncOverride = getSessionTokenAsyncOverride {
            return try getSessionTokenAsyncOverride(input, reporting, completion)
        }

        let result = GetSessionTokenResponseForGetSessionToken.__default
        
        completion(.success(result))
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
            input: SecurityTokenModel.GetSessionTokenRequest,
            reporting: SmokeAWSInvocationReporting) throws -> SecurityTokenModel.GetSessionTokenResponseForGetSessionToken {
        if let getSessionTokenSyncOverride = getSessionTokenSyncOverride {
            return try getSessionTokenSyncOverride(input, reporting)
        }

        return GetSessionTokenResponseForGetSessionToken.__default
    }
}
