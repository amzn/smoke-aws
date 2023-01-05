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
// StepFunctionsModelDefaultInstances.swift
// StepFunctionsModel
//

import Foundation

public extension ActivityDoesNotExist {
    /**
     Default instance of the ActivityDoesNotExist structure.
     */
    static let __default: StepFunctionsModel.ActivityDoesNotExist = {
        let defaultInstance = StepFunctionsModel.ActivityDoesNotExist(
            message: nil)

        return defaultInstance
    }()
}

public extension ActivityFailedEventDetails {
    /**
     Default instance of the ActivityFailedEventDetails structure.
     */
    static let __default: StepFunctionsModel.ActivityFailedEventDetails = {
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
    static let __default: StepFunctionsModel.ActivityLimitExceeded = {
        let defaultInstance = StepFunctionsModel.ActivityLimitExceeded(
            message: nil)

        return defaultInstance
    }()
}

public extension ActivityListItem {
    /**
     Default instance of the ActivityListItem structure.
     */
    static let __default: StepFunctionsModel.ActivityListItem = {
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
    static let __default: StepFunctionsModel.ActivityScheduleFailedEventDetails = {
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
    static let __default: StepFunctionsModel.ActivityScheduledEventDetails = {
        let defaultInstance = StepFunctionsModel.ActivityScheduledEventDetails(
            heartbeatInSeconds: nil,
            input: nil,
            inputDetails: nil,
            resource: "0",
            timeoutInSeconds: nil)

        return defaultInstance
    }()
}

public extension ActivityStartedEventDetails {
    /**
     Default instance of the ActivityStartedEventDetails structure.
     */
    static let __default: StepFunctionsModel.ActivityStartedEventDetails = {
        let defaultInstance = StepFunctionsModel.ActivityStartedEventDetails(
            workerName: nil)

        return defaultInstance
    }()
}

public extension ActivitySucceededEventDetails {
    /**
     Default instance of the ActivitySucceededEventDetails structure.
     */
    static let __default: StepFunctionsModel.ActivitySucceededEventDetails = {
        let defaultInstance = StepFunctionsModel.ActivitySucceededEventDetails(
            output: nil,
            outputDetails: nil)

        return defaultInstance
    }()
}

public extension ActivityTimedOutEventDetails {
    /**
     Default instance of the ActivityTimedOutEventDetails structure.
     */
    static let __default: StepFunctionsModel.ActivityTimedOutEventDetails = {
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
    static let __default: StepFunctionsModel.ActivityWorkerLimitExceeded = {
        let defaultInstance = StepFunctionsModel.ActivityWorkerLimitExceeded(
            message: nil)

        return defaultInstance
    }()
}

public extension BillingDetails {
    /**
     Default instance of the BillingDetails structure.
     */
    static let __default: StepFunctionsModel.BillingDetails = {
        let defaultInstance = StepFunctionsModel.BillingDetails(
            billedDurationInMilliseconds: nil,
            billedMemoryUsedInMB: nil)

        return defaultInstance
    }()
}

public extension CloudWatchEventsExecutionDataDetails {
    /**
     Default instance of the CloudWatchEventsExecutionDataDetails structure.
     */
    static let __default: StepFunctionsModel.CloudWatchEventsExecutionDataDetails = {
        let defaultInstance = StepFunctionsModel.CloudWatchEventsExecutionDataDetails(
            included: nil)

        return defaultInstance
    }()
}

public extension CloudWatchLogsLogGroup {
    /**
     Default instance of the CloudWatchLogsLogGroup structure.
     */
    static let __default: StepFunctionsModel.CloudWatchLogsLogGroup = {
        let defaultInstance = StepFunctionsModel.CloudWatchLogsLogGroup(
            logGroupArn: nil)

        return defaultInstance
    }()
}

public extension CreateActivityInput {
    /**
     Default instance of the CreateActivityInput structure.
     */
    static let __default: StepFunctionsModel.CreateActivityInput = {
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
    static let __default: StepFunctionsModel.CreateActivityOutput = {
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
    static let __default: StepFunctionsModel.CreateStateMachineInput = {
        let defaultInstance = StepFunctionsModel.CreateStateMachineInput(
            definition: "0",
            loggingConfiguration: nil,
            name: "0",
            roleArn: "0",
            tags: nil,
            tracingConfiguration: nil,
            type: nil)

        return defaultInstance
    }()
}

public extension CreateStateMachineOutput {
    /**
     Default instance of the CreateStateMachineOutput structure.
     */
    static let __default: StepFunctionsModel.CreateStateMachineOutput = {
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
    static let __default: StepFunctionsModel.DeleteActivityInput = {
        let defaultInstance = StepFunctionsModel.DeleteActivityInput(
            activityArn: "0")

        return defaultInstance
    }()
}

public extension DeleteActivityOutput {
    /**
     Default instance of the DeleteActivityOutput structure.
     */
    static let __default: StepFunctionsModel.DeleteActivityOutput = {
        let defaultInstance = StepFunctionsModel.DeleteActivityOutput()

        return defaultInstance
    }()
}

public extension DeleteStateMachineInput {
    /**
     Default instance of the DeleteStateMachineInput structure.
     */
    static let __default: StepFunctionsModel.DeleteStateMachineInput = {
        let defaultInstance = StepFunctionsModel.DeleteStateMachineInput(
            stateMachineArn: "0")

        return defaultInstance
    }()
}

public extension DeleteStateMachineOutput {
    /**
     Default instance of the DeleteStateMachineOutput structure.
     */
    static let __default: StepFunctionsModel.DeleteStateMachineOutput = {
        let defaultInstance = StepFunctionsModel.DeleteStateMachineOutput()

        return defaultInstance
    }()
}

public extension DescribeActivityInput {
    /**
     Default instance of the DescribeActivityInput structure.
     */
    static let __default: StepFunctionsModel.DescribeActivityInput = {
        let defaultInstance = StepFunctionsModel.DescribeActivityInput(
            activityArn: "0")

        return defaultInstance
    }()
}

public extension DescribeActivityOutput {
    /**
     Default instance of the DescribeActivityOutput structure.
     */
    static let __default: StepFunctionsModel.DescribeActivityOutput = {
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
    static let __default: StepFunctionsModel.DescribeExecutionInput = {
        let defaultInstance = StepFunctionsModel.DescribeExecutionInput(
            executionArn: "0")

        return defaultInstance
    }()
}

public extension DescribeExecutionOutput {
    /**
     Default instance of the DescribeExecutionOutput structure.
     */
    static let __default: StepFunctionsModel.DescribeExecutionOutput = {
        let defaultInstance = StepFunctionsModel.DescribeExecutionOutput(
            cause: nil,
            error: nil,
            executionArn: "0",
            input: nil,
            inputDetails: nil,
            mapRunArn: nil,
            name: nil,
            output: nil,
            outputDetails: nil,
            startDate: 1.52953091375E9,
            stateMachineArn: "0",
            status: .__default,
            stopDate: nil,
            traceHeader: nil)

        return defaultInstance
    }()
}

public extension DescribeMapRunInput {
    /**
     Default instance of the DescribeMapRunInput structure.
     */
    static let __default: StepFunctionsModel.DescribeMapRunInput = {
        let defaultInstance = StepFunctionsModel.DescribeMapRunInput(
            mapRunArn: "0")

        return defaultInstance
    }()
}

public extension DescribeMapRunOutput {
    /**
     Default instance of the DescribeMapRunOutput structure.
     */
    static let __default: StepFunctionsModel.DescribeMapRunOutput = {
        let defaultInstance = StepFunctionsModel.DescribeMapRunOutput(
            executionArn: "0",
            executionCounts: MapRunExecutionCounts.__default,
            itemCounts: MapRunItemCounts.__default,
            mapRunArn: "0",
            maxConcurrency: 0,
            startDate: 1.52953091375E9,
            status: .__default,
            stopDate: nil,
            toleratedFailureCount: 0,
            toleratedFailurePercentage: 0.0)

        return defaultInstance
    }()
}

public extension DescribeStateMachineForExecutionInput {
    /**
     Default instance of the DescribeStateMachineForExecutionInput structure.
     */
    static let __default: StepFunctionsModel.DescribeStateMachineForExecutionInput = {
        let defaultInstance = StepFunctionsModel.DescribeStateMachineForExecutionInput(
            executionArn: "0")

        return defaultInstance
    }()
}

public extension DescribeStateMachineForExecutionOutput {
    /**
     Default instance of the DescribeStateMachineForExecutionOutput structure.
     */
    static let __default: StepFunctionsModel.DescribeStateMachineForExecutionOutput = {
        let defaultInstance = StepFunctionsModel.DescribeStateMachineForExecutionOutput(
            definition: "0",
            label: nil,
            loggingConfiguration: nil,
            mapRunArn: nil,
            name: "0",
            roleArn: "0",
            stateMachineArn: "0",
            tracingConfiguration: nil,
            updateDate: 1.52953091375E9)

        return defaultInstance
    }()
}

public extension DescribeStateMachineInput {
    /**
     Default instance of the DescribeStateMachineInput structure.
     */
    static let __default: StepFunctionsModel.DescribeStateMachineInput = {
        let defaultInstance = StepFunctionsModel.DescribeStateMachineInput(
            stateMachineArn: "0")

        return defaultInstance
    }()
}

public extension DescribeStateMachineOutput {
    /**
     Default instance of the DescribeStateMachineOutput structure.
     */
    static let __default: StepFunctionsModel.DescribeStateMachineOutput = {
        let defaultInstance = StepFunctionsModel.DescribeStateMachineOutput(
            creationDate: 1.52953091375E9,
            definition: "0",
            label: nil,
            loggingConfiguration: nil,
            name: "0",
            roleArn: "0",
            stateMachineArn: "0",
            status: nil,
            tracingConfiguration: nil,
            type: .__default)

        return defaultInstance
    }()
}

public extension ExecutionAbortedEventDetails {
    /**
     Default instance of the ExecutionAbortedEventDetails structure.
     */
    static let __default: StepFunctionsModel.ExecutionAbortedEventDetails = {
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
    static let __default: StepFunctionsModel.ExecutionAlreadyExists = {
        let defaultInstance = StepFunctionsModel.ExecutionAlreadyExists(
            message: nil)

        return defaultInstance
    }()
}

public extension ExecutionDoesNotExist {
    /**
     Default instance of the ExecutionDoesNotExist structure.
     */
    static let __default: StepFunctionsModel.ExecutionDoesNotExist = {
        let defaultInstance = StepFunctionsModel.ExecutionDoesNotExist(
            message: nil)

        return defaultInstance
    }()
}

public extension ExecutionFailedEventDetails {
    /**
     Default instance of the ExecutionFailedEventDetails structure.
     */
    static let __default: StepFunctionsModel.ExecutionFailedEventDetails = {
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
    static let __default: StepFunctionsModel.ExecutionLimitExceeded = {
        let defaultInstance = StepFunctionsModel.ExecutionLimitExceeded(
            message: nil)

        return defaultInstance
    }()
}

public extension ExecutionListItem {
    /**
     Default instance of the ExecutionListItem structure.
     */
    static let __default: StepFunctionsModel.ExecutionListItem = {
        let defaultInstance = StepFunctionsModel.ExecutionListItem(
            executionArn: "0",
            itemCount: nil,
            mapRunArn: nil,
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
    static let __default: StepFunctionsModel.ExecutionStartedEventDetails = {
        let defaultInstance = StepFunctionsModel.ExecutionStartedEventDetails(
            input: nil,
            inputDetails: nil,
            roleArn: nil)

        return defaultInstance
    }()
}

public extension ExecutionSucceededEventDetails {
    /**
     Default instance of the ExecutionSucceededEventDetails structure.
     */
    static let __default: StepFunctionsModel.ExecutionSucceededEventDetails = {
        let defaultInstance = StepFunctionsModel.ExecutionSucceededEventDetails(
            output: nil,
            outputDetails: nil)

        return defaultInstance
    }()
}

public extension ExecutionTimedOutEventDetails {
    /**
     Default instance of the ExecutionTimedOutEventDetails structure.
     */
    static let __default: StepFunctionsModel.ExecutionTimedOutEventDetails = {
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
    static let __default: StepFunctionsModel.GetActivityTaskInput = {
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
    static let __default: StepFunctionsModel.GetActivityTaskOutput = {
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
    static let __default: StepFunctionsModel.GetExecutionHistoryInput = {
        let defaultInstance = StepFunctionsModel.GetExecutionHistoryInput(
            executionArn: "0",
            includeExecutionData: nil,
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
    static let __default: StepFunctionsModel.GetExecutionHistoryOutput = {
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
    static let __default: StepFunctionsModel.HistoryEvent = {
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
            mapIterationAbortedEventDetails: nil,
            mapIterationFailedEventDetails: nil,
            mapIterationStartedEventDetails: nil,
            mapIterationSucceededEventDetails: nil,
            mapRunFailedEventDetails: nil,
            mapRunStartedEventDetails: nil,
            mapStateStartedEventDetails: nil,
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

public extension HistoryEventExecutionDataDetails {
    /**
     Default instance of the HistoryEventExecutionDataDetails structure.
     */
    static let __default: StepFunctionsModel.HistoryEventExecutionDataDetails = {
        let defaultInstance = StepFunctionsModel.HistoryEventExecutionDataDetails(
            truncated: nil)

        return defaultInstance
    }()
}

public extension InvalidArn {
    /**
     Default instance of the InvalidArn structure.
     */
    static let __default: StepFunctionsModel.InvalidArn = {
        let defaultInstance = StepFunctionsModel.InvalidArn(
            message: nil)

        return defaultInstance
    }()
}

public extension InvalidDefinition {
    /**
     Default instance of the InvalidDefinition structure.
     */
    static let __default: StepFunctionsModel.InvalidDefinition = {
        let defaultInstance = StepFunctionsModel.InvalidDefinition(
            message: nil)

        return defaultInstance
    }()
}

public extension InvalidExecutionInput {
    /**
     Default instance of the InvalidExecutionInput structure.
     */
    static let __default: StepFunctionsModel.InvalidExecutionInput = {
        let defaultInstance = StepFunctionsModel.InvalidExecutionInput(
            message: nil)

        return defaultInstance
    }()
}

public extension InvalidLoggingConfiguration {
    /**
     Default instance of the InvalidLoggingConfiguration structure.
     */
    static let __default: StepFunctionsModel.InvalidLoggingConfiguration = {
        let defaultInstance = StepFunctionsModel.InvalidLoggingConfiguration(
            message: nil)

        return defaultInstance
    }()
}

public extension InvalidName {
    /**
     Default instance of the InvalidName structure.
     */
    static let __default: StepFunctionsModel.InvalidName = {
        let defaultInstance = StepFunctionsModel.InvalidName(
            message: nil)

        return defaultInstance
    }()
}

public extension InvalidOutput {
    /**
     Default instance of the InvalidOutput structure.
     */
    static let __default: StepFunctionsModel.InvalidOutput = {
        let defaultInstance = StepFunctionsModel.InvalidOutput(
            message: nil)

        return defaultInstance
    }()
}

public extension InvalidToken {
    /**
     Default instance of the InvalidToken structure.
     */
    static let __default: StepFunctionsModel.InvalidToken = {
        let defaultInstance = StepFunctionsModel.InvalidToken(
            message: nil)

        return defaultInstance
    }()
}

public extension InvalidTracingConfiguration {
    /**
     Default instance of the InvalidTracingConfiguration structure.
     */
    static let __default: StepFunctionsModel.InvalidTracingConfiguration = {
        let defaultInstance = StepFunctionsModel.InvalidTracingConfiguration(
            message: nil)

        return defaultInstance
    }()
}

public extension LambdaFunctionFailedEventDetails {
    /**
     Default instance of the LambdaFunctionFailedEventDetails structure.
     */
    static let __default: StepFunctionsModel.LambdaFunctionFailedEventDetails = {
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
    static let __default: StepFunctionsModel.LambdaFunctionScheduleFailedEventDetails = {
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
    static let __default: StepFunctionsModel.LambdaFunctionScheduledEventDetails = {
        let defaultInstance = StepFunctionsModel.LambdaFunctionScheduledEventDetails(
            input: nil,
            inputDetails: nil,
            resource: "0",
            taskCredentials: nil,
            timeoutInSeconds: nil)

        return defaultInstance
    }()
}

public extension LambdaFunctionStartFailedEventDetails {
    /**
     Default instance of the LambdaFunctionStartFailedEventDetails structure.
     */
    static let __default: StepFunctionsModel.LambdaFunctionStartFailedEventDetails = {
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
    static let __default: StepFunctionsModel.LambdaFunctionSucceededEventDetails = {
        let defaultInstance = StepFunctionsModel.LambdaFunctionSucceededEventDetails(
            output: nil,
            outputDetails: nil)

        return defaultInstance
    }()
}

public extension LambdaFunctionTimedOutEventDetails {
    /**
     Default instance of the LambdaFunctionTimedOutEventDetails structure.
     */
    static let __default: StepFunctionsModel.LambdaFunctionTimedOutEventDetails = {
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
    static let __default: StepFunctionsModel.ListActivitiesInput = {
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
    static let __default: StepFunctionsModel.ListActivitiesOutput = {
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
    static let __default: StepFunctionsModel.ListExecutionsInput = {
        let defaultInstance = StepFunctionsModel.ListExecutionsInput(
            mapRunArn: nil,
            maxResults: nil,
            nextToken: nil,
            stateMachineArn: nil,
            statusFilter: nil)

        return defaultInstance
    }()
}

public extension ListExecutionsOutput {
    /**
     Default instance of the ListExecutionsOutput structure.
     */
    static let __default: StepFunctionsModel.ListExecutionsOutput = {
        let defaultInstance = StepFunctionsModel.ListExecutionsOutput(
            executions: [],
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListMapRunsInput {
    /**
     Default instance of the ListMapRunsInput structure.
     */
    static let __default: StepFunctionsModel.ListMapRunsInput = {
        let defaultInstance = StepFunctionsModel.ListMapRunsInput(
            executionArn: "0",
            maxResults: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListMapRunsOutput {
    /**
     Default instance of the ListMapRunsOutput structure.
     */
    static let __default: StepFunctionsModel.ListMapRunsOutput = {
        let defaultInstance = StepFunctionsModel.ListMapRunsOutput(
            mapRuns: [],
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListStateMachinesInput {
    /**
     Default instance of the ListStateMachinesInput structure.
     */
    static let __default: StepFunctionsModel.ListStateMachinesInput = {
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
    static let __default: StepFunctionsModel.ListStateMachinesOutput = {
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
    static let __default: StepFunctionsModel.ListTagsForResourceInput = {
        let defaultInstance = StepFunctionsModel.ListTagsForResourceInput(
            resourceArn: "0")

        return defaultInstance
    }()
}

public extension ListTagsForResourceOutput {
    /**
     Default instance of the ListTagsForResourceOutput structure.
     */
    static let __default: StepFunctionsModel.ListTagsForResourceOutput = {
        let defaultInstance = StepFunctionsModel.ListTagsForResourceOutput(
            tags: nil)

        return defaultInstance
    }()
}

public extension LogDestination {
    /**
     Default instance of the LogDestination structure.
     */
    static let __default: StepFunctionsModel.LogDestination = {
        let defaultInstance = StepFunctionsModel.LogDestination(
            cloudWatchLogsLogGroup: nil)

        return defaultInstance
    }()
}

public extension LoggingConfiguration {
    /**
     Default instance of the LoggingConfiguration structure.
     */
    static let __default: StepFunctionsModel.LoggingConfiguration = {
        let defaultInstance = StepFunctionsModel.LoggingConfiguration(
            destinations: nil,
            includeExecutionData: nil,
            level: nil)

        return defaultInstance
    }()
}

public extension MapIterationEventDetails {
    /**
     Default instance of the MapIterationEventDetails structure.
     */
    static let __default: StepFunctionsModel.MapIterationEventDetails = {
        let defaultInstance = StepFunctionsModel.MapIterationEventDetails(
            index: nil,
            name: nil)

        return defaultInstance
    }()
}

public extension MapRunExecutionCounts {
    /**
     Default instance of the MapRunExecutionCounts structure.
     */
    static let __default: StepFunctionsModel.MapRunExecutionCounts = {
        let defaultInstance = StepFunctionsModel.MapRunExecutionCounts(
            aborted: 0,
            failed: 0,
            pending: 0,
            resultsWritten: 0,
            running: 0,
            succeeded: 0,
            timedOut: 0,
            total: 0)

        return defaultInstance
    }()
}

public extension MapRunFailedEventDetails {
    /**
     Default instance of the MapRunFailedEventDetails structure.
     */
    static let __default: StepFunctionsModel.MapRunFailedEventDetails = {
        let defaultInstance = StepFunctionsModel.MapRunFailedEventDetails(
            cause: nil,
            error: nil)

        return defaultInstance
    }()
}

public extension MapRunItemCounts {
    /**
     Default instance of the MapRunItemCounts structure.
     */
    static let __default: StepFunctionsModel.MapRunItemCounts = {
        let defaultInstance = StepFunctionsModel.MapRunItemCounts(
            aborted: 0,
            failed: 0,
            pending: 0,
            resultsWritten: 0,
            running: 0,
            succeeded: 0,
            timedOut: 0,
            total: 0)

        return defaultInstance
    }()
}

public extension MapRunListItem {
    /**
     Default instance of the MapRunListItem structure.
     */
    static let __default: StepFunctionsModel.MapRunListItem = {
        let defaultInstance = StepFunctionsModel.MapRunListItem(
            executionArn: "0",
            mapRunArn: "0",
            startDate: 1.52953091375E9,
            stateMachineArn: "0",
            stopDate: nil)

        return defaultInstance
    }()
}

public extension MapRunStartedEventDetails {
    /**
     Default instance of the MapRunStartedEventDetails structure.
     */
    static let __default: StepFunctionsModel.MapRunStartedEventDetails = {
        let defaultInstance = StepFunctionsModel.MapRunStartedEventDetails(
            mapRunArn: nil)

        return defaultInstance
    }()
}

public extension MapStateStartedEventDetails {
    /**
     Default instance of the MapStateStartedEventDetails structure.
     */
    static let __default: StepFunctionsModel.MapStateStartedEventDetails = {
        let defaultInstance = StepFunctionsModel.MapStateStartedEventDetails(
            length: nil)

        return defaultInstance
    }()
}

public extension MissingRequiredParameter {
    /**
     Default instance of the MissingRequiredParameter structure.
     */
    static let __default: StepFunctionsModel.MissingRequiredParameter = {
        let defaultInstance = StepFunctionsModel.MissingRequiredParameter(
            message: nil)

        return defaultInstance
    }()
}

public extension ResourceNotFound {
    /**
     Default instance of the ResourceNotFound structure.
     */
    static let __default: StepFunctionsModel.ResourceNotFound = {
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
    static let __default: StepFunctionsModel.SendTaskFailureInput = {
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
    static let __default: StepFunctionsModel.SendTaskFailureOutput = {
        let defaultInstance = StepFunctionsModel.SendTaskFailureOutput()

        return defaultInstance
    }()
}

public extension SendTaskHeartbeatInput {
    /**
     Default instance of the SendTaskHeartbeatInput structure.
     */
    static let __default: StepFunctionsModel.SendTaskHeartbeatInput = {
        let defaultInstance = StepFunctionsModel.SendTaskHeartbeatInput(
            taskToken: "0")

        return defaultInstance
    }()
}

public extension SendTaskHeartbeatOutput {
    /**
     Default instance of the SendTaskHeartbeatOutput structure.
     */
    static let __default: StepFunctionsModel.SendTaskHeartbeatOutput = {
        let defaultInstance = StepFunctionsModel.SendTaskHeartbeatOutput()

        return defaultInstance
    }()
}

public extension SendTaskSuccessInput {
    /**
     Default instance of the SendTaskSuccessInput structure.
     */
    static let __default: StepFunctionsModel.SendTaskSuccessInput = {
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
    static let __default: StepFunctionsModel.SendTaskSuccessOutput = {
        let defaultInstance = StepFunctionsModel.SendTaskSuccessOutput()

        return defaultInstance
    }()
}

public extension StartExecutionInput {
    /**
     Default instance of the StartExecutionInput structure.
     */
    static let __default: StepFunctionsModel.StartExecutionInput = {
        let defaultInstance = StepFunctionsModel.StartExecutionInput(
            input: nil,
            name: nil,
            stateMachineArn: "0",
            traceHeader: nil)

        return defaultInstance
    }()
}

public extension StartExecutionOutput {
    /**
     Default instance of the StartExecutionOutput structure.
     */
    static let __default: StepFunctionsModel.StartExecutionOutput = {
        let defaultInstance = StepFunctionsModel.StartExecutionOutput(
            executionArn: "0",
            startDate: 1.52953091375E9)

        return defaultInstance
    }()
}

public extension StartSyncExecutionInput {
    /**
     Default instance of the StartSyncExecutionInput structure.
     */
    static let __default: StepFunctionsModel.StartSyncExecutionInput = {
        let defaultInstance = StepFunctionsModel.StartSyncExecutionInput(
            input: nil,
            name: nil,
            stateMachineArn: "0",
            traceHeader: nil)

        return defaultInstance
    }()
}

public extension StartSyncExecutionOutput {
    /**
     Default instance of the StartSyncExecutionOutput structure.
     */
    static let __default: StepFunctionsModel.StartSyncExecutionOutput = {
        let defaultInstance = StepFunctionsModel.StartSyncExecutionOutput(
            billingDetails: nil,
            cause: nil,
            error: nil,
            executionArn: "0",
            input: nil,
            inputDetails: nil,
            name: nil,
            output: nil,
            outputDetails: nil,
            startDate: 1.52953091375E9,
            stateMachineArn: nil,
            status: .__default,
            stopDate: 1.52953091375E9,
            traceHeader: nil)

        return defaultInstance
    }()
}

public extension StateEnteredEventDetails {
    /**
     Default instance of the StateEnteredEventDetails structure.
     */
    static let __default: StepFunctionsModel.StateEnteredEventDetails = {
        let defaultInstance = StepFunctionsModel.StateEnteredEventDetails(
            input: nil,
            inputDetails: nil,
            name: "0")

        return defaultInstance
    }()
}

public extension StateExitedEventDetails {
    /**
     Default instance of the StateExitedEventDetails structure.
     */
    static let __default: StepFunctionsModel.StateExitedEventDetails = {
        let defaultInstance = StepFunctionsModel.StateExitedEventDetails(
            name: "0",
            output: nil,
            outputDetails: nil)

        return defaultInstance
    }()
}

public extension StateMachineAlreadyExists {
    /**
     Default instance of the StateMachineAlreadyExists structure.
     */
    static let __default: StepFunctionsModel.StateMachineAlreadyExists = {
        let defaultInstance = StepFunctionsModel.StateMachineAlreadyExists(
            message: nil)

        return defaultInstance
    }()
}

public extension StateMachineDeleting {
    /**
     Default instance of the StateMachineDeleting structure.
     */
    static let __default: StepFunctionsModel.StateMachineDeleting = {
        let defaultInstance = StepFunctionsModel.StateMachineDeleting(
            message: nil)

        return defaultInstance
    }()
}

public extension StateMachineDoesNotExist {
    /**
     Default instance of the StateMachineDoesNotExist structure.
     */
    static let __default: StepFunctionsModel.StateMachineDoesNotExist = {
        let defaultInstance = StepFunctionsModel.StateMachineDoesNotExist(
            message: nil)

        return defaultInstance
    }()
}

public extension StateMachineLimitExceeded {
    /**
     Default instance of the StateMachineLimitExceeded structure.
     */
    static let __default: StepFunctionsModel.StateMachineLimitExceeded = {
        let defaultInstance = StepFunctionsModel.StateMachineLimitExceeded(
            message: nil)

        return defaultInstance
    }()
}

public extension StateMachineListItem {
    /**
     Default instance of the StateMachineListItem structure.
     */
    static let __default: StepFunctionsModel.StateMachineListItem = {
        let defaultInstance = StepFunctionsModel.StateMachineListItem(
            creationDate: 1.52953091375E9,
            name: "0",
            stateMachineArn: "0",
            type: .__default)

        return defaultInstance
    }()
}

public extension StateMachineTypeNotSupported {
    /**
     Default instance of the StateMachineTypeNotSupported structure.
     */
    static let __default: StepFunctionsModel.StateMachineTypeNotSupported = {
        let defaultInstance = StepFunctionsModel.StateMachineTypeNotSupported(
            message: nil)

        return defaultInstance
    }()
}

public extension StopExecutionInput {
    /**
     Default instance of the StopExecutionInput structure.
     */
    static let __default: StepFunctionsModel.StopExecutionInput = {
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
    static let __default: StepFunctionsModel.StopExecutionOutput = {
        let defaultInstance = StepFunctionsModel.StopExecutionOutput(
            stopDate: 1.52953091375E9)

        return defaultInstance
    }()
}

public extension Tag {
    /**
     Default instance of the Tag structure.
     */
    static let __default: StepFunctionsModel.Tag = {
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
    static let __default: StepFunctionsModel.TagResourceInput = {
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
    static let __default: StepFunctionsModel.TagResourceOutput = {
        let defaultInstance = StepFunctionsModel.TagResourceOutput()

        return defaultInstance
    }()
}

public extension TaskCredentials {
    /**
     Default instance of the TaskCredentials structure.
     */
    static let __default: StepFunctionsModel.TaskCredentials = {
        let defaultInstance = StepFunctionsModel.TaskCredentials(
            roleArn: nil)

        return defaultInstance
    }()
}

public extension TaskDoesNotExist {
    /**
     Default instance of the TaskDoesNotExist structure.
     */
    static let __default: StepFunctionsModel.TaskDoesNotExist = {
        let defaultInstance = StepFunctionsModel.TaskDoesNotExist(
            message: nil)

        return defaultInstance
    }()
}

public extension TaskFailedEventDetails {
    /**
     Default instance of the TaskFailedEventDetails structure.
     */
    static let __default: StepFunctionsModel.TaskFailedEventDetails = {
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
    static let __default: StepFunctionsModel.TaskScheduledEventDetails = {
        let defaultInstance = StepFunctionsModel.TaskScheduledEventDetails(
            heartbeatInSeconds: nil,
            parameters: "",
            region: "0",
            resource: "0",
            resourceType: "0",
            taskCredentials: nil,
            timeoutInSeconds: nil)

        return defaultInstance
    }()
}

public extension TaskStartFailedEventDetails {
    /**
     Default instance of the TaskStartFailedEventDetails structure.
     */
    static let __default: StepFunctionsModel.TaskStartFailedEventDetails = {
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
    static let __default: StepFunctionsModel.TaskStartedEventDetails = {
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
    static let __default: StepFunctionsModel.TaskSubmitFailedEventDetails = {
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
    static let __default: StepFunctionsModel.TaskSubmittedEventDetails = {
        let defaultInstance = StepFunctionsModel.TaskSubmittedEventDetails(
            output: nil,
            outputDetails: nil,
            resource: "0",
            resourceType: "0")

        return defaultInstance
    }()
}

public extension TaskSucceededEventDetails {
    /**
     Default instance of the TaskSucceededEventDetails structure.
     */
    static let __default: StepFunctionsModel.TaskSucceededEventDetails = {
        let defaultInstance = StepFunctionsModel.TaskSucceededEventDetails(
            output: nil,
            outputDetails: nil,
            resource: "0",
            resourceType: "0")

        return defaultInstance
    }()
}

public extension TaskTimedOut {
    /**
     Default instance of the TaskTimedOut structure.
     */
    static let __default: StepFunctionsModel.TaskTimedOut = {
        let defaultInstance = StepFunctionsModel.TaskTimedOut(
            message: nil)

        return defaultInstance
    }()
}

public extension TaskTimedOutEventDetails {
    /**
     Default instance of the TaskTimedOutEventDetails structure.
     */
    static let __default: StepFunctionsModel.TaskTimedOutEventDetails = {
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
    static let __default: StepFunctionsModel.TooManyTags = {
        let defaultInstance = StepFunctionsModel.TooManyTags(
            message: nil,
            resourceName: nil)

        return defaultInstance
    }()
}

public extension TracingConfiguration {
    /**
     Default instance of the TracingConfiguration structure.
     */
    static let __default: StepFunctionsModel.TracingConfiguration = {
        let defaultInstance = StepFunctionsModel.TracingConfiguration(
            enabled: nil)

        return defaultInstance
    }()
}

public extension UntagResourceInput {
    /**
     Default instance of the UntagResourceInput structure.
     */
    static let __default: StepFunctionsModel.UntagResourceInput = {
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
    static let __default: StepFunctionsModel.UntagResourceOutput = {
        let defaultInstance = StepFunctionsModel.UntagResourceOutput()

        return defaultInstance
    }()
}

public extension UpdateMapRunInput {
    /**
     Default instance of the UpdateMapRunInput structure.
     */
    static let __default: StepFunctionsModel.UpdateMapRunInput = {
        let defaultInstance = StepFunctionsModel.UpdateMapRunInput(
            mapRunArn: "0",
            maxConcurrency: nil,
            toleratedFailureCount: nil,
            toleratedFailurePercentage: nil)

        return defaultInstance
    }()
}

public extension UpdateMapRunOutput {
    /**
     Default instance of the UpdateMapRunOutput structure.
     */
    static let __default: StepFunctionsModel.UpdateMapRunOutput = {
        let defaultInstance = StepFunctionsModel.UpdateMapRunOutput()

        return defaultInstance
    }()
}

public extension UpdateStateMachineInput {
    /**
     Default instance of the UpdateStateMachineInput structure.
     */
    static let __default: StepFunctionsModel.UpdateStateMachineInput = {
        let defaultInstance = StepFunctionsModel.UpdateStateMachineInput(
            definition: nil,
            loggingConfiguration: nil,
            roleArn: nil,
            stateMachineArn: "0",
            tracingConfiguration: nil)

        return defaultInstance
    }()
}

public extension UpdateStateMachineOutput {
    /**
     Default instance of the UpdateStateMachineOutput structure.
     */
    static let __default: StepFunctionsModel.UpdateStateMachineOutput = {
        let defaultInstance = StepFunctionsModel.UpdateStateMachineOutput(
            updateDate: 1.52953091375E9)

        return defaultInstance
    }()
}

public extension ValidationException {
    /**
     Default instance of the ValidationException structure.
     */
    static let __default: StepFunctionsModel.ValidationException = {
        let defaultInstance = StepFunctionsModel.ValidationException(
            message: nil,
            reason: nil)

        return defaultInstance
    }()
}
