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
// SimpleWorkflowModelDefaultInstances.swift
// SimpleWorkflowModel
//

import Foundation

public extension ActivityTask {
    /**
     Default instance of the ActivityTask structure.
     */
    static let __default: SimpleWorkflowModel.ActivityTask = {
        let defaultInstance = SimpleWorkflowModel.ActivityTask(
            activityId: "0",
            activityType: ActivityType.__default,
            input: nil,
            startedEventId: 0,
            taskToken: "0",
            workflowExecution: WorkflowExecution.__default)

        return defaultInstance
    }()
}

public extension ActivityTaskCancelRequestedEventAttributes {
    /**
     Default instance of the ActivityTaskCancelRequestedEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.ActivityTaskCancelRequestedEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.ActivityTaskCancelRequestedEventAttributes(
            activityId: "0",
            decisionTaskCompletedEventId: 0)

        return defaultInstance
    }()
}

public extension ActivityTaskCanceledEventAttributes {
    /**
     Default instance of the ActivityTaskCanceledEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.ActivityTaskCanceledEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.ActivityTaskCanceledEventAttributes(
            details: nil,
            latestCancelRequestedEventId: nil,
            scheduledEventId: 0,
            startedEventId: 0)

        return defaultInstance
    }()
}

public extension ActivityTaskCompletedEventAttributes {
    /**
     Default instance of the ActivityTaskCompletedEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.ActivityTaskCompletedEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.ActivityTaskCompletedEventAttributes(
            result: nil,
            scheduledEventId: 0,
            startedEventId: 0)

        return defaultInstance
    }()
}

public extension ActivityTaskFailedEventAttributes {
    /**
     Default instance of the ActivityTaskFailedEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.ActivityTaskFailedEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.ActivityTaskFailedEventAttributes(
            details: nil,
            reason: nil,
            scheduledEventId: 0,
            startedEventId: 0)

        return defaultInstance
    }()
}

public extension ActivityTaskScheduledEventAttributes {
    /**
     Default instance of the ActivityTaskScheduledEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.ActivityTaskScheduledEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.ActivityTaskScheduledEventAttributes(
            activityId: "0",
            activityType: ActivityType.__default,
            control: nil,
            decisionTaskCompletedEventId: 0,
            heartbeatTimeout: nil,
            input: nil,
            scheduleToCloseTimeout: nil,
            scheduleToStartTimeout: nil,
            startToCloseTimeout: nil,
            taskList: TaskList.__default,
            taskPriority: nil)

        return defaultInstance
    }()
}

public extension ActivityTaskStartedEventAttributes {
    /**
     Default instance of the ActivityTaskStartedEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.ActivityTaskStartedEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.ActivityTaskStartedEventAttributes(
            identity: nil,
            scheduledEventId: 0)

        return defaultInstance
    }()
}

public extension ActivityTaskStatus {
    /**
     Default instance of the ActivityTaskStatus structure.
     */
    static let __default: SimpleWorkflowModel.ActivityTaskStatus = {
        let defaultInstance = SimpleWorkflowModel.ActivityTaskStatus(
            cancelRequested: false)

        return defaultInstance
    }()
}

public extension ActivityTaskTimedOutEventAttributes {
    /**
     Default instance of the ActivityTaskTimedOutEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.ActivityTaskTimedOutEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.ActivityTaskTimedOutEventAttributes(
            details: nil,
            scheduledEventId: 0,
            startedEventId: 0,
            timeoutType: .__default)

        return defaultInstance
    }()
}

public extension ActivityType {
    /**
     Default instance of the ActivityType structure.
     */
    static let __default: SimpleWorkflowModel.ActivityType = {
        let defaultInstance = SimpleWorkflowModel.ActivityType(
            name: "0",
            version: "0")

        return defaultInstance
    }()
}

public extension ActivityTypeConfiguration {
    /**
     Default instance of the ActivityTypeConfiguration structure.
     */
    static let __default: SimpleWorkflowModel.ActivityTypeConfiguration = {
        let defaultInstance = SimpleWorkflowModel.ActivityTypeConfiguration(
            defaultTaskHeartbeatTimeout: nil,
            defaultTaskList: nil,
            defaultTaskPriority: nil,
            defaultTaskScheduleToCloseTimeout: nil,
            defaultTaskScheduleToStartTimeout: nil,
            defaultTaskStartToCloseTimeout: nil)

        return defaultInstance
    }()
}

public extension ActivityTypeDetail {
    /**
     Default instance of the ActivityTypeDetail structure.
     */
    static let __default: SimpleWorkflowModel.ActivityTypeDetail = {
        let defaultInstance = SimpleWorkflowModel.ActivityTypeDetail(
            configuration: ActivityTypeConfiguration.__default,
            typeInfo: ActivityTypeInfo.__default)

        return defaultInstance
    }()
}

public extension ActivityTypeInfo {
    /**
     Default instance of the ActivityTypeInfo structure.
     */
    static let __default: SimpleWorkflowModel.ActivityTypeInfo = {
        let defaultInstance = SimpleWorkflowModel.ActivityTypeInfo(
            activityType: ActivityType.__default,
            creationDate: 1.52953091375E9,
            deprecationDate: nil,
            description: nil,
            status: .__default)

        return defaultInstance
    }()
}

public extension ActivityTypeInfos {
    /**
     Default instance of the ActivityTypeInfos structure.
     */
    static let __default: SimpleWorkflowModel.ActivityTypeInfos = {
        let defaultInstance = SimpleWorkflowModel.ActivityTypeInfos(
            nextPageToken: nil,
            typeInfos: [])

        return defaultInstance
    }()
}

public extension CancelTimerDecisionAttributes {
    /**
     Default instance of the CancelTimerDecisionAttributes structure.
     */
    static let __default: SimpleWorkflowModel.CancelTimerDecisionAttributes = {
        let defaultInstance = SimpleWorkflowModel.CancelTimerDecisionAttributes(
            timerId: "0")

        return defaultInstance
    }()
}

public extension CancelTimerFailedEventAttributes {
    /**
     Default instance of the CancelTimerFailedEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.CancelTimerFailedEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.CancelTimerFailedEventAttributes(
            cause: .__default,
            decisionTaskCompletedEventId: 0,
            timerId: "0")

        return defaultInstance
    }()
}

public extension CancelWorkflowExecutionDecisionAttributes {
    /**
     Default instance of the CancelWorkflowExecutionDecisionAttributes structure.
     */
    static let __default: SimpleWorkflowModel.CancelWorkflowExecutionDecisionAttributes = {
        let defaultInstance = SimpleWorkflowModel.CancelWorkflowExecutionDecisionAttributes(
            details: nil)

        return defaultInstance
    }()
}

public extension CancelWorkflowExecutionFailedEventAttributes {
    /**
     Default instance of the CancelWorkflowExecutionFailedEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.CancelWorkflowExecutionFailedEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.CancelWorkflowExecutionFailedEventAttributes(
            cause: .__default,
            decisionTaskCompletedEventId: 0)

        return defaultInstance
    }()
}

public extension ChildWorkflowExecutionCanceledEventAttributes {
    /**
     Default instance of the ChildWorkflowExecutionCanceledEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.ChildWorkflowExecutionCanceledEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.ChildWorkflowExecutionCanceledEventAttributes(
            details: nil,
            initiatedEventId: 0,
            startedEventId: 0,
            workflowExecution: WorkflowExecution.__default,
            workflowType: WorkflowType.__default)

        return defaultInstance
    }()
}

public extension ChildWorkflowExecutionCompletedEventAttributes {
    /**
     Default instance of the ChildWorkflowExecutionCompletedEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.ChildWorkflowExecutionCompletedEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.ChildWorkflowExecutionCompletedEventAttributes(
            initiatedEventId: 0,
            result: nil,
            startedEventId: 0,
            workflowExecution: WorkflowExecution.__default,
            workflowType: WorkflowType.__default)

        return defaultInstance
    }()
}

public extension ChildWorkflowExecutionFailedEventAttributes {
    /**
     Default instance of the ChildWorkflowExecutionFailedEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.ChildWorkflowExecutionFailedEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.ChildWorkflowExecutionFailedEventAttributes(
            details: nil,
            initiatedEventId: 0,
            reason: nil,
            startedEventId: 0,
            workflowExecution: WorkflowExecution.__default,
            workflowType: WorkflowType.__default)

        return defaultInstance
    }()
}

public extension ChildWorkflowExecutionStartedEventAttributes {
    /**
     Default instance of the ChildWorkflowExecutionStartedEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.ChildWorkflowExecutionStartedEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.ChildWorkflowExecutionStartedEventAttributes(
            initiatedEventId: 0,
            workflowExecution: WorkflowExecution.__default,
            workflowType: WorkflowType.__default)

        return defaultInstance
    }()
}

public extension ChildWorkflowExecutionTerminatedEventAttributes {
    /**
     Default instance of the ChildWorkflowExecutionTerminatedEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.ChildWorkflowExecutionTerminatedEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.ChildWorkflowExecutionTerminatedEventAttributes(
            initiatedEventId: 0,
            startedEventId: 0,
            workflowExecution: WorkflowExecution.__default,
            workflowType: WorkflowType.__default)

        return defaultInstance
    }()
}

public extension ChildWorkflowExecutionTimedOutEventAttributes {
    /**
     Default instance of the ChildWorkflowExecutionTimedOutEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.ChildWorkflowExecutionTimedOutEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.ChildWorkflowExecutionTimedOutEventAttributes(
            initiatedEventId: 0,
            startedEventId: 0,
            timeoutType: .__default,
            workflowExecution: WorkflowExecution.__default,
            workflowType: WorkflowType.__default)

        return defaultInstance
    }()
}

public extension CloseStatusFilter {
    /**
     Default instance of the CloseStatusFilter structure.
     */
    static let __default: SimpleWorkflowModel.CloseStatusFilter = {
        let defaultInstance = SimpleWorkflowModel.CloseStatusFilter(
            status: .__default)

        return defaultInstance
    }()
}

public extension CompleteWorkflowExecutionDecisionAttributes {
    /**
     Default instance of the CompleteWorkflowExecutionDecisionAttributes structure.
     */
    static let __default: SimpleWorkflowModel.CompleteWorkflowExecutionDecisionAttributes = {
        let defaultInstance = SimpleWorkflowModel.CompleteWorkflowExecutionDecisionAttributes(
            result: nil)

        return defaultInstance
    }()
}

public extension CompleteWorkflowExecutionFailedEventAttributes {
    /**
     Default instance of the CompleteWorkflowExecutionFailedEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.CompleteWorkflowExecutionFailedEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.CompleteWorkflowExecutionFailedEventAttributes(
            cause: .__default,
            decisionTaskCompletedEventId: 0)

        return defaultInstance
    }()
}

public extension ContinueAsNewWorkflowExecutionDecisionAttributes {
    /**
     Default instance of the ContinueAsNewWorkflowExecutionDecisionAttributes structure.
     */
    static let __default: SimpleWorkflowModel.ContinueAsNewWorkflowExecutionDecisionAttributes = {
        let defaultInstance = SimpleWorkflowModel.ContinueAsNewWorkflowExecutionDecisionAttributes(
            childPolicy: nil,
            executionStartToCloseTimeout: nil,
            input: nil,
            lambdaRole: nil,
            tagList: nil,
            taskList: nil,
            taskPriority: nil,
            taskStartToCloseTimeout: nil,
            workflowTypeVersion: nil)

        return defaultInstance
    }()
}

public extension ContinueAsNewWorkflowExecutionFailedEventAttributes {
    /**
     Default instance of the ContinueAsNewWorkflowExecutionFailedEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.ContinueAsNewWorkflowExecutionFailedEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.ContinueAsNewWorkflowExecutionFailedEventAttributes(
            cause: .__default,
            decisionTaskCompletedEventId: 0)

        return defaultInstance
    }()
}

public extension CountClosedWorkflowExecutionsInput {
    /**
     Default instance of the CountClosedWorkflowExecutionsInput structure.
     */
    static let __default: SimpleWorkflowModel.CountClosedWorkflowExecutionsInput = {
        let defaultInstance = SimpleWorkflowModel.CountClosedWorkflowExecutionsInput(
            closeStatusFilter: nil,
            closeTimeFilter: nil,
            domain: "0",
            executionFilter: nil,
            startTimeFilter: nil,
            tagFilter: nil,
            typeFilter: nil)

        return defaultInstance
    }()
}

public extension CountOpenWorkflowExecutionsInput {
    /**
     Default instance of the CountOpenWorkflowExecutionsInput structure.
     */
    static let __default: SimpleWorkflowModel.CountOpenWorkflowExecutionsInput = {
        let defaultInstance = SimpleWorkflowModel.CountOpenWorkflowExecutionsInput(
            domain: "0",
            executionFilter: nil,
            startTimeFilter: ExecutionTimeFilter.__default,
            tagFilter: nil,
            typeFilter: nil)

        return defaultInstance
    }()
}

public extension CountPendingActivityTasksInput {
    /**
     Default instance of the CountPendingActivityTasksInput structure.
     */
    static let __default: SimpleWorkflowModel.CountPendingActivityTasksInput = {
        let defaultInstance = SimpleWorkflowModel.CountPendingActivityTasksInput(
            domain: "0",
            taskList: TaskList.__default)

        return defaultInstance
    }()
}

public extension CountPendingDecisionTasksInput {
    /**
     Default instance of the CountPendingDecisionTasksInput structure.
     */
    static let __default: SimpleWorkflowModel.CountPendingDecisionTasksInput = {
        let defaultInstance = SimpleWorkflowModel.CountPendingDecisionTasksInput(
            domain: "0",
            taskList: TaskList.__default)

        return defaultInstance
    }()
}

public extension Decision {
    /**
     Default instance of the Decision structure.
     */
    static let __default: SimpleWorkflowModel.Decision = {
        let defaultInstance = SimpleWorkflowModel.Decision(
            cancelTimerDecisionAttributes: nil,
            cancelWorkflowExecutionDecisionAttributes: nil,
            completeWorkflowExecutionDecisionAttributes: nil,
            continueAsNewWorkflowExecutionDecisionAttributes: nil,
            decisionType: .__default,
            failWorkflowExecutionDecisionAttributes: nil,
            recordMarkerDecisionAttributes: nil,
            requestCancelActivityTaskDecisionAttributes: nil,
            requestCancelExternalWorkflowExecutionDecisionAttributes: nil,
            scheduleActivityTaskDecisionAttributes: nil,
            scheduleLambdaFunctionDecisionAttributes: nil,
            signalExternalWorkflowExecutionDecisionAttributes: nil,
            startChildWorkflowExecutionDecisionAttributes: nil,
            startTimerDecisionAttributes: nil)

        return defaultInstance
    }()
}

public extension DecisionTask {
    /**
     Default instance of the DecisionTask structure.
     */
    static let __default: SimpleWorkflowModel.DecisionTask = {
        let defaultInstance = SimpleWorkflowModel.DecisionTask(
            events: [],
            nextPageToken: nil,
            previousStartedEventId: nil,
            startedEventId: 0,
            taskToken: "0",
            workflowExecution: WorkflowExecution.__default,
            workflowType: WorkflowType.__default)

        return defaultInstance
    }()
}

public extension DecisionTaskCompletedEventAttributes {
    /**
     Default instance of the DecisionTaskCompletedEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.DecisionTaskCompletedEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.DecisionTaskCompletedEventAttributes(
            executionContext: nil,
            scheduledEventId: 0,
            startedEventId: 0)

        return defaultInstance
    }()
}

public extension DecisionTaskScheduledEventAttributes {
    /**
     Default instance of the DecisionTaskScheduledEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.DecisionTaskScheduledEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.DecisionTaskScheduledEventAttributes(
            startToCloseTimeout: nil,
            taskList: TaskList.__default,
            taskPriority: nil)

        return defaultInstance
    }()
}

public extension DecisionTaskStartedEventAttributes {
    /**
     Default instance of the DecisionTaskStartedEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.DecisionTaskStartedEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.DecisionTaskStartedEventAttributes(
            identity: nil,
            scheduledEventId: 0)

        return defaultInstance
    }()
}

public extension DecisionTaskTimedOutEventAttributes {
    /**
     Default instance of the DecisionTaskTimedOutEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.DecisionTaskTimedOutEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.DecisionTaskTimedOutEventAttributes(
            scheduledEventId: 0,
            startedEventId: 0,
            timeoutType: .__default)

        return defaultInstance
    }()
}

public extension DefaultUndefinedFault {
    /**
     Default instance of the DefaultUndefinedFault structure.
     */
    static let __default: SimpleWorkflowModel.DefaultUndefinedFault = {
        let defaultInstance = SimpleWorkflowModel.DefaultUndefinedFault(
            message: nil)

        return defaultInstance
    }()
}

public extension DeprecateActivityTypeInput {
    /**
     Default instance of the DeprecateActivityTypeInput structure.
     */
    static let __default: SimpleWorkflowModel.DeprecateActivityTypeInput = {
        let defaultInstance = SimpleWorkflowModel.DeprecateActivityTypeInput(
            activityType: ActivityType.__default,
            domain: "0")

        return defaultInstance
    }()
}

public extension DeprecateDomainInput {
    /**
     Default instance of the DeprecateDomainInput structure.
     */
    static let __default: SimpleWorkflowModel.DeprecateDomainInput = {
        let defaultInstance = SimpleWorkflowModel.DeprecateDomainInput(
            name: "0")

        return defaultInstance
    }()
}

public extension DeprecateWorkflowTypeInput {
    /**
     Default instance of the DeprecateWorkflowTypeInput structure.
     */
    static let __default: SimpleWorkflowModel.DeprecateWorkflowTypeInput = {
        let defaultInstance = SimpleWorkflowModel.DeprecateWorkflowTypeInput(
            domain: "0",
            workflowType: WorkflowType.__default)

        return defaultInstance
    }()
}

public extension DescribeActivityTypeInput {
    /**
     Default instance of the DescribeActivityTypeInput structure.
     */
    static let __default: SimpleWorkflowModel.DescribeActivityTypeInput = {
        let defaultInstance = SimpleWorkflowModel.DescribeActivityTypeInput(
            activityType: ActivityType.__default,
            domain: "0")

        return defaultInstance
    }()
}

public extension DescribeDomainInput {
    /**
     Default instance of the DescribeDomainInput structure.
     */
    static let __default: SimpleWorkflowModel.DescribeDomainInput = {
        let defaultInstance = SimpleWorkflowModel.DescribeDomainInput(
            name: "0")

        return defaultInstance
    }()
}

public extension DescribeWorkflowExecutionInput {
    /**
     Default instance of the DescribeWorkflowExecutionInput structure.
     */
    static let __default: SimpleWorkflowModel.DescribeWorkflowExecutionInput = {
        let defaultInstance = SimpleWorkflowModel.DescribeWorkflowExecutionInput(
            domain: "0",
            execution: WorkflowExecution.__default)

        return defaultInstance
    }()
}

public extension DescribeWorkflowTypeInput {
    /**
     Default instance of the DescribeWorkflowTypeInput structure.
     */
    static let __default: SimpleWorkflowModel.DescribeWorkflowTypeInput = {
        let defaultInstance = SimpleWorkflowModel.DescribeWorkflowTypeInput(
            domain: "0",
            workflowType: WorkflowType.__default)

        return defaultInstance
    }()
}

public extension DomainAlreadyExistsFault {
    /**
     Default instance of the DomainAlreadyExistsFault structure.
     */
    static let __default: SimpleWorkflowModel.DomainAlreadyExistsFault = {
        let defaultInstance = SimpleWorkflowModel.DomainAlreadyExistsFault(
            message: nil)

        return defaultInstance
    }()
}

public extension DomainConfiguration {
    /**
     Default instance of the DomainConfiguration structure.
     */
    static let __default: SimpleWorkflowModel.DomainConfiguration = {
        let defaultInstance = SimpleWorkflowModel.DomainConfiguration(
            workflowExecutionRetentionPeriodInDays: "0")

        return defaultInstance
    }()
}

public extension DomainDeprecatedFault {
    /**
     Default instance of the DomainDeprecatedFault structure.
     */
    static let __default: SimpleWorkflowModel.DomainDeprecatedFault = {
        let defaultInstance = SimpleWorkflowModel.DomainDeprecatedFault(
            message: nil)

        return defaultInstance
    }()
}

public extension DomainDetail {
    /**
     Default instance of the DomainDetail structure.
     */
    static let __default: SimpleWorkflowModel.DomainDetail = {
        let defaultInstance = SimpleWorkflowModel.DomainDetail(
            configuration: DomainConfiguration.__default,
            domainInfo: DomainInfo.__default)

        return defaultInstance
    }()
}

public extension DomainInfo {
    /**
     Default instance of the DomainInfo structure.
     */
    static let __default: SimpleWorkflowModel.DomainInfo = {
        let defaultInstance = SimpleWorkflowModel.DomainInfo(
            arn: nil,
            description: nil,
            name: "0",
            status: .__default)

        return defaultInstance
    }()
}

public extension DomainInfos {
    /**
     Default instance of the DomainInfos structure.
     */
    static let __default: SimpleWorkflowModel.DomainInfos = {
        let defaultInstance = SimpleWorkflowModel.DomainInfos(
            domainInfos: [],
            nextPageToken: nil)

        return defaultInstance
    }()
}

public extension ExecutionTimeFilter {
    /**
     Default instance of the ExecutionTimeFilter structure.
     */
    static let __default: SimpleWorkflowModel.ExecutionTimeFilter = {
        let defaultInstance = SimpleWorkflowModel.ExecutionTimeFilter(
            latestDate: nil,
            oldestDate: 1.52953091375E9)

        return defaultInstance
    }()
}

public extension ExternalWorkflowExecutionCancelRequestedEventAttributes {
    /**
     Default instance of the ExternalWorkflowExecutionCancelRequestedEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.ExternalWorkflowExecutionCancelRequestedEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.ExternalWorkflowExecutionCancelRequestedEventAttributes(
            initiatedEventId: 0,
            workflowExecution: WorkflowExecution.__default)

        return defaultInstance
    }()
}

public extension ExternalWorkflowExecutionSignaledEventAttributes {
    /**
     Default instance of the ExternalWorkflowExecutionSignaledEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.ExternalWorkflowExecutionSignaledEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.ExternalWorkflowExecutionSignaledEventAttributes(
            initiatedEventId: 0,
            workflowExecution: WorkflowExecution.__default)

        return defaultInstance
    }()
}

public extension FailWorkflowExecutionDecisionAttributes {
    /**
     Default instance of the FailWorkflowExecutionDecisionAttributes structure.
     */
    static let __default: SimpleWorkflowModel.FailWorkflowExecutionDecisionAttributes = {
        let defaultInstance = SimpleWorkflowModel.FailWorkflowExecutionDecisionAttributes(
            details: nil,
            reason: nil)

        return defaultInstance
    }()
}

public extension FailWorkflowExecutionFailedEventAttributes {
    /**
     Default instance of the FailWorkflowExecutionFailedEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.FailWorkflowExecutionFailedEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.FailWorkflowExecutionFailedEventAttributes(
            cause: .__default,
            decisionTaskCompletedEventId: 0)

        return defaultInstance
    }()
}

public extension GetWorkflowExecutionHistoryInput {
    /**
     Default instance of the GetWorkflowExecutionHistoryInput structure.
     */
    static let __default: SimpleWorkflowModel.GetWorkflowExecutionHistoryInput = {
        let defaultInstance = SimpleWorkflowModel.GetWorkflowExecutionHistoryInput(
            domain: "0",
            execution: WorkflowExecution.__default,
            maximumPageSize: nil,
            nextPageToken: nil,
            reverseOrder: nil)

        return defaultInstance
    }()
}

public extension History {
    /**
     Default instance of the History structure.
     */
    static let __default: SimpleWorkflowModel.History = {
        let defaultInstance = SimpleWorkflowModel.History(
            events: [],
            nextPageToken: nil)

        return defaultInstance
    }()
}

public extension HistoryEvent {
    /**
     Default instance of the HistoryEvent structure.
     */
    static let __default: SimpleWorkflowModel.HistoryEvent = {
        let defaultInstance = SimpleWorkflowModel.HistoryEvent(
            activityTaskCancelRequestedEventAttributes: nil,
            activityTaskCanceledEventAttributes: nil,
            activityTaskCompletedEventAttributes: nil,
            activityTaskFailedEventAttributes: nil,
            activityTaskScheduledEventAttributes: nil,
            activityTaskStartedEventAttributes: nil,
            activityTaskTimedOutEventAttributes: nil,
            cancelTimerFailedEventAttributes: nil,
            cancelWorkflowExecutionFailedEventAttributes: nil,
            childWorkflowExecutionCanceledEventAttributes: nil,
            childWorkflowExecutionCompletedEventAttributes: nil,
            childWorkflowExecutionFailedEventAttributes: nil,
            childWorkflowExecutionStartedEventAttributes: nil,
            childWorkflowExecutionTerminatedEventAttributes: nil,
            childWorkflowExecutionTimedOutEventAttributes: nil,
            completeWorkflowExecutionFailedEventAttributes: nil,
            continueAsNewWorkflowExecutionFailedEventAttributes: nil,
            decisionTaskCompletedEventAttributes: nil,
            decisionTaskScheduledEventAttributes: nil,
            decisionTaskStartedEventAttributes: nil,
            decisionTaskTimedOutEventAttributes: nil,
            eventId: 0,
            eventTimestamp: 1.52953091375E9,
            eventType: .__default,
            externalWorkflowExecutionCancelRequestedEventAttributes: nil,
            externalWorkflowExecutionSignaledEventAttributes: nil,
            failWorkflowExecutionFailedEventAttributes: nil,
            lambdaFunctionCompletedEventAttributes: nil,
            lambdaFunctionFailedEventAttributes: nil,
            lambdaFunctionScheduledEventAttributes: nil,
            lambdaFunctionStartedEventAttributes: nil,
            lambdaFunctionTimedOutEventAttributes: nil,
            markerRecordedEventAttributes: nil,
            recordMarkerFailedEventAttributes: nil,
            requestCancelActivityTaskFailedEventAttributes: nil,
            requestCancelExternalWorkflowExecutionFailedEventAttributes: nil,
            requestCancelExternalWorkflowExecutionInitiatedEventAttributes: nil,
            scheduleActivityTaskFailedEventAttributes: nil,
            scheduleLambdaFunctionFailedEventAttributes: nil,
            signalExternalWorkflowExecutionFailedEventAttributes: nil,
            signalExternalWorkflowExecutionInitiatedEventAttributes: nil,
            startChildWorkflowExecutionFailedEventAttributes: nil,
            startChildWorkflowExecutionInitiatedEventAttributes: nil,
            startLambdaFunctionFailedEventAttributes: nil,
            startTimerFailedEventAttributes: nil,
            timerCanceledEventAttributes: nil,
            timerFiredEventAttributes: nil,
            timerStartedEventAttributes: nil,
            workflowExecutionCancelRequestedEventAttributes: nil,
            workflowExecutionCanceledEventAttributes: nil,
            workflowExecutionCompletedEventAttributes: nil,
            workflowExecutionContinuedAsNewEventAttributes: nil,
            workflowExecutionFailedEventAttributes: nil,
            workflowExecutionSignaledEventAttributes: nil,
            workflowExecutionStartedEventAttributes: nil,
            workflowExecutionTerminatedEventAttributes: nil,
            workflowExecutionTimedOutEventAttributes: nil)

        return defaultInstance
    }()
}

public extension LambdaFunctionCompletedEventAttributes {
    /**
     Default instance of the LambdaFunctionCompletedEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.LambdaFunctionCompletedEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.LambdaFunctionCompletedEventAttributes(
            result: nil,
            scheduledEventId: 0,
            startedEventId: 0)

        return defaultInstance
    }()
}

public extension LambdaFunctionFailedEventAttributes {
    /**
     Default instance of the LambdaFunctionFailedEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.LambdaFunctionFailedEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.LambdaFunctionFailedEventAttributes(
            details: nil,
            reason: nil,
            scheduledEventId: 0,
            startedEventId: 0)

        return defaultInstance
    }()
}

public extension LambdaFunctionScheduledEventAttributes {
    /**
     Default instance of the LambdaFunctionScheduledEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.LambdaFunctionScheduledEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.LambdaFunctionScheduledEventAttributes(
            control: nil,
            decisionTaskCompletedEventId: 0,
            id: "0",
            input: nil,
            name: "0",
            startToCloseTimeout: nil)

        return defaultInstance
    }()
}

public extension LambdaFunctionStartedEventAttributes {
    /**
     Default instance of the LambdaFunctionStartedEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.LambdaFunctionStartedEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.LambdaFunctionStartedEventAttributes(
            scheduledEventId: 0)

        return defaultInstance
    }()
}

public extension LambdaFunctionTimedOutEventAttributes {
    /**
     Default instance of the LambdaFunctionTimedOutEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.LambdaFunctionTimedOutEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.LambdaFunctionTimedOutEventAttributes(
            scheduledEventId: 0,
            startedEventId: 0,
            timeoutType: nil)

        return defaultInstance
    }()
}

public extension LimitExceededFault {
    /**
     Default instance of the LimitExceededFault structure.
     */
    static let __default: SimpleWorkflowModel.LimitExceededFault = {
        let defaultInstance = SimpleWorkflowModel.LimitExceededFault(
            message: nil)

        return defaultInstance
    }()
}

public extension ListActivityTypesInput {
    /**
     Default instance of the ListActivityTypesInput structure.
     */
    static let __default: SimpleWorkflowModel.ListActivityTypesInput = {
        let defaultInstance = SimpleWorkflowModel.ListActivityTypesInput(
            domain: "0",
            maximumPageSize: nil,
            name: nil,
            nextPageToken: nil,
            registrationStatus: .__default,
            reverseOrder: nil)

        return defaultInstance
    }()
}

public extension ListClosedWorkflowExecutionsInput {
    /**
     Default instance of the ListClosedWorkflowExecutionsInput structure.
     */
    static let __default: SimpleWorkflowModel.ListClosedWorkflowExecutionsInput = {
        let defaultInstance = SimpleWorkflowModel.ListClosedWorkflowExecutionsInput(
            closeStatusFilter: nil,
            closeTimeFilter: nil,
            domain: "0",
            executionFilter: nil,
            maximumPageSize: nil,
            nextPageToken: nil,
            reverseOrder: nil,
            startTimeFilter: nil,
            tagFilter: nil,
            typeFilter: nil)

        return defaultInstance
    }()
}

public extension ListDomainsInput {
    /**
     Default instance of the ListDomainsInput structure.
     */
    static let __default: SimpleWorkflowModel.ListDomainsInput = {
        let defaultInstance = SimpleWorkflowModel.ListDomainsInput(
            maximumPageSize: nil,
            nextPageToken: nil,
            registrationStatus: .__default,
            reverseOrder: nil)

        return defaultInstance
    }()
}

public extension ListOpenWorkflowExecutionsInput {
    /**
     Default instance of the ListOpenWorkflowExecutionsInput structure.
     */
    static let __default: SimpleWorkflowModel.ListOpenWorkflowExecutionsInput = {
        let defaultInstance = SimpleWorkflowModel.ListOpenWorkflowExecutionsInput(
            domain: "0",
            executionFilter: nil,
            maximumPageSize: nil,
            nextPageToken: nil,
            reverseOrder: nil,
            startTimeFilter: ExecutionTimeFilter.__default,
            tagFilter: nil,
            typeFilter: nil)

        return defaultInstance
    }()
}

public extension ListTagsForResourceInput {
    /**
     Default instance of the ListTagsForResourceInput structure.
     */
    static let __default: SimpleWorkflowModel.ListTagsForResourceInput = {
        let defaultInstance = SimpleWorkflowModel.ListTagsForResourceInput(
            resourceArn: "0")

        return defaultInstance
    }()
}

public extension ListTagsForResourceOutput {
    /**
     Default instance of the ListTagsForResourceOutput structure.
     */
    static let __default: SimpleWorkflowModel.ListTagsForResourceOutput = {
        let defaultInstance = SimpleWorkflowModel.ListTagsForResourceOutput(
            tags: nil)

        return defaultInstance
    }()
}

public extension ListWorkflowTypesInput {
    /**
     Default instance of the ListWorkflowTypesInput structure.
     */
    static let __default: SimpleWorkflowModel.ListWorkflowTypesInput = {
        let defaultInstance = SimpleWorkflowModel.ListWorkflowTypesInput(
            domain: "0",
            maximumPageSize: nil,
            name: nil,
            nextPageToken: nil,
            registrationStatus: .__default,
            reverseOrder: nil)

        return defaultInstance
    }()
}

public extension MarkerRecordedEventAttributes {
    /**
     Default instance of the MarkerRecordedEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.MarkerRecordedEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.MarkerRecordedEventAttributes(
            decisionTaskCompletedEventId: 0,
            details: nil,
            markerName: "0")

        return defaultInstance
    }()
}

public extension OperationNotPermittedFault {
    /**
     Default instance of the OperationNotPermittedFault structure.
     */
    static let __default: SimpleWorkflowModel.OperationNotPermittedFault = {
        let defaultInstance = SimpleWorkflowModel.OperationNotPermittedFault(
            message: nil)

        return defaultInstance
    }()
}

public extension PendingTaskCount {
    /**
     Default instance of the PendingTaskCount structure.
     */
    static let __default: SimpleWorkflowModel.PendingTaskCount = {
        let defaultInstance = SimpleWorkflowModel.PendingTaskCount(
            count: 0,
            truncated: nil)

        return defaultInstance
    }()
}

public extension PollForActivityTaskInput {
    /**
     Default instance of the PollForActivityTaskInput structure.
     */
    static let __default: SimpleWorkflowModel.PollForActivityTaskInput = {
        let defaultInstance = SimpleWorkflowModel.PollForActivityTaskInput(
            domain: "0",
            identity: nil,
            taskList: TaskList.__default)

        return defaultInstance
    }()
}

public extension PollForDecisionTaskInput {
    /**
     Default instance of the PollForDecisionTaskInput structure.
     */
    static let __default: SimpleWorkflowModel.PollForDecisionTaskInput = {
        let defaultInstance = SimpleWorkflowModel.PollForDecisionTaskInput(
            domain: "0",
            identity: nil,
            maximumPageSize: nil,
            nextPageToken: nil,
            reverseOrder: nil,
            taskList: TaskList.__default)

        return defaultInstance
    }()
}

public extension RecordActivityTaskHeartbeatInput {
    /**
     Default instance of the RecordActivityTaskHeartbeatInput structure.
     */
    static let __default: SimpleWorkflowModel.RecordActivityTaskHeartbeatInput = {
        let defaultInstance = SimpleWorkflowModel.RecordActivityTaskHeartbeatInput(
            details: nil,
            taskToken: "0")

        return defaultInstance
    }()
}

public extension RecordMarkerDecisionAttributes {
    /**
     Default instance of the RecordMarkerDecisionAttributes structure.
     */
    static let __default: SimpleWorkflowModel.RecordMarkerDecisionAttributes = {
        let defaultInstance = SimpleWorkflowModel.RecordMarkerDecisionAttributes(
            details: nil,
            markerName: "0")

        return defaultInstance
    }()
}

public extension RecordMarkerFailedEventAttributes {
    /**
     Default instance of the RecordMarkerFailedEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.RecordMarkerFailedEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.RecordMarkerFailedEventAttributes(
            cause: .__default,
            decisionTaskCompletedEventId: 0,
            markerName: "0")

        return defaultInstance
    }()
}

public extension RegisterActivityTypeInput {
    /**
     Default instance of the RegisterActivityTypeInput structure.
     */
    static let __default: SimpleWorkflowModel.RegisterActivityTypeInput = {
        let defaultInstance = SimpleWorkflowModel.RegisterActivityTypeInput(
            defaultTaskHeartbeatTimeout: nil,
            defaultTaskList: nil,
            defaultTaskPriority: nil,
            defaultTaskScheduleToCloseTimeout: nil,
            defaultTaskScheduleToStartTimeout: nil,
            defaultTaskStartToCloseTimeout: nil,
            description: nil,
            domain: "0",
            name: "0",
            version: "0")

        return defaultInstance
    }()
}

public extension RegisterDomainInput {
    /**
     Default instance of the RegisterDomainInput structure.
     */
    static let __default: SimpleWorkflowModel.RegisterDomainInput = {
        let defaultInstance = SimpleWorkflowModel.RegisterDomainInput(
            description: nil,
            name: "0",
            tags: nil,
            workflowExecutionRetentionPeriodInDays: "0")

        return defaultInstance
    }()
}

public extension RegisterWorkflowTypeInput {
    /**
     Default instance of the RegisterWorkflowTypeInput structure.
     */
    static let __default: SimpleWorkflowModel.RegisterWorkflowTypeInput = {
        let defaultInstance = SimpleWorkflowModel.RegisterWorkflowTypeInput(
            defaultChildPolicy: nil,
            defaultExecutionStartToCloseTimeout: nil,
            defaultLambdaRole: nil,
            defaultTaskList: nil,
            defaultTaskPriority: nil,
            defaultTaskStartToCloseTimeout: nil,
            description: nil,
            domain: "0",
            name: "0",
            version: "0")

        return defaultInstance
    }()
}

public extension RequestCancelActivityTaskDecisionAttributes {
    /**
     Default instance of the RequestCancelActivityTaskDecisionAttributes structure.
     */
    static let __default: SimpleWorkflowModel.RequestCancelActivityTaskDecisionAttributes = {
        let defaultInstance = SimpleWorkflowModel.RequestCancelActivityTaskDecisionAttributes(
            activityId: "0")

        return defaultInstance
    }()
}

public extension RequestCancelActivityTaskFailedEventAttributes {
    /**
     Default instance of the RequestCancelActivityTaskFailedEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.RequestCancelActivityTaskFailedEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.RequestCancelActivityTaskFailedEventAttributes(
            activityId: "0",
            cause: .__default,
            decisionTaskCompletedEventId: 0)

        return defaultInstance
    }()
}

public extension RequestCancelExternalWorkflowExecutionDecisionAttributes {
    /**
     Default instance of the RequestCancelExternalWorkflowExecutionDecisionAttributes structure.
     */
    static let __default: SimpleWorkflowModel.RequestCancelExternalWorkflowExecutionDecisionAttributes = {
        let defaultInstance = SimpleWorkflowModel.RequestCancelExternalWorkflowExecutionDecisionAttributes(
            control: nil,
            runId: nil,
            workflowId: "0")

        return defaultInstance
    }()
}

public extension RequestCancelExternalWorkflowExecutionFailedEventAttributes {
    /**
     Default instance of the RequestCancelExternalWorkflowExecutionFailedEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.RequestCancelExternalWorkflowExecutionFailedEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.RequestCancelExternalWorkflowExecutionFailedEventAttributes(
            cause: .__default,
            control: nil,
            decisionTaskCompletedEventId: 0,
            initiatedEventId: 0,
            runId: nil,
            workflowId: "0")

        return defaultInstance
    }()
}

public extension RequestCancelExternalWorkflowExecutionInitiatedEventAttributes {
    /**
     Default instance of the RequestCancelExternalWorkflowExecutionInitiatedEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.RequestCancelExternalWorkflowExecutionInitiatedEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.RequestCancelExternalWorkflowExecutionInitiatedEventAttributes(
            control: nil,
            decisionTaskCompletedEventId: 0,
            runId: nil,
            workflowId: "0")

        return defaultInstance
    }()
}

public extension RequestCancelWorkflowExecutionInput {
    /**
     Default instance of the RequestCancelWorkflowExecutionInput structure.
     */
    static let __default: SimpleWorkflowModel.RequestCancelWorkflowExecutionInput = {
        let defaultInstance = SimpleWorkflowModel.RequestCancelWorkflowExecutionInput(
            domain: "0",
            runId: nil,
            workflowId: "0")

        return defaultInstance
    }()
}

public extension ResourceTag {
    /**
     Default instance of the ResourceTag structure.
     */
    static let __default: SimpleWorkflowModel.ResourceTag = {
        let defaultInstance = SimpleWorkflowModel.ResourceTag(
            key: "0",
            value: nil)

        return defaultInstance
    }()
}

public extension RespondActivityTaskCanceledInput {
    /**
     Default instance of the RespondActivityTaskCanceledInput structure.
     */
    static let __default: SimpleWorkflowModel.RespondActivityTaskCanceledInput = {
        let defaultInstance = SimpleWorkflowModel.RespondActivityTaskCanceledInput(
            details: nil,
            taskToken: "0")

        return defaultInstance
    }()
}

public extension RespondActivityTaskCompletedInput {
    /**
     Default instance of the RespondActivityTaskCompletedInput structure.
     */
    static let __default: SimpleWorkflowModel.RespondActivityTaskCompletedInput = {
        let defaultInstance = SimpleWorkflowModel.RespondActivityTaskCompletedInput(
            result: nil,
            taskToken: "0")

        return defaultInstance
    }()
}

public extension RespondActivityTaskFailedInput {
    /**
     Default instance of the RespondActivityTaskFailedInput structure.
     */
    static let __default: SimpleWorkflowModel.RespondActivityTaskFailedInput = {
        let defaultInstance = SimpleWorkflowModel.RespondActivityTaskFailedInput(
            details: nil,
            reason: nil,
            taskToken: "0")

        return defaultInstance
    }()
}

public extension RespondDecisionTaskCompletedInput {
    /**
     Default instance of the RespondDecisionTaskCompletedInput structure.
     */
    static let __default: SimpleWorkflowModel.RespondDecisionTaskCompletedInput = {
        let defaultInstance = SimpleWorkflowModel.RespondDecisionTaskCompletedInput(
            decisions: nil,
            executionContext: nil,
            taskToken: "0")

        return defaultInstance
    }()
}

public extension Run {
    /**
     Default instance of the Run structure.
     */
    static let __default: SimpleWorkflowModel.Run = {
        let defaultInstance = SimpleWorkflowModel.Run(
            runId: nil)

        return defaultInstance
    }()
}

public extension ScheduleActivityTaskDecisionAttributes {
    /**
     Default instance of the ScheduleActivityTaskDecisionAttributes structure.
     */
    static let __default: SimpleWorkflowModel.ScheduleActivityTaskDecisionAttributes = {
        let defaultInstance = SimpleWorkflowModel.ScheduleActivityTaskDecisionAttributes(
            activityId: "0",
            activityType: ActivityType.__default,
            control: nil,
            heartbeatTimeout: nil,
            input: nil,
            scheduleToCloseTimeout: nil,
            scheduleToStartTimeout: nil,
            startToCloseTimeout: nil,
            taskList: nil,
            taskPriority: nil)

        return defaultInstance
    }()
}

public extension ScheduleActivityTaskFailedEventAttributes {
    /**
     Default instance of the ScheduleActivityTaskFailedEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.ScheduleActivityTaskFailedEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.ScheduleActivityTaskFailedEventAttributes(
            activityId: "0",
            activityType: ActivityType.__default,
            cause: .__default,
            decisionTaskCompletedEventId: 0)

        return defaultInstance
    }()
}

public extension ScheduleLambdaFunctionDecisionAttributes {
    /**
     Default instance of the ScheduleLambdaFunctionDecisionAttributes structure.
     */
    static let __default: SimpleWorkflowModel.ScheduleLambdaFunctionDecisionAttributes = {
        let defaultInstance = SimpleWorkflowModel.ScheduleLambdaFunctionDecisionAttributes(
            control: nil,
            id: "0",
            input: nil,
            name: "0",
            startToCloseTimeout: nil)

        return defaultInstance
    }()
}

public extension ScheduleLambdaFunctionFailedEventAttributes {
    /**
     Default instance of the ScheduleLambdaFunctionFailedEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.ScheduleLambdaFunctionFailedEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.ScheduleLambdaFunctionFailedEventAttributes(
            cause: .__default,
            decisionTaskCompletedEventId: 0,
            id: "0",
            name: "0")

        return defaultInstance
    }()
}

public extension SignalExternalWorkflowExecutionDecisionAttributes {
    /**
     Default instance of the SignalExternalWorkflowExecutionDecisionAttributes structure.
     */
    static let __default: SimpleWorkflowModel.SignalExternalWorkflowExecutionDecisionAttributes = {
        let defaultInstance = SimpleWorkflowModel.SignalExternalWorkflowExecutionDecisionAttributes(
            control: nil,
            input: nil,
            runId: nil,
            signalName: "0",
            workflowId: "0")

        return defaultInstance
    }()
}

public extension SignalExternalWorkflowExecutionFailedEventAttributes {
    /**
     Default instance of the SignalExternalWorkflowExecutionFailedEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.SignalExternalWorkflowExecutionFailedEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.SignalExternalWorkflowExecutionFailedEventAttributes(
            cause: .__default,
            control: nil,
            decisionTaskCompletedEventId: 0,
            initiatedEventId: 0,
            runId: nil,
            workflowId: "0")

        return defaultInstance
    }()
}

public extension SignalExternalWorkflowExecutionInitiatedEventAttributes {
    /**
     Default instance of the SignalExternalWorkflowExecutionInitiatedEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.SignalExternalWorkflowExecutionInitiatedEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.SignalExternalWorkflowExecutionInitiatedEventAttributes(
            control: nil,
            decisionTaskCompletedEventId: 0,
            input: nil,
            runId: nil,
            signalName: "0",
            workflowId: "0")

        return defaultInstance
    }()
}

public extension SignalWorkflowExecutionInput {
    /**
     Default instance of the SignalWorkflowExecutionInput structure.
     */
    static let __default: SimpleWorkflowModel.SignalWorkflowExecutionInput = {
        let defaultInstance = SimpleWorkflowModel.SignalWorkflowExecutionInput(
            domain: "0",
            input: nil,
            runId: nil,
            signalName: "0",
            workflowId: "0")

        return defaultInstance
    }()
}

public extension StartChildWorkflowExecutionDecisionAttributes {
    /**
     Default instance of the StartChildWorkflowExecutionDecisionAttributes structure.
     */
    static let __default: SimpleWorkflowModel.StartChildWorkflowExecutionDecisionAttributes = {
        let defaultInstance = SimpleWorkflowModel.StartChildWorkflowExecutionDecisionAttributes(
            childPolicy: nil,
            control: nil,
            executionStartToCloseTimeout: nil,
            input: nil,
            lambdaRole: nil,
            tagList: nil,
            taskList: nil,
            taskPriority: nil,
            taskStartToCloseTimeout: nil,
            workflowId: "0",
            workflowType: WorkflowType.__default)

        return defaultInstance
    }()
}

public extension StartChildWorkflowExecutionFailedEventAttributes {
    /**
     Default instance of the StartChildWorkflowExecutionFailedEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.StartChildWorkflowExecutionFailedEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.StartChildWorkflowExecutionFailedEventAttributes(
            cause: .__default,
            control: nil,
            decisionTaskCompletedEventId: 0,
            initiatedEventId: 0,
            workflowId: "0",
            workflowType: WorkflowType.__default)

        return defaultInstance
    }()
}

public extension StartChildWorkflowExecutionInitiatedEventAttributes {
    /**
     Default instance of the StartChildWorkflowExecutionInitiatedEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.StartChildWorkflowExecutionInitiatedEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.StartChildWorkflowExecutionInitiatedEventAttributes(
            childPolicy: .__default,
            control: nil,
            decisionTaskCompletedEventId: 0,
            executionStartToCloseTimeout: nil,
            input: nil,
            lambdaRole: nil,
            tagList: nil,
            taskList: TaskList.__default,
            taskPriority: nil,
            taskStartToCloseTimeout: nil,
            workflowId: "0",
            workflowType: WorkflowType.__default)

        return defaultInstance
    }()
}

public extension StartLambdaFunctionFailedEventAttributes {
    /**
     Default instance of the StartLambdaFunctionFailedEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.StartLambdaFunctionFailedEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.StartLambdaFunctionFailedEventAttributes(
            cause: nil,
            message: nil,
            scheduledEventId: nil)

        return defaultInstance
    }()
}

public extension StartTimerDecisionAttributes {
    /**
     Default instance of the StartTimerDecisionAttributes structure.
     */
    static let __default: SimpleWorkflowModel.StartTimerDecisionAttributes = {
        let defaultInstance = SimpleWorkflowModel.StartTimerDecisionAttributes(
            control: nil,
            startToFireTimeout: "0",
            timerId: "0")

        return defaultInstance
    }()
}

public extension StartTimerFailedEventAttributes {
    /**
     Default instance of the StartTimerFailedEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.StartTimerFailedEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.StartTimerFailedEventAttributes(
            cause: .__default,
            decisionTaskCompletedEventId: 0,
            timerId: "0")

        return defaultInstance
    }()
}

public extension StartWorkflowExecutionInput {
    /**
     Default instance of the StartWorkflowExecutionInput structure.
     */
    static let __default: SimpleWorkflowModel.StartWorkflowExecutionInput = {
        let defaultInstance = SimpleWorkflowModel.StartWorkflowExecutionInput(
            childPolicy: nil,
            domain: "0",
            executionStartToCloseTimeout: nil,
            input: nil,
            lambdaRole: nil,
            tagList: nil,
            taskList: nil,
            taskPriority: nil,
            taskStartToCloseTimeout: nil,
            workflowId: "0",
            workflowType: WorkflowType.__default)

        return defaultInstance
    }()
}

public extension TagFilter {
    /**
     Default instance of the TagFilter structure.
     */
    static let __default: SimpleWorkflowModel.TagFilter = {
        let defaultInstance = SimpleWorkflowModel.TagFilter(
            tag: "")

        return defaultInstance
    }()
}

public extension TagResourceInput {
    /**
     Default instance of the TagResourceInput structure.
     */
    static let __default: SimpleWorkflowModel.TagResourceInput = {
        let defaultInstance = SimpleWorkflowModel.TagResourceInput(
            resourceArn: "0",
            tags: [])

        return defaultInstance
    }()
}

public extension TaskList {
    /**
     Default instance of the TaskList structure.
     */
    static let __default: SimpleWorkflowModel.TaskList = {
        let defaultInstance = SimpleWorkflowModel.TaskList(
            name: "0")

        return defaultInstance
    }()
}

public extension TerminateWorkflowExecutionInput {
    /**
     Default instance of the TerminateWorkflowExecutionInput structure.
     */
    static let __default: SimpleWorkflowModel.TerminateWorkflowExecutionInput = {
        let defaultInstance = SimpleWorkflowModel.TerminateWorkflowExecutionInput(
            childPolicy: nil,
            details: nil,
            domain: "0",
            reason: nil,
            runId: nil,
            workflowId: "0")

        return defaultInstance
    }()
}

public extension TimerCanceledEventAttributes {
    /**
     Default instance of the TimerCanceledEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.TimerCanceledEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.TimerCanceledEventAttributes(
            decisionTaskCompletedEventId: 0,
            startedEventId: 0,
            timerId: "0")

        return defaultInstance
    }()
}

public extension TimerFiredEventAttributes {
    /**
     Default instance of the TimerFiredEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.TimerFiredEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.TimerFiredEventAttributes(
            startedEventId: 0,
            timerId: "0")

        return defaultInstance
    }()
}

public extension TimerStartedEventAttributes {
    /**
     Default instance of the TimerStartedEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.TimerStartedEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.TimerStartedEventAttributes(
            control: nil,
            decisionTaskCompletedEventId: 0,
            startToFireTimeout: "0",
            timerId: "0")

        return defaultInstance
    }()
}

public extension TooManyTagsFault {
    /**
     Default instance of the TooManyTagsFault structure.
     */
    static let __default: SimpleWorkflowModel.TooManyTagsFault = {
        let defaultInstance = SimpleWorkflowModel.TooManyTagsFault(
            message: nil)

        return defaultInstance
    }()
}

public extension TypeAlreadyExistsFault {
    /**
     Default instance of the TypeAlreadyExistsFault structure.
     */
    static let __default: SimpleWorkflowModel.TypeAlreadyExistsFault = {
        let defaultInstance = SimpleWorkflowModel.TypeAlreadyExistsFault(
            message: nil)

        return defaultInstance
    }()
}

public extension TypeDeprecatedFault {
    /**
     Default instance of the TypeDeprecatedFault structure.
     */
    static let __default: SimpleWorkflowModel.TypeDeprecatedFault = {
        let defaultInstance = SimpleWorkflowModel.TypeDeprecatedFault(
            message: nil)

        return defaultInstance
    }()
}

public extension UndeprecateActivityTypeInput {
    /**
     Default instance of the UndeprecateActivityTypeInput structure.
     */
    static let __default: SimpleWorkflowModel.UndeprecateActivityTypeInput = {
        let defaultInstance = SimpleWorkflowModel.UndeprecateActivityTypeInput(
            activityType: ActivityType.__default,
            domain: "0")

        return defaultInstance
    }()
}

public extension UndeprecateDomainInput {
    /**
     Default instance of the UndeprecateDomainInput structure.
     */
    static let __default: SimpleWorkflowModel.UndeprecateDomainInput = {
        let defaultInstance = SimpleWorkflowModel.UndeprecateDomainInput(
            name: "0")

        return defaultInstance
    }()
}

public extension UndeprecateWorkflowTypeInput {
    /**
     Default instance of the UndeprecateWorkflowTypeInput structure.
     */
    static let __default: SimpleWorkflowModel.UndeprecateWorkflowTypeInput = {
        let defaultInstance = SimpleWorkflowModel.UndeprecateWorkflowTypeInput(
            domain: "0",
            workflowType: WorkflowType.__default)

        return defaultInstance
    }()
}

public extension UnknownResourceFault {
    /**
     Default instance of the UnknownResourceFault structure.
     */
    static let __default: SimpleWorkflowModel.UnknownResourceFault = {
        let defaultInstance = SimpleWorkflowModel.UnknownResourceFault(
            message: nil)

        return defaultInstance
    }()
}

public extension UntagResourceInput {
    /**
     Default instance of the UntagResourceInput structure.
     */
    static let __default: SimpleWorkflowModel.UntagResourceInput = {
        let defaultInstance = SimpleWorkflowModel.UntagResourceInput(
            resourceArn: "0",
            tagKeys: [])

        return defaultInstance
    }()
}

public extension WorkflowExecution {
    /**
     Default instance of the WorkflowExecution structure.
     */
    static let __default: SimpleWorkflowModel.WorkflowExecution = {
        let defaultInstance = SimpleWorkflowModel.WorkflowExecution(
            runId: "0",
            workflowId: "0")

        return defaultInstance
    }()
}

public extension WorkflowExecutionAlreadyStartedFault {
    /**
     Default instance of the WorkflowExecutionAlreadyStartedFault structure.
     */
    static let __default: SimpleWorkflowModel.WorkflowExecutionAlreadyStartedFault = {
        let defaultInstance = SimpleWorkflowModel.WorkflowExecutionAlreadyStartedFault(
            message: nil)

        return defaultInstance
    }()
}

public extension WorkflowExecutionCancelRequestedEventAttributes {
    /**
     Default instance of the WorkflowExecutionCancelRequestedEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.WorkflowExecutionCancelRequestedEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.WorkflowExecutionCancelRequestedEventAttributes(
            cause: nil,
            externalInitiatedEventId: nil,
            externalWorkflowExecution: nil)

        return defaultInstance
    }()
}

public extension WorkflowExecutionCanceledEventAttributes {
    /**
     Default instance of the WorkflowExecutionCanceledEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.WorkflowExecutionCanceledEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.WorkflowExecutionCanceledEventAttributes(
            decisionTaskCompletedEventId: 0,
            details: nil)

        return defaultInstance
    }()
}

public extension WorkflowExecutionCompletedEventAttributes {
    /**
     Default instance of the WorkflowExecutionCompletedEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.WorkflowExecutionCompletedEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.WorkflowExecutionCompletedEventAttributes(
            decisionTaskCompletedEventId: 0,
            result: nil)

        return defaultInstance
    }()
}

public extension WorkflowExecutionConfiguration {
    /**
     Default instance of the WorkflowExecutionConfiguration structure.
     */
    static let __default: SimpleWorkflowModel.WorkflowExecutionConfiguration = {
        let defaultInstance = SimpleWorkflowModel.WorkflowExecutionConfiguration(
            childPolicy: .__default,
            executionStartToCloseTimeout: "0",
            lambdaRole: nil,
            taskList: TaskList.__default,
            taskPriority: nil,
            taskStartToCloseTimeout: "0")

        return defaultInstance
    }()
}

public extension WorkflowExecutionContinuedAsNewEventAttributes {
    /**
     Default instance of the WorkflowExecutionContinuedAsNewEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.WorkflowExecutionContinuedAsNewEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.WorkflowExecutionContinuedAsNewEventAttributes(
            childPolicy: .__default,
            decisionTaskCompletedEventId: 0,
            executionStartToCloseTimeout: nil,
            input: nil,
            lambdaRole: nil,
            newExecutionRunId: "0",
            tagList: nil,
            taskList: TaskList.__default,
            taskPriority: nil,
            taskStartToCloseTimeout: nil,
            workflowType: WorkflowType.__default)

        return defaultInstance
    }()
}

public extension WorkflowExecutionCount {
    /**
     Default instance of the WorkflowExecutionCount structure.
     */
    static let __default: SimpleWorkflowModel.WorkflowExecutionCount = {
        let defaultInstance = SimpleWorkflowModel.WorkflowExecutionCount(
            count: 0,
            truncated: nil)

        return defaultInstance
    }()
}

public extension WorkflowExecutionDetail {
    /**
     Default instance of the WorkflowExecutionDetail structure.
     */
    static let __default: SimpleWorkflowModel.WorkflowExecutionDetail = {
        let defaultInstance = SimpleWorkflowModel.WorkflowExecutionDetail(
            executionConfiguration: WorkflowExecutionConfiguration.__default,
            executionInfo: WorkflowExecutionInfo.__default,
            latestActivityTaskTimestamp: nil,
            latestExecutionContext: nil,
            openCounts: WorkflowExecutionOpenCounts.__default)

        return defaultInstance
    }()
}

public extension WorkflowExecutionFailedEventAttributes {
    /**
     Default instance of the WorkflowExecutionFailedEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.WorkflowExecutionFailedEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.WorkflowExecutionFailedEventAttributes(
            decisionTaskCompletedEventId: 0,
            details: nil,
            reason: nil)

        return defaultInstance
    }()
}

public extension WorkflowExecutionFilter {
    /**
     Default instance of the WorkflowExecutionFilter structure.
     */
    static let __default: SimpleWorkflowModel.WorkflowExecutionFilter = {
        let defaultInstance = SimpleWorkflowModel.WorkflowExecutionFilter(
            workflowId: "0")

        return defaultInstance
    }()
}

public extension WorkflowExecutionInfo {
    /**
     Default instance of the WorkflowExecutionInfo structure.
     */
    static let __default: SimpleWorkflowModel.WorkflowExecutionInfo = {
        let defaultInstance = SimpleWorkflowModel.WorkflowExecutionInfo(
            cancelRequested: nil,
            closeStatus: nil,
            closeTimestamp: nil,
            execution: WorkflowExecution.__default,
            executionStatus: .__default,
            parent: nil,
            startTimestamp: 1.52953091375E9,
            tagList: nil,
            workflowType: WorkflowType.__default)

        return defaultInstance
    }()
}

public extension WorkflowExecutionInfos {
    /**
     Default instance of the WorkflowExecutionInfos structure.
     */
    static let __default: SimpleWorkflowModel.WorkflowExecutionInfos = {
        let defaultInstance = SimpleWorkflowModel.WorkflowExecutionInfos(
            executionInfos: [],
            nextPageToken: nil)

        return defaultInstance
    }()
}

public extension WorkflowExecutionOpenCounts {
    /**
     Default instance of the WorkflowExecutionOpenCounts structure.
     */
    static let __default: SimpleWorkflowModel.WorkflowExecutionOpenCounts = {
        let defaultInstance = SimpleWorkflowModel.WorkflowExecutionOpenCounts(
            openActivityTasks: 0,
            openChildWorkflowExecutions: 0,
            openDecisionTasks: 0,
            openLambdaFunctions: nil,
            openTimers: 0)

        return defaultInstance
    }()
}

public extension WorkflowExecutionSignaledEventAttributes {
    /**
     Default instance of the WorkflowExecutionSignaledEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.WorkflowExecutionSignaledEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.WorkflowExecutionSignaledEventAttributes(
            externalInitiatedEventId: nil,
            externalWorkflowExecution: nil,
            input: nil,
            signalName: "0")

        return defaultInstance
    }()
}

public extension WorkflowExecutionStartedEventAttributes {
    /**
     Default instance of the WorkflowExecutionStartedEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.WorkflowExecutionStartedEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.WorkflowExecutionStartedEventAttributes(
            childPolicy: .__default,
            continuedExecutionRunId: nil,
            executionStartToCloseTimeout: nil,
            input: nil,
            lambdaRole: nil,
            parentInitiatedEventId: nil,
            parentWorkflowExecution: nil,
            tagList: nil,
            taskList: TaskList.__default,
            taskPriority: nil,
            taskStartToCloseTimeout: nil,
            workflowType: WorkflowType.__default)

        return defaultInstance
    }()
}

public extension WorkflowExecutionTerminatedEventAttributes {
    /**
     Default instance of the WorkflowExecutionTerminatedEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.WorkflowExecutionTerminatedEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.WorkflowExecutionTerminatedEventAttributes(
            cause: nil,
            childPolicy: .__default,
            details: nil,
            reason: nil)

        return defaultInstance
    }()
}

public extension WorkflowExecutionTimedOutEventAttributes {
    /**
     Default instance of the WorkflowExecutionTimedOutEventAttributes structure.
     */
    static let __default: SimpleWorkflowModel.WorkflowExecutionTimedOutEventAttributes = {
        let defaultInstance = SimpleWorkflowModel.WorkflowExecutionTimedOutEventAttributes(
            childPolicy: .__default,
            timeoutType: .__default)

        return defaultInstance
    }()
}

public extension WorkflowType {
    /**
     Default instance of the WorkflowType structure.
     */
    static let __default: SimpleWorkflowModel.WorkflowType = {
        let defaultInstance = SimpleWorkflowModel.WorkflowType(
            name: "0",
            version: "0")

        return defaultInstance
    }()
}

public extension WorkflowTypeConfiguration {
    /**
     Default instance of the WorkflowTypeConfiguration structure.
     */
    static let __default: SimpleWorkflowModel.WorkflowTypeConfiguration = {
        let defaultInstance = SimpleWorkflowModel.WorkflowTypeConfiguration(
            defaultChildPolicy: nil,
            defaultExecutionStartToCloseTimeout: nil,
            defaultLambdaRole: nil,
            defaultTaskList: nil,
            defaultTaskPriority: nil,
            defaultTaskStartToCloseTimeout: nil)

        return defaultInstance
    }()
}

public extension WorkflowTypeDetail {
    /**
     Default instance of the WorkflowTypeDetail structure.
     */
    static let __default: SimpleWorkflowModel.WorkflowTypeDetail = {
        let defaultInstance = SimpleWorkflowModel.WorkflowTypeDetail(
            configuration: WorkflowTypeConfiguration.__default,
            typeInfo: WorkflowTypeInfo.__default)

        return defaultInstance
    }()
}

public extension WorkflowTypeFilter {
    /**
     Default instance of the WorkflowTypeFilter structure.
     */
    static let __default: SimpleWorkflowModel.WorkflowTypeFilter = {
        let defaultInstance = SimpleWorkflowModel.WorkflowTypeFilter(
            name: "0",
            version: nil)

        return defaultInstance
    }()
}

public extension WorkflowTypeInfo {
    /**
     Default instance of the WorkflowTypeInfo structure.
     */
    static let __default: SimpleWorkflowModel.WorkflowTypeInfo = {
        let defaultInstance = SimpleWorkflowModel.WorkflowTypeInfo(
            creationDate: 1.52953091375E9,
            deprecationDate: nil,
            description: nil,
            status: .__default,
            workflowType: WorkflowType.__default)

        return defaultInstance
    }()
}

public extension WorkflowTypeInfos {
    /**
     Default instance of the WorkflowTypeInfos structure.
     */
    static let __default: SimpleWorkflowModel.WorkflowTypeInfos = {
        let defaultInstance = SimpleWorkflowModel.WorkflowTypeInfos(
            nextPageToken: nil,
            typeInfos: [])

        return defaultInstance
    }()
}
