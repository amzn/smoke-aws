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
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment
// -- Generated Code; do not edit --
//
// StepFunctionsModelDefaultInstances.swift
// StepFunctionsModel
//

import Foundation

public extension ActivityDoesNotExist {
    /**
     Default instance of the ActivityDoesNotExist structure.
     */
    public static let __default: StepFunctionsModel.ActivityDoesNotExist = {
        let defaultInstance = StepFunctionsModel.ActivityDoesNotExist(
            message: nil)

        return defaultInstance
    }()
}

public extension ActivityFailedEventDetails {
    /**
     Default instance of the ActivityFailedEventDetails structure.
     */
    public static let __default: StepFunctionsModel.ActivityFailedEventDetails = {
        let defaultInstance = StepFunctionsModel.ActivityFailedEventDetails(
            cause: nil,
            error: nil)

        return defaultInstance
    }()
}

public extension ActivityLimitExceeded {
    /**
     Default instance of the ActivityLimitExceeded structure.
     */
    public static let __default: StepFunctionsModel.ActivityLimitExceeded = {
        let defaultInstance = StepFunctionsModel.ActivityLimitExceeded(
            message: nil)

        return defaultInstance
    }()
}

public extension ActivityListItem {
    /**
     Default instance of the ActivityListItem structure.
     */
    public static let __default: StepFunctionsModel.ActivityListItem = {
        let defaultInstance = StepFunctionsModel.ActivityListItem(
            activityArn: "0",
            creationDate: 1.52953091375E9,
            name: "0")

        return defaultInstance
    }()
}

public extension ActivityScheduleFailedEventDetails {
    /**
     Default instance of the ActivityScheduleFailedEventDetails structure.
     */
    public static let __default: StepFunctionsModel.ActivityScheduleFailedEventDetails = {
        let defaultInstance = StepFunctionsModel.ActivityScheduleFailedEventDetails(
            cause: nil,
            error: nil)

        return defaultInstance
    }()
}

public extension ActivityScheduledEventDetails {
    /**
     Default instance of the ActivityScheduledEventDetails structure.
     */
    public static let __default: StepFunctionsModel.ActivityScheduledEventDetails = {
        let defaultInstance = StepFunctionsModel.ActivityScheduledEventDetails(
            heartbeatInSeconds: nil,
            input: nil,
            resource: "0",
            timeoutInSeconds: nil)

        return defaultInstance
    }()
}

public extension ActivityStartedEventDetails {
    /**
     Default instance of the ActivityStartedEventDetails structure.
     */
    public static let __default: StepFunctionsModel.ActivityStartedEventDetails = {
        let defaultInstance = StepFunctionsModel.ActivityStartedEventDetails(
            workerName: nil)

        return defaultInstance
    }()
}

public extension ActivitySucceededEventDetails {
    /**
     Default instance of the ActivitySucceededEventDetails structure.
     */
    public static let __default: StepFunctionsModel.ActivitySucceededEventDetails = {
        let defaultInstance = StepFunctionsModel.ActivitySucceededEventDetails(
            output: nil)

        return defaultInstance
    }()
}

public extension ActivityTimedOutEventDetails {
    /**
     Default instance of the ActivityTimedOutEventDetails structure.
     */
    public static let __default: StepFunctionsModel.ActivityTimedOutEventDetails = {
        let defaultInstance = StepFunctionsModel.ActivityTimedOutEventDetails(
            cause: nil,
            error: nil)

        return defaultInstance
    }()
}

public extension ActivityWorkerLimitExceeded {
    /**
     Default instance of the ActivityWorkerLimitExceeded structure.
     */
    public static let __default: StepFunctionsModel.ActivityWorkerLimitExceeded = {
        let defaultInstance = StepFunctionsModel.ActivityWorkerLimitExceeded(
            message: nil)

        return defaultInstance
    }()
}

public extension CreateActivityInput {
    /**
     Default instance of the CreateActivityInput structure.
     */
    public static let __default: StepFunctionsModel.CreateActivityInput = {
        let defaultInstance = StepFunctionsModel.CreateActivityInput(
            name: "0",
            tags: nil)

        return defaultInstance
    }()
}

public extension CreateActivityOutput {
    /**
     Default instance of the CreateActivityOutput structure.
     */
    public static let __default: StepFunctionsModel.CreateActivityOutput = {
        let defaultInstance = StepFunctionsModel.CreateActivityOutput(
            activityArn: "0",
            creationDate: 1.52953091375E9)

        return defaultInstance
    }()
}

public extension CreateStateMachineInput {
    /**
     Default instance of the CreateStateMachineInput structure.
     */
    public static let __default: StepFunctionsModel.CreateStateMachineInput = {
        let defaultInstance = StepFunctionsModel.CreateStateMachineInput(
            definition: "0",
            name: "0",
            roleArn: "0",
            tags: nil)

        return defaultInstance
    }()
}

public extension CreateStateMachineOutput {
    /**
     Default instance of the CreateStateMachineOutput structure.
     */
    public static let __default: StepFunctionsModel.CreateStateMachineOutput = {
        let defaultInstance = StepFunctionsModel.CreateStateMachineOutput(
            creationDate: 1.52953091375E9,
            stateMachineArn: "0")

        return defaultInstance
    }()
}

public extension DeleteActivityInput {
    /**
     Default instance of the DeleteActivityInput structure.
     */
    public static let __default: StepFunctionsModel.DeleteActivityInput = {
        let defaultInstance = StepFunctionsModel.DeleteActivityInput(
            activityArn: "0")

        return defaultInstance
    }()
}

public extension DeleteActivityOutput {
    /**
     Default instance of the DeleteActivityOutput structure.
     */
    public static let __default: StepFunctionsModel.DeleteActivityOutput = {
        let defaultInstance = StepFunctionsModel.DeleteActivityOutput()

        return defaultInstance
    }()
}

public extension DeleteStateMachineInput {
    /**
     Default instance of the DeleteStateMachineInput structure.
     */
    public static let __default: StepFunctionsModel.DeleteStateMachineInput = {
        let defaultInstance = StepFunctionsModel.DeleteStateMachineInput(
            stateMachineArn: "0")

        return defaultInstance
    }()
}

public extension DeleteStateMachineOutput {
    /**
     Default instance of the DeleteStateMachineOutput structure.
     */
    public static let __default: StepFunctionsModel.DeleteStateMachineOutput = {
        let defaultInstance = StepFunctionsModel.DeleteStateMachineOutput()

        return defaultInstance
    }()
}

public extension DescribeActivityInput {
    /**
     Default instance of the DescribeActivityInput structure.
     */
    public static let __default: StepFunctionsModel.DescribeActivityInput = {
        let defaultInstance = StepFunctionsModel.DescribeActivityInput(
            activityArn: "0")

        return defaultInstance
    }()
}

public extension DescribeActivityOutput {
    /**
     Default instance of the DescribeActivityOutput structure.
     */
    public static let __default: StepFunctionsModel.DescribeActivityOutput = {
        let defaultInstance = StepFunctionsModel.DescribeActivityOutput(
            activityArn: "0",
            creationDate: 1.52953091375E9,
            name: "0")

        return defaultInstance
    }()
}

public extension DescribeExecutionInput {
    /**
     Default instance of the DescribeExecutionInput structure.
     */
    public static let __default: StepFunctionsModel.DescribeExecutionInput = {
        let defaultInstance = StepFunctionsModel.DescribeExecutionInput(
            executionArn: "0")

        return defaultInstance
    }()
}

public extension DescribeExecutionOutput {
    /**
     Default instance of the DescribeExecutionOutput structure.
     */
    public static let __default: StepFunctionsModel.DescribeExecutionOutput = {
        let defaultInstance = StepFunctionsModel.DescribeExecutionOutput(
            executionArn: "0",
            input: "",
            name: nil,
            output: nil,
            startDate: 1.52953091375E9,
            stateMachineArn: "0",
            status: .__default,
            stopDate: nil)

        return defaultInstance
    }()
}

public extension DescribeStateMachineForExecutionInput {
    /**
     Default instance of the DescribeStateMachineForExecutionInput structure.
     */
    public static let __default: StepFunctionsModel.DescribeStateMachineForExecutionInput = {
        let defaultInstance = StepFunctionsModel.DescribeStateMachineForExecutionInput(
            executionArn: "0")

        return defaultInstance
    }()
}

public extension DescribeStateMachineForExecutionOutput {
    /**
     Default instance of the DescribeStateMachineForExecutionOutput structure.
     */
    public static let __default: StepFunctionsModel.DescribeStateMachineForExecutionOutput = {
        let defaultInstance = StepFunctionsModel.DescribeStateMachineForExecutionOutput(
            definition: "0",
            name: "0",
            roleArn: "0",
            stateMachineArn: "0",
            updateDate: 1.52953091375E9)

        return defaultInstance
    }()
}

public extension DescribeStateMachineInput {
    /**
     Default instance of the DescribeStateMachineInput structure.
     */
    public static let __default: StepFunctionsModel.DescribeStateMachineInput = {
        let defaultInstance = StepFunctionsModel.DescribeStateMachineInput(
            stateMachineArn: "0")

        return defaultInstance
    }()
}

public extension DescribeStateMachineOutput {
    /**
     Default instance of the DescribeStateMachineOutput structure.
     */
    public static let __default: StepFunctionsModel.DescribeStateMachineOutput = {
        let defaultInstance = StepFunctionsModel.DescribeStateMachineOutput(
            creationDate: 1.52953091375E9,
            definition: "0",
            name: "0",
            roleArn: "0",
            stateMachineArn: "0",
            status: nil)

        return defaultInstance
    }()
}

public extension ExecutionAbortedEventDetails {
    /**
     Default instance of the ExecutionAbortedEventDetails structure.
     */
    public static let __default: StepFunctionsModel.ExecutionAbortedEventDetails = {
        let defaultInstance = StepFunctionsModel.ExecutionAbortedEventDetails(
            cause: nil,
            error: nil)

        return defaultInstance
    }()
}

public extension ExecutionAlreadyExists {
    /**
     Default instance of the ExecutionAlreadyExists structure.
     */
    public static let __default: StepFunctionsModel.ExecutionAlreadyExists = {
        let defaultInstance = StepFunctionsModel.ExecutionAlreadyExists(
            message: nil)

        return defaultInstance
    }()
}

public extension ExecutionDoesNotExist {
    /**
     Default instance of the ExecutionDoesNotExist structure.
     */
    public static let __default: StepFunctionsModel.ExecutionDoesNotExist = {
        let defaultInstance = StepFunctionsModel.ExecutionDoesNotExist(
            message: nil)

        return defaultInstance
    }()
}

public extension ExecutionFailedEventDetails {
    /**
     Default instance of the ExecutionFailedEventDetails structure.
     */
    public static let __default: StepFunctionsModel.ExecutionFailedEventDetails = {
        let defaultInstance = StepFunctionsModel.ExecutionFailedEventDetails(
            cause: nil,
            error: nil)

        return defaultInstance
    }()
}

public extension ExecutionLimitExceeded {
    /**
     Default instance of the ExecutionLimitExceeded structure.
     */
    public static let __default: StepFunctionsModel.ExecutionLimitExceeded = {
        let defaultInstance = StepFunctionsModel.ExecutionLimitExceeded(
            message: nil)

        return defaultInstance
    }()
}

public extension ExecutionListItem {
    /**
     Default instance of the ExecutionListItem structure.
     */
    public static let __default: StepFunctionsModel.ExecutionListItem = {
        let defaultInstance = StepFunctionsModel.ExecutionListItem(
            executionArn: "0",
            name: "0",
            startDate: 1.52953091375E9,
            stateMachineArn: "0",
            status: .__default,
            stopDate: nil)

        return defaultInstance
    }()
}

public extension ExecutionStartedEventDetails {
    /**
     Default instance of the ExecutionStartedEventDetails structure.
     */
    public static let __default: StepFunctionsModel.ExecutionStartedEventDetails = {
        let defaultInstance = StepFunctionsModel.ExecutionStartedEventDetails(
            input: nil,
            roleArn: nil)

        return defaultInstance
    }()
}

public extension ExecutionSucceededEventDetails {
    /**
     Default instance of the ExecutionSucceededEventDetails structure.
     */
    public static let __default: StepFunctionsModel.ExecutionSucceededEventDetails = {
        let defaultInstance = StepFunctionsModel.ExecutionSucceededEventDetails(
            output: nil)

        return defaultInstance
    }()
}

public extension ExecutionTimedOutEventDetails {
    /**
     Default instance of the ExecutionTimedOutEventDetails structure.
     */
    public static let __default: StepFunctionsModel.ExecutionTimedOutEventDetails = {
        let defaultInstance = StepFunctionsModel.ExecutionTimedOutEventDetails(
            cause: nil,
            error: nil)

        return defaultInstance
    }()
}

public extension GetActivityTaskInput {
    /**
     Default instance of the GetActivityTaskInput structure.
     */
    public static let __default: StepFunctionsModel.GetActivityTaskInput = {
        let defaultInstance = StepFunctionsModel.GetActivityTaskInput(
            activityArn: "0",
            workerName: nil)

        return defaultInstance
    }()
}

public extension GetActivityTaskOutput {
    /**
     Default instance of the GetActivityTaskOutput structure.
     */
    public static let __default: StepFunctionsModel.GetActivityTaskOutput = {
        let defaultInstance = StepFunctionsModel.GetActivityTaskOutput(
            input: nil,
            taskToken: nil)

        return defaultInstance
    }()
}

public extension GetExecutionHistoryInput {
    /**
     Default instance of the GetExecutionHistoryInput structure.
     */
    public static let __default: StepFunctionsModel.GetExecutionHistoryInput = {
        let defaultInstance = StepFunctionsModel.GetExecutionHistoryInput(
            executionArn: "0",
            maxResults: nil,
            nextToken: nil,
            reverseOrder: nil)

        return defaultInstance
    }()
}

public extension GetExecutionHistoryOutput {
    /**
     Default instance of the GetExecutionHistoryOutput structure.
     */
    public static let __default: StepFunctionsModel.GetExecutionHistoryOutput = {
        let defaultInstance = StepFunctionsModel.GetExecutionHistoryOutput(
            events: [],
            nextToken: nil)

        return defaultInstance
    }()
}

public extension HistoryEvent {
    /**
     Default instance of the HistoryEvent structure.
     */
    public static let __default: StepFunctionsModel.HistoryEvent = {
        let defaultInstance = StepFunctionsModel.HistoryEvent(
            activityFailedEventDetails: nil,
            activityScheduleFailedEventDetails: nil,
            activityScheduledEventDetails: nil,
            activityStartedEventDetails: nil,
            activitySucceededEventDetails: nil,
            activityTimedOutEventDetails: nil,
            executionAbortedEventDetails: nil,
            executionFailedEventDetails: nil,
            executionStartedEventDetails: nil,
            executionSucceededEventDetails: nil,
            executionTimedOutEventDetails: nil,
            id: 0,
            lambdaFunctionFailedEventDetails: nil,
            lambdaFunctionScheduleFailedEventDetails: nil,
            lambdaFunctionScheduledEventDetails: nil,
            lambdaFunctionStartFailedEventDetails: nil,
            lambdaFunctionSucceededEventDetails: nil,
            lambdaFunctionTimedOutEventDetails: nil,
            previousEventId: nil,
            stateEnteredEventDetails: nil,
            stateExitedEventDetails: nil,
            taskFailedEventDetails: nil,
            taskScheduledEventDetails: nil,
            taskStartFailedEventDetails: nil,
            taskStartedEventDetails: nil,
            taskSubmitFailedEventDetails: nil,
            taskSubmittedEventDetails: nil,
            taskSucceededEventDetails: nil,
            taskTimedOutEventDetails: nil,
            timestamp: 1.52953091375E9,
            type: .__default)

        return defaultInstance
    }()
}

public extension InvalidArn {
    /**
     Default instance of the InvalidArn structure.
     */
    public static let __default: StepFunctionsModel.InvalidArn = {
        let defaultInstance = StepFunctionsModel.InvalidArn(
            message: nil)

        return defaultInstance
    }()
}

public extension InvalidDefinition {
    /**
     Default instance of the InvalidDefinition structure.
     */
    public static let __default: StepFunctionsModel.InvalidDefinition = {
        let defaultInstance = StepFunctionsModel.InvalidDefinition(
            message: nil)

        return defaultInstance
    }()
}

public extension InvalidExecutionInput {
    /**
     Default instance of the InvalidExecutionInput structure.
     */
    public static let __default: StepFunctionsModel.InvalidExecutionInput = {
        let defaultInstance = StepFunctionsModel.InvalidExecutionInput(
            message: nil)

        return defaultInstance
    }()
}

public extension InvalidName {
    /**
     Default instance of the InvalidName structure.
     */
    public static let __default: StepFunctionsModel.InvalidName = {
        let defaultInstance = StepFunctionsModel.InvalidName(
            message: nil)

        return defaultInstance
    }()
}

public extension InvalidOutput {
    /**
     Default instance of the InvalidOutput structure.
     */
    public static let __default: StepFunctionsModel.InvalidOutput = {
        let defaultInstance = StepFunctionsModel.InvalidOutput(
            message: nil)

        return defaultInstance
    }()
}

public extension InvalidToken {
    /**
     Default instance of the InvalidToken structure.
     */
    public static let __default: StepFunctionsModel.InvalidToken = {
        let defaultInstance = StepFunctionsModel.InvalidToken(
            message: nil)

        return defaultInstance
    }()
}

public extension LambdaFunctionFailedEventDetails {
    /**
     Default instance of the LambdaFunctionFailedEventDetails structure.
     */
    public static let __default: StepFunctionsModel.LambdaFunctionFailedEventDetails = {
        let defaultInstance = StepFunctionsModel.LambdaFunctionFailedEventDetails(
            cause: nil,
            error: nil)

        return defaultInstance
    }()
}

public extension LambdaFunctionScheduleFailedEventDetails {
    /**
     Default instance of the LambdaFunctionScheduleFailedEventDetails structure.
     */
    public static let __default: StepFunctionsModel.LambdaFunctionScheduleFailedEventDetails = {
        let defaultInstance = StepFunctionsModel.LambdaFunctionScheduleFailedEventDetails(
            cause: nil,
            error: nil)

        return defaultInstance
    }()
}

public extension LambdaFunctionScheduledEventDetails {
    /**
     Default instance of the LambdaFunctionScheduledEventDetails structure.
     */
    public static let __default: StepFunctionsModel.LambdaFunctionScheduledEventDetails = {
        let defaultInstance = StepFunctionsModel.LambdaFunctionScheduledEventDetails(
            input: nil,
            resource: "0",
            timeoutInSeconds: nil)

        return defaultInstance
    }()
}

public extension LambdaFunctionStartFailedEventDetails {
    /**
     Default instance of the LambdaFunctionStartFailedEventDetails structure.
     */
    public static let __default: StepFunctionsModel.LambdaFunctionStartFailedEventDetails = {
        let defaultInstance = StepFunctionsModel.LambdaFunctionStartFailedEventDetails(
            cause: nil,
            error: nil)

        return defaultInstance
    }()
}

public extension LambdaFunctionSucceededEventDetails {
    /**
     Default instance of the LambdaFunctionSucceededEventDetails structure.
     */
    public static let __default: StepFunctionsModel.LambdaFunctionSucceededEventDetails = {
        let defaultInstance = StepFunctionsModel.LambdaFunctionSucceededEventDetails(
            output: nil)

        return defaultInstance
    }()
}

public extension LambdaFunctionTimedOutEventDetails {
    /**
     Default instance of the LambdaFunctionTimedOutEventDetails structure.
     */
    public static let __default: StepFunctionsModel.LambdaFunctionTimedOutEventDetails = {
        let defaultInstance = StepFunctionsModel.LambdaFunctionTimedOutEventDetails(
            cause: nil,
            error: nil)

        return defaultInstance
    }()
}

public extension ListActivitiesInput {
    /**
     Default instance of the ListActivitiesInput structure.
     */
    public static let __default: StepFunctionsModel.ListActivitiesInput = {
        let defaultInstance = StepFunctionsModel.ListActivitiesInput(
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListActivitiesOutput {
    /**
     Default instance of the ListActivitiesOutput structure.
     */
    public static let __default: StepFunctionsModel.ListActivitiesOutput = {
        let defaultInstance = StepFunctionsModel.ListActivitiesOutput(
            activities: [],
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListExecutionsInput {
    /**
     Default instance of the ListExecutionsInput structure.
     */
    public static let __default: StepFunctionsModel.ListExecutionsInput = {
        let defaultInstance = StepFunctionsModel.ListExecutionsInput(
            maxResults: nil,
            nextToken: nil,
            stateMachineArn: "0",
            statusFilter: nil)

        return defaultInstance
    }()
}

public extension ListExecutionsOutput {
    /**
     Default instance of the ListExecutionsOutput structure.
     */
    public static let __default: StepFunctionsModel.ListExecutionsOutput = {
        let defaultInstance = StepFunctionsModel.ListExecutionsOutput(
            executions: [],
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListStateMachinesInput {
    /**
     Default instance of the ListStateMachinesInput structure.
     */
    public static let __default: StepFunctionsModel.ListStateMachinesInput = {
        let defaultInstance = StepFunctionsModel.ListStateMachinesInput(
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListStateMachinesOutput {
    /**
     Default instance of the ListStateMachinesOutput structure.
     */
    public static let __default: StepFunctionsModel.ListStateMachinesOutput = {
        let defaultInstance = StepFunctionsModel.ListStateMachinesOutput(
            nextToken: nil,
            stateMachines: [])

        return defaultInstance
    }()
}

public extension ListTagsForResourceInput {
    /**
     Default instance of the ListTagsForResourceInput structure.
     */
    public static let __default: StepFunctionsModel.ListTagsForResourceInput = {
        let defaultInstance = StepFunctionsModel.ListTagsForResourceInput(
            resourceArn: "0")

        return defaultInstance
    }()
}

public extension ListTagsForResourceOutput {
    /**
     Default instance of the ListTagsForResourceOutput structure.
     */
    public static let __default: StepFunctionsModel.ListTagsForResourceOutput = {
        let defaultInstance = StepFunctionsModel.ListTagsForResourceOutput(
            tags: nil)

        return defaultInstance
    }()
}

public extension MissingRequiredParameter {
    /**
     Default instance of the MissingRequiredParameter structure.
     */
    public static let __default: StepFunctionsModel.MissingRequiredParameter = {
        let defaultInstance = StepFunctionsModel.MissingRequiredParameter(
            message: nil)

        return defaultInstance
    }()
}

public extension ResourceNotFound {
    /**
     Default instance of the ResourceNotFound structure.
     */
    public static let __default: StepFunctionsModel.ResourceNotFound = {
        let defaultInstance = StepFunctionsModel.ResourceNotFound(
            message: nil,
            resourceName: nil)

        return defaultInstance
    }()
}

public extension SendTaskFailureInput {
    /**
     Default instance of the SendTaskFailureInput structure.
     */
    public static let __default: StepFunctionsModel.SendTaskFailureInput = {
        let defaultInstance = StepFunctionsModel.SendTaskFailureInput(
            cause: nil,
            error: nil,
            taskToken: "0")

        return defaultInstance
    }()
}

public extension SendTaskFailureOutput {
    /**
     Default instance of the SendTaskFailureOutput structure.
     */
    public static let __default: StepFunctionsModel.SendTaskFailureOutput = {
        let defaultInstance = StepFunctionsModel.SendTaskFailureOutput()

        return defaultInstance
    }()
}

public extension SendTaskHeartbeatInput {
    /**
     Default instance of the SendTaskHeartbeatInput structure.
     */
    public static let __default: StepFunctionsModel.SendTaskHeartbeatInput = {
        let defaultInstance = StepFunctionsModel.SendTaskHeartbeatInput(
            taskToken: "0")

        return defaultInstance
    }()
}

public extension SendTaskHeartbeatOutput {
    /**
     Default instance of the SendTaskHeartbeatOutput structure.
     */
    public static let __default: StepFunctionsModel.SendTaskHeartbeatOutput = {
        let defaultInstance = StepFunctionsModel.SendTaskHeartbeatOutput()

        return defaultInstance
    }()
}

public extension SendTaskSuccessInput {
    /**
     Default instance of the SendTaskSuccessInput structure.
     */
    public static let __default: StepFunctionsModel.SendTaskSuccessInput = {
        let defaultInstance = StepFunctionsModel.SendTaskSuccessInput(
            output: "",
            taskToken: "0")

        return defaultInstance
    }()
}

public extension SendTaskSuccessOutput {
    /**
     Default instance of the SendTaskSuccessOutput structure.
     */
    public static let __default: StepFunctionsModel.SendTaskSuccessOutput = {
        let defaultInstance = StepFunctionsModel.SendTaskSuccessOutput()

        return defaultInstance
    }()
}

public extension StartExecutionInput {
    /**
     Default instance of the StartExecutionInput structure.
     */
    public static let __default: StepFunctionsModel.StartExecutionInput = {
        let defaultInstance = StepFunctionsModel.StartExecutionInput(
            input: nil,
            name: nil,
            stateMachineArn: "0")

        return defaultInstance
    }()
}

public extension StartExecutionOutput {
    /**
     Default instance of the StartExecutionOutput structure.
     */
    public static let __default: StepFunctionsModel.StartExecutionOutput = {
        let defaultInstance = StepFunctionsModel.StartExecutionOutput(
            executionArn: "0",
            startDate: 1.52953091375E9)

        return defaultInstance
    }()
}

public extension StateEnteredEventDetails {
    /**
     Default instance of the StateEnteredEventDetails structure.
     */
    public static let __default: StepFunctionsModel.StateEnteredEventDetails = {
        let defaultInstance = StepFunctionsModel.StateEnteredEventDetails(
            input: nil,
            name: "0")

        return defaultInstance
    }()
}

public extension StateExitedEventDetails {
    /**
     Default instance of the StateExitedEventDetails structure.
     */
    public static let __default: StepFunctionsModel.StateExitedEventDetails = {
        let defaultInstance = StepFunctionsModel.StateExitedEventDetails(
            name: "0",
            output: nil)

        return defaultInstance
    }()
}

public extension StateMachineAlreadyExists {
    /**
     Default instance of the StateMachineAlreadyExists structure.
     */
    public static let __default: StepFunctionsModel.StateMachineAlreadyExists = {
        let defaultInstance = StepFunctionsModel.StateMachineAlreadyExists(
            message: nil)

        return defaultInstance
    }()
}

public extension StateMachineDeleting {
    /**
     Default instance of the StateMachineDeleting structure.
     */
    public static let __default: StepFunctionsModel.StateMachineDeleting = {
        let defaultInstance = StepFunctionsModel.StateMachineDeleting(
            message: nil)

        return defaultInstance
    }()
}

public extension StateMachineDoesNotExist {
    /**
     Default instance of the StateMachineDoesNotExist structure.
     */
    public static let __default: StepFunctionsModel.StateMachineDoesNotExist = {
        let defaultInstance = StepFunctionsModel.StateMachineDoesNotExist(
            message: nil)

        return defaultInstance
    }()
}

public extension StateMachineLimitExceeded {
    /**
     Default instance of the StateMachineLimitExceeded structure.
     */
    public static let __default: StepFunctionsModel.StateMachineLimitExceeded = {
        let defaultInstance = StepFunctionsModel.StateMachineLimitExceeded(
            message: nil)

        return defaultInstance
    }()
}

public extension StateMachineListItem {
    /**
     Default instance of the StateMachineListItem structure.
     */
    public static let __default: StepFunctionsModel.StateMachineListItem = {
        let defaultInstance = StepFunctionsModel.StateMachineListItem(
            creationDate: 1.52953091375E9,
            name: "0",
            stateMachineArn: "0")

        return defaultInstance
    }()
}

public extension StopExecutionInput {
    /**
     Default instance of the StopExecutionInput structure.
     */
    public static let __default: StepFunctionsModel.StopExecutionInput = {
        let defaultInstance = StepFunctionsModel.StopExecutionInput(
            cause: nil,
            error: nil,
            executionArn: "0")

        return defaultInstance
    }()
}

public extension StopExecutionOutput {
    /**
     Default instance of the StopExecutionOutput structure.
     */
    public static let __default: StepFunctionsModel.StopExecutionOutput = {
        let defaultInstance = StepFunctionsModel.StopExecutionOutput(
            stopDate: 1.52953091375E9)

        return defaultInstance
    }()
}

public extension Tag {
    /**
     Default instance of the Tag structure.
     */
    public static let __default: StepFunctionsModel.Tag = {
        let defaultInstance = StepFunctionsModel.Tag(
            key: nil,
            value: nil)

        return defaultInstance
    }()
}

public extension TagResourceInput {
    /**
     Default instance of the TagResourceInput structure.
     */
    public static let __default: StepFunctionsModel.TagResourceInput = {
        let defaultInstance = StepFunctionsModel.TagResourceInput(
            resourceArn: "0",
            tags: [])

        return defaultInstance
    }()
}

public extension TagResourceOutput {
    /**
     Default instance of the TagResourceOutput structure.
     */
    public static let __default: StepFunctionsModel.TagResourceOutput = {
        let defaultInstance = StepFunctionsModel.TagResourceOutput()

        return defaultInstance
    }()
}

public extension TaskDoesNotExist {
    /**
     Default instance of the TaskDoesNotExist structure.
     */
    public static let __default: StepFunctionsModel.TaskDoesNotExist = {
        let defaultInstance = StepFunctionsModel.TaskDoesNotExist(
            message: nil)

        return defaultInstance
    }()
}

public extension TaskFailedEventDetails {
    /**
     Default instance of the TaskFailedEventDetails structure.
     */
    public static let __default: StepFunctionsModel.TaskFailedEventDetails = {
        let defaultInstance = StepFunctionsModel.TaskFailedEventDetails(
            cause: nil,
            error: nil,
            resource: "0",
            resourceType: "0")

        return defaultInstance
    }()
}

public extension TaskScheduledEventDetails {
    /**
     Default instance of the TaskScheduledEventDetails structure.
     */
    public static let __default: StepFunctionsModel.TaskScheduledEventDetails = {
        let defaultInstance = StepFunctionsModel.TaskScheduledEventDetails(
            parameters: "",
            region: "0",
            resource: "0",
            resourceType: "0",
            timeoutInSeconds: nil)

        return defaultInstance
    }()
}

public extension TaskStartFailedEventDetails {
    /**
     Default instance of the TaskStartFailedEventDetails structure.
     */
    public static let __default: StepFunctionsModel.TaskStartFailedEventDetails = {
        let defaultInstance = StepFunctionsModel.TaskStartFailedEventDetails(
            cause: nil,
            error: nil,
            resource: "0",
            resourceType: "0")

        return defaultInstance
    }()
}

public extension TaskStartedEventDetails {
    /**
     Default instance of the TaskStartedEventDetails structure.
     */
    public static let __default: StepFunctionsModel.TaskStartedEventDetails = {
        let defaultInstance = StepFunctionsModel.TaskStartedEventDetails(
            resource: "0",
            resourceType: "0")

        return defaultInstance
    }()
}

public extension TaskSubmitFailedEventDetails {
    /**
     Default instance of the TaskSubmitFailedEventDetails structure.
     */
    public static let __default: StepFunctionsModel.TaskSubmitFailedEventDetails = {
        let defaultInstance = StepFunctionsModel.TaskSubmitFailedEventDetails(
            cause: nil,
            error: nil,
            resource: "0",
            resourceType: "0")

        return defaultInstance
    }()
}

public extension TaskSubmittedEventDetails {
    /**
     Default instance of the TaskSubmittedEventDetails structure.
     */
    public static let __default: StepFunctionsModel.TaskSubmittedEventDetails = {
        let defaultInstance = StepFunctionsModel.TaskSubmittedEventDetails(
            output: nil,
            resource: "0",
            resourceType: "0")

        return defaultInstance
    }()
}

public extension TaskSucceededEventDetails {
    /**
     Default instance of the TaskSucceededEventDetails structure.
     */
    public static let __default: StepFunctionsModel.TaskSucceededEventDetails = {
        let defaultInstance = StepFunctionsModel.TaskSucceededEventDetails(
            output: nil,
            resource: "0",
            resourceType: "0")

        return defaultInstance
    }()
}

public extension TaskTimedOut {
    /**
     Default instance of the TaskTimedOut structure.
     */
    public static let __default: StepFunctionsModel.TaskTimedOut = {
        let defaultInstance = StepFunctionsModel.TaskTimedOut(
            message: nil)

        return defaultInstance
    }()
}

public extension TaskTimedOutEventDetails {
    /**
     Default instance of the TaskTimedOutEventDetails structure.
     */
    public static let __default: StepFunctionsModel.TaskTimedOutEventDetails = {
        let defaultInstance = StepFunctionsModel.TaskTimedOutEventDetails(
            cause: nil,
            error: nil,
            resource: "0",
            resourceType: "0")

        return defaultInstance
    }()
}

public extension TooManyTags {
    /**
     Default instance of the TooManyTags structure.
     */
    public static let __default: StepFunctionsModel.TooManyTags = {
        let defaultInstance = StepFunctionsModel.TooManyTags(
            message: nil,
            resourceName: nil)

        return defaultInstance
    }()
}

public extension UntagResourceInput {
    /**
     Default instance of the UntagResourceInput structure.
     */
    public static let __default: StepFunctionsModel.UntagResourceInput = {
        let defaultInstance = StepFunctionsModel.UntagResourceInput(
            resourceArn: "0",
            tagKeys: [])

        return defaultInstance
    }()
}

public extension UntagResourceOutput {
    /**
     Default instance of the UntagResourceOutput structure.
     */
    public static let __default: StepFunctionsModel.UntagResourceOutput = {
        let defaultInstance = StepFunctionsModel.UntagResourceOutput()

        return defaultInstance
    }()
}

public extension UpdateStateMachineInput {
    /**
     Default instance of the UpdateStateMachineInput structure.
     */
    public static let __default: StepFunctionsModel.UpdateStateMachineInput = {
        let defaultInstance = StepFunctionsModel.UpdateStateMachineInput(
            definition: nil,
            roleArn: nil,
            stateMachineArn: "0")

        return defaultInstance
    }()
}

public extension UpdateStateMachineOutput {
    /**
     Default instance of the UpdateStateMachineOutput structure.
     */
    public static let __default: StepFunctionsModel.UpdateStateMachineOutput = {
        let defaultInstance = StepFunctionsModel.UpdateStateMachineOutput(
            updateDate: 1.52953091375E9)

        return defaultInstance
    }()
}
