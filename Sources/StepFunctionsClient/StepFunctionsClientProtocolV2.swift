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
// StepFunctionsClientProtocolV2.swift
// StepFunctionsClient
//

import Foundation
import StepFunctionsModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Client Protocol for the StepFunctions service.
 */
public protocol StepFunctionsClientProtocolV2 {
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    typealias CreateActivityFunctionType = (
            _ input: StepFunctionsModel.CreateActivityInput) async throws -> StepFunctionsModel.CreateActivityOutput
    typealias CreateStateMachineFunctionType = (
            _ input: StepFunctionsModel.CreateStateMachineInput) async throws -> StepFunctionsModel.CreateStateMachineOutput
    typealias DeleteActivityFunctionType = (
            _ input: StepFunctionsModel.DeleteActivityInput) async throws -> StepFunctionsModel.DeleteActivityOutput
    typealias DeleteStateMachineFunctionType = (
            _ input: StepFunctionsModel.DeleteStateMachineInput) async throws -> StepFunctionsModel.DeleteStateMachineOutput
    typealias DescribeActivityFunctionType = (
            _ input: StepFunctionsModel.DescribeActivityInput) async throws -> StepFunctionsModel.DescribeActivityOutput
    typealias DescribeExecutionFunctionType = (
            _ input: StepFunctionsModel.DescribeExecutionInput) async throws -> StepFunctionsModel.DescribeExecutionOutput
    typealias DescribeMapRunFunctionType = (
            _ input: StepFunctionsModel.DescribeMapRunInput) async throws -> StepFunctionsModel.DescribeMapRunOutput
    typealias DescribeStateMachineFunctionType = (
            _ input: StepFunctionsModel.DescribeStateMachineInput) async throws -> StepFunctionsModel.DescribeStateMachineOutput
    typealias DescribeStateMachineForExecutionFunctionType = (
            _ input: StepFunctionsModel.DescribeStateMachineForExecutionInput) async throws -> StepFunctionsModel.DescribeStateMachineForExecutionOutput
    typealias GetActivityTaskFunctionType = (
            _ input: StepFunctionsModel.GetActivityTaskInput) async throws -> StepFunctionsModel.GetActivityTaskOutput
    typealias GetExecutionHistoryFunctionType = (
            _ input: StepFunctionsModel.GetExecutionHistoryInput) async throws -> StepFunctionsModel.GetExecutionHistoryOutput
    typealias ListActivitiesFunctionType = (
            _ input: StepFunctionsModel.ListActivitiesInput) async throws -> StepFunctionsModel.ListActivitiesOutput
    typealias ListExecutionsFunctionType = (
            _ input: StepFunctionsModel.ListExecutionsInput) async throws -> StepFunctionsModel.ListExecutionsOutput
    typealias ListMapRunsFunctionType = (
            _ input: StepFunctionsModel.ListMapRunsInput) async throws -> StepFunctionsModel.ListMapRunsOutput
    typealias ListStateMachinesFunctionType = (
            _ input: StepFunctionsModel.ListStateMachinesInput) async throws -> StepFunctionsModel.ListStateMachinesOutput
    typealias ListTagsForResourceFunctionType = (
            _ input: StepFunctionsModel.ListTagsForResourceInput) async throws -> StepFunctionsModel.ListTagsForResourceOutput
    typealias SendTaskFailureFunctionType = (
            _ input: StepFunctionsModel.SendTaskFailureInput) async throws -> StepFunctionsModel.SendTaskFailureOutput
    typealias SendTaskHeartbeatFunctionType = (
            _ input: StepFunctionsModel.SendTaskHeartbeatInput) async throws -> StepFunctionsModel.SendTaskHeartbeatOutput
    typealias SendTaskSuccessFunctionType = (
            _ input: StepFunctionsModel.SendTaskSuccessInput) async throws -> StepFunctionsModel.SendTaskSuccessOutput
    typealias StartExecutionFunctionType = (
            _ input: StepFunctionsModel.StartExecutionInput) async throws -> StepFunctionsModel.StartExecutionOutput
    typealias StartSyncExecutionFunctionType = (
            _ input: StepFunctionsModel.StartSyncExecutionInput) async throws -> StepFunctionsModel.StartSyncExecutionOutput
    typealias StopExecutionFunctionType = (
            _ input: StepFunctionsModel.StopExecutionInput) async throws -> StepFunctionsModel.StopExecutionOutput
    typealias TagResourceFunctionType = (
            _ input: StepFunctionsModel.TagResourceInput) async throws -> StepFunctionsModel.TagResourceOutput
    typealias UntagResourceFunctionType = (
            _ input: StepFunctionsModel.UntagResourceInput) async throws -> StepFunctionsModel.UntagResourceOutput
    typealias UpdateMapRunFunctionType = (
            _ input: StepFunctionsModel.UpdateMapRunInput) async throws -> StepFunctionsModel.UpdateMapRunOutput
    typealias UpdateStateMachineFunctionType = (
            _ input: StepFunctionsModel.UpdateStateMachineInput) async throws -> StepFunctionsModel.UpdateStateMachineOutput

    /**
     Invokes the CreateActivity operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateActivityInput object being passed to this operation.
     - Returns: The CreateActivityOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: activityLimitExceeded, invalidName, tooManyTags.
     */
    func createActivity(
            input: StepFunctionsModel.CreateActivityInput) async throws -> StepFunctionsModel.CreateActivityOutput

    /**
     Invokes the CreateStateMachine operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateStateMachineInput object being passed to this operation.
     - Returns: The CreateStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidDefinition, invalidLoggingConfiguration, invalidName, invalidTracingConfiguration, stateMachineAlreadyExists, stateMachineDeleting, stateMachineLimitExceeded, stateMachineTypeNotSupported, tooManyTags.
     */
    func createStateMachine(
            input: StepFunctionsModel.CreateStateMachineInput) async throws -> StepFunctionsModel.CreateStateMachineOutput

    /**
     Invokes the DeleteActivity operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteActivityInput object being passed to this operation.
     - Returns: The DeleteActivityOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn.
     */
    func deleteActivity(
            input: StepFunctionsModel.DeleteActivityInput) async throws -> StepFunctionsModel.DeleteActivityOutput

    /**
     Invokes the DeleteStateMachine operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteStateMachineInput object being passed to this operation.
     - Returns: The DeleteStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, validation.
     */
    func deleteStateMachine(
            input: StepFunctionsModel.DeleteStateMachineInput) async throws -> StepFunctionsModel.DeleteStateMachineOutput

    /**
     Invokes the DescribeActivity operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeActivityInput object being passed to this operation.
     - Returns: The DescribeActivityOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: activityDoesNotExist, invalidArn.
     */
    func describeActivity(
            input: StepFunctionsModel.DescribeActivityInput) async throws -> StepFunctionsModel.DescribeActivityOutput

    /**
     Invokes the DescribeExecution operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeExecutionInput object being passed to this operation.
     - Returns: The DescribeExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn.
     */
    func describeExecution(
            input: StepFunctionsModel.DescribeExecutionInput) async throws -> StepFunctionsModel.DescribeExecutionOutput

    /**
     Invokes the DescribeMapRun operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeMapRunInput object being passed to this operation.
     - Returns: The DescribeMapRunOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound.
     */
    func describeMapRun(
            input: StepFunctionsModel.DescribeMapRunInput) async throws -> StepFunctionsModel.DescribeMapRunOutput

    /**
     Invokes the DescribeStateMachine operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeStateMachineInput object being passed to this operation.
     - Returns: The DescribeStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, stateMachineDoesNotExist.
     */
    func describeStateMachine(
            input: StepFunctionsModel.DescribeStateMachineInput) async throws -> StepFunctionsModel.DescribeStateMachineOutput

    /**
     Invokes the DescribeStateMachineForExecution operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeStateMachineForExecutionInput object being passed to this operation.
     - Returns: The DescribeStateMachineForExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn.
     */
    func describeStateMachineForExecution(
            input: StepFunctionsModel.DescribeStateMachineForExecutionInput) async throws -> StepFunctionsModel.DescribeStateMachineForExecutionOutput

    /**
     Invokes the GetActivityTask operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetActivityTaskInput object being passed to this operation.
     - Returns: The GetActivityTaskOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: activityDoesNotExist, activityWorkerLimitExceeded, invalidArn.
     */
    func getActivityTask(
            input: StepFunctionsModel.GetActivityTaskInput) async throws -> StepFunctionsModel.GetActivityTaskOutput

    /**
     Invokes the GetExecutionHistory operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetExecutionHistoryInput object being passed to this operation.
     - Returns: The GetExecutionHistoryOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn, invalidToken.
     */
    func getExecutionHistory(
            input: StepFunctionsModel.GetExecutionHistoryInput) async throws -> StepFunctionsModel.GetExecutionHistoryOutput

    /**
     Invokes the ListActivities operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListActivitiesInput object being passed to this operation.
     - Returns: The ListActivitiesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken.
     */
    func listActivities(
            input: StepFunctionsModel.ListActivitiesInput) async throws -> StepFunctionsModel.ListActivitiesOutput

    /**
     Invokes the ListExecutions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListExecutionsInput object being passed to this operation.
     - Returns: The ListExecutionsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidToken, resourceNotFound, stateMachineDoesNotExist, stateMachineTypeNotSupported, validation.
     */
    func listExecutions(
            input: StepFunctionsModel.ListExecutionsInput) async throws -> StepFunctionsModel.ListExecutionsOutput

    /**
     Invokes the ListMapRuns operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListMapRunsInput object being passed to this operation.
     - Returns: The ListMapRunsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn, invalidToken.
     */
    func listMapRuns(
            input: StepFunctionsModel.ListMapRunsInput) async throws -> StepFunctionsModel.ListMapRunsOutput

    /**
     Invokes the ListStateMachines operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListStateMachinesInput object being passed to this operation.
     - Returns: The ListStateMachinesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken.
     */
    func listStateMachines(
            input: StepFunctionsModel.ListStateMachinesInput) async throws -> StepFunctionsModel.ListStateMachinesOutput

    /**
     Invokes the ListTagsForResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: The ListTagsForResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound.
     */
    func listTagsForResource(
            input: StepFunctionsModel.ListTagsForResourceInput) async throws -> StepFunctionsModel.ListTagsForResourceOutput

    /**
     Invokes the SendTaskFailure operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SendTaskFailureInput object being passed to this operation.
     - Returns: The SendTaskFailureOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken, taskDoesNotExist, taskTimedOut.
     */
    func sendTaskFailure(
            input: StepFunctionsModel.SendTaskFailureInput) async throws -> StepFunctionsModel.SendTaskFailureOutput

    /**
     Invokes the SendTaskHeartbeat operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SendTaskHeartbeatInput object being passed to this operation.
     - Returns: The SendTaskHeartbeatOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidToken, taskDoesNotExist, taskTimedOut.
     */
    func sendTaskHeartbeat(
            input: StepFunctionsModel.SendTaskHeartbeatInput) async throws -> StepFunctionsModel.SendTaskHeartbeatOutput

    /**
     Invokes the SendTaskSuccess operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SendTaskSuccessInput object being passed to this operation.
     - Returns: The SendTaskSuccessOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidOutput, invalidToken, taskDoesNotExist, taskTimedOut.
     */
    func sendTaskSuccess(
            input: StepFunctionsModel.SendTaskSuccessInput) async throws -> StepFunctionsModel.SendTaskSuccessOutput

    /**
     Invokes the StartExecution operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartExecutionInput object being passed to this operation.
     - Returns: The StartExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionAlreadyExists, executionLimitExceeded, invalidArn, invalidExecutionInput, invalidName, stateMachineDeleting, stateMachineDoesNotExist, validation.
     */
    func startExecution(
            input: StepFunctionsModel.StartExecutionInput) async throws -> StepFunctionsModel.StartExecutionOutput

    /**
     Invokes the StartSyncExecution operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartSyncExecutionInput object being passed to this operation.
     - Returns: The StartSyncExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidExecutionInput, invalidName, stateMachineDeleting, stateMachineDoesNotExist, stateMachineTypeNotSupported.
     */
    func startSyncExecution(
            input: StepFunctionsModel.StartSyncExecutionInput) async throws -> StepFunctionsModel.StartSyncExecutionOutput

    /**
     Invokes the StopExecution operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StopExecutionInput object being passed to this operation.
     - Returns: The StopExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: executionDoesNotExist, invalidArn, validation.
     */
    func stopExecution(
            input: StepFunctionsModel.StopExecutionInput) async throws -> StepFunctionsModel.StopExecutionOutput

    /**
     Invokes the TagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Returns: The TagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound, tooManyTags.
     */
    func tagResource(
            input: StepFunctionsModel.TagResourceInput) async throws -> StepFunctionsModel.TagResourceOutput

    /**
     Invokes the UntagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Returns: The UntagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound.
     */
    func untagResource(
            input: StepFunctionsModel.UntagResourceInput) async throws -> StepFunctionsModel.UntagResourceOutput

    /**
     Invokes the UpdateMapRun operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateMapRunInput object being passed to this operation.
     - Returns: The UpdateMapRunOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, resourceNotFound, validation.
     */
    func updateMapRun(
            input: StepFunctionsModel.UpdateMapRunInput) async throws -> StepFunctionsModel.UpdateMapRunOutput

    /**
     Invokes the UpdateStateMachine operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UpdateStateMachineInput object being passed to this operation.
     - Returns: The UpdateStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidArn, invalidDefinition, invalidLoggingConfiguration, invalidTracingConfiguration, missingRequiredParameter, stateMachineDeleting, stateMachineDoesNotExist, validation.
     */
    func updateStateMachine(
            input: StepFunctionsModel.UpdateStateMachineInput) async throws -> StepFunctionsModel.UpdateStateMachineOutput
#endif
}
