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
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment type_body_length
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
            eventLoopProvider: eventLoopProvider)
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
     will handle being called multiple times.
     */
    public func close() throws {
        if self.ownsHttpClients {
            try httpClient.close()
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
}
