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
// StepFunctionsClientProtocol.swift
// StepFunctionsClient
//

import Foundation
import StepFunctionsModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Client Protocol for the StepFunctions service.
 */
public protocol StepFunctionsClientProtocol {
    typealias CreateActivitySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.CreateActivityInput,
            _ reporting: InvocationReportingType) throws -> StepFunctionsModel.CreateActivityOutput
    typealias CreateActivityAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.CreateActivityInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<StepFunctionsModel.CreateActivityOutput, HTTPClientError>) -> ()) throws -> ()
    typealias CreateStateMachineSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.CreateStateMachineInput,
            _ reporting: InvocationReportingType) throws -> StepFunctionsModel.CreateStateMachineOutput
    typealias CreateStateMachineAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.CreateStateMachineInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<StepFunctionsModel.CreateStateMachineOutput, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteActivitySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.DeleteActivityInput,
            _ reporting: InvocationReportingType) throws -> StepFunctionsModel.DeleteActivityOutput
    typealias DeleteActivityAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.DeleteActivityInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<StepFunctionsModel.DeleteActivityOutput, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteStateMachineSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.DeleteStateMachineInput,
            _ reporting: InvocationReportingType) throws -> StepFunctionsModel.DeleteStateMachineOutput
    typealias DeleteStateMachineAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.DeleteStateMachineInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<StepFunctionsModel.DeleteStateMachineOutput, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeActivitySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.DescribeActivityInput,
            _ reporting: InvocationReportingType) throws -> StepFunctionsModel.DescribeActivityOutput
    typealias DescribeActivityAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.DescribeActivityInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<StepFunctionsModel.DescribeActivityOutput, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeExecutionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.DescribeExecutionInput,
            _ reporting: InvocationReportingType) throws -> StepFunctionsModel.DescribeExecutionOutput
    typealias DescribeExecutionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.DescribeExecutionInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<StepFunctionsModel.DescribeExecutionOutput, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeStateMachineSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.DescribeStateMachineInput,
            _ reporting: InvocationReportingType) throws -> StepFunctionsModel.DescribeStateMachineOutput
    typealias DescribeStateMachineAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.DescribeStateMachineInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<StepFunctionsModel.DescribeStateMachineOutput, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeStateMachineForExecutionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.DescribeStateMachineForExecutionInput,
            _ reporting: InvocationReportingType) throws -> StepFunctionsModel.DescribeStateMachineForExecutionOutput
    typealias DescribeStateMachineForExecutionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.DescribeStateMachineForExecutionInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<StepFunctionsModel.DescribeStateMachineForExecutionOutput, HTTPClientError>) -> ()) throws -> ()
    typealias GetActivityTaskSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.GetActivityTaskInput,
            _ reporting: InvocationReportingType) throws -> StepFunctionsModel.GetActivityTaskOutput
    typealias GetActivityTaskAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.GetActivityTaskInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<StepFunctionsModel.GetActivityTaskOutput, HTTPClientError>) -> ()) throws -> ()
    typealias GetExecutionHistorySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.GetExecutionHistoryInput,
            _ reporting: InvocationReportingType) throws -> StepFunctionsModel.GetExecutionHistoryOutput
    typealias GetExecutionHistoryAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.GetExecutionHistoryInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<StepFunctionsModel.GetExecutionHistoryOutput, HTTPClientError>) -> ()) throws -> ()
    typealias ListActivitiesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.ListActivitiesInput,
            _ reporting: InvocationReportingType) throws -> StepFunctionsModel.ListActivitiesOutput
    typealias ListActivitiesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.ListActivitiesInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<StepFunctionsModel.ListActivitiesOutput, HTTPClientError>) -> ()) throws -> ()
    typealias ListExecutionsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.ListExecutionsInput,
            _ reporting: InvocationReportingType) throws -> StepFunctionsModel.ListExecutionsOutput
    typealias ListExecutionsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.ListExecutionsInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<StepFunctionsModel.ListExecutionsOutput, HTTPClientError>) -> ()) throws -> ()
    typealias ListStateMachinesSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.ListStateMachinesInput,
            _ reporting: InvocationReportingType) throws -> StepFunctionsModel.ListStateMachinesOutput
    typealias ListStateMachinesAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.ListStateMachinesInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<StepFunctionsModel.ListStateMachinesOutput, HTTPClientError>) -> ()) throws -> ()
    typealias ListTagsForResourceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.ListTagsForResourceInput,
            _ reporting: InvocationReportingType) throws -> StepFunctionsModel.ListTagsForResourceOutput
    typealias ListTagsForResourceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.ListTagsForResourceInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<StepFunctionsModel.ListTagsForResourceOutput, HTTPClientError>) -> ()) throws -> ()
    typealias SendTaskFailureSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.SendTaskFailureInput,
            _ reporting: InvocationReportingType) throws -> StepFunctionsModel.SendTaskFailureOutput
    typealias SendTaskFailureAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.SendTaskFailureInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<StepFunctionsModel.SendTaskFailureOutput, HTTPClientError>) -> ()) throws -> ()
    typealias SendTaskHeartbeatSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.SendTaskHeartbeatInput,
            _ reporting: InvocationReportingType) throws -> StepFunctionsModel.SendTaskHeartbeatOutput
    typealias SendTaskHeartbeatAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.SendTaskHeartbeatInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<StepFunctionsModel.SendTaskHeartbeatOutput, HTTPClientError>) -> ()) throws -> ()
    typealias SendTaskSuccessSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.SendTaskSuccessInput,
            _ reporting: InvocationReportingType) throws -> StepFunctionsModel.SendTaskSuccessOutput
    typealias SendTaskSuccessAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.SendTaskSuccessInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<StepFunctionsModel.SendTaskSuccessOutput, HTTPClientError>) -> ()) throws -> ()
    typealias StartExecutionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.StartExecutionInput,
            _ reporting: InvocationReportingType) throws -> StepFunctionsModel.StartExecutionOutput
    typealias StartExecutionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.StartExecutionInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<StepFunctionsModel.StartExecutionOutput, HTTPClientError>) -> ()) throws -> ()
    typealias StopExecutionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.StopExecutionInput,
            _ reporting: InvocationReportingType) throws -> StepFunctionsModel.StopExecutionOutput
    typealias StopExecutionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.StopExecutionInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<StepFunctionsModel.StopExecutionOutput, HTTPClientError>) -> ()) throws -> ()
    typealias TagResourceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.TagResourceInput,
            _ reporting: InvocationReportingType) throws -> StepFunctionsModel.TagResourceOutput
    typealias TagResourceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.TagResourceInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<StepFunctionsModel.TagResourceOutput, HTTPClientError>) -> ()) throws -> ()
    typealias UntagResourceSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.UntagResourceInput,
            _ reporting: InvocationReportingType) throws -> StepFunctionsModel.UntagResourceOutput
    typealias UntagResourceAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.UntagResourceInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<StepFunctionsModel.UntagResourceOutput, HTTPClientError>) -> ()) throws -> ()
    typealias UpdateStateMachineSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.UpdateStateMachineInput,
            _ reporting: InvocationReportingType) throws -> StepFunctionsModel.UpdateStateMachineOutput
    typealias UpdateStateMachineAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: StepFunctionsModel.UpdateStateMachineInput, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<StepFunctionsModel.UpdateStateMachineOutput, HTTPClientError>) -> ()) throws -> ()

    /**
     Invokes the CreateActivity operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateActivityInput object being passed to this operation.
         - completion: The CreateActivityOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateActivityOutput
           object will be validated before being returned to caller.
           The possible errors are: activityLimitExceeded, invalidName, tooManyTags.
     */
    func createActivityAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.CreateActivityInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.CreateActivityOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateActivity operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateActivityInput object being passed to this operation.
     - Returns: The CreateActivityOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: activityLimitExceeded, invalidName, tooManyTags.
     */
    func createActivitySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.CreateActivityInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.CreateActivityOutput

    /**
     Invokes the CreateStateMachine operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateStateMachineInput object being passed to this operation.
         - completion: The CreateStateMachineOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateStateMachineOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, invalidDefinition, invalidLoggingConfiguration, invalidName, stateMachineAlreadyExists, stateMachineDeleting, stateMachineLimitExceeded, stateMachineTypeNotSupported, tooManyTags.
     */
    func createStateMachineAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.CreateStateMachineInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.CreateStateMachineOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateStateMachine operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateStateMachineInput object being passed to this operation.
     - Returns: The CreateStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidDefinition, invalidLoggingConfiguration, invalidName, stateMachineAlreadyExists, stateMachineDeleting, stateMachineLimitExceeded, stateMachineTypeNotSupported, tooManyTags.
     */
    func createStateMachineSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.CreateStateMachineInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.CreateStateMachineOutput

    /**
     Invokes the DeleteActivity operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteActivityInput object being passed to this operation.
         - completion: The DeleteActivityOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteActivityOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn.
     */
    func deleteActivityAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.DeleteActivityInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.DeleteActivityOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteActivity operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteActivityInput object being passed to this operation.
     - Returns: The DeleteActivityOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn.
     */
    func deleteActivitySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.DeleteActivityInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.DeleteActivityOutput

    /**
     Invokes the DeleteStateMachine operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteStateMachineInput object being passed to this operation.
         - completion: The DeleteStateMachineOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteStateMachineOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn.
     */
    func deleteStateMachineAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.DeleteStateMachineInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.DeleteStateMachineOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteStateMachine operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteStateMachineInput object being passed to this operation.
     - Returns: The DeleteStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn.
     */
    func deleteStateMachineSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.DeleteStateMachineInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.DeleteStateMachineOutput

    /**
     Invokes the DescribeActivity operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeActivityInput object being passed to this operation.
         - completion: The DescribeActivityOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeActivityOutput
           object will be validated before being returned to caller.
           The possible errors are: activityDoesNotExist, invalidArn.
     */
    func describeActivityAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.DescribeActivityInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.DescribeActivityOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeActivity operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeActivityInput object being passed to this operation.
     - Returns: The DescribeActivityOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: activityDoesNotExist, invalidArn.
     */
    func describeActivitySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.DescribeActivityInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.DescribeActivityOutput

    /**
     Invokes the DescribeExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeExecutionInput object being passed to this operation.
         - completion: The DescribeExecutionOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeExecutionOutput
           object will be validated before being returned to caller.
           The possible errors are: executionDoesNotExist, invalidArn.
     */
    func describeExecutionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.DescribeExecutionInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.DescribeExecutionOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeExecutionInput object being passed to this operation.
     - Returns: The DescribeExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn.
     */
    func describeExecutionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.DescribeExecutionInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.DescribeExecutionOutput

    /**
     Invokes the DescribeStateMachine operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeStateMachineInput object being passed to this operation.
         - completion: The DescribeStateMachineOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeStateMachineOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, stateMachineDoesNotExist.
     */
    func describeStateMachineAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.DescribeStateMachineInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.DescribeStateMachineOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeStateMachine operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeStateMachineInput object being passed to this operation.
     - Returns: The DescribeStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, stateMachineDoesNotExist.
     */
    func describeStateMachineSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.DescribeStateMachineInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.DescribeStateMachineOutput

    /**
     Invokes the DescribeStateMachineForExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeStateMachineForExecutionInput object being passed to this operation.
         - completion: The DescribeStateMachineForExecutionOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeStateMachineForExecutionOutput
           object will be validated before being returned to caller.
           The possible errors are: executionDoesNotExist, invalidArn.
     */
    func describeStateMachineForExecutionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.DescribeStateMachineForExecutionInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.DescribeStateMachineForExecutionOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeStateMachineForExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeStateMachineForExecutionInput object being passed to this operation.
     - Returns: The DescribeStateMachineForExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn.
     */
    func describeStateMachineForExecutionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.DescribeStateMachineForExecutionInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.DescribeStateMachineForExecutionOutput

    /**
     Invokes the GetActivityTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetActivityTaskInput object being passed to this operation.
         - completion: The GetActivityTaskOutput object or an error will be passed to this 
           callback when the operation is complete. The GetActivityTaskOutput
           object will be validated before being returned to caller.
           The possible errors are: activityDoesNotExist, activityWorkerLimitExceeded, invalidArn.
     */
    func getActivityTaskAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.GetActivityTaskInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.GetActivityTaskOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetActivityTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetActivityTaskInput object being passed to this operation.
     - Returns: The GetActivityTaskOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: activityDoesNotExist, activityWorkerLimitExceeded, invalidArn.
     */
    func getActivityTaskSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.GetActivityTaskInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.GetActivityTaskOutput

    /**
     Invokes the GetExecutionHistory operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetExecutionHistoryInput object being passed to this operation.
         - completion: The GetExecutionHistoryOutput object or an error will be passed to this 
           callback when the operation is complete. The GetExecutionHistoryOutput
           object will be validated before being returned to caller.
           The possible errors are: executionDoesNotExist, invalidArn, invalidToken.
     */
    func getExecutionHistoryAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.GetExecutionHistoryInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.GetExecutionHistoryOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetExecutionHistory operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetExecutionHistoryInput object being passed to this operation.
     - Returns: The GetExecutionHistoryOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn, invalidToken.
     */
    func getExecutionHistorySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.GetExecutionHistoryInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.GetExecutionHistoryOutput

    /**
     Invokes the ListActivities operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListActivitiesInput object being passed to this operation.
         - completion: The ListActivitiesOutput object or an error will be passed to this 
           callback when the operation is complete. The ListActivitiesOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidToken.
     */
    func listActivitiesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.ListActivitiesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.ListActivitiesOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListActivities operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListActivitiesInput object being passed to this operation.
     - Returns: The ListActivitiesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken.
     */
    func listActivitiesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.ListActivitiesInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.ListActivitiesOutput

    /**
     Invokes the ListExecutions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListExecutionsInput object being passed to this operation.
         - completion: The ListExecutionsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListExecutionsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, invalidToken, stateMachineDoesNotExist, stateMachineTypeNotSupported.
     */
    func listExecutionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.ListExecutionsInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.ListExecutionsOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListExecutionsInput object being passed to this operation.
     - Returns: The ListExecutionsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidToken, stateMachineDoesNotExist, stateMachineTypeNotSupported.
     */
    func listExecutionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.ListExecutionsInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.ListExecutionsOutput

    /**
     Invokes the ListStateMachines operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListStateMachinesInput object being passed to this operation.
         - completion: The ListStateMachinesOutput object or an error will be passed to this 
           callback when the operation is complete. The ListStateMachinesOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidToken.
     */
    func listStateMachinesAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.ListStateMachinesInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.ListStateMachinesOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListStateMachines operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListStateMachinesInput object being passed to this operation.
     - Returns: The ListStateMachinesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken.
     */
    func listStateMachinesSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.ListStateMachinesInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.ListStateMachinesOutput

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
         - completion: The ListTagsForResourceOutput object or an error will be passed to this 
           callback when the operation is complete. The ListTagsForResourceOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, resourceNotFound.
     */
    func listTagsForResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.ListTagsForResourceInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.ListTagsForResourceOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: The ListTagsForResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound.
     */
    func listTagsForResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.ListTagsForResourceInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.ListTagsForResourceOutput

    /**
     Invokes the SendTaskFailure operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SendTaskFailureInput object being passed to this operation.
         - completion: The SendTaskFailureOutput object or an error will be passed to this 
           callback when the operation is complete. The SendTaskFailureOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidToken, taskDoesNotExist, taskTimedOut.
     */
    func sendTaskFailureAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.SendTaskFailureInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.SendTaskFailureOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the SendTaskFailure operation waiting for the response before returning.

     - Parameters:
         - input: The validated SendTaskFailureInput object being passed to this operation.
     - Returns: The SendTaskFailureOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken, taskDoesNotExist, taskTimedOut.
     */
    func sendTaskFailureSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.SendTaskFailureInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.SendTaskFailureOutput

    /**
     Invokes the SendTaskHeartbeat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SendTaskHeartbeatInput object being passed to this operation.
         - completion: The SendTaskHeartbeatOutput object or an error will be passed to this 
           callback when the operation is complete. The SendTaskHeartbeatOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidToken, taskDoesNotExist, taskTimedOut.
     */
    func sendTaskHeartbeatAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.SendTaskHeartbeatInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.SendTaskHeartbeatOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the SendTaskHeartbeat operation waiting for the response before returning.

     - Parameters:
         - input: The validated SendTaskHeartbeatInput object being passed to this operation.
     - Returns: The SendTaskHeartbeatOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken, taskDoesNotExist, taskTimedOut.
     */
    func sendTaskHeartbeatSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.SendTaskHeartbeatInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.SendTaskHeartbeatOutput

    /**
     Invokes the SendTaskSuccess operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SendTaskSuccessInput object being passed to this operation.
         - completion: The SendTaskSuccessOutput object or an error will be passed to this 
           callback when the operation is complete. The SendTaskSuccessOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidOutput, invalidToken, taskDoesNotExist, taskTimedOut.
     */
    func sendTaskSuccessAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.SendTaskSuccessInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.SendTaskSuccessOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the SendTaskSuccess operation waiting for the response before returning.

     - Parameters:
         - input: The validated SendTaskSuccessInput object being passed to this operation.
     - Returns: The SendTaskSuccessOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOutput, invalidToken, taskDoesNotExist, taskTimedOut.
     */
    func sendTaskSuccessSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.SendTaskSuccessInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.SendTaskSuccessOutput

    /**
     Invokes the StartExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartExecutionInput object being passed to this operation.
         - completion: The StartExecutionOutput object or an error will be passed to this 
           callback when the operation is complete. The StartExecutionOutput
           object will be validated before being returned to caller.
           The possible errors are: executionAlreadyExists, executionLimitExceeded, invalidArn, invalidExecutionInput, invalidName, stateMachineDeleting, stateMachineDoesNotExist.
     */
    func startExecutionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.StartExecutionInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.StartExecutionOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the StartExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartExecutionInput object being passed to this operation.
     - Returns: The StartExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionAlreadyExists, executionLimitExceeded, invalidArn, invalidExecutionInput, invalidName, stateMachineDeleting, stateMachineDoesNotExist.
     */
    func startExecutionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.StartExecutionInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.StartExecutionOutput

    /**
     Invokes the StopExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopExecutionInput object being passed to this operation.
         - completion: The StopExecutionOutput object or an error will be passed to this 
           callback when the operation is complete. The StopExecutionOutput
           object will be validated before being returned to caller.
           The possible errors are: executionDoesNotExist, invalidArn.
     */
    func stopExecutionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.StopExecutionInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.StopExecutionOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the StopExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopExecutionInput object being passed to this operation.
     - Returns: The StopExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn.
     */
    func stopExecutionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.StopExecutionInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.StopExecutionOutput

    /**
     Invokes the TagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
         - completion: The TagResourceOutput object or an error will be passed to this 
           callback when the operation is complete. The TagResourceOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, resourceNotFound, tooManyTags.
     */
    func tagResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.TagResourceInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.TagResourceOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Returns: The TagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound, tooManyTags.
     */
    func tagResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.TagResourceInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.TagResourceOutput

    /**
     Invokes the UntagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
         - completion: The UntagResourceOutput object or an error will be passed to this 
           callback when the operation is complete. The UntagResourceOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, resourceNotFound.
     */
    func untagResourceAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.UntagResourceInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.UntagResourceOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Returns: The UntagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound.
     */
    func untagResourceSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.UntagResourceInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.UntagResourceOutput

    /**
     Invokes the UpdateStateMachine operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateStateMachineInput object being passed to this operation.
         - completion: The UpdateStateMachineOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateStateMachineOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, invalidDefinition, invalidLoggingConfiguration, missingRequiredParameter, stateMachineDeleting, stateMachineDoesNotExist.
     */
    func updateStateMachineAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.UpdateStateMachineInput, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<StepFunctionsModel.UpdateStateMachineOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the UpdateStateMachine operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateStateMachineInput object being passed to this operation.
     - Returns: The UpdateStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidDefinition, invalidLoggingConfiguration, missingRequiredParameter, stateMachineDeleting, stateMachineDoesNotExist.
     */
    func updateStateMachineSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: StepFunctionsModel.UpdateStateMachineInput,
            reporting: InvocationReportingType) throws -> StepFunctionsModel.UpdateStateMachineOutput
}
