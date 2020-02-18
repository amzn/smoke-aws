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
public struct ThrowingSecurityTokenClient<ClientInvocationReportingType: SmokeAWSInvocationReporting>: SecurityTokenClientProtocol {
    let error: HTTPClientError
    let assumeRoleAsyncOverride: AssumeRoleAsyncType<ClientInvocationReportingType>?
    let assumeRoleSyncOverride: AssumeRoleSyncType<ClientInvocationReportingType>?
    let assumeRoleWithSAMLAsyncOverride: AssumeRoleWithSAMLAsyncType<ClientInvocationReportingType>?
    let assumeRoleWithSAMLSyncOverride: AssumeRoleWithSAMLSyncType<ClientInvocationReportingType>?
    let assumeRoleWithWebIdentityAsyncOverride: AssumeRoleWithWebIdentityAsyncType<ClientInvocationReportingType>?
    let assumeRoleWithWebIdentitySyncOverride: AssumeRoleWithWebIdentitySyncType<ClientInvocationReportingType>?
    let decodeAuthorizationMessageAsyncOverride: DecodeAuthorizationMessageAsyncType<ClientInvocationReportingType>?
    let decodeAuthorizationMessageSyncOverride: DecodeAuthorizationMessageSyncType<ClientInvocationReportingType>?
    let getAccessKeyInfoAsyncOverride: GetAccessKeyInfoAsyncType<ClientInvocationReportingType>?
    let getAccessKeyInfoSyncOverride: GetAccessKeyInfoSyncType<ClientInvocationReportingType>?
    let getCallerIdentityAsyncOverride: GetCallerIdentityAsyncType<ClientInvocationReportingType>?
    let getCallerIdentitySyncOverride: GetCallerIdentitySyncType<ClientInvocationReportingType>?
    let getFederationTokenAsyncOverride: GetFederationTokenAsyncType<ClientInvocationReportingType>?
    let getFederationTokenSyncOverride: GetFederationTokenSyncType<ClientInvocationReportingType>?
    let getSessionTokenAsyncOverride: GetSessionTokenAsyncType<ClientInvocationReportingType>?
    let getSessionTokenSyncOverride: GetSessionTokenSyncType<ClientInvocationReportingType>?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(error: HTTPClientError,
            assumeRoleAsync: AssumeRoleAsyncType<ClientInvocationReportingType>? = nil,
            assumeRoleSync: AssumeRoleSyncType<ClientInvocationReportingType>? = nil,
            assumeRoleWithSAMLAsync: AssumeRoleWithSAMLAsyncType<ClientInvocationReportingType>? = nil,
            assumeRoleWithSAMLSync: AssumeRoleWithSAMLSyncType<ClientInvocationReportingType>? = nil,
            assumeRoleWithWebIdentityAsync: AssumeRoleWithWebIdentityAsyncType<ClientInvocationReportingType>? = nil,
            assumeRoleWithWebIdentitySync: AssumeRoleWithWebIdentitySyncType<ClientInvocationReportingType>? = nil,
            decodeAuthorizationMessageAsync: DecodeAuthorizationMessageAsyncType<ClientInvocationReportingType>? = nil,
            decodeAuthorizationMessageSync: DecodeAuthorizationMessageSyncType<ClientInvocationReportingType>? = nil,
            getAccessKeyInfoAsync: GetAccessKeyInfoAsyncType<ClientInvocationReportingType>? = nil,
            getAccessKeyInfoSync: GetAccessKeyInfoSyncType<ClientInvocationReportingType>? = nil,
            getCallerIdentityAsync: GetCallerIdentityAsyncType<ClientInvocationReportingType>? = nil,
            getCallerIdentitySync: GetCallerIdentitySyncType<ClientInvocationReportingType>? = nil,
            getFederationTokenAsync: GetFederationTokenAsyncType<ClientInvocationReportingType>? = nil,
            getFederationTokenSync: GetFederationTokenSyncType<ClientInvocationReportingType>? = nil,
            getSessionTokenAsync: GetSessionTokenAsyncType<ClientInvocationReportingType>? = nil,
            getSessionTokenSync: GetSessionTokenSyncType<ClientInvocationReportingType>? = nil) {
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
           The possible errors are: malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    public func assumeRoleAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SecurityTokenModel.AssumeRoleRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SecurityTokenModel.AssumeRoleResponseForAssumeRole, HTTPClientError>) -> ()) throws {
        if let assumeRoleAsyncOverrideNonOptional = assumeRoleAsyncOverride {
            if let assumeRoleAsyncOverrideTyped = assumeRoleAsyncOverrideNonOptional
                    as? AssumeRoleAsyncType<InvocationReportingType> {
                return try assumeRoleAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the AssumeRole operation waiting for the response before returning.

     - Parameters:
         - input: The validated AssumeRoleRequest object being passed to this operation.
     - Returns: The AssumeRoleResponseForAssumeRole object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    public func assumeRoleSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SecurityTokenModel.AssumeRoleRequest,
            reporting: InvocationReportingType) throws -> SecurityTokenModel.AssumeRoleResponseForAssumeRole {
        if let assumeRoleSyncOverrideNonOptional = assumeRoleSyncOverride {
            if let assumeRoleSyncOverrideTyped = assumeRoleSyncOverrideNonOptional
                    as? AssumeRoleSyncType<InvocationReportingType> {
                return try assumeRoleSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func assumeRoleWithSAMLAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SecurityTokenModel.AssumeRoleWithSAMLRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SecurityTokenModel.AssumeRoleWithSAMLResponseForAssumeRoleWithSAML, HTTPClientError>) -> ()) throws {
        if let assumeRoleWithSAMLAsyncOverrideNonOptional = assumeRoleWithSAMLAsyncOverride {
            if let assumeRoleWithSAMLAsyncOverrideTyped = assumeRoleWithSAMLAsyncOverrideNonOptional
                    as? AssumeRoleWithSAMLAsyncType<InvocationReportingType> {
                return try assumeRoleWithSAMLAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func assumeRoleWithSAMLSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SecurityTokenModel.AssumeRoleWithSAMLRequest,
            reporting: InvocationReportingType) throws -> SecurityTokenModel.AssumeRoleWithSAMLResponseForAssumeRoleWithSAML {
        if let assumeRoleWithSAMLSyncOverrideNonOptional = assumeRoleWithSAMLSyncOverride {
            if let assumeRoleWithSAMLSyncOverrideTyped = assumeRoleWithSAMLSyncOverrideNonOptional
                    as? AssumeRoleWithSAMLSyncType<InvocationReportingType> {
                return try assumeRoleWithSAMLSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func assumeRoleWithWebIdentityAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SecurityTokenModel.AssumeRoleWithWebIdentityRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SecurityTokenModel.AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity, HTTPClientError>) -> ()) throws {
        if let assumeRoleWithWebIdentityAsyncOverrideNonOptional = assumeRoleWithWebIdentityAsyncOverride {
            if let assumeRoleWithWebIdentityAsyncOverrideTyped = assumeRoleWithWebIdentityAsyncOverrideNonOptional
                    as? AssumeRoleWithWebIdentityAsyncType<InvocationReportingType> {
                return try assumeRoleWithWebIdentityAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func assumeRoleWithWebIdentitySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SecurityTokenModel.AssumeRoleWithWebIdentityRequest,
            reporting: InvocationReportingType) throws -> SecurityTokenModel.AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity {
        if let assumeRoleWithWebIdentitySyncOverrideNonOptional = assumeRoleWithWebIdentitySyncOverride {
            if let assumeRoleWithWebIdentitySyncOverrideTyped = assumeRoleWithWebIdentitySyncOverrideNonOptional
                    as? AssumeRoleWithWebIdentitySyncType<InvocationReportingType> {
                return try assumeRoleWithWebIdentitySyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func decodeAuthorizationMessageAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SecurityTokenModel.DecodeAuthorizationMessageRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SecurityTokenModel.DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage, HTTPClientError>) -> ()) throws {
        if let decodeAuthorizationMessageAsyncOverrideNonOptional = decodeAuthorizationMessageAsyncOverride {
            if let decodeAuthorizationMessageAsyncOverrideTyped = decodeAuthorizationMessageAsyncOverrideNonOptional
                    as? DecodeAuthorizationMessageAsyncType<InvocationReportingType> {
                return try decodeAuthorizationMessageAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func decodeAuthorizationMessageSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SecurityTokenModel.DecodeAuthorizationMessageRequest,
            reporting: InvocationReportingType) throws -> SecurityTokenModel.DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage {
        if let decodeAuthorizationMessageSyncOverrideNonOptional = decodeAuthorizationMessageSyncOverride {
            if let decodeAuthorizationMessageSyncOverrideTyped = decodeAuthorizationMessageSyncOverrideNonOptional
                    as? DecodeAuthorizationMessageSyncType<InvocationReportingType> {
                return try decodeAuthorizationMessageSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getAccessKeyInfoAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SecurityTokenModel.GetAccessKeyInfoRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SecurityTokenModel.GetAccessKeyInfoResponseForGetAccessKeyInfo, HTTPClientError>) -> ()) throws {
        if let getAccessKeyInfoAsyncOverrideNonOptional = getAccessKeyInfoAsyncOverride {
            if let getAccessKeyInfoAsyncOverrideTyped = getAccessKeyInfoAsyncOverrideNonOptional
                    as? GetAccessKeyInfoAsyncType<InvocationReportingType> {
                return try getAccessKeyInfoAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getAccessKeyInfoSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SecurityTokenModel.GetAccessKeyInfoRequest,
            reporting: InvocationReportingType) throws -> SecurityTokenModel.GetAccessKeyInfoResponseForGetAccessKeyInfo {
        if let getAccessKeyInfoSyncOverrideNonOptional = getAccessKeyInfoSyncOverride {
            if let getAccessKeyInfoSyncOverrideTyped = getAccessKeyInfoSyncOverrideNonOptional
                    as? GetAccessKeyInfoSyncType<InvocationReportingType> {
                return try getAccessKeyInfoSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getCallerIdentityAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SecurityTokenModel.GetCallerIdentityRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SecurityTokenModel.GetCallerIdentityResponseForGetCallerIdentity, HTTPClientError>) -> ()) throws {
        if let getCallerIdentityAsyncOverrideNonOptional = getCallerIdentityAsyncOverride {
            if let getCallerIdentityAsyncOverrideTyped = getCallerIdentityAsyncOverrideNonOptional
                    as? GetCallerIdentityAsyncType<InvocationReportingType> {
                return try getCallerIdentityAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getCallerIdentitySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SecurityTokenModel.GetCallerIdentityRequest,
            reporting: InvocationReportingType) throws -> SecurityTokenModel.GetCallerIdentityResponseForGetCallerIdentity {
        if let getCallerIdentitySyncOverrideNonOptional = getCallerIdentitySyncOverride {
            if let getCallerIdentitySyncOverrideTyped = getCallerIdentitySyncOverrideNonOptional
                    as? GetCallerIdentitySyncType<InvocationReportingType> {
                return try getCallerIdentitySyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getFederationTokenAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SecurityTokenModel.GetFederationTokenRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SecurityTokenModel.GetFederationTokenResponseForGetFederationToken, HTTPClientError>) -> ()) throws {
        if let getFederationTokenAsyncOverrideNonOptional = getFederationTokenAsyncOverride {
            if let getFederationTokenAsyncOverrideTyped = getFederationTokenAsyncOverrideNonOptional
                    as? GetFederationTokenAsyncType<InvocationReportingType> {
                return try getFederationTokenAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getFederationTokenSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SecurityTokenModel.GetFederationTokenRequest,
            reporting: InvocationReportingType) throws -> SecurityTokenModel.GetFederationTokenResponseForGetFederationToken {
        if let getFederationTokenSyncOverrideNonOptional = getFederationTokenSyncOverride {
            if let getFederationTokenSyncOverrideTyped = getFederationTokenSyncOverrideNonOptional
                    as? GetFederationTokenSyncType<InvocationReportingType> {
                return try getFederationTokenSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getSessionTokenAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SecurityTokenModel.GetSessionTokenRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<SecurityTokenModel.GetSessionTokenResponseForGetSessionToken, HTTPClientError>) -> ()) throws {
        if let getSessionTokenAsyncOverrideNonOptional = getSessionTokenAsyncOverride {
            if let getSessionTokenAsyncOverrideTyped = getSessionTokenAsyncOverrideNonOptional
                    as? GetSessionTokenAsyncType<InvocationReportingType> {
                return try getSessionTokenAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getSessionTokenSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: SecurityTokenModel.GetSessionTokenRequest,
            reporting: InvocationReportingType) throws -> SecurityTokenModel.GetSessionTokenResponseForGetSessionToken {
        if let getSessionTokenSyncOverrideNonOptional = getSessionTokenSyncOverride {
            if let getSessionTokenSyncOverrideTyped = getSessionTokenSyncOverrideNonOptional
                    as? GetSessionTokenSyncType<InvocationReportingType> {
                return try getSessionTokenSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }
}
