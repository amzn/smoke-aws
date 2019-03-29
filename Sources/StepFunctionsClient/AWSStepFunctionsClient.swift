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
// AWSStepFunctionsClient.swift
// StepFunctionsClient
//

import Foundation
import StepFunctionsModel
import SmokeHTTPClient
import SmokeAWSCore
import SmokeAWSHttp
import NIO
import NIOHTTP1

public enum StepFunctionsClientError: Swift.Error {
    case invalidEndpoint(String)
    case unsupportedPayload
    case unknownError(String?)
}

private extension StepFunctionsError {
    func isRetriable() -> Bool {
        switch self {
        case .activityLimitExceeded, .activityWorkerLimitExceeded, .executionLimitExceeded, .stateMachineLimitExceeded:
            return true
        default:
            return false
        }
    }
}

private extension Swift.Error {
    func isRetriable() -> Bool {
        if let typedError = self as? StepFunctionsError {
            return typedError.isRetriable()
        } else {
            return true
        }
    }
}

/**
 AWS Client for the StepFunctions service.
 */
public struct AWSStepFunctionsClient: StepFunctionsClientProtocol {
    let httpClient: HTTPClient
    let awsRegion: AWSRegion
    let service: String
    let target: String?
    let retryConfiguration: HTTPClientRetryConfiguration
    let retryOnErrorProvider: (Swift.Error) -> Bool
    let credentialsProvider: CredentialsProvider
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                endpointHostName: String,
                endpointPort: Int = 443,
                service: String = "states",
                contentType: String = "application/x-amz-json-1.0",
                target: String? = "AWSStepFunctions",
                connectionTimeoutSeconds: Int = 10,
                retryConfiguration: HTTPClientRetryConfiguration = .default,
                eventLoopProvider: HTTPClient.EventLoopProvider = .spawnNewThreads) {
        let clientDelegate = JSONAWSHttpClientDelegate<StepFunctionsError>()

        self.httpClient = HTTPClient(endpointHostName: endpointHostName,
                                     endpointPort: endpointPort,
                                     contentType: contentType,
                                     clientDelegate: clientDelegate,
                                     connectionTimeoutSeconds: connectionTimeoutSeconds,
                                     eventLoopProvider: eventLoopProvider)
        self.awsRegion = awsRegion
        self.service = service
        self.target = target
        self.credentialsProvider = credentialsProvider
        self.retryConfiguration = retryConfiguration
        self.retryOnErrorProvider = { error in error.isRetriable() }
    }

    /**
     Gracefully shuts down this client. This function is idempotent and
     will handle being called multiple times.
     */
    public func close() {
        httpClient.close()
    }

    /**
     Waits for the client to be closed. If close() is not called,
     this will block forever.
     */
    public func wait() {
        httpClient.wait()
    }

    /**
     Invokes the CreateActivity operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateActivityInput object being passed to this operation.
         - completion: The CreateActivityOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateActivityOutput
           object will be validated before being returned to caller.
           The possible errors are: activityLimitExceeded, invalidName, tooManyTags.
     */
    public func createActivityAsync(input: StepFunctionsModel.CreateActivityInput, completion: @escaping (HTTPResult<StepFunctionsModel.CreateActivityOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.createActivity.rawValue,
                    target: target)

        let requestInput = CreateActivityOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
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
    public func createActivitySync(input: StepFunctionsModel.CreateActivityInput) throws -> StepFunctionsModel.CreateActivityOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.createActivity.rawValue,
                    target: target)

        let requestInput = CreateActivityOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateStateMachine operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateStateMachineInput object being passed to this operation.
         - completion: The CreateStateMachineOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateStateMachineOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, invalidDefinition, invalidName, stateMachineAlreadyExists, stateMachineDeleting, stateMachineLimitExceeded, tooManyTags.
     */
    public func createStateMachineAsync(input: StepFunctionsModel.CreateStateMachineInput, completion: @escaping (HTTPResult<StepFunctionsModel.CreateStateMachineOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.createStateMachine.rawValue,
                    target: target)

        let requestInput = CreateStateMachineOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the CreateStateMachine operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateStateMachineInput object being passed to this operation.
     - Returns: The CreateStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidDefinition, invalidName, stateMachineAlreadyExists, stateMachineDeleting, stateMachineLimitExceeded, tooManyTags.
     */
    public func createStateMachineSync(input: StepFunctionsModel.CreateStateMachineInput) throws -> StepFunctionsModel.CreateStateMachineOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.createStateMachine.rawValue,
                    target: target)

        let requestInput = CreateStateMachineOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
    public func deleteActivityAsync(input: StepFunctionsModel.DeleteActivityInput, completion: @escaping (HTTPResult<StepFunctionsModel.DeleteActivityOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.deleteActivity.rawValue,
                    target: target)

        let requestInput = DeleteActivityOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
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
    public func deleteActivitySync(input: StepFunctionsModel.DeleteActivityInput) throws -> StepFunctionsModel.DeleteActivityOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.deleteActivity.rawValue,
                    target: target)

        let requestInput = DeleteActivityOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteStateMachine operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteStateMachineInput object being passed to this operation.
         - completion: The DeleteStateMachineOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteStateMachineOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn.
     */
    public func deleteStateMachineAsync(input: StepFunctionsModel.DeleteStateMachineInput, completion: @escaping (HTTPResult<StepFunctionsModel.DeleteStateMachineOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.deleteStateMachine.rawValue,
                    target: target)

        let requestInput = DeleteStateMachineOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the DeleteStateMachine operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteStateMachineInput object being passed to this operation.
     - Returns: The DeleteStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn.
     */
    public func deleteStateMachineSync(input: StepFunctionsModel.DeleteStateMachineInput) throws -> StepFunctionsModel.DeleteStateMachineOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.deleteStateMachine.rawValue,
                    target: target)

        let requestInput = DeleteStateMachineOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
    public func describeActivityAsync(input: StepFunctionsModel.DescribeActivityInput, completion: @escaping (HTTPResult<StepFunctionsModel.DescribeActivityOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.describeActivity.rawValue,
                    target: target)

        let requestInput = DescribeActivityOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
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
    public func describeActivitySync(input: StepFunctionsModel.DescribeActivityInput) throws -> StepFunctionsModel.DescribeActivityOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.describeActivity.rawValue,
                    target: target)

        let requestInput = DescribeActivityOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
    public func describeExecutionAsync(input: StepFunctionsModel.DescribeExecutionInput, completion: @escaping (HTTPResult<StepFunctionsModel.DescribeExecutionOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.describeExecution.rawValue,
                    target: target)

        let requestInput = DescribeExecutionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
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
    public func describeExecutionSync(input: StepFunctionsModel.DescribeExecutionInput) throws -> StepFunctionsModel.DescribeExecutionOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.describeExecution.rawValue,
                    target: target)

        let requestInput = DescribeExecutionOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
    public func describeStateMachineAsync(input: StepFunctionsModel.DescribeStateMachineInput, completion: @escaping (HTTPResult<StepFunctionsModel.DescribeStateMachineOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.describeStateMachine.rawValue,
                    target: target)

        let requestInput = DescribeStateMachineOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
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
    public func describeStateMachineSync(input: StepFunctionsModel.DescribeStateMachineInput) throws -> StepFunctionsModel.DescribeStateMachineOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.describeStateMachine.rawValue,
                    target: target)

        let requestInput = DescribeStateMachineOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
    public func describeStateMachineForExecutionAsync(input: StepFunctionsModel.DescribeStateMachineForExecutionInput, completion: @escaping (HTTPResult<StepFunctionsModel.DescribeStateMachineForExecutionOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.describeStateMachineForExecution.rawValue,
                    target: target)

        let requestInput = DescribeStateMachineForExecutionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
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
    public func describeStateMachineForExecutionSync(input: StepFunctionsModel.DescribeStateMachineForExecutionInput) throws -> StepFunctionsModel.DescribeStateMachineForExecutionOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.describeStateMachineForExecution.rawValue,
                    target: target)

        let requestInput = DescribeStateMachineForExecutionOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
    public func getActivityTaskAsync(input: StepFunctionsModel.GetActivityTaskInput, completion: @escaping (HTTPResult<StepFunctionsModel.GetActivityTaskOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.getActivityTask.rawValue,
                    target: target)

        let requestInput = GetActivityTaskOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
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
    public func getActivityTaskSync(input: StepFunctionsModel.GetActivityTaskInput) throws -> StepFunctionsModel.GetActivityTaskOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.getActivityTask.rawValue,
                    target: target)

        let requestInput = GetActivityTaskOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
    public func getExecutionHistoryAsync(input: StepFunctionsModel.GetExecutionHistoryInput, completion: @escaping (HTTPResult<StepFunctionsModel.GetExecutionHistoryOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.getExecutionHistory.rawValue,
                    target: target)

        let requestInput = GetExecutionHistoryOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
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
    public func getExecutionHistorySync(input: StepFunctionsModel.GetExecutionHistoryInput) throws -> StepFunctionsModel.GetExecutionHistoryOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.getExecutionHistory.rawValue,
                    target: target)

        let requestInput = GetExecutionHistoryOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
    public func listActivitiesAsync(input: StepFunctionsModel.ListActivitiesInput, completion: @escaping (HTTPResult<StepFunctionsModel.ListActivitiesOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.listActivities.rawValue,
                    target: target)

        let requestInput = ListActivitiesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
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
    public func listActivitiesSync(input: StepFunctionsModel.ListActivitiesInput) throws -> StepFunctionsModel.ListActivitiesOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.listActivities.rawValue,
                    target: target)

        let requestInput = ListActivitiesOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListExecutions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListExecutionsInput object being passed to this operation.
         - completion: The ListExecutionsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListExecutionsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, invalidToken, stateMachineDoesNotExist.
     */
    public func listExecutionsAsync(input: StepFunctionsModel.ListExecutionsInput, completion: @escaping (HTTPResult<StepFunctionsModel.ListExecutionsOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.listExecutions.rawValue,
                    target: target)

        let requestInput = ListExecutionsOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the ListExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListExecutionsInput object being passed to this operation.
     - Returns: The ListExecutionsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidToken, stateMachineDoesNotExist.
     */
    public func listExecutionsSync(input: StepFunctionsModel.ListExecutionsInput) throws -> StepFunctionsModel.ListExecutionsOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.listExecutions.rawValue,
                    target: target)

        let requestInput = ListExecutionsOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
    public func listStateMachinesAsync(input: StepFunctionsModel.ListStateMachinesInput, completion: @escaping (HTTPResult<StepFunctionsModel.ListStateMachinesOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.listStateMachines.rawValue,
                    target: target)

        let requestInput = ListStateMachinesOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
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
    public func listStateMachinesSync(input: StepFunctionsModel.ListStateMachinesInput) throws -> StepFunctionsModel.ListStateMachinesOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.listStateMachines.rawValue,
                    target: target)

        let requestInput = ListStateMachinesOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
    public func listTagsForResourceAsync(input: StepFunctionsModel.ListTagsForResourceInput, completion: @escaping (HTTPResult<StepFunctionsModel.ListTagsForResourceOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.listTagsForResource.rawValue,
                    target: target)

        let requestInput = ListTagsForResourceOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
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
    public func listTagsForResourceSync(input: StepFunctionsModel.ListTagsForResourceInput) throws -> StepFunctionsModel.ListTagsForResourceOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.listTagsForResource.rawValue,
                    target: target)

        let requestInput = ListTagsForResourceOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
    public func sendTaskFailureAsync(input: StepFunctionsModel.SendTaskFailureInput, completion: @escaping (HTTPResult<StepFunctionsModel.SendTaskFailureOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.sendTaskFailure.rawValue,
                    target: target)

        let requestInput = SendTaskFailureOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
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
    public func sendTaskFailureSync(input: StepFunctionsModel.SendTaskFailureInput) throws -> StepFunctionsModel.SendTaskFailureOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.sendTaskFailure.rawValue,
                    target: target)

        let requestInput = SendTaskFailureOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
    public func sendTaskHeartbeatAsync(input: StepFunctionsModel.SendTaskHeartbeatInput, completion: @escaping (HTTPResult<StepFunctionsModel.SendTaskHeartbeatOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.sendTaskHeartbeat.rawValue,
                    target: target)

        let requestInput = SendTaskHeartbeatOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
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
    public func sendTaskHeartbeatSync(input: StepFunctionsModel.SendTaskHeartbeatInput) throws -> StepFunctionsModel.SendTaskHeartbeatOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.sendTaskHeartbeat.rawValue,
                    target: target)

        let requestInput = SendTaskHeartbeatOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
    public func sendTaskSuccessAsync(input: StepFunctionsModel.SendTaskSuccessInput, completion: @escaping (HTTPResult<StepFunctionsModel.SendTaskSuccessOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.sendTaskSuccess.rawValue,
                    target: target)

        let requestInput = SendTaskSuccessOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
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
    public func sendTaskSuccessSync(input: StepFunctionsModel.SendTaskSuccessInput) throws -> StepFunctionsModel.SendTaskSuccessOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.sendTaskSuccess.rawValue,
                    target: target)

        let requestInput = SendTaskSuccessOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the StartExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartExecutionInput object being passed to this operation.
         - completion: The StartExecutionOutput object or an error will be passed to this 
           callback when the operation is complete. The StartExecutionOutput
           object will be validated before being returned to caller.
           The possible errors are: executionAlreadyExists, executionLimitExceeded, invalidArn, invalidExecutionInput, invalidName, stateMachineDeleting, stateMachineDoesNotExist.
     */
    public func startExecutionAsync(input: StepFunctionsModel.StartExecutionInput, completion: @escaping (HTTPResult<StepFunctionsModel.StartExecutionOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.startExecution.rawValue,
                    target: target)

        let requestInput = StartExecutionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the StartExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartExecutionInput object being passed to this operation.
     - Returns: The StartExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionAlreadyExists, executionLimitExceeded, invalidArn, invalidExecutionInput, invalidName, stateMachineDeleting, stateMachineDoesNotExist.
     */
    public func startExecutionSync(input: StepFunctionsModel.StartExecutionInput) throws -> StepFunctionsModel.StartExecutionOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.startExecution.rawValue,
                    target: target)

        let requestInput = StartExecutionOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the StopExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopExecutionInput object being passed to this operation.
         - completion: The StopExecutionOutput object or an error will be passed to this 
           callback when the operation is complete. The StopExecutionOutput
           object will be validated before being returned to caller.
           The possible errors are: executionDoesNotExist, invalidArn.
     */
    public func stopExecutionAsync(input: StepFunctionsModel.StopExecutionInput, completion: @escaping (HTTPResult<StepFunctionsModel.StopExecutionOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.stopExecution.rawValue,
                    target: target)

        let requestInput = StopExecutionOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the StopExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopExecutionInput object being passed to this operation.
     - Returns: The StopExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn.
     */
    public func stopExecutionSync(input: StepFunctionsModel.StopExecutionInput) throws -> StepFunctionsModel.StopExecutionOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.stopExecution.rawValue,
                    target: target)

        let requestInput = StopExecutionOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
    public func tagResourceAsync(input: StepFunctionsModel.TagResourceInput, completion: @escaping (HTTPResult<StepFunctionsModel.TagResourceOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.tagResource.rawValue,
                    target: target)

        let requestInput = TagResourceOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
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
    public func tagResourceSync(input: StepFunctionsModel.TagResourceInput) throws -> StepFunctionsModel.TagResourceOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.tagResource.rawValue,
                    target: target)

        let requestInput = TagResourceOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
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
    public func untagResourceAsync(input: StepFunctionsModel.UntagResourceInput, completion: @escaping (HTTPResult<StepFunctionsModel.UntagResourceOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.untagResource.rawValue,
                    target: target)

        let requestInput = UntagResourceOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
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
    public func untagResourceSync(input: StepFunctionsModel.UntagResourceInput) throws -> StepFunctionsModel.UntagResourceOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.untagResource.rawValue,
                    target: target)

        let requestInput = UntagResourceOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateStateMachine operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateStateMachineInput object being passed to this operation.
         - completion: The UpdateStateMachineOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateStateMachineOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, invalidDefinition, missingRequiredParameter, stateMachineDeleting, stateMachineDoesNotExist.
     */
    public func updateStateMachineAsync(input: StepFunctionsModel.UpdateStateMachineInput, completion: @escaping (HTTPResult<StepFunctionsModel.UpdateStateMachineOutput>) -> ()) throws {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.updateStateMachine.rawValue,
                    target: target)

        let requestInput = UpdateStateMachineOperationHTTPRequestInput(encodable: input)

        _ = try httpClient.executeAsyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            completion: completion,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }

    /**
     Invokes the UpdateStateMachine operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateStateMachineInput object being passed to this operation.
     - Returns: The UpdateStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidDefinition, missingRequiredParameter, stateMachineDeleting, stateMachineDoesNotExist.
     */
    public func updateStateMachineSync(input: StepFunctionsModel.UpdateStateMachineInput) throws -> StepFunctionsModel.UpdateStateMachineOutput {
        let handlerDelegate = AWSClientChannelInboundHandlerDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: StepFunctionsModelOperations.updateStateMachine.rawValue,
                    target: target)

        let requestInput = UpdateStateMachineOperationHTTPRequestInput(encodable: input)

        return try httpClient.executeSyncRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            handlerDelegate: handlerDelegate,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }
}
