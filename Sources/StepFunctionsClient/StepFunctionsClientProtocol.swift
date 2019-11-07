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
    typealias CreateActivitySyncType = (
            _ input: StepFunctionsModel.CreateActivityInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.CreateActivityOutput
    typealias CreateActivityAsyncType = (
            _ input: StepFunctionsModel.CreateActivityInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<StepFunctionsModel.CreateActivityOutput, HTTPClientError>) -> ()) throws -> ()
    typealias CreateStateMachineSyncType = (
            _ input: StepFunctionsModel.CreateStateMachineInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.CreateStateMachineOutput
    typealias CreateStateMachineAsyncType = (
            _ input: StepFunctionsModel.CreateStateMachineInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<StepFunctionsModel.CreateStateMachineOutput, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteActivitySyncType = (
            _ input: StepFunctionsModel.DeleteActivityInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.DeleteActivityOutput
    typealias DeleteActivityAsyncType = (
            _ input: StepFunctionsModel.DeleteActivityInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<StepFunctionsModel.DeleteActivityOutput, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteStateMachineSyncType = (
            _ input: StepFunctionsModel.DeleteStateMachineInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.DeleteStateMachineOutput
    typealias DeleteStateMachineAsyncType = (
            _ input: StepFunctionsModel.DeleteStateMachineInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<StepFunctionsModel.DeleteStateMachineOutput, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeActivitySyncType = (
            _ input: StepFunctionsModel.DescribeActivityInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.DescribeActivityOutput
    typealias DescribeActivityAsyncType = (
            _ input: StepFunctionsModel.DescribeActivityInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<StepFunctionsModel.DescribeActivityOutput, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeExecutionSyncType = (
            _ input: StepFunctionsModel.DescribeExecutionInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.DescribeExecutionOutput
    typealias DescribeExecutionAsyncType = (
            _ input: StepFunctionsModel.DescribeExecutionInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<StepFunctionsModel.DescribeExecutionOutput, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeStateMachineSyncType = (
            _ input: StepFunctionsModel.DescribeStateMachineInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.DescribeStateMachineOutput
    typealias DescribeStateMachineAsyncType = (
            _ input: StepFunctionsModel.DescribeStateMachineInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<StepFunctionsModel.DescribeStateMachineOutput, HTTPClientError>) -> ()) throws -> ()
    typealias DescribeStateMachineForExecutionSyncType = (
            _ input: StepFunctionsModel.DescribeStateMachineForExecutionInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.DescribeStateMachineForExecutionOutput
    typealias DescribeStateMachineForExecutionAsyncType = (
            _ input: StepFunctionsModel.DescribeStateMachineForExecutionInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<StepFunctionsModel.DescribeStateMachineForExecutionOutput, HTTPClientError>) -> ()) throws -> ()
    typealias GetActivityTaskSyncType = (
            _ input: StepFunctionsModel.GetActivityTaskInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.GetActivityTaskOutput
    typealias GetActivityTaskAsyncType = (
            _ input: StepFunctionsModel.GetActivityTaskInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<StepFunctionsModel.GetActivityTaskOutput, HTTPClientError>) -> ()) throws -> ()
    typealias GetExecutionHistorySyncType = (
            _ input: StepFunctionsModel.GetExecutionHistoryInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.GetExecutionHistoryOutput
    typealias GetExecutionHistoryAsyncType = (
            _ input: StepFunctionsModel.GetExecutionHistoryInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<StepFunctionsModel.GetExecutionHistoryOutput, HTTPClientError>) -> ()) throws -> ()
    typealias ListActivitiesSyncType = (
            _ input: StepFunctionsModel.ListActivitiesInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.ListActivitiesOutput
    typealias ListActivitiesAsyncType = (
            _ input: StepFunctionsModel.ListActivitiesInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<StepFunctionsModel.ListActivitiesOutput, HTTPClientError>) -> ()) throws -> ()
    typealias ListExecutionsSyncType = (
            _ input: StepFunctionsModel.ListExecutionsInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.ListExecutionsOutput
    typealias ListExecutionsAsyncType = (
            _ input: StepFunctionsModel.ListExecutionsInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<StepFunctionsModel.ListExecutionsOutput, HTTPClientError>) -> ()) throws -> ()
    typealias ListStateMachinesSyncType = (
            _ input: StepFunctionsModel.ListStateMachinesInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.ListStateMachinesOutput
    typealias ListStateMachinesAsyncType = (
            _ input: StepFunctionsModel.ListStateMachinesInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<StepFunctionsModel.ListStateMachinesOutput, HTTPClientError>) -> ()) throws -> ()
    typealias ListTagsForResourceSyncType = (
            _ input: StepFunctionsModel.ListTagsForResourceInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.ListTagsForResourceOutput
    typealias ListTagsForResourceAsyncType = (
            _ input: StepFunctionsModel.ListTagsForResourceInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<StepFunctionsModel.ListTagsForResourceOutput, HTTPClientError>) -> ()) throws -> ()
    typealias SendTaskFailureSyncType = (
            _ input: StepFunctionsModel.SendTaskFailureInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.SendTaskFailureOutput
    typealias SendTaskFailureAsyncType = (
            _ input: StepFunctionsModel.SendTaskFailureInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<StepFunctionsModel.SendTaskFailureOutput, HTTPClientError>) -> ()) throws -> ()
    typealias SendTaskHeartbeatSyncType = (
            _ input: StepFunctionsModel.SendTaskHeartbeatInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.SendTaskHeartbeatOutput
    typealias SendTaskHeartbeatAsyncType = (
            _ input: StepFunctionsModel.SendTaskHeartbeatInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<StepFunctionsModel.SendTaskHeartbeatOutput, HTTPClientError>) -> ()) throws -> ()
    typealias SendTaskSuccessSyncType = (
            _ input: StepFunctionsModel.SendTaskSuccessInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.SendTaskSuccessOutput
    typealias SendTaskSuccessAsyncType = (
            _ input: StepFunctionsModel.SendTaskSuccessInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<StepFunctionsModel.SendTaskSuccessOutput, HTTPClientError>) -> ()) throws -> ()
    typealias StartExecutionSyncType = (
            _ input: StepFunctionsModel.StartExecutionInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.StartExecutionOutput
    typealias StartExecutionAsyncType = (
            _ input: StepFunctionsModel.StartExecutionInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<StepFunctionsModel.StartExecutionOutput, HTTPClientError>) -> ()) throws -> ()
    typealias StopExecutionSyncType = (
            _ input: StepFunctionsModel.StopExecutionInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.StopExecutionOutput
    typealias StopExecutionAsyncType = (
            _ input: StepFunctionsModel.StopExecutionInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<StepFunctionsModel.StopExecutionOutput, HTTPClientError>) -> ()) throws -> ()
    typealias TagResourceSyncType = (
            _ input: StepFunctionsModel.TagResourceInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.TagResourceOutput
    typealias TagResourceAsyncType = (
            _ input: StepFunctionsModel.TagResourceInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<StepFunctionsModel.TagResourceOutput, HTTPClientError>) -> ()) throws -> ()
    typealias UntagResourceSyncType = (
            _ input: StepFunctionsModel.UntagResourceInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.UntagResourceOutput
    typealias UntagResourceAsyncType = (
            _ input: StepFunctionsModel.UntagResourceInput, 
            _ reporting: SmokeAWSInvocationReporting,
            _ completion: @escaping (Result<StepFunctionsModel.UntagResourceOutput, HTTPClientError>) -> ()) throws -> ()
    typealias UpdateStateMachineSyncType = (
            _ input: StepFunctionsModel.UpdateStateMachineInput,
            _ reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.UpdateStateMachineOutput
    typealias UpdateStateMachineAsyncType = (
            _ input: StepFunctionsModel.UpdateStateMachineInput, 
            _ reporting: SmokeAWSInvocationReporting,
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
    func createActivityAsync(
            input: StepFunctionsModel.CreateActivityInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<StepFunctionsModel.CreateActivityOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateActivity operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateActivityInput object being passed to this operation.
     - Returns: The CreateActivityOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: activityLimitExceeded, invalidName, tooManyTags.
     */
    func createActivitySync(
            input: StepFunctionsModel.CreateActivityInput,
            reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.CreateActivityOutput

    /**
     Invokes the CreateStateMachine operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateStateMachineInput object being passed to this operation.
         - completion: The CreateStateMachineOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateStateMachineOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, invalidDefinition, invalidName, stateMachineAlreadyExists, stateMachineDeleting, stateMachineLimitExceeded, tooManyTags.
     */
    func createStateMachineAsync(
            input: StepFunctionsModel.CreateStateMachineInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<StepFunctionsModel.CreateStateMachineOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateStateMachine operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateStateMachineInput object being passed to this operation.
     - Returns: The CreateStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidDefinition, invalidName, stateMachineAlreadyExists, stateMachineDeleting, stateMachineLimitExceeded, tooManyTags.
     */
    func createStateMachineSync(
            input: StepFunctionsModel.CreateStateMachineInput,
            reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.CreateStateMachineOutput

    /**
     Invokes the DeleteActivity operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteActivityInput object being passed to this operation.
         - completion: The DeleteActivityOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteActivityOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn.
     */
    func deleteActivityAsync(
            input: StepFunctionsModel.DeleteActivityInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<StepFunctionsModel.DeleteActivityOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteActivity operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteActivityInput object being passed to this operation.
     - Returns: The DeleteActivityOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn.
     */
    func deleteActivitySync(
            input: StepFunctionsModel.DeleteActivityInput,
            reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.DeleteActivityOutput

    /**
     Invokes the DeleteStateMachine operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteStateMachineInput object being passed to this operation.
         - completion: The DeleteStateMachineOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteStateMachineOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn.
     */
    func deleteStateMachineAsync(
            input: StepFunctionsModel.DeleteStateMachineInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<StepFunctionsModel.DeleteStateMachineOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteStateMachine operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteStateMachineInput object being passed to this operation.
     - Returns: The DeleteStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn.
     */
    func deleteStateMachineSync(
            input: StepFunctionsModel.DeleteStateMachineInput,
            reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.DeleteStateMachineOutput

    /**
     Invokes the DescribeActivity operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeActivityInput object being passed to this operation.
         - completion: The DescribeActivityOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeActivityOutput
           object will be validated before being returned to caller.
           The possible errors are: activityDoesNotExist, invalidArn.
     */
    func describeActivityAsync(
            input: StepFunctionsModel.DescribeActivityInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<StepFunctionsModel.DescribeActivityOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeActivity operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeActivityInput object being passed to this operation.
     - Returns: The DescribeActivityOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: activityDoesNotExist, invalidArn.
     */
    func describeActivitySync(
            input: StepFunctionsModel.DescribeActivityInput,
            reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.DescribeActivityOutput

    /**
     Invokes the DescribeExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeExecutionInput object being passed to this operation.
         - completion: The DescribeExecutionOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeExecutionOutput
           object will be validated before being returned to caller.
           The possible errors are: executionDoesNotExist, invalidArn.
     */
    func describeExecutionAsync(
            input: StepFunctionsModel.DescribeExecutionInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<StepFunctionsModel.DescribeExecutionOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeExecutionInput object being passed to this operation.
     - Returns: The DescribeExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn.
     */
    func describeExecutionSync(
            input: StepFunctionsModel.DescribeExecutionInput,
            reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.DescribeExecutionOutput

    /**
     Invokes the DescribeStateMachine operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeStateMachineInput object being passed to this operation.
         - completion: The DescribeStateMachineOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeStateMachineOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, stateMachineDoesNotExist.
     */
    func describeStateMachineAsync(
            input: StepFunctionsModel.DescribeStateMachineInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<StepFunctionsModel.DescribeStateMachineOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeStateMachine operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeStateMachineInput object being passed to this operation.
     - Returns: The DescribeStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, stateMachineDoesNotExist.
     */
    func describeStateMachineSync(
            input: StepFunctionsModel.DescribeStateMachineInput,
            reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.DescribeStateMachineOutput

    /**
     Invokes the DescribeStateMachineForExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeStateMachineForExecutionInput object being passed to this operation.
         - completion: The DescribeStateMachineForExecutionOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeStateMachineForExecutionOutput
           object will be validated before being returned to caller.
           The possible errors are: executionDoesNotExist, invalidArn.
     */
    func describeStateMachineForExecutionAsync(
            input: StepFunctionsModel.DescribeStateMachineForExecutionInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<StepFunctionsModel.DescribeStateMachineForExecutionOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the DescribeStateMachineForExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeStateMachineForExecutionInput object being passed to this operation.
     - Returns: The DescribeStateMachineForExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn.
     */
    func describeStateMachineForExecutionSync(
            input: StepFunctionsModel.DescribeStateMachineForExecutionInput,
            reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.DescribeStateMachineForExecutionOutput

    /**
     Invokes the GetActivityTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetActivityTaskInput object being passed to this operation.
         - completion: The GetActivityTaskOutput object or an error will be passed to this 
           callback when the operation is complete. The GetActivityTaskOutput
           object will be validated before being returned to caller.
           The possible errors are: activityDoesNotExist, activityWorkerLimitExceeded, invalidArn.
     */
    func getActivityTaskAsync(
            input: StepFunctionsModel.GetActivityTaskInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<StepFunctionsModel.GetActivityTaskOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetActivityTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetActivityTaskInput object being passed to this operation.
     - Returns: The GetActivityTaskOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: activityDoesNotExist, activityWorkerLimitExceeded, invalidArn.
     */
    func getActivityTaskSync(
            input: StepFunctionsModel.GetActivityTaskInput,
            reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.GetActivityTaskOutput

    /**
     Invokes the GetExecutionHistory operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetExecutionHistoryInput object being passed to this operation.
         - completion: The GetExecutionHistoryOutput object or an error will be passed to this 
           callback when the operation is complete. The GetExecutionHistoryOutput
           object will be validated before being returned to caller.
           The possible errors are: executionDoesNotExist, invalidArn, invalidToken.
     */
    func getExecutionHistoryAsync(
            input: StepFunctionsModel.GetExecutionHistoryInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<StepFunctionsModel.GetExecutionHistoryOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetExecutionHistory operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetExecutionHistoryInput object being passed to this operation.
     - Returns: The GetExecutionHistoryOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn, invalidToken.
     */
    func getExecutionHistorySync(
            input: StepFunctionsModel.GetExecutionHistoryInput,
            reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.GetExecutionHistoryOutput

    /**
     Invokes the ListActivities operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListActivitiesInput object being passed to this operation.
         - completion: The ListActivitiesOutput object or an error will be passed to this 
           callback when the operation is complete. The ListActivitiesOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidToken.
     */
    func listActivitiesAsync(
            input: StepFunctionsModel.ListActivitiesInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<StepFunctionsModel.ListActivitiesOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListActivities operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListActivitiesInput object being passed to this operation.
     - Returns: The ListActivitiesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken.
     */
    func listActivitiesSync(
            input: StepFunctionsModel.ListActivitiesInput,
            reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.ListActivitiesOutput

    /**
     Invokes the ListExecutions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListExecutionsInput object being passed to this operation.
         - completion: The ListExecutionsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListExecutionsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, invalidToken, stateMachineDoesNotExist.
     */
    func listExecutionsAsync(
            input: StepFunctionsModel.ListExecutionsInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<StepFunctionsModel.ListExecutionsOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListExecutionsInput object being passed to this operation.
     - Returns: The ListExecutionsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidToken, stateMachineDoesNotExist.
     */
    func listExecutionsSync(
            input: StepFunctionsModel.ListExecutionsInput,
            reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.ListExecutionsOutput

    /**
     Invokes the ListStateMachines operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListStateMachinesInput object being passed to this operation.
         - completion: The ListStateMachinesOutput object or an error will be passed to this 
           callback when the operation is complete. The ListStateMachinesOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidToken.
     */
    func listStateMachinesAsync(
            input: StepFunctionsModel.ListStateMachinesInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<StepFunctionsModel.ListStateMachinesOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListStateMachines operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListStateMachinesInput object being passed to this operation.
     - Returns: The ListStateMachinesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken.
     */
    func listStateMachinesSync(
            input: StepFunctionsModel.ListStateMachinesInput,
            reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.ListStateMachinesOutput

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
         - completion: The ListTagsForResourceOutput object or an error will be passed to this 
           callback when the operation is complete. The ListTagsForResourceOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, resourceNotFound.
     */
    func listTagsForResourceAsync(
            input: StepFunctionsModel.ListTagsForResourceInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<StepFunctionsModel.ListTagsForResourceOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: The ListTagsForResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound.
     */
    func listTagsForResourceSync(
            input: StepFunctionsModel.ListTagsForResourceInput,
            reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.ListTagsForResourceOutput

    /**
     Invokes the SendTaskFailure operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SendTaskFailureInput object being passed to this operation.
         - completion: The SendTaskFailureOutput object or an error will be passed to this 
           callback when the operation is complete. The SendTaskFailureOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidToken, taskDoesNotExist, taskTimedOut.
     */
    func sendTaskFailureAsync(
            input: StepFunctionsModel.SendTaskFailureInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<StepFunctionsModel.SendTaskFailureOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the SendTaskFailure operation waiting for the response before returning.

     - Parameters:
         - input: The validated SendTaskFailureInput object being passed to this operation.
     - Returns: The SendTaskFailureOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken, taskDoesNotExist, taskTimedOut.
     */
    func sendTaskFailureSync(
            input: StepFunctionsModel.SendTaskFailureInput,
            reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.SendTaskFailureOutput

    /**
     Invokes the SendTaskHeartbeat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SendTaskHeartbeatInput object being passed to this operation.
         - completion: The SendTaskHeartbeatOutput object or an error will be passed to this 
           callback when the operation is complete. The SendTaskHeartbeatOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidToken, taskDoesNotExist, taskTimedOut.
     */
    func sendTaskHeartbeatAsync(
            input: StepFunctionsModel.SendTaskHeartbeatInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<StepFunctionsModel.SendTaskHeartbeatOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the SendTaskHeartbeat operation waiting for the response before returning.

     - Parameters:
         - input: The validated SendTaskHeartbeatInput object being passed to this operation.
     - Returns: The SendTaskHeartbeatOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken, taskDoesNotExist, taskTimedOut.
     */
    func sendTaskHeartbeatSync(
            input: StepFunctionsModel.SendTaskHeartbeatInput,
            reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.SendTaskHeartbeatOutput

    /**
     Invokes the SendTaskSuccess operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SendTaskSuccessInput object being passed to this operation.
         - completion: The SendTaskSuccessOutput object or an error will be passed to this 
           callback when the operation is complete. The SendTaskSuccessOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidOutput, invalidToken, taskDoesNotExist, taskTimedOut.
     */
    func sendTaskSuccessAsync(
            input: StepFunctionsModel.SendTaskSuccessInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<StepFunctionsModel.SendTaskSuccessOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the SendTaskSuccess operation waiting for the response before returning.

     - Parameters:
         - input: The validated SendTaskSuccessInput object being passed to this operation.
     - Returns: The SendTaskSuccessOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOutput, invalidToken, taskDoesNotExist, taskTimedOut.
     */
    func sendTaskSuccessSync(
            input: StepFunctionsModel.SendTaskSuccessInput,
            reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.SendTaskSuccessOutput

    /**
     Invokes the StartExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartExecutionInput object being passed to this operation.
         - completion: The StartExecutionOutput object or an error will be passed to this 
           callback when the operation is complete. The StartExecutionOutput
           object will be validated before being returned to caller.
           The possible errors are: executionAlreadyExists, executionLimitExceeded, invalidArn, invalidExecutionInput, invalidName, stateMachineDeleting, stateMachineDoesNotExist.
     */
    func startExecutionAsync(
            input: StepFunctionsModel.StartExecutionInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<StepFunctionsModel.StartExecutionOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the StartExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartExecutionInput object being passed to this operation.
     - Returns: The StartExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionAlreadyExists, executionLimitExceeded, invalidArn, invalidExecutionInput, invalidName, stateMachineDeleting, stateMachineDoesNotExist.
     */
    func startExecutionSync(
            input: StepFunctionsModel.StartExecutionInput,
            reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.StartExecutionOutput

    /**
     Invokes the StopExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopExecutionInput object being passed to this operation.
         - completion: The StopExecutionOutput object or an error will be passed to this 
           callback when the operation is complete. The StopExecutionOutput
           object will be validated before being returned to caller.
           The possible errors are: executionDoesNotExist, invalidArn.
     */
    func stopExecutionAsync(
            input: StepFunctionsModel.StopExecutionInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<StepFunctionsModel.StopExecutionOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the StopExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopExecutionInput object being passed to this operation.
     - Returns: The StopExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn.
     */
    func stopExecutionSync(
            input: StepFunctionsModel.StopExecutionInput,
            reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.StopExecutionOutput

    /**
     Invokes the TagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
         - completion: The TagResourceOutput object or an error will be passed to this 
           callback when the operation is complete. The TagResourceOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, resourceNotFound, tooManyTags.
     */
    func tagResourceAsync(
            input: StepFunctionsModel.TagResourceInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<StepFunctionsModel.TagResourceOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Returns: The TagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound, tooManyTags.
     */
    func tagResourceSync(
            input: StepFunctionsModel.TagResourceInput,
            reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.TagResourceOutput

    /**
     Invokes the UntagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
         - completion: The UntagResourceOutput object or an error will be passed to this 
           callback when the operation is complete. The UntagResourceOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, resourceNotFound.
     */
    func untagResourceAsync(
            input: StepFunctionsModel.UntagResourceInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<StepFunctionsModel.UntagResourceOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Returns: The UntagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound.
     */
    func untagResourceSync(
            input: StepFunctionsModel.UntagResourceInput,
            reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.UntagResourceOutput

    /**
     Invokes the UpdateStateMachine operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateStateMachineInput object being passed to this operation.
         - completion: The UpdateStateMachineOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateStateMachineOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, invalidDefinition, missingRequiredParameter, stateMachineDeleting, stateMachineDoesNotExist.
     */
    func updateStateMachineAsync(
            input: StepFunctionsModel.UpdateStateMachineInput, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<StepFunctionsModel.UpdateStateMachineOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the UpdateStateMachine operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateStateMachineInput object being passed to this operation.
     - Returns: The UpdateStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidDefinition, missingRequiredParameter, stateMachineDeleting, stateMachineDoesNotExist.
     */
    func updateStateMachineSync(
            input: StepFunctionsModel.UpdateStateMachineInput,
            reporting: SmokeAWSInvocationReporting) throws -> StepFunctionsModel.UpdateStateMachineOutput
}
