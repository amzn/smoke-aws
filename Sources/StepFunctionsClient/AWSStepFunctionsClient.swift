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
// AWSStepFunctionsClient.swift
// StepFunctionsClient
//

import Foundation
import StepFunctionsModel
import SmokeAWSCore
import SmokeHTTPClient
import SmokeAWSHttp
import NIO
import NIOHTTP1
import AsyncHTTPClient
import Logging

public enum StepFunctionsClientError: Swift.Error {
    case invalidEndpoint(String)
    case unsupportedPayload
    case unknownError(String?)
}

 extension StepFunctionsError: ConvertableError {
    public static func asUnrecognizedError(error: Swift.Error) -> StepFunctionsError {
        return error.asUnrecognizedStepFunctionsError()
    }

    public func isRetriable() -> Bool? {
        switch self {
        case .activityLimitExceeded, .activityWorkerLimitExceeded, .executionLimitExceeded, .stateMachineLimitExceeded, .throttling:
            return true
        default:
            return nil
        }
    }
}

private extension SmokeHTTPClient.HTTPClientError {
    func isRetriable() -> Bool {
        if let typedError = self.cause as? StepFunctionsError, let isRetriable = typedError.isRetriable() {
            return isRetriable
        } else {
            return self.isRetriableAccordingToCategory
        }
    }
}

/**
 AWS Client for the StepFunctions service.
 */
public struct AWSStepFunctionsClient<InvocationReportingType: HTTPClientCoreInvocationReporting>: StepFunctionsClientProtocol {
    let httpClient: HTTPOperationsClient
    let ownsHttpClients: Bool
    let awsRegion: AWSRegion
    let service: String
    let target: String?
    let retryConfiguration: HTTPClientRetryConfiguration
    let retryOnErrorProvider: (SmokeHTTPClient.HTTPClientError) -> Bool
    let credentialsProvider: CredentialsProvider
    
    public let reporting: InvocationReportingType

    let operationsReporting: StepFunctionsOperationsReporting
    let invocationsReporting: StepFunctionsInvocationsReporting<InvocationReportingType>
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                endpointHostName: String,
                endpointPort: Int = 443,
                requiresTLS: Bool? = nil,
                service: String = "states",
                contentType: String = "application/x-amz-json-1.0",
                target: String? = "AWSStepFunctions",
                connectionTimeoutSeconds: Int64 = 10,
                retryConfiguration: HTTPClientRetryConfiguration = .default,
                eventLoopProvider: HTTPClient.EventLoopGroupProvider = .createNew,
                connectionPoolConfiguration: HTTPClient.Configuration.ConnectionPool? = nil,
                reportingConfiguration: SmokeAWSClientReportingConfiguration<StepFunctionsModelOperations>
                    = SmokeAWSClientReportingConfiguration<StepFunctionsModelOperations>() ) {
        let useTLS = requiresTLS ?? AWSHTTPClientDelegate.requiresTLS(forEndpointPort: endpointPort)
        let clientDelegate = JSONAWSHttpClientDelegate<StepFunctionsError>(requiresTLS: useTLS)

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
        self.target = target
        self.credentialsProvider = credentialsProvider
        self.retryConfiguration = retryConfiguration
        self.reporting = reporting
        self.retryOnErrorProvider = { error in error.isRetriable() }
        self.operationsReporting = StepFunctionsOperationsReporting(clientName: "AWSStepFunctionsClient", reportingConfiguration: reportingConfiguration)
        self.invocationsReporting = StepFunctionsInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
    }
    
    internal init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                httpClient: HTTPOperationsClient,
                service: String,
                target: String?,
                retryOnErrorProvider: @escaping (SmokeHTTPClient.HTTPClientError) -> Bool,
                retryConfiguration: HTTPClientRetryConfiguration,
                operationsReporting: StepFunctionsOperationsReporting) {
        self.httpClient = httpClient
        self.ownsHttpClients = false
        self.awsRegion = awsRegion
        self.service = service
        self.target = target
        self.credentialsProvider = credentialsProvider
        self.retryConfiguration = retryConfiguration
        self.reporting = reporting
        self.retryOnErrorProvider = retryOnErrorProvider
        self.operationsReporting = operationsReporting
        self.invocationsReporting = StepFunctionsInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
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
     Invokes the CreateActivity operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateActivityInput object being passed to this operation.
         - completion: The CreateActivityOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateActivityOutput
           object will be validated before being returned to caller.
           The possible errors are: activityLimitExceeded, invalidName, tooManyTags.
     */
    public func createActivityAsync(
            input: StepFunctionsModel.CreateActivityInput, 
            completion: @escaping (Result<StepFunctionsModel.CreateActivityOutput, StepFunctionsError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.createActivity.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createActivity,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateActivityOperationHTTPRequestInput(encodable: input)

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
     Invokes the CreateActivity operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateActivityInput object being passed to this operation.
     - Returns: The CreateActivityOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: activityLimitExceeded, invalidName, tooManyTags.
     */
    public func createActivitySync(
            input: StepFunctionsModel.CreateActivityInput) throws -> StepFunctionsModel.CreateActivityOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.createActivity.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createActivity,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateActivityOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the CreateStateMachine operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateStateMachineInput object being passed to this operation.
         - completion: The CreateStateMachineOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateStateMachineOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, invalidArn, invalidDefinition, invalidLoggingConfiguration, invalidName, invalidTracingConfiguration, stateMachineAlreadyExists, stateMachineDeleting, stateMachineLimitExceeded, stateMachineTypeNotSupported, tooManyTags, validation.
     */
    public func createStateMachineAsync(
            input: StepFunctionsModel.CreateStateMachineInput, 
            completion: @escaping (Result<StepFunctionsModel.CreateStateMachineOutput, StepFunctionsError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.createStateMachine.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createStateMachine,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateStateMachineOperationHTTPRequestInput(encodable: input)

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
     Invokes the CreateStateMachine operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateStateMachineInput object being passed to this operation.
     - Returns: The CreateStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, invalidArn, invalidDefinition, invalidLoggingConfiguration, invalidName, invalidTracingConfiguration, stateMachineAlreadyExists, stateMachineDeleting, stateMachineLimitExceeded, stateMachineTypeNotSupported, tooManyTags, validation.
     */
    public func createStateMachineSync(
            input: StepFunctionsModel.CreateStateMachineInput) throws -> StepFunctionsModel.CreateStateMachineOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.createStateMachine.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createStateMachine,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateStateMachineOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the CreateStateMachineAlias operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateStateMachineAliasInput object being passed to this operation.
         - completion: The CreateStateMachineAliasOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateStateMachineAliasOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, invalidArn, invalidName, resourceNotFound, serviceQuotaExceeded, stateMachineDeleting, validation.
     */
    public func createStateMachineAliasAsync(
            input: StepFunctionsModel.CreateStateMachineAliasInput, 
            completion: @escaping (Result<StepFunctionsModel.CreateStateMachineAliasOutput, StepFunctionsError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.createStateMachineAlias.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createStateMachineAlias,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateStateMachineAliasOperationHTTPRequestInput(encodable: input)

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
     Invokes the CreateStateMachineAlias operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateStateMachineAliasInput object being passed to this operation.
     - Returns: The CreateStateMachineAliasOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, invalidArn, invalidName, resourceNotFound, serviceQuotaExceeded, stateMachineDeleting, validation.
     */
    public func createStateMachineAliasSync(
            input: StepFunctionsModel.CreateStateMachineAliasInput) throws -> StepFunctionsModel.CreateStateMachineAliasOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.createStateMachineAlias.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createStateMachineAlias,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateStateMachineAliasOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteActivity operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteActivityInput object being passed to this operation.
         - completion: The DeleteActivityOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteActivityOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn.
     */
    public func deleteActivityAsync(
            input: StepFunctionsModel.DeleteActivityInput, 
            completion: @escaping (Result<StepFunctionsModel.DeleteActivityOutput, StepFunctionsError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.deleteActivity.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteActivity,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteActivityOperationHTTPRequestInput(encodable: input)

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
     Invokes the DeleteActivity operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteActivityInput object being passed to this operation.
     - Returns: The DeleteActivityOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn.
     */
    public func deleteActivitySync(
            input: StepFunctionsModel.DeleteActivityInput) throws -> StepFunctionsModel.DeleteActivityOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.deleteActivity.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteActivity,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteActivityOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteStateMachine operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteStateMachineInput object being passed to this operation.
         - completion: The DeleteStateMachineOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteStateMachineOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, validation.
     */
    public func deleteStateMachineAsync(
            input: StepFunctionsModel.DeleteStateMachineInput, 
            completion: @escaping (Result<StepFunctionsModel.DeleteStateMachineOutput, StepFunctionsError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.deleteStateMachine.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteStateMachine,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteStateMachineOperationHTTPRequestInput(encodable: input)

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
     Invokes the DeleteStateMachine operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteStateMachineInput object being passed to this operation.
     - Returns: The DeleteStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, validation.
     */
    public func deleteStateMachineSync(
            input: StepFunctionsModel.DeleteStateMachineInput) throws -> StepFunctionsModel.DeleteStateMachineOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.deleteStateMachine.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteStateMachine,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteStateMachineOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteStateMachineAlias operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteStateMachineAliasInput object being passed to this operation.
         - completion: The DeleteStateMachineAliasOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteStateMachineAliasOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, invalidArn, resourceNotFound, validation.
     */
    public func deleteStateMachineAliasAsync(
            input: StepFunctionsModel.DeleteStateMachineAliasInput, 
            completion: @escaping (Result<StepFunctionsModel.DeleteStateMachineAliasOutput, StepFunctionsError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.deleteStateMachineAlias.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteStateMachineAlias,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteStateMachineAliasOperationHTTPRequestInput(encodable: input)

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
     Invokes the DeleteStateMachineAlias operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteStateMachineAliasInput object being passed to this operation.
     - Returns: The DeleteStateMachineAliasOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, invalidArn, resourceNotFound, validation.
     */
    public func deleteStateMachineAliasSync(
            input: StepFunctionsModel.DeleteStateMachineAliasInput) throws -> StepFunctionsModel.DeleteStateMachineAliasOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.deleteStateMachineAlias.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteStateMachineAlias,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteStateMachineAliasOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteStateMachineVersion operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteStateMachineVersionInput object being passed to this operation.
         - completion: The DeleteStateMachineVersionOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteStateMachineVersionOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, invalidArn, validation.
     */
    public func deleteStateMachineVersionAsync(
            input: StepFunctionsModel.DeleteStateMachineVersionInput, 
            completion: @escaping (Result<StepFunctionsModel.DeleteStateMachineVersionOutput, StepFunctionsError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.deleteStateMachineVersion.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteStateMachineVersion,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteStateMachineVersionOperationHTTPRequestInput(encodable: input)

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
     Invokes the DeleteStateMachineVersion operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteStateMachineVersionInput object being passed to this operation.
     - Returns: The DeleteStateMachineVersionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, invalidArn, validation.
     */
    public func deleteStateMachineVersionSync(
            input: StepFunctionsModel.DeleteStateMachineVersionInput) throws -> StepFunctionsModel.DeleteStateMachineVersionOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.deleteStateMachineVersion.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteStateMachineVersion,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteStateMachineVersionOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeActivity operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeActivityInput object being passed to this operation.
         - completion: The DescribeActivityOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeActivityOutput
           object will be validated before being returned to caller.
           The possible errors are: activityDoesNotExist, invalidArn.
     */
    public func describeActivityAsync(
            input: StepFunctionsModel.DescribeActivityInput, 
            completion: @escaping (Result<StepFunctionsModel.DescribeActivityOutput, StepFunctionsError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.describeActivity.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeActivity,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeActivityOperationHTTPRequestInput(encodable: input)

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
     Invokes the DescribeActivity operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeActivityInput object being passed to this operation.
     - Returns: The DescribeActivityOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: activityDoesNotExist, invalidArn.
     */
    public func describeActivitySync(
            input: StepFunctionsModel.DescribeActivityInput) throws -> StepFunctionsModel.DescribeActivityOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.describeActivity.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeActivity,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeActivityOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeExecutionInput object being passed to this operation.
         - completion: The DescribeExecutionOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeExecutionOutput
           object will be validated before being returned to caller.
           The possible errors are: executionDoesNotExist, invalidArn.
     */
    public func describeExecutionAsync(
            input: StepFunctionsModel.DescribeExecutionInput, 
            completion: @escaping (Result<StepFunctionsModel.DescribeExecutionOutput, StepFunctionsError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.describeExecution.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeExecution,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeExecutionOperationHTTPRequestInput(encodable: input)

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
     Invokes the DescribeExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeExecutionInput object being passed to this operation.
     - Returns: The DescribeExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn.
     */
    public func describeExecutionSync(
            input: StepFunctionsModel.DescribeExecutionInput) throws -> StepFunctionsModel.DescribeExecutionOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.describeExecution.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeExecution,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeExecutionOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeMapRun operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeMapRunInput object being passed to this operation.
         - completion: The DescribeMapRunOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeMapRunOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, resourceNotFound.
     */
    public func describeMapRunAsync(
            input: StepFunctionsModel.DescribeMapRunInput, 
            completion: @escaping (Result<StepFunctionsModel.DescribeMapRunOutput, StepFunctionsError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.describeMapRun.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeMapRun,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeMapRunOperationHTTPRequestInput(encodable: input)

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
     Invokes the DescribeMapRun operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeMapRunInput object being passed to this operation.
     - Returns: The DescribeMapRunOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound.
     */
    public func describeMapRunSync(
            input: StepFunctionsModel.DescribeMapRunInput) throws -> StepFunctionsModel.DescribeMapRunOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.describeMapRun.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeMapRun,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeMapRunOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeStateMachine operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeStateMachineInput object being passed to this operation.
         - completion: The DescribeStateMachineOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeStateMachineOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, stateMachineDoesNotExist.
     */
    public func describeStateMachineAsync(
            input: StepFunctionsModel.DescribeStateMachineInput, 
            completion: @escaping (Result<StepFunctionsModel.DescribeStateMachineOutput, StepFunctionsError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.describeStateMachine.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeStateMachine,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeStateMachineOperationHTTPRequestInput(encodable: input)

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
     Invokes the DescribeStateMachine operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeStateMachineInput object being passed to this operation.
     - Returns: The DescribeStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, stateMachineDoesNotExist.
     */
    public func describeStateMachineSync(
            input: StepFunctionsModel.DescribeStateMachineInput) throws -> StepFunctionsModel.DescribeStateMachineOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.describeStateMachine.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeStateMachine,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeStateMachineOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeStateMachineAlias operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeStateMachineAliasInput object being passed to this operation.
         - completion: The DescribeStateMachineAliasOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeStateMachineAliasOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, resourceNotFound, validation.
     */
    public func describeStateMachineAliasAsync(
            input: StepFunctionsModel.DescribeStateMachineAliasInput, 
            completion: @escaping (Result<StepFunctionsModel.DescribeStateMachineAliasOutput, StepFunctionsError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.describeStateMachineAlias.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeStateMachineAlias,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeStateMachineAliasOperationHTTPRequestInput(encodable: input)

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
     Invokes the DescribeStateMachineAlias operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeStateMachineAliasInput object being passed to this operation.
     - Returns: The DescribeStateMachineAliasOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound, validation.
     */
    public func describeStateMachineAliasSync(
            input: StepFunctionsModel.DescribeStateMachineAliasInput) throws -> StepFunctionsModel.DescribeStateMachineAliasOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.describeStateMachineAlias.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeStateMachineAlias,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeStateMachineAliasOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeStateMachineForExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeStateMachineForExecutionInput object being passed to this operation.
         - completion: The DescribeStateMachineForExecutionOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeStateMachineForExecutionOutput
           object will be validated before being returned to caller.
           The possible errors are: executionDoesNotExist, invalidArn.
     */
    public func describeStateMachineForExecutionAsync(
            input: StepFunctionsModel.DescribeStateMachineForExecutionInput, 
            completion: @escaping (Result<StepFunctionsModel.DescribeStateMachineForExecutionOutput, StepFunctionsError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.describeStateMachineForExecution.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeStateMachineForExecution,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeStateMachineForExecutionOperationHTTPRequestInput(encodable: input)

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
     Invokes the DescribeStateMachineForExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeStateMachineForExecutionInput object being passed to this operation.
     - Returns: The DescribeStateMachineForExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn.
     */
    public func describeStateMachineForExecutionSync(
            input: StepFunctionsModel.DescribeStateMachineForExecutionInput) throws -> StepFunctionsModel.DescribeStateMachineForExecutionOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.describeStateMachineForExecution.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeStateMachineForExecution,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeStateMachineForExecutionOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetActivityTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetActivityTaskInput object being passed to this operation.
         - completion: The GetActivityTaskOutput object or an error will be passed to this 
           callback when the operation is complete. The GetActivityTaskOutput
           object will be validated before being returned to caller.
           The possible errors are: activityDoesNotExist, activityWorkerLimitExceeded, invalidArn.
     */
    public func getActivityTaskAsync(
            input: StepFunctionsModel.GetActivityTaskInput, 
            completion: @escaping (Result<StepFunctionsModel.GetActivityTaskOutput, StepFunctionsError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.getActivityTask.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getActivityTask,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetActivityTaskOperationHTTPRequestInput(encodable: input)

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
     Invokes the GetActivityTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetActivityTaskInput object being passed to this operation.
     - Returns: The GetActivityTaskOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: activityDoesNotExist, activityWorkerLimitExceeded, invalidArn.
     */
    public func getActivityTaskSync(
            input: StepFunctionsModel.GetActivityTaskInput) throws -> StepFunctionsModel.GetActivityTaskOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.getActivityTask.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getActivityTask,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetActivityTaskOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetExecutionHistory operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetExecutionHistoryInput object being passed to this operation.
         - completion: The GetExecutionHistoryOutput object or an error will be passed to this 
           callback when the operation is complete. The GetExecutionHistoryOutput
           object will be validated before being returned to caller.
           The possible errors are: executionDoesNotExist, invalidArn, invalidToken.
     */
    public func getExecutionHistoryAsync(
            input: StepFunctionsModel.GetExecutionHistoryInput, 
            completion: @escaping (Result<StepFunctionsModel.GetExecutionHistoryOutput, StepFunctionsError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.getExecutionHistory.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getExecutionHistory,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetExecutionHistoryOperationHTTPRequestInput(encodable: input)

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
     Invokes the GetExecutionHistory operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetExecutionHistoryInput object being passed to this operation.
     - Returns: The GetExecutionHistoryOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn, invalidToken.
     */
    public func getExecutionHistorySync(
            input: StepFunctionsModel.GetExecutionHistoryInput) throws -> StepFunctionsModel.GetExecutionHistoryOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.getExecutionHistory.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getExecutionHistory,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetExecutionHistoryOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListActivities operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListActivitiesInput object being passed to this operation.
         - completion: The ListActivitiesOutput object or an error will be passed to this 
           callback when the operation is complete. The ListActivitiesOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidToken.
     */
    public func listActivitiesAsync(
            input: StepFunctionsModel.ListActivitiesInput, 
            completion: @escaping (Result<StepFunctionsModel.ListActivitiesOutput, StepFunctionsError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.listActivities.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listActivities,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListActivitiesOperationHTTPRequestInput(encodable: input)

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
     Invokes the ListActivities operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListActivitiesInput object being passed to this operation.
     - Returns: The ListActivitiesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken.
     */
    public func listActivitiesSync(
            input: StepFunctionsModel.ListActivitiesInput) throws -> StepFunctionsModel.ListActivitiesOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.listActivities.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listActivities,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListActivitiesOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListExecutions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListExecutionsInput object being passed to this operation.
         - completion: The ListExecutionsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListExecutionsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, invalidToken, resourceNotFound, stateMachineDoesNotExist, stateMachineTypeNotSupported, validation.
     */
    public func listExecutionsAsync(
            input: StepFunctionsModel.ListExecutionsInput, 
            completion: @escaping (Result<StepFunctionsModel.ListExecutionsOutput, StepFunctionsError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.listExecutions.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listExecutions,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListExecutionsOperationHTTPRequestInput(encodable: input)

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
     Invokes the ListExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListExecutionsInput object being passed to this operation.
     - Returns: The ListExecutionsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidToken, resourceNotFound, stateMachineDoesNotExist, stateMachineTypeNotSupported, validation.
     */
    public func listExecutionsSync(
            input: StepFunctionsModel.ListExecutionsInput) throws -> StepFunctionsModel.ListExecutionsOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.listExecutions.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listExecutions,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListExecutionsOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListMapRuns operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListMapRunsInput object being passed to this operation.
         - completion: The ListMapRunsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListMapRunsOutput
           object will be validated before being returned to caller.
           The possible errors are: executionDoesNotExist, invalidArn, invalidToken.
     */
    public func listMapRunsAsync(
            input: StepFunctionsModel.ListMapRunsInput, 
            completion: @escaping (Result<StepFunctionsModel.ListMapRunsOutput, StepFunctionsError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.listMapRuns.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listMapRuns,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListMapRunsOperationHTTPRequestInput(encodable: input)

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
     Invokes the ListMapRuns operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListMapRunsInput object being passed to this operation.
     - Returns: The ListMapRunsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn, invalidToken.
     */
    public func listMapRunsSync(
            input: StepFunctionsModel.ListMapRunsInput) throws -> StepFunctionsModel.ListMapRunsOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.listMapRuns.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listMapRuns,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListMapRunsOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListStateMachineAliases operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListStateMachineAliasesInput object being passed to this operation.
         - completion: The ListStateMachineAliasesOutput object or an error will be passed to this 
           callback when the operation is complete. The ListStateMachineAliasesOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, invalidToken, resourceNotFound, stateMachineDeleting, stateMachineDoesNotExist.
     */
    public func listStateMachineAliasesAsync(
            input: StepFunctionsModel.ListStateMachineAliasesInput, 
            completion: @escaping (Result<StepFunctionsModel.ListStateMachineAliasesOutput, StepFunctionsError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.listStateMachineAliases.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listStateMachineAliases,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListStateMachineAliasesOperationHTTPRequestInput(encodable: input)

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
     Invokes the ListStateMachineAliases operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListStateMachineAliasesInput object being passed to this operation.
     - Returns: The ListStateMachineAliasesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidToken, resourceNotFound, stateMachineDeleting, stateMachineDoesNotExist.
     */
    public func listStateMachineAliasesSync(
            input: StepFunctionsModel.ListStateMachineAliasesInput) throws -> StepFunctionsModel.ListStateMachineAliasesOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.listStateMachineAliases.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listStateMachineAliases,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListStateMachineAliasesOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListStateMachineVersions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListStateMachineVersionsInput object being passed to this operation.
         - completion: The ListStateMachineVersionsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListStateMachineVersionsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, invalidToken, validation.
     */
    public func listStateMachineVersionsAsync(
            input: StepFunctionsModel.ListStateMachineVersionsInput, 
            completion: @escaping (Result<StepFunctionsModel.ListStateMachineVersionsOutput, StepFunctionsError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.listStateMachineVersions.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listStateMachineVersions,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListStateMachineVersionsOperationHTTPRequestInput(encodable: input)

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
     Invokes the ListStateMachineVersions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListStateMachineVersionsInput object being passed to this operation.
     - Returns: The ListStateMachineVersionsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidToken, validation.
     */
    public func listStateMachineVersionsSync(
            input: StepFunctionsModel.ListStateMachineVersionsInput) throws -> StepFunctionsModel.ListStateMachineVersionsOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.listStateMachineVersions.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listStateMachineVersions,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListStateMachineVersionsOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListStateMachines operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListStateMachinesInput object being passed to this operation.
         - completion: The ListStateMachinesOutput object or an error will be passed to this 
           callback when the operation is complete. The ListStateMachinesOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidToken.
     */
    public func listStateMachinesAsync(
            input: StepFunctionsModel.ListStateMachinesInput, 
            completion: @escaping (Result<StepFunctionsModel.ListStateMachinesOutput, StepFunctionsError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.listStateMachines.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listStateMachines,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListStateMachinesOperationHTTPRequestInput(encodable: input)

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
     Invokes the ListStateMachines operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListStateMachinesInput object being passed to this operation.
     - Returns: The ListStateMachinesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken.
     */
    public func listStateMachinesSync(
            input: StepFunctionsModel.ListStateMachinesInput) throws -> StepFunctionsModel.ListStateMachinesOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.listStateMachines.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listStateMachines,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListStateMachinesOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
         - completion: The ListTagsForResourceOutput object or an error will be passed to this 
           callback when the operation is complete. The ListTagsForResourceOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, resourceNotFound.
     */
    public func listTagsForResourceAsync(
            input: StepFunctionsModel.ListTagsForResourceInput, 
            completion: @escaping (Result<StepFunctionsModel.ListTagsForResourceOutput, StepFunctionsError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.listTagsForResource.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listTagsForResource,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListTagsForResourceOperationHTTPRequestInput(encodable: input)

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
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: The ListTagsForResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound.
     */
    public func listTagsForResourceSync(
            input: StepFunctionsModel.ListTagsForResourceInput) throws -> StepFunctionsModel.ListTagsForResourceOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.listTagsForResource.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listTagsForResource,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListTagsForResourceOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the PublishStateMachineVersion operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PublishStateMachineVersionInput object being passed to this operation.
         - completion: The PublishStateMachineVersionOutput object or an error will be passed to this 
           callback when the operation is complete. The PublishStateMachineVersionOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, invalidArn, serviceQuotaExceeded, stateMachineDeleting, stateMachineDoesNotExist, validation.
     */
    public func publishStateMachineVersionAsync(
            input: StepFunctionsModel.PublishStateMachineVersionInput, 
            completion: @escaping (Result<StepFunctionsModel.PublishStateMachineVersionOutput, StepFunctionsError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.publishStateMachineVersion.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.publishStateMachineVersion,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PublishStateMachineVersionOperationHTTPRequestInput(encodable: input)

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
     Invokes the PublishStateMachineVersion operation waiting for the response before returning.

     - Parameters:
         - input: The validated PublishStateMachineVersionInput object being passed to this operation.
     - Returns: The PublishStateMachineVersionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, invalidArn, serviceQuotaExceeded, stateMachineDeleting, stateMachineDoesNotExist, validation.
     */
    public func publishStateMachineVersionSync(
            input: StepFunctionsModel.PublishStateMachineVersionInput) throws -> StepFunctionsModel.PublishStateMachineVersionOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.publishStateMachineVersion.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.publishStateMachineVersion,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PublishStateMachineVersionOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the SendTaskFailure operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SendTaskFailureInput object being passed to this operation.
         - completion: The SendTaskFailureOutput object or an error will be passed to this 
           callback when the operation is complete. The SendTaskFailureOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidToken, taskDoesNotExist, taskTimedOut.
     */
    public func sendTaskFailureAsync(
            input: StepFunctionsModel.SendTaskFailureInput, 
            completion: @escaping (Result<StepFunctionsModel.SendTaskFailureOutput, StepFunctionsError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.sendTaskFailure.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.sendTaskFailure,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = SendTaskFailureOperationHTTPRequestInput(encodable: input)

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
     Invokes the SendTaskFailure operation waiting for the response before returning.

     - Parameters:
         - input: The validated SendTaskFailureInput object being passed to this operation.
     - Returns: The SendTaskFailureOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken, taskDoesNotExist, taskTimedOut.
     */
    public func sendTaskFailureSync(
            input: StepFunctionsModel.SendTaskFailureInput) throws -> StepFunctionsModel.SendTaskFailureOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.sendTaskFailure.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.sendTaskFailure,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = SendTaskFailureOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the SendTaskHeartbeat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SendTaskHeartbeatInput object being passed to this operation.
         - completion: The SendTaskHeartbeatOutput object or an error will be passed to this 
           callback when the operation is complete. The SendTaskHeartbeatOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidToken, taskDoesNotExist, taskTimedOut.
     */
    public func sendTaskHeartbeatAsync(
            input: StepFunctionsModel.SendTaskHeartbeatInput, 
            completion: @escaping (Result<StepFunctionsModel.SendTaskHeartbeatOutput, StepFunctionsError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.sendTaskHeartbeat.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.sendTaskHeartbeat,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = SendTaskHeartbeatOperationHTTPRequestInput(encodable: input)

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
     Invokes the SendTaskHeartbeat operation waiting for the response before returning.

     - Parameters:
         - input: The validated SendTaskHeartbeatInput object being passed to this operation.
     - Returns: The SendTaskHeartbeatOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken, taskDoesNotExist, taskTimedOut.
     */
    public func sendTaskHeartbeatSync(
            input: StepFunctionsModel.SendTaskHeartbeatInput) throws -> StepFunctionsModel.SendTaskHeartbeatOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.sendTaskHeartbeat.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.sendTaskHeartbeat,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = SendTaskHeartbeatOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the SendTaskSuccess operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SendTaskSuccessInput object being passed to this operation.
         - completion: The SendTaskSuccessOutput object or an error will be passed to this 
           callback when the operation is complete. The SendTaskSuccessOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidOutput, invalidToken, taskDoesNotExist, taskTimedOut.
     */
    public func sendTaskSuccessAsync(
            input: StepFunctionsModel.SendTaskSuccessInput, 
            completion: @escaping (Result<StepFunctionsModel.SendTaskSuccessOutput, StepFunctionsError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.sendTaskSuccess.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.sendTaskSuccess,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = SendTaskSuccessOperationHTTPRequestInput(encodable: input)

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
     Invokes the SendTaskSuccess operation waiting for the response before returning.

     - Parameters:
         - input: The validated SendTaskSuccessInput object being passed to this operation.
     - Returns: The SendTaskSuccessOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOutput, invalidToken, taskDoesNotExist, taskTimedOut.
     */
    public func sendTaskSuccessSync(
            input: StepFunctionsModel.SendTaskSuccessInput) throws -> StepFunctionsModel.SendTaskSuccessOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.sendTaskSuccess.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.sendTaskSuccess,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = SendTaskSuccessOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the StartExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartExecutionInput object being passed to this operation.
         - completion: The StartExecutionOutput object or an error will be passed to this 
           callback when the operation is complete. The StartExecutionOutput
           object will be validated before being returned to caller.
           The possible errors are: executionAlreadyExists, executionLimitExceeded, invalidArn, invalidExecutionInput, invalidName, stateMachineDeleting, stateMachineDoesNotExist, validation.
     */
    public func startExecutionAsync(
            input: StepFunctionsModel.StartExecutionInput, 
            completion: @escaping (Result<StepFunctionsModel.StartExecutionOutput, StepFunctionsError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.startExecution.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.startExecution,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = StartExecutionOperationHTTPRequestInput(encodable: input)

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
     Invokes the StartExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartExecutionInput object being passed to this operation.
     - Returns: The StartExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionAlreadyExists, executionLimitExceeded, invalidArn, invalidExecutionInput, invalidName, stateMachineDeleting, stateMachineDoesNotExist, validation.
     */
    public func startExecutionSync(
            input: StepFunctionsModel.StartExecutionInput) throws -> StepFunctionsModel.StartExecutionOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.startExecution.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.startExecution,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = StartExecutionOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the StartSyncExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartSyncExecutionInput object being passed to this operation.
         - completion: The StartSyncExecutionOutput object or an error will be passed to this 
           callback when the operation is complete. The StartSyncExecutionOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, invalidExecutionInput, invalidName, stateMachineDeleting, stateMachineDoesNotExist, stateMachineTypeNotSupported.
     */
    public func startSyncExecutionAsync(
            input: StepFunctionsModel.StartSyncExecutionInput, 
            completion: @escaping (Result<StepFunctionsModel.StartSyncExecutionOutput, StepFunctionsError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.startSyncExecution.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.startSyncExecution,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = StartSyncExecutionOperationHTTPRequestInput(encodable: input)

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
     Invokes the StartSyncExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartSyncExecutionInput object being passed to this operation.
     - Returns: The StartSyncExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidExecutionInput, invalidName, stateMachineDeleting, stateMachineDoesNotExist, stateMachineTypeNotSupported.
     */
    public func startSyncExecutionSync(
            input: StepFunctionsModel.StartSyncExecutionInput) throws -> StepFunctionsModel.StartSyncExecutionOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.startSyncExecution.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.startSyncExecution,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = StartSyncExecutionOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the StopExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopExecutionInput object being passed to this operation.
         - completion: The StopExecutionOutput object or an error will be passed to this 
           callback when the operation is complete. The StopExecutionOutput
           object will be validated before being returned to caller.
           The possible errors are: executionDoesNotExist, invalidArn, validation.
     */
    public func stopExecutionAsync(
            input: StepFunctionsModel.StopExecutionInput, 
            completion: @escaping (Result<StepFunctionsModel.StopExecutionOutput, StepFunctionsError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.stopExecution.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.stopExecution,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = StopExecutionOperationHTTPRequestInput(encodable: input)

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
     Invokes the StopExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopExecutionInput object being passed to this operation.
     - Returns: The StopExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn, validation.
     */
    public func stopExecutionSync(
            input: StepFunctionsModel.StopExecutionInput) throws -> StepFunctionsModel.StopExecutionOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.stopExecution.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.stopExecution,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = StopExecutionOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the TagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
         - completion: The TagResourceOutput object or an error will be passed to this 
           callback when the operation is complete. The TagResourceOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, resourceNotFound, tooManyTags.
     */
    public func tagResourceAsync(
            input: StepFunctionsModel.TagResourceInput, 
            completion: @escaping (Result<StepFunctionsModel.TagResourceOutput, StepFunctionsError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.tagResource.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.tagResource,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = TagResourceOperationHTTPRequestInput(encodable: input)

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
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Returns: The TagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound, tooManyTags.
     */
    public func tagResourceSync(
            input: StepFunctionsModel.TagResourceInput) throws -> StepFunctionsModel.TagResourceOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.tagResource.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.tagResource,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = TagResourceOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UntagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
         - completion: The UntagResourceOutput object or an error will be passed to this 
           callback when the operation is complete. The UntagResourceOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, resourceNotFound.
     */
    public func untagResourceAsync(
            input: StepFunctionsModel.UntagResourceInput, 
            completion: @escaping (Result<StepFunctionsModel.UntagResourceOutput, StepFunctionsError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.untagResource.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.untagResource,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UntagResourceOperationHTTPRequestInput(encodable: input)

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
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Returns: The UntagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound.
     */
    public func untagResourceSync(
            input: StepFunctionsModel.UntagResourceInput) throws -> StepFunctionsModel.UntagResourceOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.untagResource.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.untagResource,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UntagResourceOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UpdateMapRun operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateMapRunInput object being passed to this operation.
         - completion: The UpdateMapRunOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateMapRunOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, resourceNotFound, validation.
     */
    public func updateMapRunAsync(
            input: StepFunctionsModel.UpdateMapRunInput, 
            completion: @escaping (Result<StepFunctionsModel.UpdateMapRunOutput, StepFunctionsError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.updateMapRun.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateMapRun,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateMapRunOperationHTTPRequestInput(encodable: input)

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
     Invokes the UpdateMapRun operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateMapRunInput object being passed to this operation.
     - Returns: The UpdateMapRunOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound, validation.
     */
    public func updateMapRunSync(
            input: StepFunctionsModel.UpdateMapRunInput) throws -> StepFunctionsModel.UpdateMapRunOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.updateMapRun.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateMapRun,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateMapRunOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UpdateStateMachine operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateStateMachineInput object being passed to this operation.
         - completion: The UpdateStateMachineOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateStateMachineOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, invalidArn, invalidDefinition, invalidLoggingConfiguration, invalidTracingConfiguration, missingRequiredParameter, serviceQuotaExceeded, stateMachineDeleting, stateMachineDoesNotExist, validation.
     */
    public func updateStateMachineAsync(
            input: StepFunctionsModel.UpdateStateMachineInput, 
            completion: @escaping (Result<StepFunctionsModel.UpdateStateMachineOutput, StepFunctionsError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.updateStateMachine.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateStateMachine,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateStateMachineOperationHTTPRequestInput(encodable: input)

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
     Invokes the UpdateStateMachine operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateStateMachineInput object being passed to this operation.
     - Returns: The UpdateStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, invalidArn, invalidDefinition, invalidLoggingConfiguration, invalidTracingConfiguration, missingRequiredParameter, serviceQuotaExceeded, stateMachineDeleting, stateMachineDoesNotExist, validation.
     */
    public func updateStateMachineSync(
            input: StepFunctionsModel.UpdateStateMachineInput) throws -> StepFunctionsModel.UpdateStateMachineOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.updateStateMachine.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateStateMachine,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateStateMachineOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UpdateStateMachineAlias operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateStateMachineAliasInput object being passed to this operation.
         - completion: The UpdateStateMachineAliasOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateStateMachineAliasOutput
           object will be validated before being returned to caller.
           The possible errors are: conflict, invalidArn, resourceNotFound, validation.
     */
    public func updateStateMachineAliasAsync(
            input: StepFunctionsModel.UpdateStateMachineAliasInput, 
            completion: @escaping (Result<StepFunctionsModel.UpdateStateMachineAliasOutput, StepFunctionsError>) -> ()) throws {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.updateStateMachineAlias.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateStateMachineAlias,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateStateMachineAliasOperationHTTPRequestInput(encodable: input)

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
     Invokes the UpdateStateMachineAlias operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateStateMachineAliasInput object being passed to this operation.
     - Returns: The UpdateStateMachineAliasOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, invalidArn, resourceNotFound, validation.
     */
    public func updateStateMachineAliasSync(
            input: StepFunctionsModel.UpdateStateMachineAliasInput) throws -> StepFunctionsModel.UpdateStateMachineAliasOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.updateStateMachineAlias.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateStateMachineAlias,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateStateMachineAliasOperationHTTPRequestInput(encodable: input)

        do {
            return try httpClient.executeSyncRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }
    
    #if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)

    /**
     Invokes the CreateActivity operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateActivityInput object being passed to this operation.
     - Returns: The CreateActivityOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: activityLimitExceeded, invalidName, tooManyTags.
     */
    public func createActivity(
            input: StepFunctionsModel.CreateActivityInput) async throws -> StepFunctionsModel.CreateActivityOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.createActivity.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createActivity,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateActivityOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the CreateStateMachine operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateStateMachineInput object being passed to this operation.
     - Returns: The CreateStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, invalidArn, invalidDefinition, invalidLoggingConfiguration, invalidName, invalidTracingConfiguration, stateMachineAlreadyExists, stateMachineDeleting, stateMachineLimitExceeded, stateMachineTypeNotSupported, tooManyTags, validation.
     */
    public func createStateMachine(
            input: StepFunctionsModel.CreateStateMachineInput) async throws -> StepFunctionsModel.CreateStateMachineOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.createStateMachine.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createStateMachine,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateStateMachineOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the CreateStateMachineAlias operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateStateMachineAliasInput object being passed to this operation.
     - Returns: The CreateStateMachineAliasOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, invalidArn, invalidName, resourceNotFound, serviceQuotaExceeded, stateMachineDeleting, validation.
     */
    public func createStateMachineAlias(
            input: StepFunctionsModel.CreateStateMachineAliasInput) async throws -> StepFunctionsModel.CreateStateMachineAliasOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.createStateMachineAlias.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.createStateMachineAlias,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = CreateStateMachineAliasOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteActivity operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteActivityInput object being passed to this operation.
     - Returns: The DeleteActivityOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn.
     */
    public func deleteActivity(
            input: StepFunctionsModel.DeleteActivityInput) async throws -> StepFunctionsModel.DeleteActivityOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.deleteActivity.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteActivity,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteActivityOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteStateMachine operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteStateMachineInput object being passed to this operation.
     - Returns: The DeleteStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, validation.
     */
    public func deleteStateMachine(
            input: StepFunctionsModel.DeleteStateMachineInput) async throws -> StepFunctionsModel.DeleteStateMachineOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.deleteStateMachine.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteStateMachine,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteStateMachineOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteStateMachineAlias operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteStateMachineAliasInput object being passed to this operation.
     - Returns: The DeleteStateMachineAliasOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, invalidArn, resourceNotFound, validation.
     */
    public func deleteStateMachineAlias(
            input: StepFunctionsModel.DeleteStateMachineAliasInput) async throws -> StepFunctionsModel.DeleteStateMachineAliasOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.deleteStateMachineAlias.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteStateMachineAlias,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteStateMachineAliasOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DeleteStateMachineVersion operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteStateMachineVersionInput object being passed to this operation.
     - Returns: The DeleteStateMachineVersionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, invalidArn, validation.
     */
    public func deleteStateMachineVersion(
            input: StepFunctionsModel.DeleteStateMachineVersionInput) async throws -> StepFunctionsModel.DeleteStateMachineVersionOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.deleteStateMachineVersion.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.deleteStateMachineVersion,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DeleteStateMachineVersionOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeActivity operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeActivityInput object being passed to this operation.
     - Returns: The DescribeActivityOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: activityDoesNotExist, invalidArn.
     */
    public func describeActivity(
            input: StepFunctionsModel.DescribeActivityInput) async throws -> StepFunctionsModel.DescribeActivityOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.describeActivity.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeActivity,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeActivityOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeExecution operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeExecutionInput object being passed to this operation.
     - Returns: The DescribeExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn.
     */
    public func describeExecution(
            input: StepFunctionsModel.DescribeExecutionInput) async throws -> StepFunctionsModel.DescribeExecutionOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.describeExecution.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeExecution,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeExecutionOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeMapRun operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeMapRunInput object being passed to this operation.
     - Returns: The DescribeMapRunOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound.
     */
    public func describeMapRun(
            input: StepFunctionsModel.DescribeMapRunInput) async throws -> StepFunctionsModel.DescribeMapRunOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.describeMapRun.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeMapRun,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeMapRunOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeStateMachine operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeStateMachineInput object being passed to this operation.
     - Returns: The DescribeStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, stateMachineDoesNotExist.
     */
    public func describeStateMachine(
            input: StepFunctionsModel.DescribeStateMachineInput) async throws -> StepFunctionsModel.DescribeStateMachineOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.describeStateMachine.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeStateMachine,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeStateMachineOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeStateMachineAlias operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeStateMachineAliasInput object being passed to this operation.
     - Returns: The DescribeStateMachineAliasOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound, validation.
     */
    public func describeStateMachineAlias(
            input: StepFunctionsModel.DescribeStateMachineAliasInput) async throws -> StepFunctionsModel.DescribeStateMachineAliasOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.describeStateMachineAlias.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeStateMachineAlias,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeStateMachineAliasOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the DescribeStateMachineForExecution operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeStateMachineForExecutionInput object being passed to this operation.
     - Returns: The DescribeStateMachineForExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn.
     */
    public func describeStateMachineForExecution(
            input: StepFunctionsModel.DescribeStateMachineForExecutionInput) async throws -> StepFunctionsModel.DescribeStateMachineForExecutionOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.describeStateMachineForExecution.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.describeStateMachineForExecution,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = DescribeStateMachineForExecutionOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetActivityTask operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetActivityTaskInput object being passed to this operation.
     - Returns: The GetActivityTaskOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: activityDoesNotExist, activityWorkerLimitExceeded, invalidArn.
     */
    public func getActivityTask(
            input: StepFunctionsModel.GetActivityTaskInput) async throws -> StepFunctionsModel.GetActivityTaskOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.getActivityTask.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getActivityTask,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetActivityTaskOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the GetExecutionHistory operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetExecutionHistoryInput object being passed to this operation.
     - Returns: The GetExecutionHistoryOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn, invalidToken.
     */
    public func getExecutionHistory(
            input: StepFunctionsModel.GetExecutionHistoryInput) async throws -> StepFunctionsModel.GetExecutionHistoryOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.getExecutionHistory.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.getExecutionHistory,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = GetExecutionHistoryOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListActivities operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListActivitiesInput object being passed to this operation.
     - Returns: The ListActivitiesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken.
     */
    public func listActivities(
            input: StepFunctionsModel.ListActivitiesInput) async throws -> StepFunctionsModel.ListActivitiesOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.listActivities.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listActivities,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListActivitiesOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListExecutions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListExecutionsInput object being passed to this operation.
     - Returns: The ListExecutionsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidToken, resourceNotFound, stateMachineDoesNotExist, stateMachineTypeNotSupported, validation.
     */
    public func listExecutions(
            input: StepFunctionsModel.ListExecutionsInput) async throws -> StepFunctionsModel.ListExecutionsOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.listExecutions.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listExecutions,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListExecutionsOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListMapRuns operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListMapRunsInput object being passed to this operation.
     - Returns: The ListMapRunsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn, invalidToken.
     */
    public func listMapRuns(
            input: StepFunctionsModel.ListMapRunsInput) async throws -> StepFunctionsModel.ListMapRunsOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.listMapRuns.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listMapRuns,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListMapRunsOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListStateMachineAliases operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListStateMachineAliasesInput object being passed to this operation.
     - Returns: The ListStateMachineAliasesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidToken, resourceNotFound, stateMachineDeleting, stateMachineDoesNotExist.
     */
    public func listStateMachineAliases(
            input: StepFunctionsModel.ListStateMachineAliasesInput) async throws -> StepFunctionsModel.ListStateMachineAliasesOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.listStateMachineAliases.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listStateMachineAliases,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListStateMachineAliasesOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListStateMachineVersions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListStateMachineVersionsInput object being passed to this operation.
     - Returns: The ListStateMachineVersionsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidToken, validation.
     */
    public func listStateMachineVersions(
            input: StepFunctionsModel.ListStateMachineVersionsInput) async throws -> StepFunctionsModel.ListStateMachineVersionsOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.listStateMachineVersions.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listStateMachineVersions,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListStateMachineVersionsOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListStateMachines operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListStateMachinesInput object being passed to this operation.
     - Returns: The ListStateMachinesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken.
     */
    public func listStateMachines(
            input: StepFunctionsModel.ListStateMachinesInput) async throws -> StepFunctionsModel.ListStateMachinesOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.listStateMachines.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listStateMachines,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListStateMachinesOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the ListTagsForResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: The ListTagsForResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound.
     */
    public func listTagsForResource(
            input: StepFunctionsModel.ListTagsForResourceInput) async throws -> StepFunctionsModel.ListTagsForResourceOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.listTagsForResource.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.listTagsForResource,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = ListTagsForResourceOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the PublishStateMachineVersion operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PublishStateMachineVersionInput object being passed to this operation.
     - Returns: The PublishStateMachineVersionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, invalidArn, serviceQuotaExceeded, stateMachineDeleting, stateMachineDoesNotExist, validation.
     */
    public func publishStateMachineVersion(
            input: StepFunctionsModel.PublishStateMachineVersionInput) async throws -> StepFunctionsModel.PublishStateMachineVersionOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.publishStateMachineVersion.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.publishStateMachineVersion,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = PublishStateMachineVersionOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the SendTaskFailure operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SendTaskFailureInput object being passed to this operation.
     - Returns: The SendTaskFailureOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken, taskDoesNotExist, taskTimedOut.
     */
    public func sendTaskFailure(
            input: StepFunctionsModel.SendTaskFailureInput) async throws -> StepFunctionsModel.SendTaskFailureOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.sendTaskFailure.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.sendTaskFailure,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = SendTaskFailureOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the SendTaskHeartbeat operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SendTaskHeartbeatInput object being passed to this operation.
     - Returns: The SendTaskHeartbeatOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken, taskDoesNotExist, taskTimedOut.
     */
    public func sendTaskHeartbeat(
            input: StepFunctionsModel.SendTaskHeartbeatInput) async throws -> StepFunctionsModel.SendTaskHeartbeatOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.sendTaskHeartbeat.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.sendTaskHeartbeat,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = SendTaskHeartbeatOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the SendTaskSuccess operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SendTaskSuccessInput object being passed to this operation.
     - Returns: The SendTaskSuccessOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOutput, invalidToken, taskDoesNotExist, taskTimedOut.
     */
    public func sendTaskSuccess(
            input: StepFunctionsModel.SendTaskSuccessInput) async throws -> StepFunctionsModel.SendTaskSuccessOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.sendTaskSuccess.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.sendTaskSuccess,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = SendTaskSuccessOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the StartExecution operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartExecutionInput object being passed to this operation.
     - Returns: The StartExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionAlreadyExists, executionLimitExceeded, invalidArn, invalidExecutionInput, invalidName, stateMachineDeleting, stateMachineDoesNotExist, validation.
     */
    public func startExecution(
            input: StepFunctionsModel.StartExecutionInput) async throws -> StepFunctionsModel.StartExecutionOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.startExecution.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.startExecution,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = StartExecutionOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the StartSyncExecution operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartSyncExecutionInput object being passed to this operation.
     - Returns: The StartSyncExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidExecutionInput, invalidName, stateMachineDeleting, stateMachineDoesNotExist, stateMachineTypeNotSupported.
     */
    public func startSyncExecution(
            input: StepFunctionsModel.StartSyncExecutionInput) async throws -> StepFunctionsModel.StartSyncExecutionOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.startSyncExecution.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.startSyncExecution,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = StartSyncExecutionOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the StopExecution operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StopExecutionInput object being passed to this operation.
     - Returns: The StopExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn, validation.
     */
    public func stopExecution(
            input: StepFunctionsModel.StopExecutionInput) async throws -> StepFunctionsModel.StopExecutionOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.stopExecution.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.stopExecution,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = StopExecutionOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the TagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Returns: The TagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound, tooManyTags.
     */
    public func tagResource(
            input: StepFunctionsModel.TagResourceInput) async throws -> StepFunctionsModel.TagResourceOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.tagResource.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.tagResource,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = TagResourceOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UntagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Returns: The UntagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound.
     */
    public func untagResource(
            input: StepFunctionsModel.UntagResourceInput) async throws -> StepFunctionsModel.UntagResourceOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.untagResource.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.untagResource,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UntagResourceOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UpdateMapRun operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateMapRunInput object being passed to this operation.
     - Returns: The UpdateMapRunOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound, validation.
     */
    public func updateMapRun(
            input: StepFunctionsModel.UpdateMapRunInput) async throws -> StepFunctionsModel.UpdateMapRunOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.updateMapRun.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateMapRun,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateMapRunOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UpdateStateMachine operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateStateMachineInput object being passed to this operation.
     - Returns: The UpdateStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, invalidArn, invalidDefinition, invalidLoggingConfiguration, invalidTracingConfiguration, missingRequiredParameter, serviceQuotaExceeded, stateMachineDeleting, stateMachineDoesNotExist, validation.
     */
    public func updateStateMachine(
            input: StepFunctionsModel.UpdateStateMachineInput) async throws -> StepFunctionsModel.UpdateStateMachineOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.updateStateMachine.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateStateMachine,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateStateMachineOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }

    /**
     Invokes the UpdateStateMachineAlias operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateStateMachineAliasInput object being passed to this operation.
     - Returns: The UpdateStateMachineAliasOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: conflict, invalidArn, resourceNotFound, validation.
     */
    public func updateStateMachineAlias(
            input: StepFunctionsModel.UpdateStateMachineAliasInput) async throws -> StepFunctionsModel.UpdateStateMachineAliasOutput {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.updateStateMachineAlias.rawValue,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: self.invocationsReporting.updateStateMachineAlias,
                                                            handlerDelegate: handlerDelegate)
        let requestInput = UpdateStateMachineAliasOperationHTTPRequestInput(encodable: input)

        do {
            return try await httpClient.executeRetriableWithOutput(
                endpointPath: "/",
                httpMethod: .POST,
                input: requestInput,
                invocationContext: invocationContext,
                retryConfiguration: retryConfiguration,
                retryOnError: retryOnErrorProvider)
        } catch {
            let typedError: StepFunctionsError = error.asTypedError()
            throw typedError
        }
    }
    #endif
}
