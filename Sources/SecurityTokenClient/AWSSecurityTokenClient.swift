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
// AWSSecurityTokenClient.swift
// SecurityTokenClient
//

import Foundation
import SecurityTokenModel
import SmokeAWSCore
import SmokeHTTPClient
import SmokeAWSHttp
import NIO
import NIOHTTP1
import AsyncHTTPClient
import Logging

public enum SecurityTokenClientError: Swift.Error {
    case invalidEndpoint(String)
    case unsupportedPayload
    case unknownError(String?)
}

 extension SecurityTokenError: ConvertableError {
    public static func asUnrecognizedError(error: Swift.Error) -> SecurityTokenError {
        return error.asUnrecognizedSecurityTokenError()
    }
}

/**
 AWS Client for the SecurityToken service.
 */
public struct AWSSecurityTokenClient<InvocationReportingType: HTTPClientCoreInvocationReporting>: SecurityTokenClientProtocol {
    let httpClient: HTTPOperationsClient
    let ownsHttpClients: Bool
    let awsRegion: AWSRegion
    let service: String
    let apiVersion: String
    let target: String?
    let retryConfiguration: HTTPClientRetryConfiguration
    let retryOnErrorProvider: (SmokeHTTPClient.HTTPClientError) -> Bool
    let credentialsProvider: CredentialsProvider
    
    public let reporting: InvocationReportingType

    let operationsReporting: SecurityTokenOperationsReporting
    let invocationsReporting: SecurityTokenInvocationsReporting<InvocationReportingType>
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion? = nil,
                reporting: InvocationReportingType,
                endpointHostName: String = "sts.amazonaws.com",
                endpointPort: Int = 443,
                requiresTLS: Bool? = nil,
                service: String = "sts",
                contentType: String = "application/octet-stream",
                apiVersion: String = "2011-06-15",
                connectionTimeoutSeconds: Int64 = 10,
                retryConfiguration: HTTPClientRetryConfiguration = .default,
                eventLoopProvider: HTTPClient.EventLoopGroupProvider = .createNew,
                connectionPoolConfiguration: HTTPClient.Configuration.ConnectionPool? = nil,
                reportingConfiguration: SmokeAWSClientReportingConfiguration<SecurityTokenModelOperations>
                    = SmokeAWSClientReportingConfiguration<SecurityTokenModelOperations>() ) {
        let useTLS = requiresTLS ?? AWSHTTPClientDelegate.requiresTLS(forEndpointPort: endpointPort)
        let clientDelegate = XMLAWSHttpClientDelegate<SecurityTokenError>(requiresTLS: useTLS)

        self.httpClient = HTTPOperationsClient(
            endpointHostName: endpointHostName,
            endpointPort: endpointPort,
            contentType: contentType,
            clientDelegate: clientDelegate,
            connectionTimeoutSeconds: connectionTimeoutSeconds,
            eventLoopProvider: eventLoopProvider,
            connectionPoolConfiguration: connectionPoolConfiguration)
        self.ownsHttpClients = true
        self.awsRegion = awsRegion ?? .us_east_1
        self.service = service
        self.target = nil
        self.credentialsProvider = credentialsProvider
        self.retryConfiguration = retryConfiguration
        self.reporting = reporting
        self.retryOnErrorProvider = { error in error.isRetriable() }
        self.apiVersion = apiVersion
        self.operationsReporting = SecurityTokenOperationsReporting(clientName: "AWSSecurityTokenClient", reportingConfiguration: reportingConfiguration)
        self.invocationsReporting = SecurityTokenInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
    }
    
    internal init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion? = nil,
                reporting: InvocationReportingType,
                httpClient: HTTPOperationsClient,
                service: String,
                apiVersion: String,
                retryOnErrorProvider: @escaping (SmokeHTTPClient.HTTPClientError) -> Bool,
                retryConfiguration: HTTPClientRetryConfiguration,
                operationsReporting: SecurityTokenOperationsReporting) {
        self.httpClient = httpClient
        self.ownsHttpClients = false
        self.awsRegion = awsRegion ?? .us_east_1
        self.service = service
        self.target = nil
        self.credentialsProvider = credentialsProvider
        self.retryConfiguration = retryConfiguration
        self.reporting = reporting
        self.retryOnErrorProvider = retryOnErrorProvider
        self.apiVersion = apiVersion
        self.operationsReporting = operationsReporting
        self.invocationsReporting = SecurityTokenInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
    }

    /**
     Gracefully shuts down this client. This function is idempotent and
     will handle being called multiple times. Will block until shutdown is complete.
     */
    public func syncShutdown() throws {
        if self.ownsHttpClients {
            try self.httpClient.syncShutdown()
        }
    }

    // renamed `syncShutdown` to make it clearer this version of shutdown will block.
    @available(*, deprecated, renamed: "syncShutdown")
    public func close() throws {
        if self.ownsHttpClients {
            try self.httpClient.close()
        }
    }

    /**
     Gracefully shuts down this client. This function is idempotent and
     will handle being called multiple times. Will return when shutdown is complete.
     */
    #if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    public func shutdown() async throws {
        if self.ownsHttpClients {
            try await self.httpClient.shutdown()
        }
    }
    #endif

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
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.assumeRole,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = AssumeRoleOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SecurityTokenModelOperations.assumeRole.rawValue,
            version: apiVersion)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.assumeRole,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = AssumeRoleOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SecurityTokenModelOperations.assumeRole.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SecurityTokenError = error.asTypedError()
            throw typedError
        }
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
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.assumeRoleWithSAML,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = AssumeRoleWithSAMLOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SecurityTokenModelOperations.assumeRoleWithSAML.rawValue,
            version: apiVersion)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.assumeRoleWithSAML,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = AssumeRoleWithSAMLOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SecurityTokenModelOperations.assumeRoleWithSAML.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SecurityTokenError = error.asTypedError()
            throw typedError
        }
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
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.assumeRoleWithWebIdentity,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = AssumeRoleWithWebIdentityOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SecurityTokenModelOperations.assumeRoleWithWebIdentity.rawValue,
            version: apiVersion)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.assumeRoleWithWebIdentity,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = AssumeRoleWithWebIdentityOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SecurityTokenModelOperations.assumeRoleWithWebIdentity.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SecurityTokenError = error.asTypedError()
            throw typedError
        }
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
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.decodeAuthorizationMessage,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DecodeAuthorizationMessageOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SecurityTokenModelOperations.decodeAuthorizationMessage.rawValue,
            version: apiVersion)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.decodeAuthorizationMessage,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DecodeAuthorizationMessageOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SecurityTokenModelOperations.decodeAuthorizationMessage.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SecurityTokenError = error.asTypedError()
            throw typedError
        }
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
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getAccessKeyInfo,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetAccessKeyInfoOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SecurityTokenModelOperations.getAccessKeyInfo.rawValue,
            version: apiVersion)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getAccessKeyInfo,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetAccessKeyInfoOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SecurityTokenModelOperations.getAccessKeyInfo.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SecurityTokenError = error.asTypedError()
            throw typedError
        }
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
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getCallerIdentity,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetCallerIdentityOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SecurityTokenModelOperations.getCallerIdentity.rawValue,
            version: apiVersion)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getCallerIdentity,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetCallerIdentityOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SecurityTokenModelOperations.getCallerIdentity.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SecurityTokenError = error.asTypedError()
            throw typedError
        }
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
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getFederationToken,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetFederationTokenOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SecurityTokenModelOperations.getFederationToken.rawValue,
            version: apiVersion)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getFederationToken,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetFederationTokenOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SecurityTokenModelOperations.getFederationToken.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SecurityTokenError = error.asTypedError()
            throw typedError
        }
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
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getSessionToken,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetSessionTokenOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SecurityTokenModelOperations.getSessionToken.rawValue,
            version: apiVersion)

        _ = try httpClient.executeOperationAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getSessionToken,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetSessionTokenOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SecurityTokenModelOperations.getSessionToken.rawValue,
            version: apiVersion)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SecurityTokenError = error.asTypedError()
            throw typedError
        }
    }
    
    #if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)

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
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.assumeRole,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = AssumeRoleOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SecurityTokenModelOperations.assumeRole.rawValue,
            version: apiVersion)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SecurityTokenError = error.asTypedError()
            throw typedError
        }
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
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.assumeRoleWithSAML,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = AssumeRoleWithSAMLOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SecurityTokenModelOperations.assumeRoleWithSAML.rawValue,
            version: apiVersion)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SecurityTokenError = error.asTypedError()
            throw typedError
        }
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
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.assumeRoleWithWebIdentity,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = AssumeRoleWithWebIdentityOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SecurityTokenModelOperations.assumeRoleWithWebIdentity.rawValue,
            version: apiVersion)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SecurityTokenError = error.asTypedError()
            throw typedError
        }
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
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.decodeAuthorizationMessage,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DecodeAuthorizationMessageOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SecurityTokenModelOperations.decodeAuthorizationMessage.rawValue,
            version: apiVersion)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SecurityTokenError = error.asTypedError()
            throw typedError
        }
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
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getAccessKeyInfo,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetAccessKeyInfoOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SecurityTokenModelOperations.getAccessKeyInfo.rawValue,
            version: apiVersion)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SecurityTokenError = error.asTypedError()
            throw typedError
        }
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
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getCallerIdentity,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetCallerIdentityOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SecurityTokenModelOperations.getCallerIdentity.rawValue,
            version: apiVersion)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SecurityTokenError = error.asTypedError()
            throw typedError
        }
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
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getFederationToken,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetFederationTokenOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SecurityTokenModelOperations.getFederationToken.rawValue,
            version: apiVersion)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SecurityTokenError = error.asTypedError()
            throw typedError
        }
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
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getSessionToken,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetSessionTokenOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: SecurityTokenModelOperations.getSessionToken.rawValue,
            version: apiVersion)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: SecurityTokenError = error.asTypedError()
            throw typedError
        }
    }
    #endif
}
