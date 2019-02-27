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
import SmokeHTTPClient

/**
 Client Protocol for the StepFunctions service.
 */
public protocol StepFunctionsClientProtocol {
    typealias CreateActivitySyncType = (_ input: StepFunctionsModel.CreateActivityInput) throws -> StepFunctionsModel.CreateActivityOutput
    typealias CreateActivityAsyncType = (_ input: StepFunctionsModel.CreateActivityInput, _ completion: @escaping (HTTPResult<StepFunctionsModel.CreateActivityOutput>) -> ()) throws -> ()
    typealias CreateStateMachineSyncType = (_ input: StepFunctionsModel.CreateStateMachineInput) throws -> StepFunctionsModel.CreateStateMachineOutput
    typealias CreateStateMachineAsyncType = (_ input: StepFunctionsModel.CreateStateMachineInput, _ completion: @escaping (HTTPResult<StepFunctionsModel.CreateStateMachineOutput>) -> ()) throws -> ()
    typealias DeleteActivitySyncType = (_ input: StepFunctionsModel.DeleteActivityInput) throws -> StepFunctionsModel.DeleteActivityOutput
    typealias DeleteActivityAsyncType = (_ input: StepFunctionsModel.DeleteActivityInput, _ completion: @escaping (HTTPResult<StepFunctionsModel.DeleteActivityOutput>) -> ()) throws -> ()
    typealias DeleteStateMachineSyncType = (_ input: StepFunctionsModel.DeleteStateMachineInput) throws -> StepFunctionsModel.DeleteStateMachineOutput
    typealias DeleteStateMachineAsyncType = (_ input: StepFunctionsModel.DeleteStateMachineInput, _ completion: @escaping (HTTPResult<StepFunctionsModel.DeleteStateMachineOutput>) -> ()) throws -> ()
    typealias DescribeActivitySyncType = (_ input: StepFunctionsModel.DescribeActivityInput) throws -> StepFunctionsModel.DescribeActivityOutput
    typealias DescribeActivityAsyncType = (_ input: StepFunctionsModel.DescribeActivityInput, _ completion: @escaping (HTTPResult<StepFunctionsModel.DescribeActivityOutput>) -> ()) throws -> ()
    typealias DescribeExecutionSyncType = (_ input: StepFunctionsModel.DescribeExecutionInput) throws -> StepFunctionsModel.DescribeExecutionOutput
    typealias DescribeExecutionAsyncType = (_ input: StepFunctionsModel.DescribeExecutionInput, _ completion: @escaping (HTTPResult<StepFunctionsModel.DescribeExecutionOutput>) -> ()) throws -> ()
    typealias DescribeStateMachineSyncType = (_ input: StepFunctionsModel.DescribeStateMachineInput) throws -> StepFunctionsModel.DescribeStateMachineOutput
    typealias DescribeStateMachineAsyncType = (_ input: StepFunctionsModel.DescribeStateMachineInput, _ completion: @escaping (HTTPResult<StepFunctionsModel.DescribeStateMachineOutput>) -> ()) throws -> ()
    typealias DescribeStateMachineForExecutionSyncType = (_ input: StepFunctionsModel.DescribeStateMachineForExecutionInput) throws -> StepFunctionsModel.DescribeStateMachineForExecutionOutput
    typealias DescribeStateMachineForExecutionAsyncType = (_ input: StepFunctionsModel.DescribeStateMachineForExecutionInput, _ completion: @escaping (HTTPResult<StepFunctionsModel.DescribeStateMachineForExecutionOutput>) -> ()) throws -> ()
    typealias GetActivityTaskSyncType = (_ input: StepFunctionsModel.GetActivityTaskInput) throws -> StepFunctionsModel.GetActivityTaskOutput
    typealias GetActivityTaskAsyncType = (_ input: StepFunctionsModel.GetActivityTaskInput, _ completion: @escaping (HTTPResult<StepFunctionsModel.GetActivityTaskOutput>) -> ()) throws -> ()
    typealias GetExecutionHistorySyncType = (_ input: StepFunctionsModel.GetExecutionHistoryInput) throws -> StepFunctionsModel.GetExecutionHistoryOutput
    typealias GetExecutionHistoryAsyncType = (_ input: StepFunctionsModel.GetExecutionHistoryInput, _ completion: @escaping (HTTPResult<StepFunctionsModel.GetExecutionHistoryOutput>) -> ()) throws -> ()
    typealias ListActivitiesSyncType = (_ input: StepFunctionsModel.ListActivitiesInput) throws -> StepFunctionsModel.ListActivitiesOutput
    typealias ListActivitiesAsyncType = (_ input: StepFunctionsModel.ListActivitiesInput, _ completion: @escaping (HTTPResult<StepFunctionsModel.ListActivitiesOutput>) -> ()) throws -> ()
    typealias ListExecutionsSyncType = (_ input: StepFunctionsModel.ListExecutionsInput) throws -> StepFunctionsModel.ListExecutionsOutput
    typealias ListExecutionsAsyncType = (_ input: StepFunctionsModel.ListExecutionsInput, _ completion: @escaping (HTTPResult<StepFunctionsModel.ListExecutionsOutput>) -> ()) throws -> ()
    typealias ListStateMachinesSyncType = (_ input: StepFunctionsModel.ListStateMachinesInput) throws -> StepFunctionsModel.ListStateMachinesOutput
    typealias ListStateMachinesAsyncType = (_ input: StepFunctionsModel.ListStateMachinesInput, _ completion: @escaping (HTTPResult<StepFunctionsModel.ListStateMachinesOutput>) -> ()) throws -> ()
    typealias ListTagsForResourceSyncType = (_ input: StepFunctionsModel.ListTagsForResourceInput) throws -> StepFunctionsModel.ListTagsForResourceOutput
    typealias ListTagsForResourceAsyncType = (_ input: StepFunctionsModel.ListTagsForResourceInput, _ completion: @escaping (HTTPResult<StepFunctionsModel.ListTagsForResourceOutput>) -> ()) throws -> ()
    typealias SendTaskFailureSyncType = (_ input: StepFunctionsModel.SendTaskFailureInput) throws -> StepFunctionsModel.SendTaskFailureOutput
    typealias SendTaskFailureAsyncType = (_ input: StepFunctionsModel.SendTaskFailureInput, _ completion: @escaping (HTTPResult<StepFunctionsModel.SendTaskFailureOutput>) -> ()) throws -> ()
    typealias SendTaskHeartbeatSyncType = (_ input: StepFunctionsModel.SendTaskHeartbeatInput) throws -> StepFunctionsModel.SendTaskHeartbeatOutput
    typealias SendTaskHeartbeatAsyncType = (_ input: StepFunctionsModel.SendTaskHeartbeatInput, _ completion: @escaping (HTTPResult<StepFunctionsModel.SendTaskHeartbeatOutput>) -> ()) throws -> ()
    typealias SendTaskSuccessSyncType = (_ input: StepFunctionsModel.SendTaskSuccessInput) throws -> StepFunctionsModel.SendTaskSuccessOutput
    typealias SendTaskSuccessAsyncType = (_ input: StepFunctionsModel.SendTaskSuccessInput, _ completion: @escaping (HTTPResult<StepFunctionsModel.SendTaskSuccessOutput>) -> ()) throws -> ()
    typealias StartExecutionSyncType = (_ input: StepFunctionsModel.StartExecutionInput) throws -> StepFunctionsModel.StartExecutionOutput
    typealias StartExecutionAsyncType = (_ input: StepFunctionsModel.StartExecutionInput, _ completion: @escaping (HTTPResult<StepFunctionsModel.StartExecutionOutput>) -> ()) throws -> ()
    typealias StopExecutionSyncType = (_ input: StepFunctionsModel.StopExecutionInput) throws -> StepFunctionsModel.StopExecutionOutput
    typealias StopExecutionAsyncType = (_ input: StepFunctionsModel.StopExecutionInput, _ completion: @escaping (HTTPResult<StepFunctionsModel.StopExecutionOutput>) -> ()) throws -> ()
    typealias TagResourceSyncType = (_ input: StepFunctionsModel.TagResourceInput) throws -> StepFunctionsModel.TagResourceOutput
    typealias TagResourceAsyncType = (_ input: StepFunctionsModel.TagResourceInput, _ completion: @escaping (HTTPResult<StepFunctionsModel.TagResourceOutput>) -> ()) throws -> ()
    typealias UntagResourceSyncType = (_ input: StepFunctionsModel.UntagResourceInput) throws -> StepFunctionsModel.UntagResourceOutput
    typealias UntagResourceAsyncType = (_ input: StepFunctionsModel.UntagResourceInput, _ completion: @escaping (HTTPResult<StepFunctionsModel.UntagResourceOutput>) -> ()) throws -> ()
    typealias UpdateStateMachineSyncType = (_ input: StepFunctionsModel.UpdateStateMachineInput) throws -> StepFunctionsModel.UpdateStateMachineOutput
    typealias UpdateStateMachineAsyncType = (_ input: StepFunctionsModel.UpdateStateMachineInput, _ completion: @escaping (HTTPResult<StepFunctionsModel.UpdateStateMachineOutput>) -> ()) throws -> ()

    /**
     Invokes the CreateActivity operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateActivityInput object being passed to this operation.
         - completion: The CreateActivityOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateActivityOutput
           object will be validated before being returned to caller.
           The possible errors are: activityLimitExceeded, invalidName, tooManyTags.
     */
    func createActivityAsync(input: StepFunctionsModel.CreateActivityInput, completion: @escaping (HTTPResult<StepFunctionsModel.CreateActivityOutput>) -> ()) throws

    /**
     Invokes the CreateActivity operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateActivityInput object being passed to this operation.
     - Returns: The CreateActivityOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: activityLimitExceeded, invalidName, tooManyTags.
     */
    func createActivitySync(input: StepFunctionsModel.CreateActivityInput) throws -> StepFunctionsModel.CreateActivityOutput

    /**
     Invokes the CreateStateMachine operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateStateMachineInput object being passed to this operation.
         - completion: The CreateStateMachineOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateStateMachineOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, invalidDefinition, invalidName, stateMachineAlreadyExists, stateMachineDeleting, stateMachineLimitExceeded, tooManyTags.
     */
    func createStateMachineAsync(input: StepFunctionsModel.CreateStateMachineInput, completion: @escaping (HTTPResult<StepFunctionsModel.CreateStateMachineOutput>) -> ()) throws

    /**
     Invokes the CreateStateMachine operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateStateMachineInput object being passed to this operation.
     - Returns: The CreateStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidDefinition, invalidName, stateMachineAlreadyExists, stateMachineDeleting, stateMachineLimitExceeded, tooManyTags.
     */
    func createStateMachineSync(input: StepFunctionsModel.CreateStateMachineInput) throws -> StepFunctionsModel.CreateStateMachineOutput

    /**
     Invokes the DeleteActivity operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteActivityInput object being passed to this operation.
         - completion: The DeleteActivityOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteActivityOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn.
     */
    func deleteActivityAsync(input: StepFunctionsModel.DeleteActivityInput, completion: @escaping (HTTPResult<StepFunctionsModel.DeleteActivityOutput>) -> ()) throws

    /**
     Invokes the DeleteActivity operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteActivityInput object being passed to this operation.
     - Returns: The DeleteActivityOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn.
     */
    func deleteActivitySync(input: StepFunctionsModel.DeleteActivityInput) throws -> StepFunctionsModel.DeleteActivityOutput

    /**
     Invokes the DeleteStateMachine operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteStateMachineInput object being passed to this operation.
         - completion: The DeleteStateMachineOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteStateMachineOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn.
     */
    func deleteStateMachineAsync(input: StepFunctionsModel.DeleteStateMachineInput, completion: @escaping (HTTPResult<StepFunctionsModel.DeleteStateMachineOutput>) -> ()) throws

    /**
     Invokes the DeleteStateMachine operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteStateMachineInput object being passed to this operation.
     - Returns: The DeleteStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn.
     */
    func deleteStateMachineSync(input: StepFunctionsModel.DeleteStateMachineInput) throws -> StepFunctionsModel.DeleteStateMachineOutput

    /**
     Invokes the DescribeActivity operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeActivityInput object being passed to this operation.
         - completion: The DescribeActivityOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeActivityOutput
           object will be validated before being returned to caller.
           The possible errors are: activityDoesNotExist, invalidArn.
     */
    func describeActivityAsync(input: StepFunctionsModel.DescribeActivityInput, completion: @escaping (HTTPResult<StepFunctionsModel.DescribeActivityOutput>) -> ()) throws

    /**
     Invokes the DescribeActivity operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeActivityInput object being passed to this operation.
     - Returns: The DescribeActivityOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: activityDoesNotExist, invalidArn.
     */
    func describeActivitySync(input: StepFunctionsModel.DescribeActivityInput) throws -> StepFunctionsModel.DescribeActivityOutput

    /**
     Invokes the DescribeExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeExecutionInput object being passed to this operation.
         - completion: The DescribeExecutionOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeExecutionOutput
           object will be validated before being returned to caller.
           The possible errors are: executionDoesNotExist, invalidArn.
     */
    func describeExecutionAsync(input: StepFunctionsModel.DescribeExecutionInput, completion: @escaping (HTTPResult<StepFunctionsModel.DescribeExecutionOutput>) -> ()) throws

    /**
     Invokes the DescribeExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeExecutionInput object being passed to this operation.
     - Returns: The DescribeExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn.
     */
    func describeExecutionSync(input: StepFunctionsModel.DescribeExecutionInput) throws -> StepFunctionsModel.DescribeExecutionOutput

    /**
     Invokes the DescribeStateMachine operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeStateMachineInput object being passed to this operation.
         - completion: The DescribeStateMachineOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeStateMachineOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, stateMachineDoesNotExist.
     */
    func describeStateMachineAsync(input: StepFunctionsModel.DescribeStateMachineInput, completion: @escaping (HTTPResult<StepFunctionsModel.DescribeStateMachineOutput>) -> ()) throws

    /**
     Invokes the DescribeStateMachine operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeStateMachineInput object being passed to this operation.
     - Returns: The DescribeStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, stateMachineDoesNotExist.
     */
    func describeStateMachineSync(input: StepFunctionsModel.DescribeStateMachineInput) throws -> StepFunctionsModel.DescribeStateMachineOutput

    /**
     Invokes the DescribeStateMachineForExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeStateMachineForExecutionInput object being passed to this operation.
         - completion: The DescribeStateMachineForExecutionOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeStateMachineForExecutionOutput
           object will be validated before being returned to caller.
           The possible errors are: executionDoesNotExist, invalidArn.
     */
    func describeStateMachineForExecutionAsync(input: StepFunctionsModel.DescribeStateMachineForExecutionInput, completion: @escaping (HTTPResult<StepFunctionsModel.DescribeStateMachineForExecutionOutput>) -> ()) throws

    /**
     Invokes the DescribeStateMachineForExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeStateMachineForExecutionInput object being passed to this operation.
     - Returns: The DescribeStateMachineForExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn.
     */
    func describeStateMachineForExecutionSync(input: StepFunctionsModel.DescribeStateMachineForExecutionInput) throws -> StepFunctionsModel.DescribeStateMachineForExecutionOutput

    /**
     Invokes the GetActivityTask operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetActivityTaskInput object being passed to this operation.
         - completion: The GetActivityTaskOutput object or an error will be passed to this 
           callback when the operation is complete. The GetActivityTaskOutput
           object will be validated before being returned to caller.
           The possible errors are: activityDoesNotExist, activityWorkerLimitExceeded, invalidArn.
     */
    func getActivityTaskAsync(input: StepFunctionsModel.GetActivityTaskInput, completion: @escaping (HTTPResult<StepFunctionsModel.GetActivityTaskOutput>) -> ()) throws

    /**
     Invokes the GetActivityTask operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetActivityTaskInput object being passed to this operation.
     - Returns: The GetActivityTaskOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: activityDoesNotExist, activityWorkerLimitExceeded, invalidArn.
     */
    func getActivityTaskSync(input: StepFunctionsModel.GetActivityTaskInput) throws -> StepFunctionsModel.GetActivityTaskOutput

    /**
     Invokes the GetExecutionHistory operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetExecutionHistoryInput object being passed to this operation.
         - completion: The GetExecutionHistoryOutput object or an error will be passed to this 
           callback when the operation is complete. The GetExecutionHistoryOutput
           object will be validated before being returned to caller.
           The possible errors are: executionDoesNotExist, invalidArn, invalidToken.
     */
    func getExecutionHistoryAsync(input: StepFunctionsModel.GetExecutionHistoryInput, completion: @escaping (HTTPResult<StepFunctionsModel.GetExecutionHistoryOutput>) -> ()) throws

    /**
     Invokes the GetExecutionHistory operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetExecutionHistoryInput object being passed to this operation.
     - Returns: The GetExecutionHistoryOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn, invalidToken.
     */
    func getExecutionHistorySync(input: StepFunctionsModel.GetExecutionHistoryInput) throws -> StepFunctionsModel.GetExecutionHistoryOutput

    /**
     Invokes the ListActivities operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListActivitiesInput object being passed to this operation.
         - completion: The ListActivitiesOutput object or an error will be passed to this 
           callback when the operation is complete. The ListActivitiesOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidToken.
     */
    func listActivitiesAsync(input: StepFunctionsModel.ListActivitiesInput, completion: @escaping (HTTPResult<StepFunctionsModel.ListActivitiesOutput>) -> ()) throws

    /**
     Invokes the ListActivities operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListActivitiesInput object being passed to this operation.
     - Returns: The ListActivitiesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken.
     */
    func listActivitiesSync(input: StepFunctionsModel.ListActivitiesInput) throws -> StepFunctionsModel.ListActivitiesOutput

    /**
     Invokes the ListExecutions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListExecutionsInput object being passed to this operation.
         - completion: The ListExecutionsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListExecutionsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, invalidToken, stateMachineDoesNotExist.
     */
    func listExecutionsAsync(input: StepFunctionsModel.ListExecutionsInput, completion: @escaping (HTTPResult<StepFunctionsModel.ListExecutionsOutput>) -> ()) throws

    /**
     Invokes the ListExecutions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListExecutionsInput object being passed to this operation.
     - Returns: The ListExecutionsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidToken, stateMachineDoesNotExist.
     */
    func listExecutionsSync(input: StepFunctionsModel.ListExecutionsInput) throws -> StepFunctionsModel.ListExecutionsOutput

    /**
     Invokes the ListStateMachines operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListStateMachinesInput object being passed to this operation.
         - completion: The ListStateMachinesOutput object or an error will be passed to this 
           callback when the operation is complete. The ListStateMachinesOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidToken.
     */
    func listStateMachinesAsync(input: StepFunctionsModel.ListStateMachinesInput, completion: @escaping (HTTPResult<StepFunctionsModel.ListStateMachinesOutput>) -> ()) throws

    /**
     Invokes the ListStateMachines operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListStateMachinesInput object being passed to this operation.
     - Returns: The ListStateMachinesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken.
     */
    func listStateMachinesSync(input: StepFunctionsModel.ListStateMachinesInput) throws -> StepFunctionsModel.ListStateMachinesOutput

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
         - completion: The ListTagsForResourceOutput object or an error will be passed to this 
           callback when the operation is complete. The ListTagsForResourceOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, resourceNotFound.
     */
    func listTagsForResourceAsync(input: StepFunctionsModel.ListTagsForResourceInput, completion: @escaping (HTTPResult<StepFunctionsModel.ListTagsForResourceOutput>) -> ()) throws

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: The ListTagsForResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound.
     */
    func listTagsForResourceSync(input: StepFunctionsModel.ListTagsForResourceInput) throws -> StepFunctionsModel.ListTagsForResourceOutput

    /**
     Invokes the SendTaskFailure operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SendTaskFailureInput object being passed to this operation.
         - completion: The SendTaskFailureOutput object or an error will be passed to this 
           callback when the operation is complete. The SendTaskFailureOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidToken, taskDoesNotExist, taskTimedOut.
     */
    func sendTaskFailureAsync(input: StepFunctionsModel.SendTaskFailureInput, completion: @escaping (HTTPResult<StepFunctionsModel.SendTaskFailureOutput>) -> ()) throws

    /**
     Invokes the SendTaskFailure operation waiting for the response before returning.

     - Parameters:
         - input: The validated SendTaskFailureInput object being passed to this operation.
     - Returns: The SendTaskFailureOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken, taskDoesNotExist, taskTimedOut.
     */
    func sendTaskFailureSync(input: StepFunctionsModel.SendTaskFailureInput) throws -> StepFunctionsModel.SendTaskFailureOutput

    /**
     Invokes the SendTaskHeartbeat operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SendTaskHeartbeatInput object being passed to this operation.
         - completion: The SendTaskHeartbeatOutput object or an error will be passed to this 
           callback when the operation is complete. The SendTaskHeartbeatOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidToken, taskDoesNotExist, taskTimedOut.
     */
    func sendTaskHeartbeatAsync(input: StepFunctionsModel.SendTaskHeartbeatInput, completion: @escaping (HTTPResult<StepFunctionsModel.SendTaskHeartbeatOutput>) -> ()) throws

    /**
     Invokes the SendTaskHeartbeat operation waiting for the response before returning.

     - Parameters:
         - input: The validated SendTaskHeartbeatInput object being passed to this operation.
     - Returns: The SendTaskHeartbeatOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken, taskDoesNotExist, taskTimedOut.
     */
    func sendTaskHeartbeatSync(input: StepFunctionsModel.SendTaskHeartbeatInput) throws -> StepFunctionsModel.SendTaskHeartbeatOutput

    /**
     Invokes the SendTaskSuccess operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SendTaskSuccessInput object being passed to this operation.
         - completion: The SendTaskSuccessOutput object or an error will be passed to this 
           callback when the operation is complete. The SendTaskSuccessOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidOutput, invalidToken, taskDoesNotExist, taskTimedOut.
     */
    func sendTaskSuccessAsync(input: StepFunctionsModel.SendTaskSuccessInput, completion: @escaping (HTTPResult<StepFunctionsModel.SendTaskSuccessOutput>) -> ()) throws

    /**
     Invokes the SendTaskSuccess operation waiting for the response before returning.

     - Parameters:
         - input: The validated SendTaskSuccessInput object being passed to this operation.
     - Returns: The SendTaskSuccessOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOutput, invalidToken, taskDoesNotExist, taskTimedOut.
     */
    func sendTaskSuccessSync(input: StepFunctionsModel.SendTaskSuccessInput) throws -> StepFunctionsModel.SendTaskSuccessOutput

    /**
     Invokes the StartExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartExecutionInput object being passed to this operation.
         - completion: The StartExecutionOutput object or an error will be passed to this 
           callback when the operation is complete. The StartExecutionOutput
           object will be validated before being returned to caller.
           The possible errors are: executionAlreadyExists, executionLimitExceeded, invalidArn, invalidExecutionInput, invalidName, stateMachineDeleting, stateMachineDoesNotExist.
     */
    func startExecutionAsync(input: StepFunctionsModel.StartExecutionInput, completion: @escaping (HTTPResult<StepFunctionsModel.StartExecutionOutput>) -> ()) throws

    /**
     Invokes the StartExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartExecutionInput object being passed to this operation.
     - Returns: The StartExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionAlreadyExists, executionLimitExceeded, invalidArn, invalidExecutionInput, invalidName, stateMachineDeleting, stateMachineDoesNotExist.
     */
    func startExecutionSync(input: StepFunctionsModel.StartExecutionInput) throws -> StepFunctionsModel.StartExecutionOutput

    /**
     Invokes the StopExecution operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopExecutionInput object being passed to this operation.
         - completion: The StopExecutionOutput object or an error will be passed to this 
           callback when the operation is complete. The StopExecutionOutput
           object will be validated before being returned to caller.
           The possible errors are: executionDoesNotExist, invalidArn.
     */
    func stopExecutionAsync(input: StepFunctionsModel.StopExecutionInput, completion: @escaping (HTTPResult<StepFunctionsModel.StopExecutionOutput>) -> ()) throws

    /**
     Invokes the StopExecution operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopExecutionInput object being passed to this operation.
     - Returns: The StopExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn.
     */
    func stopExecutionSync(input: StepFunctionsModel.StopExecutionInput) throws -> StepFunctionsModel.StopExecutionOutput

    /**
     Invokes the TagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
         - completion: The TagResourceOutput object or an error will be passed to this 
           callback when the operation is complete. The TagResourceOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, resourceNotFound, tooManyTags.
     */
    func tagResourceAsync(input: StepFunctionsModel.TagResourceInput, completion: @escaping (HTTPResult<StepFunctionsModel.TagResourceOutput>) -> ()) throws

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Returns: The TagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound, tooManyTags.
     */
    func tagResourceSync(input: StepFunctionsModel.TagResourceInput) throws -> StepFunctionsModel.TagResourceOutput

    /**
     Invokes the UntagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
         - completion: The UntagResourceOutput object or an error will be passed to this 
           callback when the operation is complete. The UntagResourceOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, resourceNotFound.
     */
    func untagResourceAsync(input: StepFunctionsModel.UntagResourceInput, completion: @escaping (HTTPResult<StepFunctionsModel.UntagResourceOutput>) -> ()) throws

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Returns: The UntagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound.
     */
    func untagResourceSync(input: StepFunctionsModel.UntagResourceInput) throws -> StepFunctionsModel.UntagResourceOutput

    /**
     Invokes the UpdateStateMachine operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateStateMachineInput object being passed to this operation.
         - completion: The UpdateStateMachineOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateStateMachineOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidArn, invalidDefinition, missingRequiredParameter, stateMachineDeleting, stateMachineDoesNotExist.
     */
    func updateStateMachineAsync(input: StepFunctionsModel.UpdateStateMachineInput, completion: @escaping (HTTPResult<StepFunctionsModel.UpdateStateMachineOutput>) -> ()) throws

    /**
     Invokes the UpdateStateMachine operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateStateMachineInput object being passed to this operation.
     - Returns: The UpdateStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidDefinition, missingRequiredParameter, stateMachineDeleting, stateMachineDoesNotExist.
     */
    func updateStateMachineSync(input: StepFunctionsModel.UpdateStateMachineInput) throws -> StepFunctionsModel.UpdateStateMachineOutput
}
