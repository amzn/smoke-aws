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
// AWSCloudformationClient.swift
// CloudformationClient
//

import Foundation
import CloudformationModel
import SmokeAWSCore
import SmokeHTTPClient
import SmokeAWSHttp
import NIO
import NIOHTTP1
import AsyncHTTPClient
import Logging

public enum CloudformationClientError: Swift.Error {
    case invalidEndpoint(String)
    case unsupportedPayload
    case unknownError(String?)
}

 extension CloudformationError: ConvertableError {
    public static func asUnrecognizedError(error: Swift.Error) -> CloudformationError {
        return error.asUnrecognizedCloudformationError()
    }

    public func isRetriable() -> Bool? {
        switch self {
        case .throttling:
            return true
        default:
            return nil
        }
    }
}

private extension SmokeHTTPClient.HTTPClientError {
    func isRetriable() -> Bool {
        if let typedError = self.cause as? CloudformationError, let isRetriable = typedError.isRetriable() {
            return isRetriable
        } else {
            return self.isRetriableAccordingToCategory
        }
    }
}

/**
 AWS Client for the Cloudformation service.
 */
public struct AWSCloudformationClient<InvocationReportingType: HTTPClientCoreInvocationReporting>: CloudformationClientProtocol {
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

    let operationsReporting: CloudformationOperationsReporting
    let invocationsReporting: CloudformationInvocationsReporting<InvocationReportingType>
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                endpointHostName: String,
                endpointPort: Int = 443,
                requiresTLS: Bool? = nil,
                service: String = "cloudformation",
                contentType: String = "application/octet-stream",
                apiVersion: String = "2010-05-15",
                connectionTimeoutSeconds: Int64 = 10,
                retryConfiguration: HTTPClientRetryConfiguration = .default,
                eventLoopProvider: HTTPClient.EventLoopGroupProvider = .createNew,
                connectionPoolConfiguration: HTTPClient.Configuration.ConnectionPool? = nil,
                reportingConfiguration: SmokeAWSClientReportingConfiguration<CloudformationModelOperations>
                    = SmokeAWSClientReportingConfiguration<CloudformationModelOperations>() ) {
        let useTLS = requiresTLS ?? AWSHTTPClientDelegate.requiresTLS(forEndpointPort: endpointPort)
        let clientDelegate = XMLAWSHttpClientDelegate<CloudformationError>(requiresTLS: useTLS,
            outputListDecodingStrategy: .collapseListUsingItemTag("member"), 
            inputQueryListEncodingStrategy: .expandListWithIndexAndItemTag(itemTag: "member"))

        self.httpClient = HTTPOperationsClient(
            endpointHostName: endpointHostName,
            endpointPort: endpointPort,
            contentType: contentType,
            clientDelegate: clientDelegate,
            connectionTimeoutSeconds: connectionTimeoutSeconds,
            eventLoopProvider: eventLoopProvider,
            connectionPoolConfiguration: connectionPoolConfiguration)
        self.ownsHttpClients = true
        self.awsRegion = awsRegion
        self.service = service
        self.target = nil
        self.credentialsProvider = credentialsProvider
        self.retryConfiguration = retryConfiguration
        self.reporting = reporting
        self.retryOnErrorProvider = { error in error.isRetriable() }
        self.apiVersion = apiVersion
        self.operationsReporting = CloudformationOperationsReporting(clientName: "AWSCloudformationClient", reportingConfiguration: reportingConfiguration)
        self.invocationsReporting = CloudformationInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
    }
    
    internal init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                httpClient: HTTPOperationsClient,
                service: String,
                apiVersion: String,
                retryOnErrorProvider: @escaping (SmokeHTTPClient.HTTPClientError) -> Bool,
                retryConfiguration: HTTPClientRetryConfiguration,
                operationsReporting: CloudformationOperationsReporting) {
        self.httpClient = httpClient
        self.ownsHttpClients = false
        self.awsRegion = awsRegion
        self.service = service
        self.target = nil
        self.credentialsProvider = credentialsProvider
        self.retryConfiguration = retryConfiguration
        self.reporting = reporting
        self.retryOnErrorProvider = retryOnErrorProvider
        self.apiVersion = apiVersion
        self.operationsReporting = operationsReporting
        self.invocationsReporting = CloudformationInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
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
     Invokes the ActivateOrganizationsAccess operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ActivateOrganizationsAccessInput object being passed to this operation.
         - completion: The ActivateOrganizationsAccessOutputForActivateOrganizationsAccess object or an error will be passed to this 
           callback when the operation is complete. The ActivateOrganizationsAccessOutputForActivateOrganizationsAccess
           object will be validated before being returned to caller.
           The possible errors are: invalidOperation, operationNotFound.
     */
    public func activateOrganizationsAccessAsync(
            input: CloudformationModel.ActivateOrganizationsAccessInput, 
            completion: @escaping (Result<CloudformationModel.ActivateOrganizationsAccessOutputForActivateOrganizationsAccess, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.activateOrganizationsAccess,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ActivateOrganizationsAccessOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.activateOrganizationsAccess.rawValue,
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
     Invokes the ActivateOrganizationsAccess operation waiting for the response before returning.

     - Parameters:
         - input: The validated ActivateOrganizationsAccessInput object being passed to this operation.
     - Returns: The ActivateOrganizationsAccessOutputForActivateOrganizationsAccess object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, operationNotFound.
     */
    public func activateOrganizationsAccessSync(
            input: CloudformationModel.ActivateOrganizationsAccessInput) throws -> CloudformationModel.ActivateOrganizationsAccessOutputForActivateOrganizationsAccess {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.activateOrganizationsAccess,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ActivateOrganizationsAccessOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.activateOrganizationsAccess.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ActivateType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ActivateTypeInput object being passed to this operation.
         - completion: The ActivateTypeOutputForActivateType object or an error will be passed to this 
           callback when the operation is complete. The ActivateTypeOutputForActivateType
           object will be validated before being returned to caller.
           The possible errors are: cFNRegistry, typeNotFound.
     */
    public func activateTypeAsync(
            input: CloudformationModel.ActivateTypeInput, 
            completion: @escaping (Result<CloudformationModel.ActivateTypeOutputForActivateType, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.activateType,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ActivateTypeOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.activateType.rawValue,
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
     Invokes the ActivateType operation waiting for the response before returning.

     - Parameters:
         - input: The validated ActivateTypeInput object being passed to this operation.
     - Returns: The ActivateTypeOutputForActivateType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    public func activateTypeSync(
            input: CloudformationModel.ActivateTypeInput) throws -> CloudformationModel.ActivateTypeOutputForActivateType {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.activateType,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ActivateTypeOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.activateType.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the BatchDescribeTypeConfigurations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchDescribeTypeConfigurationsInput object being passed to this operation.
         - completion: The BatchDescribeTypeConfigurationsOutputForBatchDescribeTypeConfigurations object or an error will be passed to this 
           callback when the operation is complete. The BatchDescribeTypeConfigurationsOutputForBatchDescribeTypeConfigurations
           object will be validated before being returned to caller.
           The possible errors are: cFNRegistry, typeConfigurationNotFound.
     */
    public func batchDescribeTypeConfigurationsAsync(
            input: CloudformationModel.BatchDescribeTypeConfigurationsInput, 
            completion: @escaping (Result<CloudformationModel.BatchDescribeTypeConfigurationsOutputForBatchDescribeTypeConfigurations, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.batchDescribeTypeConfigurations,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = BatchDescribeTypeConfigurationsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.batchDescribeTypeConfigurations.rawValue,
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
     Invokes the BatchDescribeTypeConfigurations operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchDescribeTypeConfigurationsInput object being passed to this operation.
     - Returns: The BatchDescribeTypeConfigurationsOutputForBatchDescribeTypeConfigurations object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeConfigurationNotFound.
     */
    public func batchDescribeTypeConfigurationsSync(
            input: CloudformationModel.BatchDescribeTypeConfigurationsInput) throws -> CloudformationModel.BatchDescribeTypeConfigurationsOutputForBatchDescribeTypeConfigurations {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.batchDescribeTypeConfigurations,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = BatchDescribeTypeConfigurationsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.batchDescribeTypeConfigurations.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the CancelUpdateStack operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CancelUpdateStackInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: tokenAlreadyExists.
     */
    public func cancelUpdateStackAsync(
            input: CloudformationModel.CancelUpdateStackInput, 
            completion: @escaping (CloudformationError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.cancelUpdateStack,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = CancelUpdateStackOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.cancelUpdateStack.rawValue,
            version: apiVersion)

        _ = try httpClient.executeOperationAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CancelUpdateStack operation waiting for the response before returning.

     - Parameters:
         - input: The validated CancelUpdateStackInput object being passed to this operation.
     - Throws: tokenAlreadyExists.
     */
    public func cancelUpdateStackSync(
            input: CloudformationModel.CancelUpdateStackInput) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.cancelUpdateStack,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = CancelUpdateStackOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.cancelUpdateStack.rawValue,
            version: apiVersion)

        do {
            try httpClient.executeSyncRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ContinueUpdateRollback operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ContinueUpdateRollbackInput object being passed to this operation.
         - completion: The ContinueUpdateRollbackOutputForContinueUpdateRollback object or an error will be passed to this 
           callback when the operation is complete. The ContinueUpdateRollbackOutputForContinueUpdateRollback
           object will be validated before being returned to caller.
           The possible errors are: tokenAlreadyExists.
     */
    public func continueUpdateRollbackAsync(
            input: CloudformationModel.ContinueUpdateRollbackInput, 
            completion: @escaping (Result<CloudformationModel.ContinueUpdateRollbackOutputForContinueUpdateRollback, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.continueUpdateRollback,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ContinueUpdateRollbackOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.continueUpdateRollback.rawValue,
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
     Invokes the ContinueUpdateRollback operation waiting for the response before returning.

     - Parameters:
         - input: The validated ContinueUpdateRollbackInput object being passed to this operation.
     - Returns: The ContinueUpdateRollbackOutputForContinueUpdateRollback object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: tokenAlreadyExists.
     */
    public func continueUpdateRollbackSync(
            input: CloudformationModel.ContinueUpdateRollbackInput) throws -> CloudformationModel.ContinueUpdateRollbackOutputForContinueUpdateRollback {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.continueUpdateRollback,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ContinueUpdateRollbackOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.continueUpdateRollback.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the CreateChangeSet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateChangeSetInput object being passed to this operation.
         - completion: The CreateChangeSetOutputForCreateChangeSet object or an error will be passed to this 
           callback when the operation is complete. The CreateChangeSetOutputForCreateChangeSet
           object will be validated before being returned to caller.
           The possible errors are: alreadyExists, insufficientCapabilities, limitExceeded.
     */
    public func createChangeSetAsync(
            input: CloudformationModel.CreateChangeSetInput, 
            completion: @escaping (Result<CloudformationModel.CreateChangeSetOutputForCreateChangeSet, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createChangeSet,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = CreateChangeSetOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.createChangeSet.rawValue,
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
     Invokes the CreateChangeSet operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateChangeSetInput object being passed to this operation.
     - Returns: The CreateChangeSetOutputForCreateChangeSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: alreadyExists, insufficientCapabilities, limitExceeded.
     */
    public func createChangeSetSync(
            input: CloudformationModel.CreateChangeSetInput) throws -> CloudformationModel.CreateChangeSetOutputForCreateChangeSet {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createChangeSet,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = CreateChangeSetOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.createChangeSet.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the CreateStack operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateStackInput object being passed to this operation.
         - completion: The CreateStackOutputForCreateStack object or an error will be passed to this 
           callback when the operation is complete. The CreateStackOutputForCreateStack
           object will be validated before being returned to caller.
           The possible errors are: alreadyExists, insufficientCapabilities, limitExceeded, tokenAlreadyExists.
     */
    public func createStackAsync(
            input: CloudformationModel.CreateStackInput, 
            completion: @escaping (Result<CloudformationModel.CreateStackOutputForCreateStack, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createStack,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = CreateStackOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.createStack.rawValue,
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
     Invokes the CreateStack operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateStackInput object being passed to this operation.
     - Returns: The CreateStackOutputForCreateStack object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: alreadyExists, insufficientCapabilities, limitExceeded, tokenAlreadyExists.
     */
    public func createStackSync(
            input: CloudformationModel.CreateStackInput) throws -> CloudformationModel.CreateStackOutputForCreateStack {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createStack,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = CreateStackOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.createStack.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the CreateStackInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateStackInstancesInput object being passed to this operation.
         - completion: The CreateStackInstancesOutputForCreateStackInstances object or an error will be passed to this 
           callback when the operation is complete. The CreateStackInstancesOutputForCreateStackInstances
           object will be validated before being returned to caller.
           The possible errors are: invalidOperation, limitExceeded, operationIdAlreadyExists, operationInProgress, stackSetNotFound, staleRequest.
     */
    public func createStackInstancesAsync(
            input: CloudformationModel.CreateStackInstancesInput, 
            completion: @escaping (Result<CloudformationModel.CreateStackInstancesOutputForCreateStackInstances, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createStackInstances,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = CreateStackInstancesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.createStackInstances.rawValue,
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
     Invokes the CreateStackInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateStackInstancesInput object being passed to this operation.
     - Returns: The CreateStackInstancesOutputForCreateStackInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, limitExceeded, operationIdAlreadyExists, operationInProgress, stackSetNotFound, staleRequest.
     */
    public func createStackInstancesSync(
            input: CloudformationModel.CreateStackInstancesInput) throws -> CloudformationModel.CreateStackInstancesOutputForCreateStackInstances {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createStackInstances,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = CreateStackInstancesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.createStackInstances.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the CreateStackSet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateStackSetInput object being passed to this operation.
         - completion: The CreateStackSetOutputForCreateStackSet object or an error will be passed to this 
           callback when the operation is complete. The CreateStackSetOutputForCreateStackSet
           object will be validated before being returned to caller.
           The possible errors are: createdButModified, limitExceeded, nameAlreadyExists.
     */
    public func createStackSetAsync(
            input: CloudformationModel.CreateStackSetInput, 
            completion: @escaping (Result<CloudformationModel.CreateStackSetOutputForCreateStackSet, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createStackSet,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = CreateStackSetOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.createStackSet.rawValue,
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
     Invokes the CreateStackSet operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateStackSetInput object being passed to this operation.
     - Returns: The CreateStackSetOutputForCreateStackSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: createdButModified, limitExceeded, nameAlreadyExists.
     */
    public func createStackSetSync(
            input: CloudformationModel.CreateStackSetInput) throws -> CloudformationModel.CreateStackSetOutputForCreateStackSet {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createStackSet,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = CreateStackSetOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.createStackSet.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeactivateOrganizationsAccess operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeactivateOrganizationsAccessInput object being passed to this operation.
         - completion: The DeactivateOrganizationsAccessOutputForDeactivateOrganizationsAccess object or an error will be passed to this 
           callback when the operation is complete. The DeactivateOrganizationsAccessOutputForDeactivateOrganizationsAccess
           object will be validated before being returned to caller.
           The possible errors are: invalidOperation, operationNotFound.
     */
    public func deactivateOrganizationsAccessAsync(
            input: CloudformationModel.DeactivateOrganizationsAccessInput, 
            completion: @escaping (Result<CloudformationModel.DeactivateOrganizationsAccessOutputForDeactivateOrganizationsAccess, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deactivateOrganizationsAccess,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeactivateOrganizationsAccessOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.deactivateOrganizationsAccess.rawValue,
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
     Invokes the DeactivateOrganizationsAccess operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeactivateOrganizationsAccessInput object being passed to this operation.
     - Returns: The DeactivateOrganizationsAccessOutputForDeactivateOrganizationsAccess object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, operationNotFound.
     */
    public func deactivateOrganizationsAccessSync(
            input: CloudformationModel.DeactivateOrganizationsAccessInput) throws -> CloudformationModel.DeactivateOrganizationsAccessOutputForDeactivateOrganizationsAccess {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deactivateOrganizationsAccess,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeactivateOrganizationsAccessOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.deactivateOrganizationsAccess.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeactivateType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeactivateTypeInput object being passed to this operation.
         - completion: The DeactivateTypeOutputForDeactivateType object or an error will be passed to this 
           callback when the operation is complete. The DeactivateTypeOutputForDeactivateType
           object will be validated before being returned to caller.
           The possible errors are: cFNRegistry, typeNotFound.
     */
    public func deactivateTypeAsync(
            input: CloudformationModel.DeactivateTypeInput, 
            completion: @escaping (Result<CloudformationModel.DeactivateTypeOutputForDeactivateType, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deactivateType,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeactivateTypeOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.deactivateType.rawValue,
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
     Invokes the DeactivateType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeactivateTypeInput object being passed to this operation.
     - Returns: The DeactivateTypeOutputForDeactivateType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    public func deactivateTypeSync(
            input: CloudformationModel.DeactivateTypeInput) throws -> CloudformationModel.DeactivateTypeOutputForDeactivateType {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deactivateType,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeactivateTypeOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.deactivateType.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteChangeSet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteChangeSetInput object being passed to this operation.
         - completion: The DeleteChangeSetOutputForDeleteChangeSet object or an error will be passed to this 
           callback when the operation is complete. The DeleteChangeSetOutputForDeleteChangeSet
           object will be validated before being returned to caller.
           The possible errors are: invalidChangeSetStatus.
     */
    public func deleteChangeSetAsync(
            input: CloudformationModel.DeleteChangeSetInput, 
            completion: @escaping (Result<CloudformationModel.DeleteChangeSetOutputForDeleteChangeSet, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteChangeSet,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteChangeSetOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.deleteChangeSet.rawValue,
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
     Invokes the DeleteChangeSet operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteChangeSetInput object being passed to this operation.
     - Returns: The DeleteChangeSetOutputForDeleteChangeSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidChangeSetStatus.
     */
    public func deleteChangeSetSync(
            input: CloudformationModel.DeleteChangeSetInput) throws -> CloudformationModel.DeleteChangeSetOutputForDeleteChangeSet {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteChangeSet,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteChangeSetOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.deleteChangeSet.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteStack operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteStackInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: tokenAlreadyExists.
     */
    public func deleteStackAsync(
            input: CloudformationModel.DeleteStackInput, 
            completion: @escaping (CloudformationError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteStack,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteStackOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.deleteStack.rawValue,
            version: apiVersion)

        _ = try httpClient.executeOperationAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteStack operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteStackInput object being passed to this operation.
     - Throws: tokenAlreadyExists.
     */
    public func deleteStackSync(
            input: CloudformationModel.DeleteStackInput) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteStack,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteStackOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.deleteStack.rawValue,
            version: apiVersion)

        do {
            try httpClient.executeSyncRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteStackInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteStackInstancesInput object being passed to this operation.
         - completion: The DeleteStackInstancesOutputForDeleteStackInstances object or an error will be passed to this 
           callback when the operation is complete. The DeleteStackInstancesOutputForDeleteStackInstances
           object will be validated before being returned to caller.
           The possible errors are: invalidOperation, operationIdAlreadyExists, operationInProgress, stackSetNotFound, staleRequest.
     */
    public func deleteStackInstancesAsync(
            input: CloudformationModel.DeleteStackInstancesInput, 
            completion: @escaping (Result<CloudformationModel.DeleteStackInstancesOutputForDeleteStackInstances, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteStackInstances,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteStackInstancesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.deleteStackInstances.rawValue,
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
     Invokes the DeleteStackInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteStackInstancesInput object being passed to this operation.
     - Returns: The DeleteStackInstancesOutputForDeleteStackInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, operationIdAlreadyExists, operationInProgress, stackSetNotFound, staleRequest.
     */
    public func deleteStackInstancesSync(
            input: CloudformationModel.DeleteStackInstancesInput) throws -> CloudformationModel.DeleteStackInstancesOutputForDeleteStackInstances {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteStackInstances,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteStackInstancesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.deleteStackInstances.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteStackSet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteStackSetInput object being passed to this operation.
         - completion: The DeleteStackSetOutputForDeleteStackSet object or an error will be passed to this 
           callback when the operation is complete. The DeleteStackSetOutputForDeleteStackSet
           object will be validated before being returned to caller.
           The possible errors are: operationInProgress, stackSetNotEmpty.
     */
    public func deleteStackSetAsync(
            input: CloudformationModel.DeleteStackSetInput, 
            completion: @escaping (Result<CloudformationModel.DeleteStackSetOutputForDeleteStackSet, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteStackSet,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteStackSetOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.deleteStackSet.rawValue,
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
     Invokes the DeleteStackSet operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteStackSetInput object being passed to this operation.
     - Returns: The DeleteStackSetOutputForDeleteStackSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationInProgress, stackSetNotEmpty.
     */
    public func deleteStackSetSync(
            input: CloudformationModel.DeleteStackSetInput) throws -> CloudformationModel.DeleteStackSetOutputForDeleteStackSet {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteStackSet,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteStackSetOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.deleteStackSet.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeregisterType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeregisterTypeInput object being passed to this operation.
         - completion: The DeregisterTypeOutputForDeregisterType object or an error will be passed to this 
           callback when the operation is complete. The DeregisterTypeOutputForDeregisterType
           object will be validated before being returned to caller.
           The possible errors are: cFNRegistry, typeNotFound.
     */
    public func deregisterTypeAsync(
            input: CloudformationModel.DeregisterTypeInput, 
            completion: @escaping (Result<CloudformationModel.DeregisterTypeOutputForDeregisterType, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deregisterType,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeregisterTypeOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.deregisterType.rawValue,
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
     Invokes the DeregisterType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeregisterTypeInput object being passed to this operation.
     - Returns: The DeregisterTypeOutputForDeregisterType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    public func deregisterTypeSync(
            input: CloudformationModel.DeregisterTypeInput) throws -> CloudformationModel.DeregisterTypeOutputForDeregisterType {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deregisterType,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeregisterTypeOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.deregisterType.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeAccountLimits operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeAccountLimitsInput object being passed to this operation.
         - completion: The DescribeAccountLimitsOutputForDescribeAccountLimits object or an error will be passed to this 
           callback when the operation is complete. The DescribeAccountLimitsOutputForDescribeAccountLimits
           object will be validated before being returned to caller.
     */
    public func describeAccountLimitsAsync(
            input: CloudformationModel.DescribeAccountLimitsInput, 
            completion: @escaping (Result<CloudformationModel.DescribeAccountLimitsOutputForDescribeAccountLimits, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeAccountLimits,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeAccountLimitsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeAccountLimits.rawValue,
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
     Invokes the DescribeAccountLimits operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeAccountLimitsInput object being passed to this operation.
     - Returns: The DescribeAccountLimitsOutputForDescribeAccountLimits object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeAccountLimitsSync(
            input: CloudformationModel.DescribeAccountLimitsInput) throws -> CloudformationModel.DescribeAccountLimitsOutputForDescribeAccountLimits {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeAccountLimits,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeAccountLimitsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeAccountLimits.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeChangeSet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeChangeSetInput object being passed to this operation.
         - completion: The DescribeChangeSetOutputForDescribeChangeSet object or an error will be passed to this 
           callback when the operation is complete. The DescribeChangeSetOutputForDescribeChangeSet
           object will be validated before being returned to caller.
           The possible errors are: changeSetNotFound.
     */
    public func describeChangeSetAsync(
            input: CloudformationModel.DescribeChangeSetInput, 
            completion: @escaping (Result<CloudformationModel.DescribeChangeSetOutputForDescribeChangeSet, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeChangeSet,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeChangeSetOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeChangeSet.rawValue,
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
     Invokes the DescribeChangeSet operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeChangeSetInput object being passed to this operation.
     - Returns: The DescribeChangeSetOutputForDescribeChangeSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: changeSetNotFound.
     */
    public func describeChangeSetSync(
            input: CloudformationModel.DescribeChangeSetInput) throws -> CloudformationModel.DescribeChangeSetOutputForDescribeChangeSet {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeChangeSet,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeChangeSetOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeChangeSet.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeChangeSetHooks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeChangeSetHooksInput object being passed to this operation.
         - completion: The DescribeChangeSetHooksOutputForDescribeChangeSetHooks object or an error will be passed to this 
           callback when the operation is complete. The DescribeChangeSetHooksOutputForDescribeChangeSetHooks
           object will be validated before being returned to caller.
           The possible errors are: changeSetNotFound.
     */
    public func describeChangeSetHooksAsync(
            input: CloudformationModel.DescribeChangeSetHooksInput, 
            completion: @escaping (Result<CloudformationModel.DescribeChangeSetHooksOutputForDescribeChangeSetHooks, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeChangeSetHooks,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeChangeSetHooksOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeChangeSetHooks.rawValue,
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
     Invokes the DescribeChangeSetHooks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeChangeSetHooksInput object being passed to this operation.
     - Returns: The DescribeChangeSetHooksOutputForDescribeChangeSetHooks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: changeSetNotFound.
     */
    public func describeChangeSetHooksSync(
            input: CloudformationModel.DescribeChangeSetHooksInput) throws -> CloudformationModel.DescribeChangeSetHooksOutputForDescribeChangeSetHooks {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeChangeSetHooks,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeChangeSetHooksOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeChangeSetHooks.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeOrganizationsAccess operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeOrganizationsAccessInput object being passed to this operation.
         - completion: The DescribeOrganizationsAccessOutputForDescribeOrganizationsAccess object or an error will be passed to this 
           callback when the operation is complete. The DescribeOrganizationsAccessOutputForDescribeOrganizationsAccess
           object will be validated before being returned to caller.
           The possible errors are: invalidOperation, operationNotFound.
     */
    public func describeOrganizationsAccessAsync(
            input: CloudformationModel.DescribeOrganizationsAccessInput, 
            completion: @escaping (Result<CloudformationModel.DescribeOrganizationsAccessOutputForDescribeOrganizationsAccess, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeOrganizationsAccess,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeOrganizationsAccessOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeOrganizationsAccess.rawValue,
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
     Invokes the DescribeOrganizationsAccess operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeOrganizationsAccessInput object being passed to this operation.
     - Returns: The DescribeOrganizationsAccessOutputForDescribeOrganizationsAccess object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, operationNotFound.
     */
    public func describeOrganizationsAccessSync(
            input: CloudformationModel.DescribeOrganizationsAccessInput) throws -> CloudformationModel.DescribeOrganizationsAccessOutputForDescribeOrganizationsAccess {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeOrganizationsAccess,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeOrganizationsAccessOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeOrganizationsAccess.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribePublisher operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribePublisherInput object being passed to this operation.
         - completion: The DescribePublisherOutputForDescribePublisher object or an error will be passed to this 
           callback when the operation is complete. The DescribePublisherOutputForDescribePublisher
           object will be validated before being returned to caller.
           The possible errors are: cFNRegistry.
     */
    public func describePublisherAsync(
            input: CloudformationModel.DescribePublisherInput, 
            completion: @escaping (Result<CloudformationModel.DescribePublisherOutputForDescribePublisher, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describePublisher,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribePublisherOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describePublisher.rawValue,
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
     Invokes the DescribePublisher operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribePublisherInput object being passed to this operation.
     - Returns: The DescribePublisherOutputForDescribePublisher object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    public func describePublisherSync(
            input: CloudformationModel.DescribePublisherInput) throws -> CloudformationModel.DescribePublisherOutputForDescribePublisher {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describePublisher,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribePublisherOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describePublisher.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeStackDriftDetectionStatus operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeStackDriftDetectionStatusInput object being passed to this operation.
         - completion: The DescribeStackDriftDetectionStatusOutputForDescribeStackDriftDetectionStatus object or an error will be passed to this 
           callback when the operation is complete. The DescribeStackDriftDetectionStatusOutputForDescribeStackDriftDetectionStatus
           object will be validated before being returned to caller.
     */
    public func describeStackDriftDetectionStatusAsync(
            input: CloudformationModel.DescribeStackDriftDetectionStatusInput, 
            completion: @escaping (Result<CloudformationModel.DescribeStackDriftDetectionStatusOutputForDescribeStackDriftDetectionStatus, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeStackDriftDetectionStatus,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeStackDriftDetectionStatusOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeStackDriftDetectionStatus.rawValue,
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
     Invokes the DescribeStackDriftDetectionStatus operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeStackDriftDetectionStatusInput object being passed to this operation.
     - Returns: The DescribeStackDriftDetectionStatusOutputForDescribeStackDriftDetectionStatus object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeStackDriftDetectionStatusSync(
            input: CloudformationModel.DescribeStackDriftDetectionStatusInput) throws -> CloudformationModel.DescribeStackDriftDetectionStatusOutputForDescribeStackDriftDetectionStatus {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeStackDriftDetectionStatus,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeStackDriftDetectionStatusOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeStackDriftDetectionStatus.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeStackEvents operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeStackEventsInput object being passed to this operation.
         - completion: The DescribeStackEventsOutputForDescribeStackEvents object or an error will be passed to this 
           callback when the operation is complete. The DescribeStackEventsOutputForDescribeStackEvents
           object will be validated before being returned to caller.
     */
    public func describeStackEventsAsync(
            input: CloudformationModel.DescribeStackEventsInput, 
            completion: @escaping (Result<CloudformationModel.DescribeStackEventsOutputForDescribeStackEvents, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeStackEvents,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeStackEventsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeStackEvents.rawValue,
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
     Invokes the DescribeStackEvents operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeStackEventsInput object being passed to this operation.
     - Returns: The DescribeStackEventsOutputForDescribeStackEvents object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeStackEventsSync(
            input: CloudformationModel.DescribeStackEventsInput) throws -> CloudformationModel.DescribeStackEventsOutputForDescribeStackEvents {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeStackEvents,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeStackEventsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeStackEvents.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeStackInstance operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeStackInstanceInput object being passed to this operation.
         - completion: The DescribeStackInstanceOutputForDescribeStackInstance object or an error will be passed to this 
           callback when the operation is complete. The DescribeStackInstanceOutputForDescribeStackInstance
           object will be validated before being returned to caller.
           The possible errors are: stackInstanceNotFound, stackSetNotFound.
     */
    public func describeStackInstanceAsync(
            input: CloudformationModel.DescribeStackInstanceInput, 
            completion: @escaping (Result<CloudformationModel.DescribeStackInstanceOutputForDescribeStackInstance, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeStackInstance,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeStackInstanceOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeStackInstance.rawValue,
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
     Invokes the DescribeStackInstance operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeStackInstanceInput object being passed to this operation.
     - Returns: The DescribeStackInstanceOutputForDescribeStackInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: stackInstanceNotFound, stackSetNotFound.
     */
    public func describeStackInstanceSync(
            input: CloudformationModel.DescribeStackInstanceInput) throws -> CloudformationModel.DescribeStackInstanceOutputForDescribeStackInstance {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeStackInstance,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeStackInstanceOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeStackInstance.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeStackResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeStackResourceInput object being passed to this operation.
         - completion: The DescribeStackResourceOutputForDescribeStackResource object or an error will be passed to this 
           callback when the operation is complete. The DescribeStackResourceOutputForDescribeStackResource
           object will be validated before being returned to caller.
     */
    public func describeStackResourceAsync(
            input: CloudformationModel.DescribeStackResourceInput, 
            completion: @escaping (Result<CloudformationModel.DescribeStackResourceOutputForDescribeStackResource, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeStackResource,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeStackResourceOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeStackResource.rawValue,
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
     Invokes the DescribeStackResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeStackResourceInput object being passed to this operation.
     - Returns: The DescribeStackResourceOutputForDescribeStackResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeStackResourceSync(
            input: CloudformationModel.DescribeStackResourceInput) throws -> CloudformationModel.DescribeStackResourceOutputForDescribeStackResource {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeStackResource,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeStackResourceOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeStackResource.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeStackResourceDrifts operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeStackResourceDriftsInput object being passed to this operation.
         - completion: The DescribeStackResourceDriftsOutputForDescribeStackResourceDrifts object or an error will be passed to this 
           callback when the operation is complete. The DescribeStackResourceDriftsOutputForDescribeStackResourceDrifts
           object will be validated before being returned to caller.
     */
    public func describeStackResourceDriftsAsync(
            input: CloudformationModel.DescribeStackResourceDriftsInput, 
            completion: @escaping (Result<CloudformationModel.DescribeStackResourceDriftsOutputForDescribeStackResourceDrifts, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeStackResourceDrifts,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeStackResourceDriftsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeStackResourceDrifts.rawValue,
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
     Invokes the DescribeStackResourceDrifts operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeStackResourceDriftsInput object being passed to this operation.
     - Returns: The DescribeStackResourceDriftsOutputForDescribeStackResourceDrifts object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeStackResourceDriftsSync(
            input: CloudformationModel.DescribeStackResourceDriftsInput) throws -> CloudformationModel.DescribeStackResourceDriftsOutputForDescribeStackResourceDrifts {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeStackResourceDrifts,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeStackResourceDriftsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeStackResourceDrifts.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeStackResources operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeStackResourcesInput object being passed to this operation.
         - completion: The DescribeStackResourcesOutputForDescribeStackResources object or an error will be passed to this 
           callback when the operation is complete. The DescribeStackResourcesOutputForDescribeStackResources
           object will be validated before being returned to caller.
     */
    public func describeStackResourcesAsync(
            input: CloudformationModel.DescribeStackResourcesInput, 
            completion: @escaping (Result<CloudformationModel.DescribeStackResourcesOutputForDescribeStackResources, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeStackResources,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeStackResourcesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeStackResources.rawValue,
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
     Invokes the DescribeStackResources operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeStackResourcesInput object being passed to this operation.
     - Returns: The DescribeStackResourcesOutputForDescribeStackResources object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeStackResourcesSync(
            input: CloudformationModel.DescribeStackResourcesInput) throws -> CloudformationModel.DescribeStackResourcesOutputForDescribeStackResources {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeStackResources,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeStackResourcesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeStackResources.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeStackSet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeStackSetInput object being passed to this operation.
         - completion: The DescribeStackSetOutputForDescribeStackSet object or an error will be passed to this 
           callback when the operation is complete. The DescribeStackSetOutputForDescribeStackSet
           object will be validated before being returned to caller.
           The possible errors are: stackSetNotFound.
     */
    public func describeStackSetAsync(
            input: CloudformationModel.DescribeStackSetInput, 
            completion: @escaping (Result<CloudformationModel.DescribeStackSetOutputForDescribeStackSet, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeStackSet,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeStackSetOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeStackSet.rawValue,
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
     Invokes the DescribeStackSet operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeStackSetInput object being passed to this operation.
     - Returns: The DescribeStackSetOutputForDescribeStackSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: stackSetNotFound.
     */
    public func describeStackSetSync(
            input: CloudformationModel.DescribeStackSetInput) throws -> CloudformationModel.DescribeStackSetOutputForDescribeStackSet {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeStackSet,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeStackSetOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeStackSet.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeStackSetOperation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeStackSetOperationInput object being passed to this operation.
         - completion: The DescribeStackSetOperationOutputForDescribeStackSetOperation object or an error will be passed to this 
           callback when the operation is complete. The DescribeStackSetOperationOutputForDescribeStackSetOperation
           object will be validated before being returned to caller.
           The possible errors are: operationNotFound, stackSetNotFound.
     */
    public func describeStackSetOperationAsync(
            input: CloudformationModel.DescribeStackSetOperationInput, 
            completion: @escaping (Result<CloudformationModel.DescribeStackSetOperationOutputForDescribeStackSetOperation, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeStackSetOperation,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeStackSetOperationOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeStackSetOperation.rawValue,
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
     Invokes the DescribeStackSetOperation operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeStackSetOperationInput object being passed to this operation.
     - Returns: The DescribeStackSetOperationOutputForDescribeStackSetOperation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotFound, stackSetNotFound.
     */
    public func describeStackSetOperationSync(
            input: CloudformationModel.DescribeStackSetOperationInput) throws -> CloudformationModel.DescribeStackSetOperationOutputForDescribeStackSetOperation {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeStackSetOperation,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeStackSetOperationOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeStackSetOperation.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeStacks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeStacksInput object being passed to this operation.
         - completion: The DescribeStacksOutputForDescribeStacks object or an error will be passed to this 
           callback when the operation is complete. The DescribeStacksOutputForDescribeStacks
           object will be validated before being returned to caller.
     */
    public func describeStacksAsync(
            input: CloudformationModel.DescribeStacksInput, 
            completion: @escaping (Result<CloudformationModel.DescribeStacksOutputForDescribeStacks, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeStacks,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeStacksOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeStacks.rawValue,
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
     Invokes the DescribeStacks operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeStacksInput object being passed to this operation.
     - Returns: The DescribeStacksOutputForDescribeStacks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeStacksSync(
            input: CloudformationModel.DescribeStacksInput) throws -> CloudformationModel.DescribeStacksOutputForDescribeStacks {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeStacks,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeStacksOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeStacks.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTypeInput object being passed to this operation.
         - completion: The DescribeTypeOutputForDescribeType object or an error will be passed to this 
           callback when the operation is complete. The DescribeTypeOutputForDescribeType
           object will be validated before being returned to caller.
           The possible errors are: cFNRegistry, typeNotFound.
     */
    public func describeTypeAsync(
            input: CloudformationModel.DescribeTypeInput, 
            completion: @escaping (Result<CloudformationModel.DescribeTypeOutputForDescribeType, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeType,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeTypeOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeType.rawValue,
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
     Invokes the DescribeType operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTypeInput object being passed to this operation.
     - Returns: The DescribeTypeOutputForDescribeType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    public func describeTypeSync(
            input: CloudformationModel.DescribeTypeInput) throws -> CloudformationModel.DescribeTypeOutputForDescribeType {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeType,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeTypeOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeType.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeTypeRegistration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTypeRegistrationInput object being passed to this operation.
         - completion: The DescribeTypeRegistrationOutputForDescribeTypeRegistration object or an error will be passed to this 
           callback when the operation is complete. The DescribeTypeRegistrationOutputForDescribeTypeRegistration
           object will be validated before being returned to caller.
           The possible errors are: cFNRegistry.
     */
    public func describeTypeRegistrationAsync(
            input: CloudformationModel.DescribeTypeRegistrationInput, 
            completion: @escaping (Result<CloudformationModel.DescribeTypeRegistrationOutputForDescribeTypeRegistration, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeTypeRegistration,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeTypeRegistrationOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeTypeRegistration.rawValue,
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
     Invokes the DescribeTypeRegistration operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTypeRegistrationInput object being passed to this operation.
     - Returns: The DescribeTypeRegistrationOutputForDescribeTypeRegistration object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    public func describeTypeRegistrationSync(
            input: CloudformationModel.DescribeTypeRegistrationInput) throws -> CloudformationModel.DescribeTypeRegistrationOutputForDescribeTypeRegistration {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeTypeRegistration,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeTypeRegistrationOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeTypeRegistration.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DetectStackDrift operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DetectStackDriftInput object being passed to this operation.
         - completion: The DetectStackDriftOutputForDetectStackDrift object or an error will be passed to this 
           callback when the operation is complete. The DetectStackDriftOutputForDetectStackDrift
           object will be validated before being returned to caller.
     */
    public func detectStackDriftAsync(
            input: CloudformationModel.DetectStackDriftInput, 
            completion: @escaping (Result<CloudformationModel.DetectStackDriftOutputForDetectStackDrift, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.detectStackDrift,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DetectStackDriftOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.detectStackDrift.rawValue,
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
     Invokes the DetectStackDrift operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetectStackDriftInput object being passed to this operation.
     - Returns: The DetectStackDriftOutputForDetectStackDrift object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func detectStackDriftSync(
            input: CloudformationModel.DetectStackDriftInput) throws -> CloudformationModel.DetectStackDriftOutputForDetectStackDrift {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.detectStackDrift,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DetectStackDriftOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.detectStackDrift.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DetectStackResourceDrift operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DetectStackResourceDriftInput object being passed to this operation.
         - completion: The DetectStackResourceDriftOutputForDetectStackResourceDrift object or an error will be passed to this 
           callback when the operation is complete. The DetectStackResourceDriftOutputForDetectStackResourceDrift
           object will be validated before being returned to caller.
     */
    public func detectStackResourceDriftAsync(
            input: CloudformationModel.DetectStackResourceDriftInput, 
            completion: @escaping (Result<CloudformationModel.DetectStackResourceDriftOutputForDetectStackResourceDrift, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.detectStackResourceDrift,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DetectStackResourceDriftOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.detectStackResourceDrift.rawValue,
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
     Invokes the DetectStackResourceDrift operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetectStackResourceDriftInput object being passed to this operation.
     - Returns: The DetectStackResourceDriftOutputForDetectStackResourceDrift object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func detectStackResourceDriftSync(
            input: CloudformationModel.DetectStackResourceDriftInput) throws -> CloudformationModel.DetectStackResourceDriftOutputForDetectStackResourceDrift {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.detectStackResourceDrift,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DetectStackResourceDriftOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.detectStackResourceDrift.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DetectStackSetDrift operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DetectStackSetDriftInput object being passed to this operation.
         - completion: The DetectStackSetDriftOutputForDetectStackSetDrift object or an error will be passed to this 
           callback when the operation is complete. The DetectStackSetDriftOutputForDetectStackSetDrift
           object will be validated before being returned to caller.
           The possible errors are: invalidOperation, operationInProgress, stackSetNotFound.
     */
    public func detectStackSetDriftAsync(
            input: CloudformationModel.DetectStackSetDriftInput, 
            completion: @escaping (Result<CloudformationModel.DetectStackSetDriftOutputForDetectStackSetDrift, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.detectStackSetDrift,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DetectStackSetDriftOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.detectStackSetDrift.rawValue,
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
     Invokes the DetectStackSetDrift operation waiting for the response before returning.

     - Parameters:
         - input: The validated DetectStackSetDriftInput object being passed to this operation.
     - Returns: The DetectStackSetDriftOutputForDetectStackSetDrift object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, operationInProgress, stackSetNotFound.
     */
    public func detectStackSetDriftSync(
            input: CloudformationModel.DetectStackSetDriftInput) throws -> CloudformationModel.DetectStackSetDriftOutputForDetectStackSetDrift {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.detectStackSetDrift,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DetectStackSetDriftOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.detectStackSetDrift.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the EstimateTemplateCost operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated EstimateTemplateCostInput object being passed to this operation.
         - completion: The EstimateTemplateCostOutputForEstimateTemplateCost object or an error will be passed to this 
           callback when the operation is complete. The EstimateTemplateCostOutputForEstimateTemplateCost
           object will be validated before being returned to caller.
     */
    public func estimateTemplateCostAsync(
            input: CloudformationModel.EstimateTemplateCostInput, 
            completion: @escaping (Result<CloudformationModel.EstimateTemplateCostOutputForEstimateTemplateCost, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.estimateTemplateCost,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = EstimateTemplateCostOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.estimateTemplateCost.rawValue,
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
     Invokes the EstimateTemplateCost operation waiting for the response before returning.

     - Parameters:
         - input: The validated EstimateTemplateCostInput object being passed to this operation.
     - Returns: The EstimateTemplateCostOutputForEstimateTemplateCost object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func estimateTemplateCostSync(
            input: CloudformationModel.EstimateTemplateCostInput) throws -> CloudformationModel.EstimateTemplateCostOutputForEstimateTemplateCost {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.estimateTemplateCost,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = EstimateTemplateCostOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.estimateTemplateCost.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ExecuteChangeSet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ExecuteChangeSetInput object being passed to this operation.
         - completion: The ExecuteChangeSetOutputForExecuteChangeSet object or an error will be passed to this 
           callback when the operation is complete. The ExecuteChangeSetOutputForExecuteChangeSet
           object will be validated before being returned to caller.
           The possible errors are: changeSetNotFound, insufficientCapabilities, invalidChangeSetStatus, tokenAlreadyExists.
     */
    public func executeChangeSetAsync(
            input: CloudformationModel.ExecuteChangeSetInput, 
            completion: @escaping (Result<CloudformationModel.ExecuteChangeSetOutputForExecuteChangeSet, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.executeChangeSet,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ExecuteChangeSetOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.executeChangeSet.rawValue,
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
     Invokes the ExecuteChangeSet operation waiting for the response before returning.

     - Parameters:
         - input: The validated ExecuteChangeSetInput object being passed to this operation.
     - Returns: The ExecuteChangeSetOutputForExecuteChangeSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: changeSetNotFound, insufficientCapabilities, invalidChangeSetStatus, tokenAlreadyExists.
     */
    public func executeChangeSetSync(
            input: CloudformationModel.ExecuteChangeSetInput) throws -> CloudformationModel.ExecuteChangeSetOutputForExecuteChangeSet {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.executeChangeSet,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ExecuteChangeSetOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.executeChangeSet.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetStackPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetStackPolicyInput object being passed to this operation.
         - completion: The GetStackPolicyOutputForGetStackPolicy object or an error will be passed to this 
           callback when the operation is complete. The GetStackPolicyOutputForGetStackPolicy
           object will be validated before being returned to caller.
     */
    public func getStackPolicyAsync(
            input: CloudformationModel.GetStackPolicyInput, 
            completion: @escaping (Result<CloudformationModel.GetStackPolicyOutputForGetStackPolicy, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getStackPolicy,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetStackPolicyOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.getStackPolicy.rawValue,
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
     Invokes the GetStackPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetStackPolicyInput object being passed to this operation.
     - Returns: The GetStackPolicyOutputForGetStackPolicy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getStackPolicySync(
            input: CloudformationModel.GetStackPolicyInput) throws -> CloudformationModel.GetStackPolicyOutputForGetStackPolicy {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getStackPolicy,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetStackPolicyOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.getStackPolicy.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetTemplate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetTemplateInput object being passed to this operation.
         - completion: The GetTemplateOutputForGetTemplate object or an error will be passed to this 
           callback when the operation is complete. The GetTemplateOutputForGetTemplate
           object will be validated before being returned to caller.
           The possible errors are: changeSetNotFound.
     */
    public func getTemplateAsync(
            input: CloudformationModel.GetTemplateInput, 
            completion: @escaping (Result<CloudformationModel.GetTemplateOutputForGetTemplate, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getTemplate,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetTemplateOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.getTemplate.rawValue,
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
     Invokes the GetTemplate operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetTemplateInput object being passed to this operation.
     - Returns: The GetTemplateOutputForGetTemplate object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: changeSetNotFound.
     */
    public func getTemplateSync(
            input: CloudformationModel.GetTemplateInput) throws -> CloudformationModel.GetTemplateOutputForGetTemplate {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getTemplate,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetTemplateOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.getTemplate.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetTemplateSummary operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetTemplateSummaryInput object being passed to this operation.
         - completion: The GetTemplateSummaryOutputForGetTemplateSummary object or an error will be passed to this 
           callback when the operation is complete. The GetTemplateSummaryOutputForGetTemplateSummary
           object will be validated before being returned to caller.
           The possible errors are: stackSetNotFound.
     */
    public func getTemplateSummaryAsync(
            input: CloudformationModel.GetTemplateSummaryInput, 
            completion: @escaping (Result<CloudformationModel.GetTemplateSummaryOutputForGetTemplateSummary, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getTemplateSummary,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetTemplateSummaryOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.getTemplateSummary.rawValue,
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
     Invokes the GetTemplateSummary operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetTemplateSummaryInput object being passed to this operation.
     - Returns: The GetTemplateSummaryOutputForGetTemplateSummary object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: stackSetNotFound.
     */
    public func getTemplateSummarySync(
            input: CloudformationModel.GetTemplateSummaryInput) throws -> CloudformationModel.GetTemplateSummaryOutputForGetTemplateSummary {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getTemplateSummary,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetTemplateSummaryOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.getTemplateSummary.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ImportStacksToStackSet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ImportStacksToStackSetInput object being passed to this operation.
         - completion: The ImportStacksToStackSetOutputForImportStacksToStackSet object or an error will be passed to this 
           callback when the operation is complete. The ImportStacksToStackSetOutputForImportStacksToStackSet
           object will be validated before being returned to caller.
           The possible errors are: invalidOperation, limitExceeded, operationIdAlreadyExists, operationInProgress, stackNotFound, stackSetNotFound, staleRequest.
     */
    public func importStacksToStackSetAsync(
            input: CloudformationModel.ImportStacksToStackSetInput, 
            completion: @escaping (Result<CloudformationModel.ImportStacksToStackSetOutputForImportStacksToStackSet, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.importStacksToStackSet,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ImportStacksToStackSetOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.importStacksToStackSet.rawValue,
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
     Invokes the ImportStacksToStackSet operation waiting for the response before returning.

     - Parameters:
         - input: The validated ImportStacksToStackSetInput object being passed to this operation.
     - Returns: The ImportStacksToStackSetOutputForImportStacksToStackSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, limitExceeded, operationIdAlreadyExists, operationInProgress, stackNotFound, stackSetNotFound, staleRequest.
     */
    public func importStacksToStackSetSync(
            input: CloudformationModel.ImportStacksToStackSetInput) throws -> CloudformationModel.ImportStacksToStackSetOutputForImportStacksToStackSet {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.importStacksToStackSet,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ImportStacksToStackSetOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.importStacksToStackSet.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListChangeSets operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListChangeSetsInput object being passed to this operation.
         - completion: The ListChangeSetsOutputForListChangeSets object or an error will be passed to this 
           callback when the operation is complete. The ListChangeSetsOutputForListChangeSets
           object will be validated before being returned to caller.
     */
    public func listChangeSetsAsync(
            input: CloudformationModel.ListChangeSetsInput, 
            completion: @escaping (Result<CloudformationModel.ListChangeSetsOutputForListChangeSets, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listChangeSets,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListChangeSetsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.listChangeSets.rawValue,
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
     Invokes the ListChangeSets operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListChangeSetsInput object being passed to this operation.
     - Returns: The ListChangeSetsOutputForListChangeSets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listChangeSetsSync(
            input: CloudformationModel.ListChangeSetsInput) throws -> CloudformationModel.ListChangeSetsOutputForListChangeSets {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listChangeSets,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListChangeSetsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.listChangeSets.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListExports operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListExportsInput object being passed to this operation.
         - completion: The ListExportsOutputForListExports object or an error will be passed to this 
           callback when the operation is complete. The ListExportsOutputForListExports
           object will be validated before being returned to caller.
     */
    public func listExportsAsync(
            input: CloudformationModel.ListExportsInput, 
            completion: @escaping (Result<CloudformationModel.ListExportsOutputForListExports, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listExports,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListExportsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.listExports.rawValue,
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
     Invokes the ListExports operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListExportsInput object being passed to this operation.
     - Returns: The ListExportsOutputForListExports object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listExportsSync(
            input: CloudformationModel.ListExportsInput) throws -> CloudformationModel.ListExportsOutputForListExports {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listExports,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListExportsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.listExports.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListImports operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListImportsInput object being passed to this operation.
         - completion: The ListImportsOutputForListImports object or an error will be passed to this 
           callback when the operation is complete. The ListImportsOutputForListImports
           object will be validated before being returned to caller.
     */
    public func listImportsAsync(
            input: CloudformationModel.ListImportsInput, 
            completion: @escaping (Result<CloudformationModel.ListImportsOutputForListImports, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listImports,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListImportsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.listImports.rawValue,
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
     Invokes the ListImports operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListImportsInput object being passed to this operation.
     - Returns: The ListImportsOutputForListImports object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listImportsSync(
            input: CloudformationModel.ListImportsInput) throws -> CloudformationModel.ListImportsOutputForListImports {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listImports,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListImportsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.listImports.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListStackInstanceResourceDrifts operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListStackInstanceResourceDriftsInput object being passed to this operation.
         - completion: The ListStackInstanceResourceDriftsOutputForListStackInstanceResourceDrifts object or an error will be passed to this 
           callback when the operation is complete. The ListStackInstanceResourceDriftsOutputForListStackInstanceResourceDrifts
           object will be validated before being returned to caller.
           The possible errors are: operationNotFound, stackInstanceNotFound, stackSetNotFound.
     */
    public func listStackInstanceResourceDriftsAsync(
            input: CloudformationModel.ListStackInstanceResourceDriftsInput, 
            completion: @escaping (Result<CloudformationModel.ListStackInstanceResourceDriftsOutputForListStackInstanceResourceDrifts, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listStackInstanceResourceDrifts,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListStackInstanceResourceDriftsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.listStackInstanceResourceDrifts.rawValue,
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
     Invokes the ListStackInstanceResourceDrifts operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListStackInstanceResourceDriftsInput object being passed to this operation.
     - Returns: The ListStackInstanceResourceDriftsOutputForListStackInstanceResourceDrifts object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotFound, stackInstanceNotFound, stackSetNotFound.
     */
    public func listStackInstanceResourceDriftsSync(
            input: CloudformationModel.ListStackInstanceResourceDriftsInput) throws -> CloudformationModel.ListStackInstanceResourceDriftsOutputForListStackInstanceResourceDrifts {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listStackInstanceResourceDrifts,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListStackInstanceResourceDriftsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.listStackInstanceResourceDrifts.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListStackInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListStackInstancesInput object being passed to this operation.
         - completion: The ListStackInstancesOutputForListStackInstances object or an error will be passed to this 
           callback when the operation is complete. The ListStackInstancesOutputForListStackInstances
           object will be validated before being returned to caller.
           The possible errors are: stackSetNotFound.
     */
    public func listStackInstancesAsync(
            input: CloudformationModel.ListStackInstancesInput, 
            completion: @escaping (Result<CloudformationModel.ListStackInstancesOutputForListStackInstances, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listStackInstances,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListStackInstancesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.listStackInstances.rawValue,
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
     Invokes the ListStackInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListStackInstancesInput object being passed to this operation.
     - Returns: The ListStackInstancesOutputForListStackInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: stackSetNotFound.
     */
    public func listStackInstancesSync(
            input: CloudformationModel.ListStackInstancesInput) throws -> CloudformationModel.ListStackInstancesOutputForListStackInstances {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listStackInstances,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListStackInstancesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.listStackInstances.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListStackResources operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListStackResourcesInput object being passed to this operation.
         - completion: The ListStackResourcesOutputForListStackResources object or an error will be passed to this 
           callback when the operation is complete. The ListStackResourcesOutputForListStackResources
           object will be validated before being returned to caller.
     */
    public func listStackResourcesAsync(
            input: CloudformationModel.ListStackResourcesInput, 
            completion: @escaping (Result<CloudformationModel.ListStackResourcesOutputForListStackResources, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listStackResources,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListStackResourcesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.listStackResources.rawValue,
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
     Invokes the ListStackResources operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListStackResourcesInput object being passed to this operation.
     - Returns: The ListStackResourcesOutputForListStackResources object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listStackResourcesSync(
            input: CloudformationModel.ListStackResourcesInput) throws -> CloudformationModel.ListStackResourcesOutputForListStackResources {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listStackResources,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListStackResourcesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.listStackResources.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListStackSetOperationResults operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListStackSetOperationResultsInput object being passed to this operation.
         - completion: The ListStackSetOperationResultsOutputForListStackSetOperationResults object or an error will be passed to this 
           callback when the operation is complete. The ListStackSetOperationResultsOutputForListStackSetOperationResults
           object will be validated before being returned to caller.
           The possible errors are: operationNotFound, stackSetNotFound.
     */
    public func listStackSetOperationResultsAsync(
            input: CloudformationModel.ListStackSetOperationResultsInput, 
            completion: @escaping (Result<CloudformationModel.ListStackSetOperationResultsOutputForListStackSetOperationResults, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listStackSetOperationResults,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListStackSetOperationResultsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.listStackSetOperationResults.rawValue,
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
     Invokes the ListStackSetOperationResults operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListStackSetOperationResultsInput object being passed to this operation.
     - Returns: The ListStackSetOperationResultsOutputForListStackSetOperationResults object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotFound, stackSetNotFound.
     */
    public func listStackSetOperationResultsSync(
            input: CloudformationModel.ListStackSetOperationResultsInput) throws -> CloudformationModel.ListStackSetOperationResultsOutputForListStackSetOperationResults {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listStackSetOperationResults,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListStackSetOperationResultsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.listStackSetOperationResults.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListStackSetOperations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListStackSetOperationsInput object being passed to this operation.
         - completion: The ListStackSetOperationsOutputForListStackSetOperations object or an error will be passed to this 
           callback when the operation is complete. The ListStackSetOperationsOutputForListStackSetOperations
           object will be validated before being returned to caller.
           The possible errors are: stackSetNotFound.
     */
    public func listStackSetOperationsAsync(
            input: CloudformationModel.ListStackSetOperationsInput, 
            completion: @escaping (Result<CloudformationModel.ListStackSetOperationsOutputForListStackSetOperations, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listStackSetOperations,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListStackSetOperationsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.listStackSetOperations.rawValue,
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
     Invokes the ListStackSetOperations operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListStackSetOperationsInput object being passed to this operation.
     - Returns: The ListStackSetOperationsOutputForListStackSetOperations object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: stackSetNotFound.
     */
    public func listStackSetOperationsSync(
            input: CloudformationModel.ListStackSetOperationsInput) throws -> CloudformationModel.ListStackSetOperationsOutputForListStackSetOperations {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listStackSetOperations,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListStackSetOperationsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.listStackSetOperations.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListStackSets operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListStackSetsInput object being passed to this operation.
         - completion: The ListStackSetsOutputForListStackSets object or an error will be passed to this 
           callback when the operation is complete. The ListStackSetsOutputForListStackSets
           object will be validated before being returned to caller.
     */
    public func listStackSetsAsync(
            input: CloudformationModel.ListStackSetsInput, 
            completion: @escaping (Result<CloudformationModel.ListStackSetsOutputForListStackSets, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listStackSets,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListStackSetsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.listStackSets.rawValue,
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
     Invokes the ListStackSets operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListStackSetsInput object being passed to this operation.
     - Returns: The ListStackSetsOutputForListStackSets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listStackSetsSync(
            input: CloudformationModel.ListStackSetsInput) throws -> CloudformationModel.ListStackSetsOutputForListStackSets {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listStackSets,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListStackSetsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.listStackSets.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListStacks operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListStacksInput object being passed to this operation.
         - completion: The ListStacksOutputForListStacks object or an error will be passed to this 
           callback when the operation is complete. The ListStacksOutputForListStacks
           object will be validated before being returned to caller.
     */
    public func listStacksAsync(
            input: CloudformationModel.ListStacksInput, 
            completion: @escaping (Result<CloudformationModel.ListStacksOutputForListStacks, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listStacks,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListStacksOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.listStacks.rawValue,
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
     Invokes the ListStacks operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListStacksInput object being passed to this operation.
     - Returns: The ListStacksOutputForListStacks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listStacksSync(
            input: CloudformationModel.ListStacksInput) throws -> CloudformationModel.ListStacksOutputForListStacks {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listStacks,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListStacksOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.listStacks.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListTypeRegistrations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTypeRegistrationsInput object being passed to this operation.
         - completion: The ListTypeRegistrationsOutputForListTypeRegistrations object or an error will be passed to this 
           callback when the operation is complete. The ListTypeRegistrationsOutputForListTypeRegistrations
           object will be validated before being returned to caller.
           The possible errors are: cFNRegistry.
     */
    public func listTypeRegistrationsAsync(
            input: CloudformationModel.ListTypeRegistrationsInput, 
            completion: @escaping (Result<CloudformationModel.ListTypeRegistrationsOutputForListTypeRegistrations, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listTypeRegistrations,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListTypeRegistrationsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.listTypeRegistrations.rawValue,
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
     Invokes the ListTypeRegistrations operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTypeRegistrationsInput object being passed to this operation.
     - Returns: The ListTypeRegistrationsOutputForListTypeRegistrations object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    public func listTypeRegistrationsSync(
            input: CloudformationModel.ListTypeRegistrationsInput) throws -> CloudformationModel.ListTypeRegistrationsOutputForListTypeRegistrations {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listTypeRegistrations,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListTypeRegistrationsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.listTypeRegistrations.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListTypeVersions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTypeVersionsInput object being passed to this operation.
         - completion: The ListTypeVersionsOutputForListTypeVersions object or an error will be passed to this 
           callback when the operation is complete. The ListTypeVersionsOutputForListTypeVersions
           object will be validated before being returned to caller.
           The possible errors are: cFNRegistry.
     */
    public func listTypeVersionsAsync(
            input: CloudformationModel.ListTypeVersionsInput, 
            completion: @escaping (Result<CloudformationModel.ListTypeVersionsOutputForListTypeVersions, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listTypeVersions,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListTypeVersionsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.listTypeVersions.rawValue,
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
     Invokes the ListTypeVersions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTypeVersionsInput object being passed to this operation.
     - Returns: The ListTypeVersionsOutputForListTypeVersions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    public func listTypeVersionsSync(
            input: CloudformationModel.ListTypeVersionsInput) throws -> CloudformationModel.ListTypeVersionsOutputForListTypeVersions {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listTypeVersions,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListTypeVersionsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.listTypeVersions.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListTypes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTypesInput object being passed to this operation.
         - completion: The ListTypesOutputForListTypes object or an error will be passed to this 
           callback when the operation is complete. The ListTypesOutputForListTypes
           object will be validated before being returned to caller.
           The possible errors are: cFNRegistry.
     */
    public func listTypesAsync(
            input: CloudformationModel.ListTypesInput, 
            completion: @escaping (Result<CloudformationModel.ListTypesOutputForListTypes, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listTypes,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListTypesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.listTypes.rawValue,
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
     Invokes the ListTypes operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTypesInput object being passed to this operation.
     - Returns: The ListTypesOutputForListTypes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    public func listTypesSync(
            input: CloudformationModel.ListTypesInput) throws -> CloudformationModel.ListTypesOutputForListTypes {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listTypes,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListTypesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.listTypes.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the PublishType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PublishTypeInput object being passed to this operation.
         - completion: The PublishTypeOutputForPublishType object or an error will be passed to this 
           callback when the operation is complete. The PublishTypeOutputForPublishType
           object will be validated before being returned to caller.
           The possible errors are: cFNRegistry, typeNotFound.
     */
    public func publishTypeAsync(
            input: CloudformationModel.PublishTypeInput, 
            completion: @escaping (Result<CloudformationModel.PublishTypeOutputForPublishType, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.publishType,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = PublishTypeOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.publishType.rawValue,
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
     Invokes the PublishType operation waiting for the response before returning.

     - Parameters:
         - input: The validated PublishTypeInput object being passed to this operation.
     - Returns: The PublishTypeOutputForPublishType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    public func publishTypeSync(
            input: CloudformationModel.PublishTypeInput) throws -> CloudformationModel.PublishTypeOutputForPublishType {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.publishType,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = PublishTypeOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.publishType.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the RecordHandlerProgress operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RecordHandlerProgressInput object being passed to this operation.
         - completion: The RecordHandlerProgressOutputForRecordHandlerProgress object or an error will be passed to this 
           callback when the operation is complete. The RecordHandlerProgressOutputForRecordHandlerProgress
           object will be validated before being returned to caller.
           The possible errors are: invalidStateTransition, operationStatusCheckFailed.
     */
    public func recordHandlerProgressAsync(
            input: CloudformationModel.RecordHandlerProgressInput, 
            completion: @escaping (Result<CloudformationModel.RecordHandlerProgressOutputForRecordHandlerProgress, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.recordHandlerProgress,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = RecordHandlerProgressOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.recordHandlerProgress.rawValue,
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
     Invokes the RecordHandlerProgress operation waiting for the response before returning.

     - Parameters:
         - input: The validated RecordHandlerProgressInput object being passed to this operation.
     - Returns: The RecordHandlerProgressOutputForRecordHandlerProgress object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidStateTransition, operationStatusCheckFailed.
     */
    public func recordHandlerProgressSync(
            input: CloudformationModel.RecordHandlerProgressInput) throws -> CloudformationModel.RecordHandlerProgressOutputForRecordHandlerProgress {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.recordHandlerProgress,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = RecordHandlerProgressOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.recordHandlerProgress.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the RegisterPublisher operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterPublisherInput object being passed to this operation.
         - completion: The RegisterPublisherOutputForRegisterPublisher object or an error will be passed to this 
           callback when the operation is complete. The RegisterPublisherOutputForRegisterPublisher
           object will be validated before being returned to caller.
           The possible errors are: cFNRegistry.
     */
    public func registerPublisherAsync(
            input: CloudformationModel.RegisterPublisherInput, 
            completion: @escaping (Result<CloudformationModel.RegisterPublisherOutputForRegisterPublisher, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.registerPublisher,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = RegisterPublisherOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.registerPublisher.rawValue,
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
     Invokes the RegisterPublisher operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterPublisherInput object being passed to this operation.
     - Returns: The RegisterPublisherOutputForRegisterPublisher object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    public func registerPublisherSync(
            input: CloudformationModel.RegisterPublisherInput) throws -> CloudformationModel.RegisterPublisherOutputForRegisterPublisher {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.registerPublisher,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = RegisterPublisherOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.registerPublisher.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the RegisterType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RegisterTypeInput object being passed to this operation.
         - completion: The RegisterTypeOutputForRegisterType object or an error will be passed to this 
           callback when the operation is complete. The RegisterTypeOutputForRegisterType
           object will be validated before being returned to caller.
           The possible errors are: cFNRegistry.
     */
    public func registerTypeAsync(
            input: CloudformationModel.RegisterTypeInput, 
            completion: @escaping (Result<CloudformationModel.RegisterTypeOutputForRegisterType, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.registerType,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = RegisterTypeOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.registerType.rawValue,
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
     Invokes the RegisterType operation waiting for the response before returning.

     - Parameters:
         - input: The validated RegisterTypeInput object being passed to this operation.
     - Returns: The RegisterTypeOutputForRegisterType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    public func registerTypeSync(
            input: CloudformationModel.RegisterTypeInput) throws -> CloudformationModel.RegisterTypeOutputForRegisterType {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.registerType,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = RegisterTypeOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.registerType.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the RollbackStack operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RollbackStackInput object being passed to this operation.
         - completion: The RollbackStackOutputForRollbackStack object or an error will be passed to this 
           callback when the operation is complete. The RollbackStackOutputForRollbackStack
           object will be validated before being returned to caller.
           The possible errors are: tokenAlreadyExists.
     */
    public func rollbackStackAsync(
            input: CloudformationModel.RollbackStackInput, 
            completion: @escaping (Result<CloudformationModel.RollbackStackOutputForRollbackStack, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.rollbackStack,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = RollbackStackOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.rollbackStack.rawValue,
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
     Invokes the RollbackStack operation waiting for the response before returning.

     - Parameters:
         - input: The validated RollbackStackInput object being passed to this operation.
     - Returns: The RollbackStackOutputForRollbackStack object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: tokenAlreadyExists.
     */
    public func rollbackStackSync(
            input: CloudformationModel.RollbackStackInput) throws -> CloudformationModel.RollbackStackOutputForRollbackStack {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.rollbackStack,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = RollbackStackOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.rollbackStack.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the SetStackPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetStackPolicyInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func setStackPolicyAsync(
            input: CloudformationModel.SetStackPolicyInput, 
            completion: @escaping (CloudformationError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.setStackPolicy,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = SetStackPolicyOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.setStackPolicy.rawValue,
            version: apiVersion)

        _ = try httpClient.executeOperationAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the SetStackPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetStackPolicyInput object being passed to this operation.
     */
    public func setStackPolicySync(
            input: CloudformationModel.SetStackPolicyInput) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.setStackPolicy,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = SetStackPolicyOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.setStackPolicy.rawValue,
            version: apiVersion)

        do {
            try httpClient.executeSyncRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the SetTypeConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetTypeConfigurationInput object being passed to this operation.
         - completion: The SetTypeConfigurationOutputForSetTypeConfiguration object or an error will be passed to this 
           callback when the operation is complete. The SetTypeConfigurationOutputForSetTypeConfiguration
           object will be validated before being returned to caller.
           The possible errors are: cFNRegistry, typeNotFound.
     */
    public func setTypeConfigurationAsync(
            input: CloudformationModel.SetTypeConfigurationInput, 
            completion: @escaping (Result<CloudformationModel.SetTypeConfigurationOutputForSetTypeConfiguration, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.setTypeConfiguration,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = SetTypeConfigurationOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.setTypeConfiguration.rawValue,
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
     Invokes the SetTypeConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetTypeConfigurationInput object being passed to this operation.
     - Returns: The SetTypeConfigurationOutputForSetTypeConfiguration object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    public func setTypeConfigurationSync(
            input: CloudformationModel.SetTypeConfigurationInput) throws -> CloudformationModel.SetTypeConfigurationOutputForSetTypeConfiguration {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.setTypeConfiguration,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = SetTypeConfigurationOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.setTypeConfiguration.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the SetTypeDefaultVersion operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetTypeDefaultVersionInput object being passed to this operation.
         - completion: The SetTypeDefaultVersionOutputForSetTypeDefaultVersion object or an error will be passed to this 
           callback when the operation is complete. The SetTypeDefaultVersionOutputForSetTypeDefaultVersion
           object will be validated before being returned to caller.
           The possible errors are: cFNRegistry, typeNotFound.
     */
    public func setTypeDefaultVersionAsync(
            input: CloudformationModel.SetTypeDefaultVersionInput, 
            completion: @escaping (Result<CloudformationModel.SetTypeDefaultVersionOutputForSetTypeDefaultVersion, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.setTypeDefaultVersion,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = SetTypeDefaultVersionOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.setTypeDefaultVersion.rawValue,
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
     Invokes the SetTypeDefaultVersion operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetTypeDefaultVersionInput object being passed to this operation.
     - Returns: The SetTypeDefaultVersionOutputForSetTypeDefaultVersion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    public func setTypeDefaultVersionSync(
            input: CloudformationModel.SetTypeDefaultVersionInput) throws -> CloudformationModel.SetTypeDefaultVersionOutputForSetTypeDefaultVersion {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.setTypeDefaultVersion,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = SetTypeDefaultVersionOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.setTypeDefaultVersion.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the SignalResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SignalResourceInput object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func signalResourceAsync(
            input: CloudformationModel.SignalResourceInput, 
            completion: @escaping (CloudformationError?) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.signalResource,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = SignalResourceOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.signalResource.rawValue,
            version: apiVersion)

        _ = try httpClient.executeOperationAsyncRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the SignalResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated SignalResourceInput object being passed to this operation.
     */
    public func signalResourceSync(
            input: CloudformationModel.SignalResourceInput) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.signalResource,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = SignalResourceOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.signalResource.rawValue,
            version: apiVersion)

        do {
            try httpClient.executeSyncRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the StopStackSetOperation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopStackSetOperationInput object being passed to this operation.
         - completion: The StopStackSetOperationOutputForStopStackSetOperation object or an error will be passed to this 
           callback when the operation is complete. The StopStackSetOperationOutputForStopStackSetOperation
           object will be validated before being returned to caller.
           The possible errors are: invalidOperation, operationNotFound, stackSetNotFound.
     */
    public func stopStackSetOperationAsync(
            input: CloudformationModel.StopStackSetOperationInput, 
            completion: @escaping (Result<CloudformationModel.StopStackSetOperationOutputForStopStackSetOperation, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.stopStackSetOperation,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = StopStackSetOperationOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.stopStackSetOperation.rawValue,
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
     Invokes the StopStackSetOperation operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopStackSetOperationInput object being passed to this operation.
     - Returns: The StopStackSetOperationOutputForStopStackSetOperation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, operationNotFound, stackSetNotFound.
     */
    public func stopStackSetOperationSync(
            input: CloudformationModel.StopStackSetOperationInput) throws -> CloudformationModel.StopStackSetOperationOutputForStopStackSetOperation {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.stopStackSetOperation,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = StopStackSetOperationOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.stopStackSetOperation.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the TestType operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TestTypeInput object being passed to this operation.
         - completion: The TestTypeOutputForTestType object or an error will be passed to this 
           callback when the operation is complete. The TestTypeOutputForTestType
           object will be validated before being returned to caller.
           The possible errors are: cFNRegistry, typeNotFound.
     */
    public func testTypeAsync(
            input: CloudformationModel.TestTypeInput, 
            completion: @escaping (Result<CloudformationModel.TestTypeOutputForTestType, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.testType,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = TestTypeOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.testType.rawValue,
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
     Invokes the TestType operation waiting for the response before returning.

     - Parameters:
         - input: The validated TestTypeInput object being passed to this operation.
     - Returns: The TestTypeOutputForTestType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    public func testTypeSync(
            input: CloudformationModel.TestTypeInput) throws -> CloudformationModel.TestTypeOutputForTestType {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.testType,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = TestTypeOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.testType.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UpdateStack operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateStackInput object being passed to this operation.
         - completion: The UpdateStackOutputForUpdateStack object or an error will be passed to this 
           callback when the operation is complete. The UpdateStackOutputForUpdateStack
           object will be validated before being returned to caller.
           The possible errors are: insufficientCapabilities, tokenAlreadyExists.
     */
    public func updateStackAsync(
            input: CloudformationModel.UpdateStackInput, 
            completion: @escaping (Result<CloudformationModel.UpdateStackOutputForUpdateStack, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateStack,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = UpdateStackOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.updateStack.rawValue,
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
     Invokes the UpdateStack operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateStackInput object being passed to this operation.
     - Returns: The UpdateStackOutputForUpdateStack object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: insufficientCapabilities, tokenAlreadyExists.
     */
    public func updateStackSync(
            input: CloudformationModel.UpdateStackInput) throws -> CloudformationModel.UpdateStackOutputForUpdateStack {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateStack,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = UpdateStackOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.updateStack.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UpdateStackInstances operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateStackInstancesInput object being passed to this operation.
         - completion: The UpdateStackInstancesOutputForUpdateStackInstances object or an error will be passed to this 
           callback when the operation is complete. The UpdateStackInstancesOutputForUpdateStackInstances
           object will be validated before being returned to caller.
           The possible errors are: invalidOperation, operationIdAlreadyExists, operationInProgress, stackInstanceNotFound, stackSetNotFound, staleRequest.
     */
    public func updateStackInstancesAsync(
            input: CloudformationModel.UpdateStackInstancesInput, 
            completion: @escaping (Result<CloudformationModel.UpdateStackInstancesOutputForUpdateStackInstances, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateStackInstances,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = UpdateStackInstancesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.updateStackInstances.rawValue,
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
     Invokes the UpdateStackInstances operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateStackInstancesInput object being passed to this operation.
     - Returns: The UpdateStackInstancesOutputForUpdateStackInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, operationIdAlreadyExists, operationInProgress, stackInstanceNotFound, stackSetNotFound, staleRequest.
     */
    public func updateStackInstancesSync(
            input: CloudformationModel.UpdateStackInstancesInput) throws -> CloudformationModel.UpdateStackInstancesOutputForUpdateStackInstances {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateStackInstances,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = UpdateStackInstancesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.updateStackInstances.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UpdateStackSet operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateStackSetInput object being passed to this operation.
         - completion: The UpdateStackSetOutputForUpdateStackSet object or an error will be passed to this 
           callback when the operation is complete. The UpdateStackSetOutputForUpdateStackSet
           object will be validated before being returned to caller.
           The possible errors are: invalidOperation, operationIdAlreadyExists, operationInProgress, stackInstanceNotFound, stackSetNotFound, staleRequest.
     */
    public func updateStackSetAsync(
            input: CloudformationModel.UpdateStackSetInput, 
            completion: @escaping (Result<CloudformationModel.UpdateStackSetOutputForUpdateStackSet, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateStackSet,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = UpdateStackSetOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.updateStackSet.rawValue,
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
     Invokes the UpdateStackSet operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateStackSetInput object being passed to this operation.
     - Returns: The UpdateStackSetOutputForUpdateStackSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, operationIdAlreadyExists, operationInProgress, stackInstanceNotFound, stackSetNotFound, staleRequest.
     */
    public func updateStackSetSync(
            input: CloudformationModel.UpdateStackSetInput) throws -> CloudformationModel.UpdateStackSetOutputForUpdateStackSet {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateStackSet,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = UpdateStackSetOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.updateStackSet.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UpdateTerminationProtection operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateTerminationProtectionInput object being passed to this operation.
         - completion: The UpdateTerminationProtectionOutputForUpdateTerminationProtection object or an error will be passed to this 
           callback when the operation is complete. The UpdateTerminationProtectionOutputForUpdateTerminationProtection
           object will be validated before being returned to caller.
     */
    public func updateTerminationProtectionAsync(
            input: CloudformationModel.UpdateTerminationProtectionInput, 
            completion: @escaping (Result<CloudformationModel.UpdateTerminationProtectionOutputForUpdateTerminationProtection, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateTerminationProtection,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = UpdateTerminationProtectionOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.updateTerminationProtection.rawValue,
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
     Invokes the UpdateTerminationProtection operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateTerminationProtectionInput object being passed to this operation.
     - Returns: The UpdateTerminationProtectionOutputForUpdateTerminationProtection object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func updateTerminationProtectionSync(
            input: CloudformationModel.UpdateTerminationProtectionInput) throws -> CloudformationModel.UpdateTerminationProtectionOutputForUpdateTerminationProtection {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateTerminationProtection,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = UpdateTerminationProtectionOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.updateTerminationProtection.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ValidateTemplate operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ValidateTemplateInput object being passed to this operation.
         - completion: The ValidateTemplateOutputForValidateTemplate object or an error will be passed to this 
           callback when the operation is complete. The ValidateTemplateOutputForValidateTemplate
           object will be validated before being returned to caller.
     */
    public func validateTemplateAsync(
            input: CloudformationModel.ValidateTemplateInput, 
            completion: @escaping (Result<CloudformationModel.ValidateTemplateOutputForValidateTemplate, CloudformationError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.validateTemplate,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ValidateTemplateOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.validateTemplate.rawValue,
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
     Invokes the ValidateTemplate operation waiting for the response before returning.

     - Parameters:
         - input: The validated ValidateTemplateInput object being passed to this operation.
     - Returns: The ValidateTemplateOutputForValidateTemplate object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func validateTemplateSync(
            input: CloudformationModel.ValidateTemplateInput) throws -> CloudformationModel.ValidateTemplateOutputForValidateTemplate {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.validateTemplate,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ValidateTemplateOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.validateTemplate.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }
    
    #if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)

    /**
     Invokes the ActivateOrganizationsAccess operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ActivateOrganizationsAccessInput object being passed to this operation.
     - Returns: The ActivateOrganizationsAccessOutputForActivateOrganizationsAccess object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, operationNotFound.
     */
    public func activateOrganizationsAccess(
            input: CloudformationModel.ActivateOrganizationsAccessInput) async throws -> CloudformationModel.ActivateOrganizationsAccessOutputForActivateOrganizationsAccess {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.activateOrganizationsAccess,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ActivateOrganizationsAccessOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.activateOrganizationsAccess.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ActivateType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ActivateTypeInput object being passed to this operation.
     - Returns: The ActivateTypeOutputForActivateType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    public func activateType(
            input: CloudformationModel.ActivateTypeInput) async throws -> CloudformationModel.ActivateTypeOutputForActivateType {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.activateType,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ActivateTypeOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.activateType.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the BatchDescribeTypeConfigurations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated BatchDescribeTypeConfigurationsInput object being passed to this operation.
     - Returns: The BatchDescribeTypeConfigurationsOutputForBatchDescribeTypeConfigurations object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeConfigurationNotFound.
     */
    public func batchDescribeTypeConfigurations(
            input: CloudformationModel.BatchDescribeTypeConfigurationsInput) async throws -> CloudformationModel.BatchDescribeTypeConfigurationsOutputForBatchDescribeTypeConfigurations {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.batchDescribeTypeConfigurations,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = BatchDescribeTypeConfigurationsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.batchDescribeTypeConfigurations.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the CancelUpdateStack operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CancelUpdateStackInput object being passed to this operation.
     - Throws: tokenAlreadyExists.
     */
    public func cancelUpdateStack(
            input: CloudformationModel.CancelUpdateStackInput) async throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.cancelUpdateStack,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = CancelUpdateStackOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.cancelUpdateStack.rawValue,
            version: apiVersion)

        do {
            try await httpClient.executeRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ContinueUpdateRollback operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ContinueUpdateRollbackInput object being passed to this operation.
     - Returns: The ContinueUpdateRollbackOutputForContinueUpdateRollback object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: tokenAlreadyExists.
     */
    public func continueUpdateRollback(
            input: CloudformationModel.ContinueUpdateRollbackInput) async throws -> CloudformationModel.ContinueUpdateRollbackOutputForContinueUpdateRollback {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.continueUpdateRollback,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ContinueUpdateRollbackOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.continueUpdateRollback.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the CreateChangeSet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateChangeSetInput object being passed to this operation.
     - Returns: The CreateChangeSetOutputForCreateChangeSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: alreadyExists, insufficientCapabilities, limitExceeded.
     */
    public func createChangeSet(
            input: CloudformationModel.CreateChangeSetInput) async throws -> CloudformationModel.CreateChangeSetOutputForCreateChangeSet {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createChangeSet,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = CreateChangeSetOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.createChangeSet.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the CreateStack operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateStackInput object being passed to this operation.
     - Returns: The CreateStackOutputForCreateStack object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: alreadyExists, insufficientCapabilities, limitExceeded, tokenAlreadyExists.
     */
    public func createStack(
            input: CloudformationModel.CreateStackInput) async throws -> CloudformationModel.CreateStackOutputForCreateStack {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createStack,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = CreateStackOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.createStack.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the CreateStackInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateStackInstancesInput object being passed to this operation.
     - Returns: The CreateStackInstancesOutputForCreateStackInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, limitExceeded, operationIdAlreadyExists, operationInProgress, stackSetNotFound, staleRequest.
     */
    public func createStackInstances(
            input: CloudformationModel.CreateStackInstancesInput) async throws -> CloudformationModel.CreateStackInstancesOutputForCreateStackInstances {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createStackInstances,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = CreateStackInstancesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.createStackInstances.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the CreateStackSet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateStackSetInput object being passed to this operation.
     - Returns: The CreateStackSetOutputForCreateStackSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: createdButModified, limitExceeded, nameAlreadyExists.
     */
    public func createStackSet(
            input: CloudformationModel.CreateStackSetInput) async throws -> CloudformationModel.CreateStackSetOutputForCreateStackSet {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createStackSet,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = CreateStackSetOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.createStackSet.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeactivateOrganizationsAccess operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeactivateOrganizationsAccessInput object being passed to this operation.
     - Returns: The DeactivateOrganizationsAccessOutputForDeactivateOrganizationsAccess object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, operationNotFound.
     */
    public func deactivateOrganizationsAccess(
            input: CloudformationModel.DeactivateOrganizationsAccessInput) async throws -> CloudformationModel.DeactivateOrganizationsAccessOutputForDeactivateOrganizationsAccess {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deactivateOrganizationsAccess,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeactivateOrganizationsAccessOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.deactivateOrganizationsAccess.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeactivateType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeactivateTypeInput object being passed to this operation.
     - Returns: The DeactivateTypeOutputForDeactivateType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    public func deactivateType(
            input: CloudformationModel.DeactivateTypeInput) async throws -> CloudformationModel.DeactivateTypeOutputForDeactivateType {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deactivateType,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeactivateTypeOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.deactivateType.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteChangeSet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteChangeSetInput object being passed to this operation.
     - Returns: The DeleteChangeSetOutputForDeleteChangeSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidChangeSetStatus.
     */
    public func deleteChangeSet(
            input: CloudformationModel.DeleteChangeSetInput) async throws -> CloudformationModel.DeleteChangeSetOutputForDeleteChangeSet {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteChangeSet,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteChangeSetOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.deleteChangeSet.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteStack operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteStackInput object being passed to this operation.
     - Throws: tokenAlreadyExists.
     */
    public func deleteStack(
            input: CloudformationModel.DeleteStackInput) async throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteStack,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteStackOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.deleteStack.rawValue,
            version: apiVersion)

        do {
            try await httpClient.executeRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteStackInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteStackInstancesInput object being passed to this operation.
     - Returns: The DeleteStackInstancesOutputForDeleteStackInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, operationIdAlreadyExists, operationInProgress, stackSetNotFound, staleRequest.
     */
    public func deleteStackInstances(
            input: CloudformationModel.DeleteStackInstancesInput) async throws -> CloudformationModel.DeleteStackInstancesOutputForDeleteStackInstances {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteStackInstances,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteStackInstancesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.deleteStackInstances.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteStackSet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteStackSetInput object being passed to this operation.
     - Returns: The DeleteStackSetOutputForDeleteStackSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationInProgress, stackSetNotEmpty.
     */
    public func deleteStackSet(
            input: CloudformationModel.DeleteStackSetInput) async throws -> CloudformationModel.DeleteStackSetOutputForDeleteStackSet {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteStackSet,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeleteStackSetOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.deleteStackSet.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeregisterType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeregisterTypeInput object being passed to this operation.
     - Returns: The DeregisterTypeOutputForDeregisterType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    public func deregisterType(
            input: CloudformationModel.DeregisterTypeInput) async throws -> CloudformationModel.DeregisterTypeOutputForDeregisterType {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deregisterType,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DeregisterTypeOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.deregisterType.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeAccountLimits operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeAccountLimitsInput object being passed to this operation.
     - Returns: The DescribeAccountLimitsOutputForDescribeAccountLimits object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeAccountLimits(
            input: CloudformationModel.DescribeAccountLimitsInput) async throws -> CloudformationModel.DescribeAccountLimitsOutputForDescribeAccountLimits {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeAccountLimits,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeAccountLimitsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeAccountLimits.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeChangeSet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeChangeSetInput object being passed to this operation.
     - Returns: The DescribeChangeSetOutputForDescribeChangeSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: changeSetNotFound.
     */
    public func describeChangeSet(
            input: CloudformationModel.DescribeChangeSetInput) async throws -> CloudformationModel.DescribeChangeSetOutputForDescribeChangeSet {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeChangeSet,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeChangeSetOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeChangeSet.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeChangeSetHooks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeChangeSetHooksInput object being passed to this operation.
     - Returns: The DescribeChangeSetHooksOutputForDescribeChangeSetHooks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: changeSetNotFound.
     */
    public func describeChangeSetHooks(
            input: CloudformationModel.DescribeChangeSetHooksInput) async throws -> CloudformationModel.DescribeChangeSetHooksOutputForDescribeChangeSetHooks {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeChangeSetHooks,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeChangeSetHooksOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeChangeSetHooks.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeOrganizationsAccess operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeOrganizationsAccessInput object being passed to this operation.
     - Returns: The DescribeOrganizationsAccessOutputForDescribeOrganizationsAccess object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, operationNotFound.
     */
    public func describeOrganizationsAccess(
            input: CloudformationModel.DescribeOrganizationsAccessInput) async throws -> CloudformationModel.DescribeOrganizationsAccessOutputForDescribeOrganizationsAccess {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeOrganizationsAccess,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeOrganizationsAccessOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeOrganizationsAccess.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribePublisher operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribePublisherInput object being passed to this operation.
     - Returns: The DescribePublisherOutputForDescribePublisher object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    public func describePublisher(
            input: CloudformationModel.DescribePublisherInput) async throws -> CloudformationModel.DescribePublisherOutputForDescribePublisher {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describePublisher,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribePublisherOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describePublisher.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeStackDriftDetectionStatus operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeStackDriftDetectionStatusInput object being passed to this operation.
     - Returns: The DescribeStackDriftDetectionStatusOutputForDescribeStackDriftDetectionStatus object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeStackDriftDetectionStatus(
            input: CloudformationModel.DescribeStackDriftDetectionStatusInput) async throws -> CloudformationModel.DescribeStackDriftDetectionStatusOutputForDescribeStackDriftDetectionStatus {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeStackDriftDetectionStatus,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeStackDriftDetectionStatusOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeStackDriftDetectionStatus.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeStackEvents operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeStackEventsInput object being passed to this operation.
     - Returns: The DescribeStackEventsOutputForDescribeStackEvents object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeStackEvents(
            input: CloudformationModel.DescribeStackEventsInput) async throws -> CloudformationModel.DescribeStackEventsOutputForDescribeStackEvents {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeStackEvents,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeStackEventsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeStackEvents.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeStackInstance operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeStackInstanceInput object being passed to this operation.
     - Returns: The DescribeStackInstanceOutputForDescribeStackInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: stackInstanceNotFound, stackSetNotFound.
     */
    public func describeStackInstance(
            input: CloudformationModel.DescribeStackInstanceInput) async throws -> CloudformationModel.DescribeStackInstanceOutputForDescribeStackInstance {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeStackInstance,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeStackInstanceOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeStackInstance.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeStackResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeStackResourceInput object being passed to this operation.
     - Returns: The DescribeStackResourceOutputForDescribeStackResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeStackResource(
            input: CloudformationModel.DescribeStackResourceInput) async throws -> CloudformationModel.DescribeStackResourceOutputForDescribeStackResource {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeStackResource,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeStackResourceOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeStackResource.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeStackResourceDrifts operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeStackResourceDriftsInput object being passed to this operation.
     - Returns: The DescribeStackResourceDriftsOutputForDescribeStackResourceDrifts object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeStackResourceDrifts(
            input: CloudformationModel.DescribeStackResourceDriftsInput) async throws -> CloudformationModel.DescribeStackResourceDriftsOutputForDescribeStackResourceDrifts {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeStackResourceDrifts,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeStackResourceDriftsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeStackResourceDrifts.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeStackResources operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeStackResourcesInput object being passed to this operation.
     - Returns: The DescribeStackResourcesOutputForDescribeStackResources object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeStackResources(
            input: CloudformationModel.DescribeStackResourcesInput) async throws -> CloudformationModel.DescribeStackResourcesOutputForDescribeStackResources {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeStackResources,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeStackResourcesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeStackResources.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeStackSet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeStackSetInput object being passed to this operation.
     - Returns: The DescribeStackSetOutputForDescribeStackSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: stackSetNotFound.
     */
    public func describeStackSet(
            input: CloudformationModel.DescribeStackSetInput) async throws -> CloudformationModel.DescribeStackSetOutputForDescribeStackSet {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeStackSet,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeStackSetOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeStackSet.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeStackSetOperation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeStackSetOperationInput object being passed to this operation.
     - Returns: The DescribeStackSetOperationOutputForDescribeStackSetOperation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotFound, stackSetNotFound.
     */
    public func describeStackSetOperation(
            input: CloudformationModel.DescribeStackSetOperationInput) async throws -> CloudformationModel.DescribeStackSetOperationOutputForDescribeStackSetOperation {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeStackSetOperation,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeStackSetOperationOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeStackSetOperation.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeStacks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeStacksInput object being passed to this operation.
     - Returns: The DescribeStacksOutputForDescribeStacks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeStacks(
            input: CloudformationModel.DescribeStacksInput) async throws -> CloudformationModel.DescribeStacksOutputForDescribeStacks {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeStacks,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeStacksOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeStacks.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTypeInput object being passed to this operation.
     - Returns: The DescribeTypeOutputForDescribeType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    public func describeType(
            input: CloudformationModel.DescribeTypeInput) async throws -> CloudformationModel.DescribeTypeOutputForDescribeType {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeType,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeTypeOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeType.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeTypeRegistration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeTypeRegistrationInput object being passed to this operation.
     - Returns: The DescribeTypeRegistrationOutputForDescribeTypeRegistration object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    public func describeTypeRegistration(
            input: CloudformationModel.DescribeTypeRegistrationInput) async throws -> CloudformationModel.DescribeTypeRegistrationOutputForDescribeTypeRegistration {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeTypeRegistration,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DescribeTypeRegistrationOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.describeTypeRegistration.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DetectStackDrift operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DetectStackDriftInput object being passed to this operation.
     - Returns: The DetectStackDriftOutputForDetectStackDrift object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func detectStackDrift(
            input: CloudformationModel.DetectStackDriftInput) async throws -> CloudformationModel.DetectStackDriftOutputForDetectStackDrift {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.detectStackDrift,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DetectStackDriftOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.detectStackDrift.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DetectStackResourceDrift operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DetectStackResourceDriftInput object being passed to this operation.
     - Returns: The DetectStackResourceDriftOutputForDetectStackResourceDrift object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func detectStackResourceDrift(
            input: CloudformationModel.DetectStackResourceDriftInput) async throws -> CloudformationModel.DetectStackResourceDriftOutputForDetectStackResourceDrift {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.detectStackResourceDrift,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DetectStackResourceDriftOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.detectStackResourceDrift.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DetectStackSetDrift operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DetectStackSetDriftInput object being passed to this operation.
     - Returns: The DetectStackSetDriftOutputForDetectStackSetDrift object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, operationInProgress, stackSetNotFound.
     */
    public func detectStackSetDrift(
            input: CloudformationModel.DetectStackSetDriftInput) async throws -> CloudformationModel.DetectStackSetDriftOutputForDetectStackSetDrift {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.detectStackSetDrift,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = DetectStackSetDriftOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.detectStackSetDrift.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the EstimateTemplateCost operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated EstimateTemplateCostInput object being passed to this operation.
     - Returns: The EstimateTemplateCostOutputForEstimateTemplateCost object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func estimateTemplateCost(
            input: CloudformationModel.EstimateTemplateCostInput) async throws -> CloudformationModel.EstimateTemplateCostOutputForEstimateTemplateCost {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.estimateTemplateCost,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = EstimateTemplateCostOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.estimateTemplateCost.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ExecuteChangeSet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ExecuteChangeSetInput object being passed to this operation.
     - Returns: The ExecuteChangeSetOutputForExecuteChangeSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: changeSetNotFound, insufficientCapabilities, invalidChangeSetStatus, tokenAlreadyExists.
     */
    public func executeChangeSet(
            input: CloudformationModel.ExecuteChangeSetInput) async throws -> CloudformationModel.ExecuteChangeSetOutputForExecuteChangeSet {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.executeChangeSet,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ExecuteChangeSetOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.executeChangeSet.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetStackPolicy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetStackPolicyInput object being passed to this operation.
     - Returns: The GetStackPolicyOutputForGetStackPolicy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getStackPolicy(
            input: CloudformationModel.GetStackPolicyInput) async throws -> CloudformationModel.GetStackPolicyOutputForGetStackPolicy {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getStackPolicy,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetStackPolicyOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.getStackPolicy.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetTemplate operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetTemplateInput object being passed to this operation.
     - Returns: The GetTemplateOutputForGetTemplate object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: changeSetNotFound.
     */
    public func getTemplate(
            input: CloudformationModel.GetTemplateInput) async throws -> CloudformationModel.GetTemplateOutputForGetTemplate {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getTemplate,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetTemplateOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.getTemplate.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetTemplateSummary operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetTemplateSummaryInput object being passed to this operation.
     - Returns: The GetTemplateSummaryOutputForGetTemplateSummary object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: stackSetNotFound.
     */
    public func getTemplateSummary(
            input: CloudformationModel.GetTemplateSummaryInput) async throws -> CloudformationModel.GetTemplateSummaryOutputForGetTemplateSummary {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getTemplateSummary,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = GetTemplateSummaryOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.getTemplateSummary.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ImportStacksToStackSet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ImportStacksToStackSetInput object being passed to this operation.
     - Returns: The ImportStacksToStackSetOutputForImportStacksToStackSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, limitExceeded, operationIdAlreadyExists, operationInProgress, stackNotFound, stackSetNotFound, staleRequest.
     */
    public func importStacksToStackSet(
            input: CloudformationModel.ImportStacksToStackSetInput) async throws -> CloudformationModel.ImportStacksToStackSetOutputForImportStacksToStackSet {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.importStacksToStackSet,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ImportStacksToStackSetOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.importStacksToStackSet.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListChangeSets operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListChangeSetsInput object being passed to this operation.
     - Returns: The ListChangeSetsOutputForListChangeSets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listChangeSets(
            input: CloudformationModel.ListChangeSetsInput) async throws -> CloudformationModel.ListChangeSetsOutputForListChangeSets {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listChangeSets,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListChangeSetsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.listChangeSets.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListExports operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListExportsInput object being passed to this operation.
     - Returns: The ListExportsOutputForListExports object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listExports(
            input: CloudformationModel.ListExportsInput) async throws -> CloudformationModel.ListExportsOutputForListExports {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listExports,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListExportsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.listExports.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListImports operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListImportsInput object being passed to this operation.
     - Returns: The ListImportsOutputForListImports object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listImports(
            input: CloudformationModel.ListImportsInput) async throws -> CloudformationModel.ListImportsOutputForListImports {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listImports,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListImportsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.listImports.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListStackInstanceResourceDrifts operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListStackInstanceResourceDriftsInput object being passed to this operation.
     - Returns: The ListStackInstanceResourceDriftsOutputForListStackInstanceResourceDrifts object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotFound, stackInstanceNotFound, stackSetNotFound.
     */
    public func listStackInstanceResourceDrifts(
            input: CloudformationModel.ListStackInstanceResourceDriftsInput) async throws -> CloudformationModel.ListStackInstanceResourceDriftsOutputForListStackInstanceResourceDrifts {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listStackInstanceResourceDrifts,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListStackInstanceResourceDriftsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.listStackInstanceResourceDrifts.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListStackInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListStackInstancesInput object being passed to this operation.
     - Returns: The ListStackInstancesOutputForListStackInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: stackSetNotFound.
     */
    public func listStackInstances(
            input: CloudformationModel.ListStackInstancesInput) async throws -> CloudformationModel.ListStackInstancesOutputForListStackInstances {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listStackInstances,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListStackInstancesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.listStackInstances.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListStackResources operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListStackResourcesInput object being passed to this operation.
     - Returns: The ListStackResourcesOutputForListStackResources object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listStackResources(
            input: CloudformationModel.ListStackResourcesInput) async throws -> CloudformationModel.ListStackResourcesOutputForListStackResources {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listStackResources,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListStackResourcesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.listStackResources.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListStackSetOperationResults operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListStackSetOperationResultsInput object being passed to this operation.
     - Returns: The ListStackSetOperationResultsOutputForListStackSetOperationResults object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: operationNotFound, stackSetNotFound.
     */
    public func listStackSetOperationResults(
            input: CloudformationModel.ListStackSetOperationResultsInput) async throws -> CloudformationModel.ListStackSetOperationResultsOutputForListStackSetOperationResults {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listStackSetOperationResults,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListStackSetOperationResultsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.listStackSetOperationResults.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListStackSetOperations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListStackSetOperationsInput object being passed to this operation.
     - Returns: The ListStackSetOperationsOutputForListStackSetOperations object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: stackSetNotFound.
     */
    public func listStackSetOperations(
            input: CloudformationModel.ListStackSetOperationsInput) async throws -> CloudformationModel.ListStackSetOperationsOutputForListStackSetOperations {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listStackSetOperations,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListStackSetOperationsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.listStackSetOperations.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListStackSets operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListStackSetsInput object being passed to this operation.
     - Returns: The ListStackSetsOutputForListStackSets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listStackSets(
            input: CloudformationModel.ListStackSetsInput) async throws -> CloudformationModel.ListStackSetsOutputForListStackSets {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listStackSets,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListStackSetsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.listStackSets.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListStacks operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListStacksInput object being passed to this operation.
     - Returns: The ListStacksOutputForListStacks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listStacks(
            input: CloudformationModel.ListStacksInput) async throws -> CloudformationModel.ListStacksOutputForListStacks {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listStacks,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListStacksOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.listStacks.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListTypeRegistrations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTypeRegistrationsInput object being passed to this operation.
     - Returns: The ListTypeRegistrationsOutputForListTypeRegistrations object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    public func listTypeRegistrations(
            input: CloudformationModel.ListTypeRegistrationsInput) async throws -> CloudformationModel.ListTypeRegistrationsOutputForListTypeRegistrations {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listTypeRegistrations,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListTypeRegistrationsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.listTypeRegistrations.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListTypeVersions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTypeVersionsInput object being passed to this operation.
     - Returns: The ListTypeVersionsOutputForListTypeVersions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    public func listTypeVersions(
            input: CloudformationModel.ListTypeVersionsInput) async throws -> CloudformationModel.ListTypeVersionsOutputForListTypeVersions {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listTypeVersions,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListTypeVersionsOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.listTypeVersions.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListTypes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTypesInput object being passed to this operation.
     - Returns: The ListTypesOutputForListTypes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    public func listTypes(
            input: CloudformationModel.ListTypesInput) async throws -> CloudformationModel.ListTypesOutputForListTypes {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listTypes,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ListTypesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.listTypes.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the PublishType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PublishTypeInput object being passed to this operation.
     - Returns: The PublishTypeOutputForPublishType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    public func publishType(
            input: CloudformationModel.PublishTypeInput) async throws -> CloudformationModel.PublishTypeOutputForPublishType {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.publishType,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = PublishTypeOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.publishType.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the RecordHandlerProgress operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RecordHandlerProgressInput object being passed to this operation.
     - Returns: The RecordHandlerProgressOutputForRecordHandlerProgress object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidStateTransition, operationStatusCheckFailed.
     */
    public func recordHandlerProgress(
            input: CloudformationModel.RecordHandlerProgressInput) async throws -> CloudformationModel.RecordHandlerProgressOutputForRecordHandlerProgress {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.recordHandlerProgress,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = RecordHandlerProgressOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.recordHandlerProgress.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the RegisterPublisher operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RegisterPublisherInput object being passed to this operation.
     - Returns: The RegisterPublisherOutputForRegisterPublisher object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    public func registerPublisher(
            input: CloudformationModel.RegisterPublisherInput) async throws -> CloudformationModel.RegisterPublisherOutputForRegisterPublisher {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.registerPublisher,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = RegisterPublisherOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.registerPublisher.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the RegisterType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RegisterTypeInput object being passed to this operation.
     - Returns: The RegisterTypeOutputForRegisterType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry.
     */
    public func registerType(
            input: CloudformationModel.RegisterTypeInput) async throws -> CloudformationModel.RegisterTypeOutputForRegisterType {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.registerType,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = RegisterTypeOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.registerType.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the RollbackStack operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RollbackStackInput object being passed to this operation.
     - Returns: The RollbackStackOutputForRollbackStack object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: tokenAlreadyExists.
     */
    public func rollbackStack(
            input: CloudformationModel.RollbackStackInput) async throws -> CloudformationModel.RollbackStackOutputForRollbackStack {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.rollbackStack,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = RollbackStackOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.rollbackStack.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the SetStackPolicy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SetStackPolicyInput object being passed to this operation.
     */
    public func setStackPolicy(
            input: CloudformationModel.SetStackPolicyInput) async throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.setStackPolicy,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = SetStackPolicyOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.setStackPolicy.rawValue,
            version: apiVersion)

        do {
            try await httpClient.executeRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the SetTypeConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SetTypeConfigurationInput object being passed to this operation.
     - Returns: The SetTypeConfigurationOutputForSetTypeConfiguration object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    public func setTypeConfiguration(
            input: CloudformationModel.SetTypeConfigurationInput) async throws -> CloudformationModel.SetTypeConfigurationOutputForSetTypeConfiguration {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.setTypeConfiguration,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = SetTypeConfigurationOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.setTypeConfiguration.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the SetTypeDefaultVersion operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SetTypeDefaultVersionInput object being passed to this operation.
     - Returns: The SetTypeDefaultVersionOutputForSetTypeDefaultVersion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    public func setTypeDefaultVersion(
            input: CloudformationModel.SetTypeDefaultVersionInput) async throws -> CloudformationModel.SetTypeDefaultVersionOutputForSetTypeDefaultVersion {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.setTypeDefaultVersion,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = SetTypeDefaultVersionOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.setTypeDefaultVersion.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the SignalResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SignalResourceInput object being passed to this operation.
     */
    public func signalResource(
            input: CloudformationModel.SignalResourceInput) async throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.signalResource,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = SignalResourceOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.signalResource.rawValue,
            version: apiVersion)

        do {
            try await httpClient.executeRetriableWithoutOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the StopStackSetOperation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StopStackSetOperationInput object being passed to this operation.
     - Returns: The StopStackSetOperationOutputForStopStackSetOperation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, operationNotFound, stackSetNotFound.
     */
    public func stopStackSetOperation(
            input: CloudformationModel.StopStackSetOperationInput) async throws -> CloudformationModel.StopStackSetOperationOutputForStopStackSetOperation {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.stopStackSetOperation,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = StopStackSetOperationOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.stopStackSetOperation.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the TestType operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TestTypeInput object being passed to this operation.
     - Returns: The TestTypeOutputForTestType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: cFNRegistry, typeNotFound.
     */
    public func testType(
            input: CloudformationModel.TestTypeInput) async throws -> CloudformationModel.TestTypeOutputForTestType {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.testType,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = TestTypeOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.testType.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UpdateStack operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateStackInput object being passed to this operation.
     - Returns: The UpdateStackOutputForUpdateStack object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: insufficientCapabilities, tokenAlreadyExists.
     */
    public func updateStack(
            input: CloudformationModel.UpdateStackInput) async throws -> CloudformationModel.UpdateStackOutputForUpdateStack {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateStack,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = UpdateStackOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.updateStack.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UpdateStackInstances operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateStackInstancesInput object being passed to this operation.
     - Returns: The UpdateStackInstancesOutputForUpdateStackInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, operationIdAlreadyExists, operationInProgress, stackInstanceNotFound, stackSetNotFound, staleRequest.
     */
    public func updateStackInstances(
            input: CloudformationModel.UpdateStackInstancesInput) async throws -> CloudformationModel.UpdateStackInstancesOutputForUpdateStackInstances {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateStackInstances,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = UpdateStackInstancesOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.updateStackInstances.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UpdateStackSet operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateStackSetInput object being passed to this operation.
     - Returns: The UpdateStackSetOutputForUpdateStackSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOperation, operationIdAlreadyExists, operationInProgress, stackInstanceNotFound, stackSetNotFound, staleRequest.
     */
    public func updateStackSet(
            input: CloudformationModel.UpdateStackSetInput) async throws -> CloudformationModel.UpdateStackSetOutputForUpdateStackSet {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateStackSet,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = UpdateStackSetOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.updateStackSet.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UpdateTerminationProtection operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateTerminationProtectionInput object being passed to this operation.
     - Returns: The UpdateTerminationProtectionOutputForUpdateTerminationProtection object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func updateTerminationProtection(
            input: CloudformationModel.UpdateTerminationProtectionInput) async throws -> CloudformationModel.UpdateTerminationProtectionOutputForUpdateTerminationProtection {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateTerminationProtection,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = UpdateTerminationProtectionOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.updateTerminationProtection.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ValidateTemplate operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ValidateTemplateInput object being passed to this operation.
     - Returns: The ValidateTemplateOutputForValidateTemplate object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func validateTemplate(
            input: CloudformationModel.ValidateTemplateInput) async throws -> CloudformationModel.ValidateTemplateOutputForValidateTemplate {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.validateTemplate,
                                                            handlerDelegate: handlerDelegate)
        let wrappedInput = ValidateTemplateOperationHTTPRequestInput(encodable: input)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: CloudformationModelOperations.validateTemplate.rawValue,
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
            let typedError: CloudformationError = error.asTypedError()
            throw typedError
        }
    }
    #endif
}
