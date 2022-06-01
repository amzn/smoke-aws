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
// SimpleWorkflowModelStructures.swift
// SimpleWorkflowModel
//

import Foundation

public struct ActivityTask: Codable, Equatable {
    public var activityId: ActivityId
    public var activityType: ActivityType
    public var input: Data?
    public var startedEventId: EventId
    public var taskToken: TaskToken
    public var workflowExecution: WorkflowExecution

    public init(activityId: ActivityId,
                activityType: ActivityType,
                input: Data? = nil,
                startedEventId: EventId,
                taskToken: TaskToken,
                workflowExecution: WorkflowExecution) {
        self.activityId = activityId
        self.activityType = activityType
        self.input = input
        self.startedEventId = startedEventId
        self.taskToken = taskToken
        self.workflowExecution = workflowExecution
    }

    enum CodingKeys: String, CodingKey {
        case activityId
        case activityType
        case input
        case startedEventId
        case taskToken
        case workflowExecution
    }

    public func validate() throws {
        try activityId.validateAsActivityId()
        try activityType.validate()
        try input?.validateAsData()
        try taskToken.validateAsTaskToken()
        try workflowExecution.validate()
    }
}

public struct ActivityTaskCancelRequestedEventAttributes: Codable, Equatable {
    public var activityId: ActivityId
    public var decisionTaskCompletedEventId: EventId

    public init(activityId: ActivityId,
                decisionTaskCompletedEventId: EventId) {
        self.activityId = activityId
        self.decisionTaskCompletedEventId = decisionTaskCompletedEventId
    }

    enum CodingKeys: String, CodingKey {
        case activityId
        case decisionTaskCompletedEventId
    }

    public func validate() throws {
        try activityId.validateAsActivityId()
    }
}

public struct ActivityTaskCanceledEventAttributes: Codable, Equatable {
    public var details: Data?
    public var latestCancelRequestedEventId: EventId?
    public var scheduledEventId: EventId
    public var startedEventId: EventId

    public init(details: Data? = nil,
                latestCancelRequestedEventId: EventId? = nil,
                scheduledEventId: EventId,
                startedEventId: EventId) {
        self.details = details
        self.latestCancelRequestedEventId = latestCancelRequestedEventId
        self.scheduledEventId = scheduledEventId
        self.startedEventId = startedEventId
    }

    enum CodingKeys: String, CodingKey {
        case details
        case latestCancelRequestedEventId
        case scheduledEventId
        case startedEventId
    }

    public func validate() throws {
        try details?.validateAsData()
    }
}

public struct ActivityTaskCompletedEventAttributes: Codable, Equatable {
    public var result: Data?
    public var scheduledEventId: EventId
    public var startedEventId: EventId

    public init(result: Data? = nil,
                scheduledEventId: EventId,
                startedEventId: EventId) {
        self.result = result
        self.scheduledEventId = scheduledEventId
        self.startedEventId = startedEventId
    }

    enum CodingKeys: String, CodingKey {
        case result
        case scheduledEventId
        case startedEventId
    }

    public func validate() throws {
        try result?.validateAsData()
    }
}

public struct ActivityTaskFailedEventAttributes: Codable, Equatable {
    public var details: Data?
    public var reason: FailureReason?
    public var scheduledEventId: EventId
    public var startedEventId: EventId

    public init(details: Data? = nil,
                reason: FailureReason? = nil,
                scheduledEventId: EventId,
                startedEventId: EventId) {
        self.details = details
        self.reason = reason
        self.scheduledEventId = scheduledEventId
        self.startedEventId = startedEventId
    }

    enum CodingKeys: String, CodingKey {
        case details
        case reason
        case scheduledEventId
        case startedEventId
    }

    public func validate() throws {
        try details?.validateAsData()
        try reason?.validateAsFailureReason()
    }
}

public struct ActivityTaskScheduledEventAttributes: Codable, Equatable {
    public var activityId: ActivityId
    public var activityType: ActivityType
    public var control: Data?
    public var decisionTaskCompletedEventId: EventId
    public var heartbeatTimeout: DurationInSecondsOptional?
    public var input: Data?
    public var scheduleToCloseTimeout: DurationInSecondsOptional?
    public var scheduleToStartTimeout: DurationInSecondsOptional?
    public var startToCloseTimeout: DurationInSecondsOptional?
    public var taskList: TaskList
    public var taskPriority: TaskPriority?

    public init(activityId: ActivityId,
                activityType: ActivityType,
                control: Data? = nil,
                decisionTaskCompletedEventId: EventId,
                heartbeatTimeout: DurationInSecondsOptional? = nil,
                input: Data? = nil,
                scheduleToCloseTimeout: DurationInSecondsOptional? = nil,
                scheduleToStartTimeout: DurationInSecondsOptional? = nil,
                startToCloseTimeout: DurationInSecondsOptional? = nil,
                taskList: TaskList,
                taskPriority: TaskPriority? = nil) {
        self.activityId = activityId
        self.activityType = activityType
        self.control = control
        self.decisionTaskCompletedEventId = decisionTaskCompletedEventId
        self.heartbeatTimeout = heartbeatTimeout
        self.input = input
        self.scheduleToCloseTimeout = scheduleToCloseTimeout
        self.scheduleToStartTimeout = scheduleToStartTimeout
        self.startToCloseTimeout = startToCloseTimeout
        self.taskList = taskList
        self.taskPriority = taskPriority
    }

    enum CodingKeys: String, CodingKey {
        case activityId
        case activityType
        case control
        case decisionTaskCompletedEventId
        case heartbeatTimeout
        case input
        case scheduleToCloseTimeout
        case scheduleToStartTimeout
        case startToCloseTimeout
        case taskList
        case taskPriority
    }

    public func validate() throws {
        try activityId.validateAsActivityId()
        try activityType.validate()
        try control?.validateAsData()
        try heartbeatTimeout?.validateAsDurationInSecondsOptional()
        try input?.validateAsData()
        try scheduleToCloseTimeout?.validateAsDurationInSecondsOptional()
        try scheduleToStartTimeout?.validateAsDurationInSecondsOptional()
        try startToCloseTimeout?.validateAsDurationInSecondsOptional()
        try taskList.validate()
    }
}

public struct ActivityTaskStartedEventAttributes: Codable, Equatable {
    public var identity: Identity?
    public var scheduledEventId: EventId

    public init(identity: Identity? = nil,
                scheduledEventId: EventId) {
        self.identity = identity
        self.scheduledEventId = scheduledEventId
    }

    enum CodingKeys: String, CodingKey {
        case identity
        case scheduledEventId
    }

    public func validate() throws {
        try identity?.validateAsIdentity()
    }
}

public struct ActivityTaskStatus: Codable, Equatable {
    public var cancelRequested: Canceled

    public init(cancelRequested: Canceled) {
        self.cancelRequested = cancelRequested
    }

    enum CodingKeys: String, CodingKey {
        case cancelRequested
    }

    public func validate() throws {
    }
}

public struct ActivityTaskTimedOutEventAttributes: Codable, Equatable {
    public var details: LimitedData?
    public var scheduledEventId: EventId
    public var startedEventId: EventId
    public var timeoutType: ActivityTaskTimeoutType

    public init(details: LimitedData? = nil,
                scheduledEventId: EventId,
                startedEventId: EventId,
                timeoutType: ActivityTaskTimeoutType) {
        self.details = details
        self.scheduledEventId = scheduledEventId
        self.startedEventId = startedEventId
        self.timeoutType = timeoutType
    }

    enum CodingKeys: String, CodingKey {
        case details
        case scheduledEventId
        case startedEventId
        case timeoutType
    }

    public func validate() throws {
        try details?.validateAsLimitedData()
    }
}

public struct ActivityType: Codable, Equatable {
    public var name: Name
    public var version: Version

    public init(name: Name,
                version: Version) {
        self.name = name
        self.version = version
    }

    enum CodingKeys: String, CodingKey {
        case name
        case version
    }

    public func validate() throws {
        try name.validateAsName()
        try version.validateAsVersion()
    }
}

public struct ActivityTypeConfiguration: Codable, Equatable {
    public var defaultTaskHeartbeatTimeout: DurationInSecondsOptional?
    public var defaultTaskList: TaskList?
    public var defaultTaskPriority: TaskPriority?
    public var defaultTaskScheduleToCloseTimeout: DurationInSecondsOptional?
    public var defaultTaskScheduleToStartTimeout: DurationInSecondsOptional?
    public var defaultTaskStartToCloseTimeout: DurationInSecondsOptional?

    public init(defaultTaskHeartbeatTimeout: DurationInSecondsOptional? = nil,
                defaultTaskList: TaskList? = nil,
                defaultTaskPriority: TaskPriority? = nil,
                defaultTaskScheduleToCloseTimeout: DurationInSecondsOptional? = nil,
                defaultTaskScheduleToStartTimeout: DurationInSecondsOptional? = nil,
                defaultTaskStartToCloseTimeout: DurationInSecondsOptional? = nil) {
        self.defaultTaskHeartbeatTimeout = defaultTaskHeartbeatTimeout
        self.defaultTaskList = defaultTaskList
        self.defaultTaskPriority = defaultTaskPriority
        self.defaultTaskScheduleToCloseTimeout = defaultTaskScheduleToCloseTimeout
        self.defaultTaskScheduleToStartTimeout = defaultTaskScheduleToStartTimeout
        self.defaultTaskStartToCloseTimeout = defaultTaskStartToCloseTimeout
    }

    enum CodingKeys: String, CodingKey {
        case defaultTaskHeartbeatTimeout
        case defaultTaskList
        case defaultTaskPriority
        case defaultTaskScheduleToCloseTimeout
        case defaultTaskScheduleToStartTimeout
        case defaultTaskStartToCloseTimeout
    }

    public func validate() throws {
        try defaultTaskHeartbeatTimeout?.validateAsDurationInSecondsOptional()
        try defaultTaskList?.validate()
        try defaultTaskScheduleToCloseTimeout?.validateAsDurationInSecondsOptional()
        try defaultTaskScheduleToStartTimeout?.validateAsDurationInSecondsOptional()
        try defaultTaskStartToCloseTimeout?.validateAsDurationInSecondsOptional()
    }
}

public struct ActivityTypeDetail: Codable, Equatable {
    public var configuration: ActivityTypeConfiguration
    public var typeInfo: ActivityTypeInfo

    public init(configuration: ActivityTypeConfiguration,
                typeInfo: ActivityTypeInfo) {
        self.configuration = configuration
        self.typeInfo = typeInfo
    }

    enum CodingKeys: String, CodingKey {
        case configuration
        case typeInfo
    }

    public func validate() throws {
        try configuration.validate()
        try typeInfo.validate()
    }
}

public struct ActivityTypeInfo: Codable, Equatable {
    public var activityType: ActivityType
    public var creationDate: Timestamp
    public var deprecationDate: Timestamp?
    public var description: Description?
    public var status: RegistrationStatus

    public init(activityType: ActivityType,
                creationDate: Timestamp,
                deprecationDate: Timestamp? = nil,
                description: Description? = nil,
                status: RegistrationStatus) {
        self.activityType = activityType
        self.creationDate = creationDate
        self.deprecationDate = deprecationDate
        self.description = description
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case activityType
        case creationDate
        case deprecationDate
        case description
        case status
    }

    public func validate() throws {
        try activityType.validate()
        try description?.validateAsDescription()
    }
}

public struct ActivityTypeInfos: Codable, Equatable {
    public var nextPageToken: PageToken?
    public var typeInfos: ActivityTypeInfoList

    public init(nextPageToken: PageToken? = nil,
                typeInfos: ActivityTypeInfoList) {
        self.nextPageToken = nextPageToken
        self.typeInfos = typeInfos
    }

    enum CodingKeys: String, CodingKey {
        case nextPageToken
        case typeInfos
    }

    public func validate() throws {
        try nextPageToken?.validateAsPageToken()
    }
}

public struct CancelTimerDecisionAttributes: Codable, Equatable {
    public var timerId: TimerId

    public init(timerId: TimerId) {
        self.timerId = timerId
    }

    enum CodingKeys: String, CodingKey {
        case timerId
    }

    public func validate() throws {
        try timerId.validateAsTimerId()
    }
}

public struct CancelTimerFailedEventAttributes: Codable, Equatable {
    public var cause: CancelTimerFailedCause
    public var decisionTaskCompletedEventId: EventId
    public var timerId: TimerId

    public init(cause: CancelTimerFailedCause,
                decisionTaskCompletedEventId: EventId,
                timerId: TimerId) {
        self.cause = cause
        self.decisionTaskCompletedEventId = decisionTaskCompletedEventId
        self.timerId = timerId
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case decisionTaskCompletedEventId
        case timerId
    }

    public func validate() throws {
        try timerId.validateAsTimerId()
    }
}

public struct CancelWorkflowExecutionDecisionAttributes: Codable, Equatable {
    public var details: Data?

    public init(details: Data? = nil) {
        self.details = details
    }

    enum CodingKeys: String, CodingKey {
        case details
    }

    public func validate() throws {
        try details?.validateAsData()
    }
}

public struct CancelWorkflowExecutionFailedEventAttributes: Codable, Equatable {
    public var cause: CancelWorkflowExecutionFailedCause
    public var decisionTaskCompletedEventId: EventId

    public init(cause: CancelWorkflowExecutionFailedCause,
                decisionTaskCompletedEventId: EventId) {
        self.cause = cause
        self.decisionTaskCompletedEventId = decisionTaskCompletedEventId
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case decisionTaskCompletedEventId
    }

    public func validate() throws {
    }
}

public struct ChildWorkflowExecutionCanceledEventAttributes: Codable, Equatable {
    public var details: Data?
    public var initiatedEventId: EventId
    public var startedEventId: EventId
    public var workflowExecution: WorkflowExecution
    public var workflowType: WorkflowType

    public init(details: Data? = nil,
                initiatedEventId: EventId,
                startedEventId: EventId,
                workflowExecution: WorkflowExecution,
                workflowType: WorkflowType) {
        self.details = details
        self.initiatedEventId = initiatedEventId
        self.startedEventId = startedEventId
        self.workflowExecution = workflowExecution
        self.workflowType = workflowType
    }

    enum CodingKeys: String, CodingKey {
        case details
        case initiatedEventId
        case startedEventId
        case workflowExecution
        case workflowType
    }

    public func validate() throws {
        try details?.validateAsData()
        try workflowExecution.validate()
        try workflowType.validate()
    }
}

public struct ChildWorkflowExecutionCompletedEventAttributes: Codable, Equatable {
    public var initiatedEventId: EventId
    public var result: Data?
    public var startedEventId: EventId
    public var workflowExecution: WorkflowExecution
    public var workflowType: WorkflowType

    public init(initiatedEventId: EventId,
                result: Data? = nil,
                startedEventId: EventId,
                workflowExecution: WorkflowExecution,
                workflowType: WorkflowType) {
        self.initiatedEventId = initiatedEventId
        self.result = result
        self.startedEventId = startedEventId
        self.workflowExecution = workflowExecution
        self.workflowType = workflowType
    }

    enum CodingKeys: String, CodingKey {
        case initiatedEventId
        case result
        case startedEventId
        case workflowExecution
        case workflowType
    }

    public func validate() throws {
        try result?.validateAsData()
        try workflowExecution.validate()
        try workflowType.validate()
    }
}

public struct ChildWorkflowExecutionFailedEventAttributes: Codable, Equatable {
    public var details: Data?
    public var initiatedEventId: EventId
    public var reason: FailureReason?
    public var startedEventId: EventId
    public var workflowExecution: WorkflowExecution
    public var workflowType: WorkflowType

    public init(details: Data? = nil,
                initiatedEventId: EventId,
                reason: FailureReason? = nil,
                startedEventId: EventId,
                workflowExecution: WorkflowExecution,
                workflowType: WorkflowType) {
        self.details = details
        self.initiatedEventId = initiatedEventId
        self.reason = reason
        self.startedEventId = startedEventId
        self.workflowExecution = workflowExecution
        self.workflowType = workflowType
    }

    enum CodingKeys: String, CodingKey {
        case details
        case initiatedEventId
        case reason
        case startedEventId
        case workflowExecution
        case workflowType
    }

    public func validate() throws {
        try details?.validateAsData()
        try reason?.validateAsFailureReason()
        try workflowExecution.validate()
        try workflowType.validate()
    }
}

public struct ChildWorkflowExecutionStartedEventAttributes: Codable, Equatable {
    public var initiatedEventId: EventId
    public var workflowExecution: WorkflowExecution
    public var workflowType: WorkflowType

    public init(initiatedEventId: EventId,
                workflowExecution: WorkflowExecution,
                workflowType: WorkflowType) {
        self.initiatedEventId = initiatedEventId
        self.workflowExecution = workflowExecution
        self.workflowType = workflowType
    }

    enum CodingKeys: String, CodingKey {
        case initiatedEventId
        case workflowExecution
        case workflowType
    }

    public func validate() throws {
        try workflowExecution.validate()
        try workflowType.validate()
    }
}

public struct ChildWorkflowExecutionTerminatedEventAttributes: Codable, Equatable {
    public var initiatedEventId: EventId
    public var startedEventId: EventId
    public var workflowExecution: WorkflowExecution
    public var workflowType: WorkflowType

    public init(initiatedEventId: EventId,
                startedEventId: EventId,
                workflowExecution: WorkflowExecution,
                workflowType: WorkflowType) {
        self.initiatedEventId = initiatedEventId
        self.startedEventId = startedEventId
        self.workflowExecution = workflowExecution
        self.workflowType = workflowType
    }

    enum CodingKeys: String, CodingKey {
        case initiatedEventId
        case startedEventId
        case workflowExecution
        case workflowType
    }

    public func validate() throws {
        try workflowExecution.validate()
        try workflowType.validate()
    }
}

public struct ChildWorkflowExecutionTimedOutEventAttributes: Codable, Equatable {
    public var initiatedEventId: EventId
    public var startedEventId: EventId
    public var timeoutType: WorkflowExecutionTimeoutType
    public var workflowExecution: WorkflowExecution
    public var workflowType: WorkflowType

    public init(initiatedEventId: EventId,
                startedEventId: EventId,
                timeoutType: WorkflowExecutionTimeoutType,
                workflowExecution: WorkflowExecution,
                workflowType: WorkflowType) {
        self.initiatedEventId = initiatedEventId
        self.startedEventId = startedEventId
        self.timeoutType = timeoutType
        self.workflowExecution = workflowExecution
        self.workflowType = workflowType
    }

    enum CodingKeys: String, CodingKey {
        case initiatedEventId
        case startedEventId
        case timeoutType
        case workflowExecution
        case workflowType
    }

    public func validate() throws {
        try workflowExecution.validate()
        try workflowType.validate()
    }
}

public struct CloseStatusFilter: Codable, Equatable {
    public var status: CloseStatus

    public init(status: CloseStatus) {
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case status
    }

    public func validate() throws {
    }
}

public struct CompleteWorkflowExecutionDecisionAttributes: Codable, Equatable {
    public var result: Data?

    public init(result: Data? = nil) {
        self.result = result
    }

    enum CodingKeys: String, CodingKey {
        case result
    }

    public func validate() throws {
        try result?.validateAsData()
    }
}

public struct CompleteWorkflowExecutionFailedEventAttributes: Codable, Equatable {
    public var cause: CompleteWorkflowExecutionFailedCause
    public var decisionTaskCompletedEventId: EventId

    public init(cause: CompleteWorkflowExecutionFailedCause,
                decisionTaskCompletedEventId: EventId) {
        self.cause = cause
        self.decisionTaskCompletedEventId = decisionTaskCompletedEventId
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case decisionTaskCompletedEventId
    }

    public func validate() throws {
    }
}

public struct ContinueAsNewWorkflowExecutionDecisionAttributes: Codable, Equatable {
    public var childPolicy: ChildPolicy?
    public var executionStartToCloseTimeout: DurationInSecondsOptional?
    public var input: Data?
    public var lambdaRole: Arn?
    public var tagList: TagList?
    public var taskList: TaskList?
    public var taskPriority: TaskPriority?
    public var taskStartToCloseTimeout: DurationInSecondsOptional?
    public var workflowTypeVersion: Version?

    public init(childPolicy: ChildPolicy? = nil,
                executionStartToCloseTimeout: DurationInSecondsOptional? = nil,
                input: Data? = nil,
                lambdaRole: Arn? = nil,
                tagList: TagList? = nil,
                taskList: TaskList? = nil,
                taskPriority: TaskPriority? = nil,
                taskStartToCloseTimeout: DurationInSecondsOptional? = nil,
                workflowTypeVersion: Version? = nil) {
        self.childPolicy = childPolicy
        self.executionStartToCloseTimeout = executionStartToCloseTimeout
        self.input = input
        self.lambdaRole = lambdaRole
        self.tagList = tagList
        self.taskList = taskList
        self.taskPriority = taskPriority
        self.taskStartToCloseTimeout = taskStartToCloseTimeout
        self.workflowTypeVersion = workflowTypeVersion
    }

    enum CodingKeys: String, CodingKey {
        case childPolicy
        case executionStartToCloseTimeout
        case input
        case lambdaRole
        case tagList
        case taskList
        case taskPriority
        case taskStartToCloseTimeout
        case workflowTypeVersion
    }

    public func validate() throws {
        try executionStartToCloseTimeout?.validateAsDurationInSecondsOptional()
        try input?.validateAsData()
        try lambdaRole?.validateAsArn()
        try tagList?.validateAsTagList()
        try taskList?.validate()
        try taskStartToCloseTimeout?.validateAsDurationInSecondsOptional()
        try workflowTypeVersion?.validateAsVersion()
    }
}

public struct ContinueAsNewWorkflowExecutionFailedEventAttributes: Codable, Equatable {
    public var cause: ContinueAsNewWorkflowExecutionFailedCause
    public var decisionTaskCompletedEventId: EventId

    public init(cause: ContinueAsNewWorkflowExecutionFailedCause,
                decisionTaskCompletedEventId: EventId) {
        self.cause = cause
        self.decisionTaskCompletedEventId = decisionTaskCompletedEventId
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case decisionTaskCompletedEventId
    }

    public func validate() throws {
    }
}

public struct CountClosedWorkflowExecutionsInput: Codable, Equatable {
    public var closeStatusFilter: CloseStatusFilter?
    public var closeTimeFilter: ExecutionTimeFilter?
    public var domain: DomainName
    public var executionFilter: WorkflowExecutionFilter?
    public var startTimeFilter: ExecutionTimeFilter?
    public var tagFilter: TagFilter?
    public var typeFilter: WorkflowTypeFilter?

    public init(closeStatusFilter: CloseStatusFilter? = nil,
                closeTimeFilter: ExecutionTimeFilter? = nil,
                domain: DomainName,
                executionFilter: WorkflowExecutionFilter? = nil,
                startTimeFilter: ExecutionTimeFilter? = nil,
                tagFilter: TagFilter? = nil,
                typeFilter: WorkflowTypeFilter? = nil) {
        self.closeStatusFilter = closeStatusFilter
        self.closeTimeFilter = closeTimeFilter
        self.domain = domain
        self.executionFilter = executionFilter
        self.startTimeFilter = startTimeFilter
        self.tagFilter = tagFilter
        self.typeFilter = typeFilter
    }

    enum CodingKeys: String, CodingKey {
        case closeStatusFilter
        case closeTimeFilter
        case domain
        case executionFilter
        case startTimeFilter
        case tagFilter
        case typeFilter
    }

    public func validate() throws {
        try closeStatusFilter?.validate()
        try closeTimeFilter?.validate()
        try domain.validateAsDomainName()
        try executionFilter?.validate()
        try startTimeFilter?.validate()
        try tagFilter?.validate()
        try typeFilter?.validate()
    }
}

public struct CountOpenWorkflowExecutionsInput: Codable, Equatable {
    public var domain: DomainName
    public var executionFilter: WorkflowExecutionFilter?
    public var startTimeFilter: ExecutionTimeFilter
    public var tagFilter: TagFilter?
    public var typeFilter: WorkflowTypeFilter?

    public init(domain: DomainName,
                executionFilter: WorkflowExecutionFilter? = nil,
                startTimeFilter: ExecutionTimeFilter,
                tagFilter: TagFilter? = nil,
                typeFilter: WorkflowTypeFilter? = nil) {
        self.domain = domain
        self.executionFilter = executionFilter
        self.startTimeFilter = startTimeFilter
        self.tagFilter = tagFilter
        self.typeFilter = typeFilter
    }

    enum CodingKeys: String, CodingKey {
        case domain
        case executionFilter
        case startTimeFilter
        case tagFilter
        case typeFilter
    }

    public func validate() throws {
        try domain.validateAsDomainName()
        try executionFilter?.validate()
        try startTimeFilter.validate()
        try tagFilter?.validate()
        try typeFilter?.validate()
    }
}

public struct CountPendingActivityTasksInput: Codable, Equatable {
    public var domain: DomainName
    public var taskList: TaskList

    public init(domain: DomainName,
                taskList: TaskList) {
        self.domain = domain
        self.taskList = taskList
    }

    enum CodingKeys: String, CodingKey {
        case domain
        case taskList
    }

    public func validate() throws {
        try domain.validateAsDomainName()
        try taskList.validate()
    }
}

public struct CountPendingDecisionTasksInput: Codable, Equatable {
    public var domain: DomainName
    public var taskList: TaskList

    public init(domain: DomainName,
                taskList: TaskList) {
        self.domain = domain
        self.taskList = taskList
    }

    enum CodingKeys: String, CodingKey {
        case domain
        case taskList
    }

    public func validate() throws {
        try domain.validateAsDomainName()
        try taskList.validate()
    }
}

public struct Decision: Codable, Equatable {
    public var cancelTimerDecisionAttributes: CancelTimerDecisionAttributes?
    public var cancelWorkflowExecutionDecisionAttributes: CancelWorkflowExecutionDecisionAttributes?
    public var completeWorkflowExecutionDecisionAttributes: CompleteWorkflowExecutionDecisionAttributes?
    public var continueAsNewWorkflowExecutionDecisionAttributes: ContinueAsNewWorkflowExecutionDecisionAttributes?
    public var decisionType: DecisionType
    public var failWorkflowExecutionDecisionAttributes: FailWorkflowExecutionDecisionAttributes?
    public var recordMarkerDecisionAttributes: RecordMarkerDecisionAttributes?
    public var requestCancelActivityTaskDecisionAttributes: RequestCancelActivityTaskDecisionAttributes?
    public var requestCancelExternalWorkflowExecutionDecisionAttributes: RequestCancelExternalWorkflowExecutionDecisionAttributes?
    public var scheduleActivityTaskDecisionAttributes: ScheduleActivityTaskDecisionAttributes?
    public var scheduleLambdaFunctionDecisionAttributes: ScheduleLambdaFunctionDecisionAttributes?
    public var signalExternalWorkflowExecutionDecisionAttributes: SignalExternalWorkflowExecutionDecisionAttributes?
    public var startChildWorkflowExecutionDecisionAttributes: StartChildWorkflowExecutionDecisionAttributes?
    public var startTimerDecisionAttributes: StartTimerDecisionAttributes?

    public init(cancelTimerDecisionAttributes: CancelTimerDecisionAttributes? = nil,
                cancelWorkflowExecutionDecisionAttributes: CancelWorkflowExecutionDecisionAttributes? = nil,
                completeWorkflowExecutionDecisionAttributes: CompleteWorkflowExecutionDecisionAttributes? = nil,
                continueAsNewWorkflowExecutionDecisionAttributes: ContinueAsNewWorkflowExecutionDecisionAttributes? = nil,
                decisionType: DecisionType,
                failWorkflowExecutionDecisionAttributes: FailWorkflowExecutionDecisionAttributes? = nil,
                recordMarkerDecisionAttributes: RecordMarkerDecisionAttributes? = nil,
                requestCancelActivityTaskDecisionAttributes: RequestCancelActivityTaskDecisionAttributes? = nil,
                requestCancelExternalWorkflowExecutionDecisionAttributes: RequestCancelExternalWorkflowExecutionDecisionAttributes? = nil,
                scheduleActivityTaskDecisionAttributes: ScheduleActivityTaskDecisionAttributes? = nil,
                scheduleLambdaFunctionDecisionAttributes: ScheduleLambdaFunctionDecisionAttributes? = nil,
                signalExternalWorkflowExecutionDecisionAttributes: SignalExternalWorkflowExecutionDecisionAttributes? = nil,
                startChildWorkflowExecutionDecisionAttributes: StartChildWorkflowExecutionDecisionAttributes? = nil,
                startTimerDecisionAttributes: StartTimerDecisionAttributes? = nil) {
        self.cancelTimerDecisionAttributes = cancelTimerDecisionAttributes
        self.cancelWorkflowExecutionDecisionAttributes = cancelWorkflowExecutionDecisionAttributes
        self.completeWorkflowExecutionDecisionAttributes = completeWorkflowExecutionDecisionAttributes
        self.continueAsNewWorkflowExecutionDecisionAttributes = continueAsNewWorkflowExecutionDecisionAttributes
        self.decisionType = decisionType
        self.failWorkflowExecutionDecisionAttributes = failWorkflowExecutionDecisionAttributes
        self.recordMarkerDecisionAttributes = recordMarkerDecisionAttributes
        self.requestCancelActivityTaskDecisionAttributes = requestCancelActivityTaskDecisionAttributes
        self.requestCancelExternalWorkflowExecutionDecisionAttributes = requestCancelExternalWorkflowExecutionDecisionAttributes
        self.scheduleActivityTaskDecisionAttributes = scheduleActivityTaskDecisionAttributes
        self.scheduleLambdaFunctionDecisionAttributes = scheduleLambdaFunctionDecisionAttributes
        self.signalExternalWorkflowExecutionDecisionAttributes = signalExternalWorkflowExecutionDecisionAttributes
        self.startChildWorkflowExecutionDecisionAttributes = startChildWorkflowExecutionDecisionAttributes
        self.startTimerDecisionAttributes = startTimerDecisionAttributes
    }

    enum CodingKeys: String, CodingKey {
        case cancelTimerDecisionAttributes
        case cancelWorkflowExecutionDecisionAttributes
        case completeWorkflowExecutionDecisionAttributes
        case continueAsNewWorkflowExecutionDecisionAttributes
        case decisionType
        case failWorkflowExecutionDecisionAttributes
        case recordMarkerDecisionAttributes
        case requestCancelActivityTaskDecisionAttributes
        case requestCancelExternalWorkflowExecutionDecisionAttributes
        case scheduleActivityTaskDecisionAttributes
        case scheduleLambdaFunctionDecisionAttributes
        case signalExternalWorkflowExecutionDecisionAttributes
        case startChildWorkflowExecutionDecisionAttributes
        case startTimerDecisionAttributes
    }

    public func validate() throws {
        try cancelTimerDecisionAttributes?.validate()
        try cancelWorkflowExecutionDecisionAttributes?.validate()
        try completeWorkflowExecutionDecisionAttributes?.validate()
        try continueAsNewWorkflowExecutionDecisionAttributes?.validate()
        try failWorkflowExecutionDecisionAttributes?.validate()
        try recordMarkerDecisionAttributes?.validate()
        try requestCancelActivityTaskDecisionAttributes?.validate()
        try requestCancelExternalWorkflowExecutionDecisionAttributes?.validate()
        try scheduleActivityTaskDecisionAttributes?.validate()
        try scheduleLambdaFunctionDecisionAttributes?.validate()
        try signalExternalWorkflowExecutionDecisionAttributes?.validate()
        try startChildWorkflowExecutionDecisionAttributes?.validate()
        try startTimerDecisionAttributes?.validate()
    }
}

public struct DecisionTask: Codable, Equatable {
    public var events: HistoryEventList
    public var nextPageToken: PageToken?
    public var previousStartedEventId: EventId?
    public var startedEventId: EventId
    public var taskToken: TaskToken
    public var workflowExecution: WorkflowExecution
    public var workflowType: WorkflowType

    public init(events: HistoryEventList,
                nextPageToken: PageToken? = nil,
                previousStartedEventId: EventId? = nil,
                startedEventId: EventId,
                taskToken: TaskToken,
                workflowExecution: WorkflowExecution,
                workflowType: WorkflowType) {
        self.events = events
        self.nextPageToken = nextPageToken
        self.previousStartedEventId = previousStartedEventId
        self.startedEventId = startedEventId
        self.taskToken = taskToken
        self.workflowExecution = workflowExecution
        self.workflowType = workflowType
    }

    enum CodingKeys: String, CodingKey {
        case events
        case nextPageToken
        case previousStartedEventId
        case startedEventId
        case taskToken
        case workflowExecution
        case workflowType
    }

    public func validate() throws {
        try nextPageToken?.validateAsPageToken()
        try taskToken.validateAsTaskToken()
        try workflowExecution.validate()
        try workflowType.validate()
    }
}

public struct DecisionTaskCompletedEventAttributes: Codable, Equatable {
    public var executionContext: Data?
    public var scheduledEventId: EventId
    public var startedEventId: EventId

    public init(executionContext: Data? = nil,
                scheduledEventId: EventId,
                startedEventId: EventId) {
        self.executionContext = executionContext
        self.scheduledEventId = scheduledEventId
        self.startedEventId = startedEventId
    }

    enum CodingKeys: String, CodingKey {
        case executionContext
        case scheduledEventId
        case startedEventId
    }

    public func validate() throws {
        try executionContext?.validateAsData()
    }
}

public struct DecisionTaskScheduledEventAttributes: Codable, Equatable {
    public var startToCloseTimeout: DurationInSecondsOptional?
    public var taskList: TaskList
    public var taskPriority: TaskPriority?

    public init(startToCloseTimeout: DurationInSecondsOptional? = nil,
                taskList: TaskList,
                taskPriority: TaskPriority? = nil) {
        self.startToCloseTimeout = startToCloseTimeout
        self.taskList = taskList
        self.taskPriority = taskPriority
    }

    enum CodingKeys: String, CodingKey {
        case startToCloseTimeout
        case taskList
        case taskPriority
    }

    public func validate() throws {
        try startToCloseTimeout?.validateAsDurationInSecondsOptional()
        try taskList.validate()
    }
}

public struct DecisionTaskStartedEventAttributes: Codable, Equatable {
    public var identity: Identity?
    public var scheduledEventId: EventId

    public init(identity: Identity? = nil,
                scheduledEventId: EventId) {
        self.identity = identity
        self.scheduledEventId = scheduledEventId
    }

    enum CodingKeys: String, CodingKey {
        case identity
        case scheduledEventId
    }

    public func validate() throws {
        try identity?.validateAsIdentity()
    }
}

public struct DecisionTaskTimedOutEventAttributes: Codable, Equatable {
    public var scheduledEventId: EventId
    public var startedEventId: EventId
    public var timeoutType: DecisionTaskTimeoutType

    public init(scheduledEventId: EventId,
                startedEventId: EventId,
                timeoutType: DecisionTaskTimeoutType) {
        self.scheduledEventId = scheduledEventId
        self.startedEventId = startedEventId
        self.timeoutType = timeoutType
    }

    enum CodingKeys: String, CodingKey {
        case scheduledEventId
        case startedEventId
        case timeoutType
    }

    public func validate() throws {
    }
}

public struct DefaultUndefinedFault: Codable, Equatable {
    public var message: ErrorMessage?

    public init(message: ErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct DeprecateActivityTypeInput: Codable, Equatable {
    public var activityType: ActivityType
    public var domain: DomainName

    public init(activityType: ActivityType,
                domain: DomainName) {
        self.activityType = activityType
        self.domain = domain
    }

    enum CodingKeys: String, CodingKey {
        case activityType
        case domain
    }

    public func validate() throws {
        try activityType.validate()
        try domain.validateAsDomainName()
    }
}

public struct DeprecateDomainInput: Codable, Equatable {
    public var name: DomainName

    public init(name: DomainName) {
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case name
    }

    public func validate() throws {
        try name.validateAsDomainName()
    }
}

public struct DeprecateWorkflowTypeInput: Codable, Equatable {
    public var domain: DomainName
    public var workflowType: WorkflowType

    public init(domain: DomainName,
                workflowType: WorkflowType) {
        self.domain = domain
        self.workflowType = workflowType
    }

    enum CodingKeys: String, CodingKey {
        case domain
        case workflowType
    }

    public func validate() throws {
        try domain.validateAsDomainName()
        try workflowType.validate()
    }
}

public struct DescribeActivityTypeInput: Codable, Equatable {
    public var activityType: ActivityType
    public var domain: DomainName

    public init(activityType: ActivityType,
                domain: DomainName) {
        self.activityType = activityType
        self.domain = domain
    }

    enum CodingKeys: String, CodingKey {
        case activityType
        case domain
    }

    public func validate() throws {
        try activityType.validate()
        try domain.validateAsDomainName()
    }
}

public struct DescribeDomainInput: Codable, Equatable {
    public var name: DomainName

    public init(name: DomainName) {
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case name
    }

    public func validate() throws {
        try name.validateAsDomainName()
    }
}

public struct DescribeWorkflowExecutionInput: Codable, Equatable {
    public var domain: DomainName
    public var execution: WorkflowExecution

    public init(domain: DomainName,
                execution: WorkflowExecution) {
        self.domain = domain
        self.execution = execution
    }

    enum CodingKeys: String, CodingKey {
        case domain
        case execution
    }

    public func validate() throws {
        try domain.validateAsDomainName()
        try execution.validate()
    }
}

public struct DescribeWorkflowTypeInput: Codable, Equatable {
    public var domain: DomainName
    public var workflowType: WorkflowType

    public init(domain: DomainName,
                workflowType: WorkflowType) {
        self.domain = domain
        self.workflowType = workflowType
    }

    enum CodingKeys: String, CodingKey {
        case domain
        case workflowType
    }

    public func validate() throws {
        try domain.validateAsDomainName()
        try workflowType.validate()
    }
}

public struct DomainAlreadyExistsFault: Codable, Equatable {
    public var message: ErrorMessage?

    public init(message: ErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct DomainConfiguration: Codable, Equatable {
    public var workflowExecutionRetentionPeriodInDays: DurationInDays

    public init(workflowExecutionRetentionPeriodInDays: DurationInDays) {
        self.workflowExecutionRetentionPeriodInDays = workflowExecutionRetentionPeriodInDays
    }

    enum CodingKeys: String, CodingKey {
        case workflowExecutionRetentionPeriodInDays
    }

    public func validate() throws {
        try workflowExecutionRetentionPeriodInDays.validateAsDurationInDays()
    }
}

public struct DomainDeprecatedFault: Codable, Equatable {
    public var message: ErrorMessage?

    public init(message: ErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct DomainDetail: Codable, Equatable {
    public var configuration: DomainConfiguration
    public var domainInfo: DomainInfo

    public init(configuration: DomainConfiguration,
                domainInfo: DomainInfo) {
        self.configuration = configuration
        self.domainInfo = domainInfo
    }

    enum CodingKeys: String, CodingKey {
        case configuration
        case domainInfo
    }

    public func validate() throws {
        try configuration.validate()
        try domainInfo.validate()
    }
}

public struct DomainInfo: Codable, Equatable {
    public var arn: Arn?
    public var description: Description?
    public var name: DomainName
    public var status: RegistrationStatus

    public init(arn: Arn? = nil,
                description: Description? = nil,
                name: DomainName,
                status: RegistrationStatus) {
        self.arn = arn
        self.description = description
        self.name = name
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case arn
        case description
        case name
        case status
    }

    public func validate() throws {
        try arn?.validateAsArn()
        try description?.validateAsDescription()
        try name.validateAsDomainName()
    }
}

public struct DomainInfos: Codable, Equatable {
    public var domainInfos: DomainInfoList
    public var nextPageToken: PageToken?

    public init(domainInfos: DomainInfoList,
                nextPageToken: PageToken? = nil) {
        self.domainInfos = domainInfos
        self.nextPageToken = nextPageToken
    }

    enum CodingKeys: String, CodingKey {
        case domainInfos
        case nextPageToken
    }

    public func validate() throws {
        try nextPageToken?.validateAsPageToken()
    }
}

public struct ExecutionTimeFilter: Codable, Equatable {
    public var latestDate: Timestamp?
    public var oldestDate: Timestamp

    public init(latestDate: Timestamp? = nil,
                oldestDate: Timestamp) {
        self.latestDate = latestDate
        self.oldestDate = oldestDate
    }

    enum CodingKeys: String, CodingKey {
        case latestDate
        case oldestDate
    }

    public func validate() throws {
    }
}

public struct ExternalWorkflowExecutionCancelRequestedEventAttributes: Codable, Equatable {
    public var initiatedEventId: EventId
    public var workflowExecution: WorkflowExecution

    public init(initiatedEventId: EventId,
                workflowExecution: WorkflowExecution) {
        self.initiatedEventId = initiatedEventId
        self.workflowExecution = workflowExecution
    }

    enum CodingKeys: String, CodingKey {
        case initiatedEventId
        case workflowExecution
    }

    public func validate() throws {
        try workflowExecution.validate()
    }
}

public struct ExternalWorkflowExecutionSignaledEventAttributes: Codable, Equatable {
    public var initiatedEventId: EventId
    public var workflowExecution: WorkflowExecution

    public init(initiatedEventId: EventId,
                workflowExecution: WorkflowExecution) {
        self.initiatedEventId = initiatedEventId
        self.workflowExecution = workflowExecution
    }

    enum CodingKeys: String, CodingKey {
        case initiatedEventId
        case workflowExecution
    }

    public func validate() throws {
        try workflowExecution.validate()
    }
}

public struct FailWorkflowExecutionDecisionAttributes: Codable, Equatable {
    public var details: Data?
    public var reason: FailureReason?

    public init(details: Data? = nil,
                reason: FailureReason? = nil) {
        self.details = details
        self.reason = reason
    }

    enum CodingKeys: String, CodingKey {
        case details
        case reason
    }

    public func validate() throws {
        try details?.validateAsData()
        try reason?.validateAsFailureReason()
    }
}

public struct FailWorkflowExecutionFailedEventAttributes: Codable, Equatable {
    public var cause: FailWorkflowExecutionFailedCause
    public var decisionTaskCompletedEventId: EventId

    public init(cause: FailWorkflowExecutionFailedCause,
                decisionTaskCompletedEventId: EventId) {
        self.cause = cause
        self.decisionTaskCompletedEventId = decisionTaskCompletedEventId
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case decisionTaskCompletedEventId
    }

    public func validate() throws {
    }
}

public struct GetWorkflowExecutionHistoryInput: Codable, Equatable {
    public var domain: DomainName
    public var execution: WorkflowExecution
    public var maximumPageSize: PageSize?
    public var nextPageToken: PageToken?
    public var reverseOrder: ReverseOrder?

    public init(domain: DomainName,
                execution: WorkflowExecution,
                maximumPageSize: PageSize? = nil,
                nextPageToken: PageToken? = nil,
                reverseOrder: ReverseOrder? = nil) {
        self.domain = domain
        self.execution = execution
        self.maximumPageSize = maximumPageSize
        self.nextPageToken = nextPageToken
        self.reverseOrder = reverseOrder
    }

    enum CodingKeys: String, CodingKey {
        case domain
        case execution
        case maximumPageSize
        case nextPageToken
        case reverseOrder
    }

    public func validate() throws {
        try domain.validateAsDomainName()
        try execution.validate()
        try maximumPageSize?.validateAsPageSize()
        try nextPageToken?.validateAsPageToken()
    }
}

public struct History: Codable, Equatable {
    public var events: HistoryEventList
    public var nextPageToken: PageToken?

    public init(events: HistoryEventList,
                nextPageToken: PageToken? = nil) {
        self.events = events
        self.nextPageToken = nextPageToken
    }

    enum CodingKeys: String, CodingKey {
        case events
        case nextPageToken
    }

    public func validate() throws {
        try nextPageToken?.validateAsPageToken()
    }
}

public struct HistoryEvent: Codable, Equatable {
    public var activityTaskCancelRequestedEventAttributes: ActivityTaskCancelRequestedEventAttributes?
    public var activityTaskCanceledEventAttributes: ActivityTaskCanceledEventAttributes?
    public var activityTaskCompletedEventAttributes: ActivityTaskCompletedEventAttributes?
    public var activityTaskFailedEventAttributes: ActivityTaskFailedEventAttributes?
    public var activityTaskScheduledEventAttributes: ActivityTaskScheduledEventAttributes?
    public var activityTaskStartedEventAttributes: ActivityTaskStartedEventAttributes?
    public var activityTaskTimedOutEventAttributes: ActivityTaskTimedOutEventAttributes?
    public var cancelTimerFailedEventAttributes: CancelTimerFailedEventAttributes?
    public var cancelWorkflowExecutionFailedEventAttributes: CancelWorkflowExecutionFailedEventAttributes?
    public var childWorkflowExecutionCanceledEventAttributes: ChildWorkflowExecutionCanceledEventAttributes?
    public var childWorkflowExecutionCompletedEventAttributes: ChildWorkflowExecutionCompletedEventAttributes?
    public var childWorkflowExecutionFailedEventAttributes: ChildWorkflowExecutionFailedEventAttributes?
    public var childWorkflowExecutionStartedEventAttributes: ChildWorkflowExecutionStartedEventAttributes?
    public var childWorkflowExecutionTerminatedEventAttributes: ChildWorkflowExecutionTerminatedEventAttributes?
    public var childWorkflowExecutionTimedOutEventAttributes: ChildWorkflowExecutionTimedOutEventAttributes?
    public var completeWorkflowExecutionFailedEventAttributes: CompleteWorkflowExecutionFailedEventAttributes?
    public var continueAsNewWorkflowExecutionFailedEventAttributes: ContinueAsNewWorkflowExecutionFailedEventAttributes?
    public var decisionTaskCompletedEventAttributes: DecisionTaskCompletedEventAttributes?
    public var decisionTaskScheduledEventAttributes: DecisionTaskScheduledEventAttributes?
    public var decisionTaskStartedEventAttributes: DecisionTaskStartedEventAttributes?
    public var decisionTaskTimedOutEventAttributes: DecisionTaskTimedOutEventAttributes?
    public var eventId: EventId
    public var eventTimestamp: Timestamp
    public var eventType: EventType
    public var externalWorkflowExecutionCancelRequestedEventAttributes: ExternalWorkflowExecutionCancelRequestedEventAttributes?
    public var externalWorkflowExecutionSignaledEventAttributes: ExternalWorkflowExecutionSignaledEventAttributes?
    public var failWorkflowExecutionFailedEventAttributes: FailWorkflowExecutionFailedEventAttributes?
    public var lambdaFunctionCompletedEventAttributes: LambdaFunctionCompletedEventAttributes?
    public var lambdaFunctionFailedEventAttributes: LambdaFunctionFailedEventAttributes?
    public var lambdaFunctionScheduledEventAttributes: LambdaFunctionScheduledEventAttributes?
    public var lambdaFunctionStartedEventAttributes: LambdaFunctionStartedEventAttributes?
    public var lambdaFunctionTimedOutEventAttributes: LambdaFunctionTimedOutEventAttributes?
    public var markerRecordedEventAttributes: MarkerRecordedEventAttributes?
    public var recordMarkerFailedEventAttributes: RecordMarkerFailedEventAttributes?
    public var requestCancelActivityTaskFailedEventAttributes: RequestCancelActivityTaskFailedEventAttributes?
    public var requestCancelExternalWorkflowExecutionFailedEventAttributes: RequestCancelExternalWorkflowExecutionFailedEventAttributes?
    public var requestCancelExternalWorkflowExecutionInitiatedEventAttributes: RequestCancelExternalWorkflowExecutionInitiatedEventAttributes?
    public var scheduleActivityTaskFailedEventAttributes: ScheduleActivityTaskFailedEventAttributes?
    public var scheduleLambdaFunctionFailedEventAttributes: ScheduleLambdaFunctionFailedEventAttributes?
    public var signalExternalWorkflowExecutionFailedEventAttributes: SignalExternalWorkflowExecutionFailedEventAttributes?
    public var signalExternalWorkflowExecutionInitiatedEventAttributes: SignalExternalWorkflowExecutionInitiatedEventAttributes?
    public var startChildWorkflowExecutionFailedEventAttributes: StartChildWorkflowExecutionFailedEventAttributes?
    public var startChildWorkflowExecutionInitiatedEventAttributes: StartChildWorkflowExecutionInitiatedEventAttributes?
    public var startLambdaFunctionFailedEventAttributes: StartLambdaFunctionFailedEventAttributes?
    public var startTimerFailedEventAttributes: StartTimerFailedEventAttributes?
    public var timerCanceledEventAttributes: TimerCanceledEventAttributes?
    public var timerFiredEventAttributes: TimerFiredEventAttributes?
    public var timerStartedEventAttributes: TimerStartedEventAttributes?
    public var workflowExecutionCancelRequestedEventAttributes: WorkflowExecutionCancelRequestedEventAttributes?
    public var workflowExecutionCanceledEventAttributes: WorkflowExecutionCanceledEventAttributes?
    public var workflowExecutionCompletedEventAttributes: WorkflowExecutionCompletedEventAttributes?
    public var workflowExecutionContinuedAsNewEventAttributes: WorkflowExecutionContinuedAsNewEventAttributes?
    public var workflowExecutionFailedEventAttributes: WorkflowExecutionFailedEventAttributes?
    public var workflowExecutionSignaledEventAttributes: WorkflowExecutionSignaledEventAttributes?
    public var workflowExecutionStartedEventAttributes: WorkflowExecutionStartedEventAttributes?
    public var workflowExecutionTerminatedEventAttributes: WorkflowExecutionTerminatedEventAttributes?
    public var workflowExecutionTimedOutEventAttributes: WorkflowExecutionTimedOutEventAttributes?

    public init(activityTaskCancelRequestedEventAttributes: ActivityTaskCancelRequestedEventAttributes? = nil,
                activityTaskCanceledEventAttributes: ActivityTaskCanceledEventAttributes? = nil,
                activityTaskCompletedEventAttributes: ActivityTaskCompletedEventAttributes? = nil,
                activityTaskFailedEventAttributes: ActivityTaskFailedEventAttributes? = nil,
                activityTaskScheduledEventAttributes: ActivityTaskScheduledEventAttributes? = nil,
                activityTaskStartedEventAttributes: ActivityTaskStartedEventAttributes? = nil,
                activityTaskTimedOutEventAttributes: ActivityTaskTimedOutEventAttributes? = nil,
                cancelTimerFailedEventAttributes: CancelTimerFailedEventAttributes? = nil,
                cancelWorkflowExecutionFailedEventAttributes: CancelWorkflowExecutionFailedEventAttributes? = nil,
                childWorkflowExecutionCanceledEventAttributes: ChildWorkflowExecutionCanceledEventAttributes? = nil,
                childWorkflowExecutionCompletedEventAttributes: ChildWorkflowExecutionCompletedEventAttributes? = nil,
                childWorkflowExecutionFailedEventAttributes: ChildWorkflowExecutionFailedEventAttributes? = nil,
                childWorkflowExecutionStartedEventAttributes: ChildWorkflowExecutionStartedEventAttributes? = nil,
                childWorkflowExecutionTerminatedEventAttributes: ChildWorkflowExecutionTerminatedEventAttributes? = nil,
                childWorkflowExecutionTimedOutEventAttributes: ChildWorkflowExecutionTimedOutEventAttributes? = nil,
                completeWorkflowExecutionFailedEventAttributes: CompleteWorkflowExecutionFailedEventAttributes? = nil,
                continueAsNewWorkflowExecutionFailedEventAttributes: ContinueAsNewWorkflowExecutionFailedEventAttributes? = nil,
                decisionTaskCompletedEventAttributes: DecisionTaskCompletedEventAttributes? = nil,
                decisionTaskScheduledEventAttributes: DecisionTaskScheduledEventAttributes? = nil,
                decisionTaskStartedEventAttributes: DecisionTaskStartedEventAttributes? = nil,
                decisionTaskTimedOutEventAttributes: DecisionTaskTimedOutEventAttributes? = nil,
                eventId: EventId,
                eventTimestamp: Timestamp,
                eventType: EventType,
                externalWorkflowExecutionCancelRequestedEventAttributes: ExternalWorkflowExecutionCancelRequestedEventAttributes? = nil,
                externalWorkflowExecutionSignaledEventAttributes: ExternalWorkflowExecutionSignaledEventAttributes? = nil,
                failWorkflowExecutionFailedEventAttributes: FailWorkflowExecutionFailedEventAttributes? = nil,
                lambdaFunctionCompletedEventAttributes: LambdaFunctionCompletedEventAttributes? = nil,
                lambdaFunctionFailedEventAttributes: LambdaFunctionFailedEventAttributes? = nil,
                lambdaFunctionScheduledEventAttributes: LambdaFunctionScheduledEventAttributes? = nil,
                lambdaFunctionStartedEventAttributes: LambdaFunctionStartedEventAttributes? = nil,
                lambdaFunctionTimedOutEventAttributes: LambdaFunctionTimedOutEventAttributes? = nil,
                markerRecordedEventAttributes: MarkerRecordedEventAttributes? = nil,
                recordMarkerFailedEventAttributes: RecordMarkerFailedEventAttributes? = nil,
                requestCancelActivityTaskFailedEventAttributes: RequestCancelActivityTaskFailedEventAttributes? = nil,
                requestCancelExternalWorkflowExecutionFailedEventAttributes: RequestCancelExternalWorkflowExecutionFailedEventAttributes? = nil,
                requestCancelExternalWorkflowExecutionInitiatedEventAttributes: RequestCancelExternalWorkflowExecutionInitiatedEventAttributes? = nil,
                scheduleActivityTaskFailedEventAttributes: ScheduleActivityTaskFailedEventAttributes? = nil,
                scheduleLambdaFunctionFailedEventAttributes: ScheduleLambdaFunctionFailedEventAttributes? = nil,
                signalExternalWorkflowExecutionFailedEventAttributes: SignalExternalWorkflowExecutionFailedEventAttributes? = nil,
                signalExternalWorkflowExecutionInitiatedEventAttributes: SignalExternalWorkflowExecutionInitiatedEventAttributes? = nil,
                startChildWorkflowExecutionFailedEventAttributes: StartChildWorkflowExecutionFailedEventAttributes? = nil,
                startChildWorkflowExecutionInitiatedEventAttributes: StartChildWorkflowExecutionInitiatedEventAttributes? = nil,
                startLambdaFunctionFailedEventAttributes: StartLambdaFunctionFailedEventAttributes? = nil,
                startTimerFailedEventAttributes: StartTimerFailedEventAttributes? = nil,
                timerCanceledEventAttributes: TimerCanceledEventAttributes? = nil,
                timerFiredEventAttributes: TimerFiredEventAttributes? = nil,
                timerStartedEventAttributes: TimerStartedEventAttributes? = nil,
                workflowExecutionCancelRequestedEventAttributes: WorkflowExecutionCancelRequestedEventAttributes? = nil,
                workflowExecutionCanceledEventAttributes: WorkflowExecutionCanceledEventAttributes? = nil,
                workflowExecutionCompletedEventAttributes: WorkflowExecutionCompletedEventAttributes? = nil,
                workflowExecutionContinuedAsNewEventAttributes: WorkflowExecutionContinuedAsNewEventAttributes? = nil,
                workflowExecutionFailedEventAttributes: WorkflowExecutionFailedEventAttributes? = nil,
                workflowExecutionSignaledEventAttributes: WorkflowExecutionSignaledEventAttributes? = nil,
                workflowExecutionStartedEventAttributes: WorkflowExecutionStartedEventAttributes? = nil,
                workflowExecutionTerminatedEventAttributes: WorkflowExecutionTerminatedEventAttributes? = nil,
                workflowExecutionTimedOutEventAttributes: WorkflowExecutionTimedOutEventAttributes? = nil) {
        self.activityTaskCancelRequestedEventAttributes = activityTaskCancelRequestedEventAttributes
        self.activityTaskCanceledEventAttributes = activityTaskCanceledEventAttributes
        self.activityTaskCompletedEventAttributes = activityTaskCompletedEventAttributes
        self.activityTaskFailedEventAttributes = activityTaskFailedEventAttributes
        self.activityTaskScheduledEventAttributes = activityTaskScheduledEventAttributes
        self.activityTaskStartedEventAttributes = activityTaskStartedEventAttributes
        self.activityTaskTimedOutEventAttributes = activityTaskTimedOutEventAttributes
        self.cancelTimerFailedEventAttributes = cancelTimerFailedEventAttributes
        self.cancelWorkflowExecutionFailedEventAttributes = cancelWorkflowExecutionFailedEventAttributes
        self.childWorkflowExecutionCanceledEventAttributes = childWorkflowExecutionCanceledEventAttributes
        self.childWorkflowExecutionCompletedEventAttributes = childWorkflowExecutionCompletedEventAttributes
        self.childWorkflowExecutionFailedEventAttributes = childWorkflowExecutionFailedEventAttributes
        self.childWorkflowExecutionStartedEventAttributes = childWorkflowExecutionStartedEventAttributes
        self.childWorkflowExecutionTerminatedEventAttributes = childWorkflowExecutionTerminatedEventAttributes
        self.childWorkflowExecutionTimedOutEventAttributes = childWorkflowExecutionTimedOutEventAttributes
        self.completeWorkflowExecutionFailedEventAttributes = completeWorkflowExecutionFailedEventAttributes
        self.continueAsNewWorkflowExecutionFailedEventAttributes = continueAsNewWorkflowExecutionFailedEventAttributes
        self.decisionTaskCompletedEventAttributes = decisionTaskCompletedEventAttributes
        self.decisionTaskScheduledEventAttributes = decisionTaskScheduledEventAttributes
        self.decisionTaskStartedEventAttributes = decisionTaskStartedEventAttributes
        self.decisionTaskTimedOutEventAttributes = decisionTaskTimedOutEventAttributes
        self.eventId = eventId
        self.eventTimestamp = eventTimestamp
        self.eventType = eventType
        self.externalWorkflowExecutionCancelRequestedEventAttributes = externalWorkflowExecutionCancelRequestedEventAttributes
        self.externalWorkflowExecutionSignaledEventAttributes = externalWorkflowExecutionSignaledEventAttributes
        self.failWorkflowExecutionFailedEventAttributes = failWorkflowExecutionFailedEventAttributes
        self.lambdaFunctionCompletedEventAttributes = lambdaFunctionCompletedEventAttributes
        self.lambdaFunctionFailedEventAttributes = lambdaFunctionFailedEventAttributes
        self.lambdaFunctionScheduledEventAttributes = lambdaFunctionScheduledEventAttributes
        self.lambdaFunctionStartedEventAttributes = lambdaFunctionStartedEventAttributes
        self.lambdaFunctionTimedOutEventAttributes = lambdaFunctionTimedOutEventAttributes
        self.markerRecordedEventAttributes = markerRecordedEventAttributes
        self.recordMarkerFailedEventAttributes = recordMarkerFailedEventAttributes
        self.requestCancelActivityTaskFailedEventAttributes = requestCancelActivityTaskFailedEventAttributes
        self.requestCancelExternalWorkflowExecutionFailedEventAttributes = requestCancelExternalWorkflowExecutionFailedEventAttributes
        self.requestCancelExternalWorkflowExecutionInitiatedEventAttributes = requestCancelExternalWorkflowExecutionInitiatedEventAttributes
        self.scheduleActivityTaskFailedEventAttributes = scheduleActivityTaskFailedEventAttributes
        self.scheduleLambdaFunctionFailedEventAttributes = scheduleLambdaFunctionFailedEventAttributes
        self.signalExternalWorkflowExecutionFailedEventAttributes = signalExternalWorkflowExecutionFailedEventAttributes
        self.signalExternalWorkflowExecutionInitiatedEventAttributes = signalExternalWorkflowExecutionInitiatedEventAttributes
        self.startChildWorkflowExecutionFailedEventAttributes = startChildWorkflowExecutionFailedEventAttributes
        self.startChildWorkflowExecutionInitiatedEventAttributes = startChildWorkflowExecutionInitiatedEventAttributes
        self.startLambdaFunctionFailedEventAttributes = startLambdaFunctionFailedEventAttributes
        self.startTimerFailedEventAttributes = startTimerFailedEventAttributes
        self.timerCanceledEventAttributes = timerCanceledEventAttributes
        self.timerFiredEventAttributes = timerFiredEventAttributes
        self.timerStartedEventAttributes = timerStartedEventAttributes
        self.workflowExecutionCancelRequestedEventAttributes = workflowExecutionCancelRequestedEventAttributes
        self.workflowExecutionCanceledEventAttributes = workflowExecutionCanceledEventAttributes
        self.workflowExecutionCompletedEventAttributes = workflowExecutionCompletedEventAttributes
        self.workflowExecutionContinuedAsNewEventAttributes = workflowExecutionContinuedAsNewEventAttributes
        self.workflowExecutionFailedEventAttributes = workflowExecutionFailedEventAttributes
        self.workflowExecutionSignaledEventAttributes = workflowExecutionSignaledEventAttributes
        self.workflowExecutionStartedEventAttributes = workflowExecutionStartedEventAttributes
        self.workflowExecutionTerminatedEventAttributes = workflowExecutionTerminatedEventAttributes
        self.workflowExecutionTimedOutEventAttributes = workflowExecutionTimedOutEventAttributes
    }

    enum CodingKeys: String, CodingKey {
        case activityTaskCancelRequestedEventAttributes
        case activityTaskCanceledEventAttributes
        case activityTaskCompletedEventAttributes
        case activityTaskFailedEventAttributes
        case activityTaskScheduledEventAttributes
        case activityTaskStartedEventAttributes
        case activityTaskTimedOutEventAttributes
        case cancelTimerFailedEventAttributes
        case cancelWorkflowExecutionFailedEventAttributes
        case childWorkflowExecutionCanceledEventAttributes
        case childWorkflowExecutionCompletedEventAttributes
        case childWorkflowExecutionFailedEventAttributes
        case childWorkflowExecutionStartedEventAttributes
        case childWorkflowExecutionTerminatedEventAttributes
        case childWorkflowExecutionTimedOutEventAttributes
        case completeWorkflowExecutionFailedEventAttributes
        case continueAsNewWorkflowExecutionFailedEventAttributes
        case decisionTaskCompletedEventAttributes
        case decisionTaskScheduledEventAttributes
        case decisionTaskStartedEventAttributes
        case decisionTaskTimedOutEventAttributes
        case eventId
        case eventTimestamp
        case eventType
        case externalWorkflowExecutionCancelRequestedEventAttributes
        case externalWorkflowExecutionSignaledEventAttributes
        case failWorkflowExecutionFailedEventAttributes
        case lambdaFunctionCompletedEventAttributes
        case lambdaFunctionFailedEventAttributes
        case lambdaFunctionScheduledEventAttributes
        case lambdaFunctionStartedEventAttributes
        case lambdaFunctionTimedOutEventAttributes
        case markerRecordedEventAttributes
        case recordMarkerFailedEventAttributes
        case requestCancelActivityTaskFailedEventAttributes
        case requestCancelExternalWorkflowExecutionFailedEventAttributes
        case requestCancelExternalWorkflowExecutionInitiatedEventAttributes
        case scheduleActivityTaskFailedEventAttributes
        case scheduleLambdaFunctionFailedEventAttributes
        case signalExternalWorkflowExecutionFailedEventAttributes
        case signalExternalWorkflowExecutionInitiatedEventAttributes
        case startChildWorkflowExecutionFailedEventAttributes
        case startChildWorkflowExecutionInitiatedEventAttributes
        case startLambdaFunctionFailedEventAttributes
        case startTimerFailedEventAttributes
        case timerCanceledEventAttributes
        case timerFiredEventAttributes
        case timerStartedEventAttributes
        case workflowExecutionCancelRequestedEventAttributes
        case workflowExecutionCanceledEventAttributes
        case workflowExecutionCompletedEventAttributes
        case workflowExecutionContinuedAsNewEventAttributes
        case workflowExecutionFailedEventAttributes
        case workflowExecutionSignaledEventAttributes
        case workflowExecutionStartedEventAttributes
        case workflowExecutionTerminatedEventAttributes
        case workflowExecutionTimedOutEventAttributes
    }

    public func validate() throws {
        try activityTaskCancelRequestedEventAttributes?.validate()
        try activityTaskCanceledEventAttributes?.validate()
        try activityTaskCompletedEventAttributes?.validate()
        try activityTaskFailedEventAttributes?.validate()
        try activityTaskScheduledEventAttributes?.validate()
        try activityTaskStartedEventAttributes?.validate()
        try activityTaskTimedOutEventAttributes?.validate()
        try cancelTimerFailedEventAttributes?.validate()
        try cancelWorkflowExecutionFailedEventAttributes?.validate()
        try childWorkflowExecutionCanceledEventAttributes?.validate()
        try childWorkflowExecutionCompletedEventAttributes?.validate()
        try childWorkflowExecutionFailedEventAttributes?.validate()
        try childWorkflowExecutionStartedEventAttributes?.validate()
        try childWorkflowExecutionTerminatedEventAttributes?.validate()
        try childWorkflowExecutionTimedOutEventAttributes?.validate()
        try completeWorkflowExecutionFailedEventAttributes?.validate()
        try continueAsNewWorkflowExecutionFailedEventAttributes?.validate()
        try decisionTaskCompletedEventAttributes?.validate()
        try decisionTaskScheduledEventAttributes?.validate()
        try decisionTaskStartedEventAttributes?.validate()
        try decisionTaskTimedOutEventAttributes?.validate()
        try externalWorkflowExecutionCancelRequestedEventAttributes?.validate()
        try externalWorkflowExecutionSignaledEventAttributes?.validate()
        try failWorkflowExecutionFailedEventAttributes?.validate()
        try lambdaFunctionCompletedEventAttributes?.validate()
        try lambdaFunctionFailedEventAttributes?.validate()
        try lambdaFunctionScheduledEventAttributes?.validate()
        try lambdaFunctionStartedEventAttributes?.validate()
        try lambdaFunctionTimedOutEventAttributes?.validate()
        try markerRecordedEventAttributes?.validate()
        try recordMarkerFailedEventAttributes?.validate()
        try requestCancelActivityTaskFailedEventAttributes?.validate()
        try requestCancelExternalWorkflowExecutionFailedEventAttributes?.validate()
        try requestCancelExternalWorkflowExecutionInitiatedEventAttributes?.validate()
        try scheduleActivityTaskFailedEventAttributes?.validate()
        try scheduleLambdaFunctionFailedEventAttributes?.validate()
        try signalExternalWorkflowExecutionFailedEventAttributes?.validate()
        try signalExternalWorkflowExecutionInitiatedEventAttributes?.validate()
        try startChildWorkflowExecutionFailedEventAttributes?.validate()
        try startChildWorkflowExecutionInitiatedEventAttributes?.validate()
        try startLambdaFunctionFailedEventAttributes?.validate()
        try startTimerFailedEventAttributes?.validate()
        try timerCanceledEventAttributes?.validate()
        try timerFiredEventAttributes?.validate()
        try timerStartedEventAttributes?.validate()
        try workflowExecutionCancelRequestedEventAttributes?.validate()
        try workflowExecutionCanceledEventAttributes?.validate()
        try workflowExecutionCompletedEventAttributes?.validate()
        try workflowExecutionContinuedAsNewEventAttributes?.validate()
        try workflowExecutionFailedEventAttributes?.validate()
        try workflowExecutionSignaledEventAttributes?.validate()
        try workflowExecutionStartedEventAttributes?.validate()
        try workflowExecutionTerminatedEventAttributes?.validate()
        try workflowExecutionTimedOutEventAttributes?.validate()
    }
}

public struct LambdaFunctionCompletedEventAttributes: Codable, Equatable {
    public var result: Data?
    public var scheduledEventId: EventId
    public var startedEventId: EventId

    public init(result: Data? = nil,
                scheduledEventId: EventId,
                startedEventId: EventId) {
        self.result = result
        self.scheduledEventId = scheduledEventId
        self.startedEventId = startedEventId
    }

    enum CodingKeys: String, CodingKey {
        case result
        case scheduledEventId
        case startedEventId
    }

    public func validate() throws {
        try result?.validateAsData()
    }
}

public struct LambdaFunctionFailedEventAttributes: Codable, Equatable {
    public var details: Data?
    public var reason: FailureReason?
    public var scheduledEventId: EventId
    public var startedEventId: EventId

    public init(details: Data? = nil,
                reason: FailureReason? = nil,
                scheduledEventId: EventId,
                startedEventId: EventId) {
        self.details = details
        self.reason = reason
        self.scheduledEventId = scheduledEventId
        self.startedEventId = startedEventId
    }

    enum CodingKeys: String, CodingKey {
        case details
        case reason
        case scheduledEventId
        case startedEventId
    }

    public func validate() throws {
        try details?.validateAsData()
        try reason?.validateAsFailureReason()
    }
}

public struct LambdaFunctionScheduledEventAttributes: Codable, Equatable {
    public var control: Data?
    public var decisionTaskCompletedEventId: EventId
    public var id: FunctionId
    public var input: FunctionInput?
    public var name: FunctionName
    public var startToCloseTimeout: DurationInSecondsOptional?

    public init(control: Data? = nil,
                decisionTaskCompletedEventId: EventId,
                id: FunctionId,
                input: FunctionInput? = nil,
                name: FunctionName,
                startToCloseTimeout: DurationInSecondsOptional? = nil) {
        self.control = control
        self.decisionTaskCompletedEventId = decisionTaskCompletedEventId
        self.id = id
        self.input = input
        self.name = name
        self.startToCloseTimeout = startToCloseTimeout
    }

    enum CodingKeys: String, CodingKey {
        case control
        case decisionTaskCompletedEventId
        case id
        case input
        case name
        case startToCloseTimeout
    }

    public func validate() throws {
        try control?.validateAsData()
        try id.validateAsFunctionId()
        try input?.validateAsFunctionInput()
        try name.validateAsFunctionName()
        try startToCloseTimeout?.validateAsDurationInSecondsOptional()
    }
}

public struct LambdaFunctionStartedEventAttributes: Codable, Equatable {
    public var scheduledEventId: EventId

    public init(scheduledEventId: EventId) {
        self.scheduledEventId = scheduledEventId
    }

    enum CodingKeys: String, CodingKey {
        case scheduledEventId
    }

    public func validate() throws {
    }
}

public struct LambdaFunctionTimedOutEventAttributes: Codable, Equatable {
    public var scheduledEventId: EventId
    public var startedEventId: EventId
    public var timeoutType: LambdaFunctionTimeoutType?

    public init(scheduledEventId: EventId,
                startedEventId: EventId,
                timeoutType: LambdaFunctionTimeoutType? = nil) {
        self.scheduledEventId = scheduledEventId
        self.startedEventId = startedEventId
        self.timeoutType = timeoutType
    }

    enum CodingKeys: String, CodingKey {
        case scheduledEventId
        case startedEventId
        case timeoutType
    }

    public func validate() throws {
    }
}

public struct LimitExceededFault: Codable, Equatable {
    public var message: ErrorMessage?

    public init(message: ErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct ListActivityTypesInput: Codable, Equatable {
    public var domain: DomainName
    public var maximumPageSize: PageSize?
    public var name: Name?
    public var nextPageToken: PageToken?
    public var registrationStatus: RegistrationStatus
    public var reverseOrder: ReverseOrder?

    public init(domain: DomainName,
                maximumPageSize: PageSize? = nil,
                name: Name? = nil,
                nextPageToken: PageToken? = nil,
                registrationStatus: RegistrationStatus,
                reverseOrder: ReverseOrder? = nil) {
        self.domain = domain
        self.maximumPageSize = maximumPageSize
        self.name = name
        self.nextPageToken = nextPageToken
        self.registrationStatus = registrationStatus
        self.reverseOrder = reverseOrder
    }

    enum CodingKeys: String, CodingKey {
        case domain
        case maximumPageSize
        case name
        case nextPageToken
        case registrationStatus
        case reverseOrder
    }

    public func validate() throws {
        try domain.validateAsDomainName()
        try maximumPageSize?.validateAsPageSize()
        try name?.validateAsName()
        try nextPageToken?.validateAsPageToken()
    }
}

public struct ListClosedWorkflowExecutionsInput: Codable, Equatable {
    public var closeStatusFilter: CloseStatusFilter?
    public var closeTimeFilter: ExecutionTimeFilter?
    public var domain: DomainName
    public var executionFilter: WorkflowExecutionFilter?
    public var maximumPageSize: PageSize?
    public var nextPageToken: PageToken?
    public var reverseOrder: ReverseOrder?
    public var startTimeFilter: ExecutionTimeFilter?
    public var tagFilter: TagFilter?
    public var typeFilter: WorkflowTypeFilter?

    public init(closeStatusFilter: CloseStatusFilter? = nil,
                closeTimeFilter: ExecutionTimeFilter? = nil,
                domain: DomainName,
                executionFilter: WorkflowExecutionFilter? = nil,
                maximumPageSize: PageSize? = nil,
                nextPageToken: PageToken? = nil,
                reverseOrder: ReverseOrder? = nil,
                startTimeFilter: ExecutionTimeFilter? = nil,
                tagFilter: TagFilter? = nil,
                typeFilter: WorkflowTypeFilter? = nil) {
        self.closeStatusFilter = closeStatusFilter
        self.closeTimeFilter = closeTimeFilter
        self.domain = domain
        self.executionFilter = executionFilter
        self.maximumPageSize = maximumPageSize
        self.nextPageToken = nextPageToken
        self.reverseOrder = reverseOrder
        self.startTimeFilter = startTimeFilter
        self.tagFilter = tagFilter
        self.typeFilter = typeFilter
    }

    enum CodingKeys: String, CodingKey {
        case closeStatusFilter
        case closeTimeFilter
        case domain
        case executionFilter
        case maximumPageSize
        case nextPageToken
        case reverseOrder
        case startTimeFilter
        case tagFilter
        case typeFilter
    }

    public func validate() throws {
        try closeStatusFilter?.validate()
        try closeTimeFilter?.validate()
        try domain.validateAsDomainName()
        try executionFilter?.validate()
        try maximumPageSize?.validateAsPageSize()
        try nextPageToken?.validateAsPageToken()
        try startTimeFilter?.validate()
        try tagFilter?.validate()
        try typeFilter?.validate()
    }
}

public struct ListDomainsInput: Codable, Equatable {
    public var maximumPageSize: PageSize?
    public var nextPageToken: PageToken?
    public var registrationStatus: RegistrationStatus
    public var reverseOrder: ReverseOrder?

    public init(maximumPageSize: PageSize? = nil,
                nextPageToken: PageToken? = nil,
                registrationStatus: RegistrationStatus,
                reverseOrder: ReverseOrder? = nil) {
        self.maximumPageSize = maximumPageSize
        self.nextPageToken = nextPageToken
        self.registrationStatus = registrationStatus
        self.reverseOrder = reverseOrder
    }

    enum CodingKeys: String, CodingKey {
        case maximumPageSize
        case nextPageToken
        case registrationStatus
        case reverseOrder
    }

    public func validate() throws {
        try maximumPageSize?.validateAsPageSize()
        try nextPageToken?.validateAsPageToken()
    }
}

public struct ListOpenWorkflowExecutionsInput: Codable, Equatable {
    public var domain: DomainName
    public var executionFilter: WorkflowExecutionFilter?
    public var maximumPageSize: PageSize?
    public var nextPageToken: PageToken?
    public var reverseOrder: ReverseOrder?
    public var startTimeFilter: ExecutionTimeFilter
    public var tagFilter: TagFilter?
    public var typeFilter: WorkflowTypeFilter?

    public init(domain: DomainName,
                executionFilter: WorkflowExecutionFilter? = nil,
                maximumPageSize: PageSize? = nil,
                nextPageToken: PageToken? = nil,
                reverseOrder: ReverseOrder? = nil,
                startTimeFilter: ExecutionTimeFilter,
                tagFilter: TagFilter? = nil,
                typeFilter: WorkflowTypeFilter? = nil) {
        self.domain = domain
        self.executionFilter = executionFilter
        self.maximumPageSize = maximumPageSize
        self.nextPageToken = nextPageToken
        self.reverseOrder = reverseOrder
        self.startTimeFilter = startTimeFilter
        self.tagFilter = tagFilter
        self.typeFilter = typeFilter
    }

    enum CodingKeys: String, CodingKey {
        case domain
        case executionFilter
        case maximumPageSize
        case nextPageToken
        case reverseOrder
        case startTimeFilter
        case tagFilter
        case typeFilter
    }

    public func validate() throws {
        try domain.validateAsDomainName()
        try executionFilter?.validate()
        try maximumPageSize?.validateAsPageSize()
        try nextPageToken?.validateAsPageToken()
        try startTimeFilter.validate()
        try tagFilter?.validate()
        try typeFilter?.validate()
    }
}

public struct ListTagsForResourceInput: Codable, Equatable {
    public var resourceArn: Arn

    public init(resourceArn: Arn) {
        self.resourceArn = resourceArn
    }

    enum CodingKeys: String, CodingKey {
        case resourceArn
    }

    public func validate() throws {
        try resourceArn.validateAsArn()
    }
}

public struct ListTagsForResourceOutput: Codable, Equatable {
    public var tags: ResourceTagList?

    public init(tags: ResourceTagList? = nil) {
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case tags
    }

    public func validate() throws {
    }
}

public struct ListWorkflowTypesInput: Codable, Equatable {
    public var domain: DomainName
    public var maximumPageSize: PageSize?
    public var name: Name?
    public var nextPageToken: PageToken?
    public var registrationStatus: RegistrationStatus
    public var reverseOrder: ReverseOrder?

    public init(domain: DomainName,
                maximumPageSize: PageSize? = nil,
                name: Name? = nil,
                nextPageToken: PageToken? = nil,
                registrationStatus: RegistrationStatus,
                reverseOrder: ReverseOrder? = nil) {
        self.domain = domain
        self.maximumPageSize = maximumPageSize
        self.name = name
        self.nextPageToken = nextPageToken
        self.registrationStatus = registrationStatus
        self.reverseOrder = reverseOrder
    }

    enum CodingKeys: String, CodingKey {
        case domain
        case maximumPageSize
        case name
        case nextPageToken
        case registrationStatus
        case reverseOrder
    }

    public func validate() throws {
        try domain.validateAsDomainName()
        try maximumPageSize?.validateAsPageSize()
        try name?.validateAsName()
        try nextPageToken?.validateAsPageToken()
    }
}

public struct MarkerRecordedEventAttributes: Codable, Equatable {
    public var decisionTaskCompletedEventId: EventId
    public var details: Data?
    public var markerName: MarkerName

    public init(decisionTaskCompletedEventId: EventId,
                details: Data? = nil,
                markerName: MarkerName) {
        self.decisionTaskCompletedEventId = decisionTaskCompletedEventId
        self.details = details
        self.markerName = markerName
    }

    enum CodingKeys: String, CodingKey {
        case decisionTaskCompletedEventId
        case details
        case markerName
    }

    public func validate() throws {
        try details?.validateAsData()
        try markerName.validateAsMarkerName()
    }
}

public struct OperationNotPermittedFault: Codable, Equatable {
    public var message: ErrorMessage?

    public init(message: ErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct PendingTaskCount: Codable, Equatable {
    public var count: Count
    public var truncated: Truncated?

    public init(count: Count,
                truncated: Truncated? = nil) {
        self.count = count
        self.truncated = truncated
    }

    enum CodingKeys: String, CodingKey {
        case count
        case truncated
    }

    public func validate() throws {
        try count.validateAsCount()
    }
}

public struct PollForActivityTaskInput: Codable, Equatable {
    public var domain: DomainName
    public var identity: Identity?
    public var taskList: TaskList

    public init(domain: DomainName,
                identity: Identity? = nil,
                taskList: TaskList) {
        self.domain = domain
        self.identity = identity
        self.taskList = taskList
    }

    enum CodingKeys: String, CodingKey {
        case domain
        case identity
        case taskList
    }

    public func validate() throws {
        try domain.validateAsDomainName()
        try identity?.validateAsIdentity()
        try taskList.validate()
    }
}

public struct PollForDecisionTaskInput: Codable, Equatable {
    public var domain: DomainName
    public var identity: Identity?
    public var maximumPageSize: PageSize?
    public var nextPageToken: PageToken?
    public var reverseOrder: ReverseOrder?
    public var taskList: TaskList

    public init(domain: DomainName,
                identity: Identity? = nil,
                maximumPageSize: PageSize? = nil,
                nextPageToken: PageToken? = nil,
                reverseOrder: ReverseOrder? = nil,
                taskList: TaskList) {
        self.domain = domain
        self.identity = identity
        self.maximumPageSize = maximumPageSize
        self.nextPageToken = nextPageToken
        self.reverseOrder = reverseOrder
        self.taskList = taskList
    }

    enum CodingKeys: String, CodingKey {
        case domain
        case identity
        case maximumPageSize
        case nextPageToken
        case reverseOrder
        case taskList
    }

    public func validate() throws {
        try domain.validateAsDomainName()
        try identity?.validateAsIdentity()
        try maximumPageSize?.validateAsPageSize()
        try nextPageToken?.validateAsPageToken()
        try taskList.validate()
    }
}

public struct RecordActivityTaskHeartbeatInput: Codable, Equatable {
    public var details: LimitedData?
    public var taskToken: TaskToken

    public init(details: LimitedData? = nil,
                taskToken: TaskToken) {
        self.details = details
        self.taskToken = taskToken
    }

    enum CodingKeys: String, CodingKey {
        case details
        case taskToken
    }

    public func validate() throws {
        try details?.validateAsLimitedData()
        try taskToken.validateAsTaskToken()
    }
}

public struct RecordMarkerDecisionAttributes: Codable, Equatable {
    public var details: Data?
    public var markerName: MarkerName

    public init(details: Data? = nil,
                markerName: MarkerName) {
        self.details = details
        self.markerName = markerName
    }

    enum CodingKeys: String, CodingKey {
        case details
        case markerName
    }

    public func validate() throws {
        try details?.validateAsData()
        try markerName.validateAsMarkerName()
    }
}

public struct RecordMarkerFailedEventAttributes: Codable, Equatable {
    public var cause: RecordMarkerFailedCause
    public var decisionTaskCompletedEventId: EventId
    public var markerName: MarkerName

    public init(cause: RecordMarkerFailedCause,
                decisionTaskCompletedEventId: EventId,
                markerName: MarkerName) {
        self.cause = cause
        self.decisionTaskCompletedEventId = decisionTaskCompletedEventId
        self.markerName = markerName
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case decisionTaskCompletedEventId
        case markerName
    }

    public func validate() throws {
        try markerName.validateAsMarkerName()
    }
}

public struct RegisterActivityTypeInput: Codable, Equatable {
    public var defaultTaskHeartbeatTimeout: DurationInSecondsOptional?
    public var defaultTaskList: TaskList?
    public var defaultTaskPriority: TaskPriority?
    public var defaultTaskScheduleToCloseTimeout: DurationInSecondsOptional?
    public var defaultTaskScheduleToStartTimeout: DurationInSecondsOptional?
    public var defaultTaskStartToCloseTimeout: DurationInSecondsOptional?
    public var description: Description?
    public var domain: DomainName
    public var name: Name
    public var version: Version

    public init(defaultTaskHeartbeatTimeout: DurationInSecondsOptional? = nil,
                defaultTaskList: TaskList? = nil,
                defaultTaskPriority: TaskPriority? = nil,
                defaultTaskScheduleToCloseTimeout: DurationInSecondsOptional? = nil,
                defaultTaskScheduleToStartTimeout: DurationInSecondsOptional? = nil,
                defaultTaskStartToCloseTimeout: DurationInSecondsOptional? = nil,
                description: Description? = nil,
                domain: DomainName,
                name: Name,
                version: Version) {
        self.defaultTaskHeartbeatTimeout = defaultTaskHeartbeatTimeout
        self.defaultTaskList = defaultTaskList
        self.defaultTaskPriority = defaultTaskPriority
        self.defaultTaskScheduleToCloseTimeout = defaultTaskScheduleToCloseTimeout
        self.defaultTaskScheduleToStartTimeout = defaultTaskScheduleToStartTimeout
        self.defaultTaskStartToCloseTimeout = defaultTaskStartToCloseTimeout
        self.description = description
        self.domain = domain
        self.name = name
        self.version = version
    }

    enum CodingKeys: String, CodingKey {
        case defaultTaskHeartbeatTimeout
        case defaultTaskList
        case defaultTaskPriority
        case defaultTaskScheduleToCloseTimeout
        case defaultTaskScheduleToStartTimeout
        case defaultTaskStartToCloseTimeout
        case description
        case domain
        case name
        case version
    }

    public func validate() throws {
        try defaultTaskHeartbeatTimeout?.validateAsDurationInSecondsOptional()
        try defaultTaskList?.validate()
        try defaultTaskScheduleToCloseTimeout?.validateAsDurationInSecondsOptional()
        try defaultTaskScheduleToStartTimeout?.validateAsDurationInSecondsOptional()
        try defaultTaskStartToCloseTimeout?.validateAsDurationInSecondsOptional()
        try description?.validateAsDescription()
        try domain.validateAsDomainName()
        try name.validateAsName()
        try version.validateAsVersion()
    }
}

public struct RegisterDomainInput: Codable, Equatable {
    public var description: Description?
    public var name: DomainName
    public var tags: ResourceTagList?
    public var workflowExecutionRetentionPeriodInDays: DurationInDays

    public init(description: Description? = nil,
                name: DomainName,
                tags: ResourceTagList? = nil,
                workflowExecutionRetentionPeriodInDays: DurationInDays) {
        self.description = description
        self.name = name
        self.tags = tags
        self.workflowExecutionRetentionPeriodInDays = workflowExecutionRetentionPeriodInDays
    }

    enum CodingKeys: String, CodingKey {
        case description
        case name
        case tags
        case workflowExecutionRetentionPeriodInDays
    }

    public func validate() throws {
        try description?.validateAsDescription()
        try name.validateAsDomainName()
        try workflowExecutionRetentionPeriodInDays.validateAsDurationInDays()
    }
}

public struct RegisterWorkflowTypeInput: Codable, Equatable {
    public var defaultChildPolicy: ChildPolicy?
    public var defaultExecutionStartToCloseTimeout: DurationInSecondsOptional?
    public var defaultLambdaRole: Arn?
    public var defaultTaskList: TaskList?
    public var defaultTaskPriority: TaskPriority?
    public var defaultTaskStartToCloseTimeout: DurationInSecondsOptional?
    public var description: Description?
    public var domain: DomainName
    public var name: Name
    public var version: Version

    public init(defaultChildPolicy: ChildPolicy? = nil,
                defaultExecutionStartToCloseTimeout: DurationInSecondsOptional? = nil,
                defaultLambdaRole: Arn? = nil,
                defaultTaskList: TaskList? = nil,
                defaultTaskPriority: TaskPriority? = nil,
                defaultTaskStartToCloseTimeout: DurationInSecondsOptional? = nil,
                description: Description? = nil,
                domain: DomainName,
                name: Name,
                version: Version) {
        self.defaultChildPolicy = defaultChildPolicy
        self.defaultExecutionStartToCloseTimeout = defaultExecutionStartToCloseTimeout
        self.defaultLambdaRole = defaultLambdaRole
        self.defaultTaskList = defaultTaskList
        self.defaultTaskPriority = defaultTaskPriority
        self.defaultTaskStartToCloseTimeout = defaultTaskStartToCloseTimeout
        self.description = description
        self.domain = domain
        self.name = name
        self.version = version
    }

    enum CodingKeys: String, CodingKey {
        case defaultChildPolicy
        case defaultExecutionStartToCloseTimeout
        case defaultLambdaRole
        case defaultTaskList
        case defaultTaskPriority
        case defaultTaskStartToCloseTimeout
        case description
        case domain
        case name
        case version
    }

    public func validate() throws {
        try defaultExecutionStartToCloseTimeout?.validateAsDurationInSecondsOptional()
        try defaultLambdaRole?.validateAsArn()
        try defaultTaskList?.validate()
        try defaultTaskStartToCloseTimeout?.validateAsDurationInSecondsOptional()
        try description?.validateAsDescription()
        try domain.validateAsDomainName()
        try name.validateAsName()
        try version.validateAsVersion()
    }
}

public struct RequestCancelActivityTaskDecisionAttributes: Codable, Equatable {
    public var activityId: ActivityId

    public init(activityId: ActivityId) {
        self.activityId = activityId
    }

    enum CodingKeys: String, CodingKey {
        case activityId
    }

    public func validate() throws {
        try activityId.validateAsActivityId()
    }
}

public struct RequestCancelActivityTaskFailedEventAttributes: Codable, Equatable {
    public var activityId: ActivityId
    public var cause: RequestCancelActivityTaskFailedCause
    public var decisionTaskCompletedEventId: EventId

    public init(activityId: ActivityId,
                cause: RequestCancelActivityTaskFailedCause,
                decisionTaskCompletedEventId: EventId) {
        self.activityId = activityId
        self.cause = cause
        self.decisionTaskCompletedEventId = decisionTaskCompletedEventId
    }

    enum CodingKeys: String, CodingKey {
        case activityId
        case cause
        case decisionTaskCompletedEventId
    }

    public func validate() throws {
        try activityId.validateAsActivityId()
    }
}

public struct RequestCancelExternalWorkflowExecutionDecisionAttributes: Codable, Equatable {
    public var control: Data?
    public var runId: WorkflowRunIdOptional?
    public var workflowId: WorkflowId

    public init(control: Data? = nil,
                runId: WorkflowRunIdOptional? = nil,
                workflowId: WorkflowId) {
        self.control = control
        self.runId = runId
        self.workflowId = workflowId
    }

    enum CodingKeys: String, CodingKey {
        case control
        case runId
        case workflowId
    }

    public func validate() throws {
        try control?.validateAsData()
        try runId?.validateAsWorkflowRunIdOptional()
        try workflowId.validateAsWorkflowId()
    }
}

public struct RequestCancelExternalWorkflowExecutionFailedEventAttributes: Codable, Equatable {
    public var cause: RequestCancelExternalWorkflowExecutionFailedCause
    public var control: Data?
    public var decisionTaskCompletedEventId: EventId
    public var initiatedEventId: EventId
    public var runId: WorkflowRunIdOptional?
    public var workflowId: WorkflowId

    public init(cause: RequestCancelExternalWorkflowExecutionFailedCause,
                control: Data? = nil,
                decisionTaskCompletedEventId: EventId,
                initiatedEventId: EventId,
                runId: WorkflowRunIdOptional? = nil,
                workflowId: WorkflowId) {
        self.cause = cause
        self.control = control
        self.decisionTaskCompletedEventId = decisionTaskCompletedEventId
        self.initiatedEventId = initiatedEventId
        self.runId = runId
        self.workflowId = workflowId
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case control
        case decisionTaskCompletedEventId
        case initiatedEventId
        case runId
        case workflowId
    }

    public func validate() throws {
        try control?.validateAsData()
        try runId?.validateAsWorkflowRunIdOptional()
        try workflowId.validateAsWorkflowId()
    }
}

public struct RequestCancelExternalWorkflowExecutionInitiatedEventAttributes: Codable, Equatable {
    public var control: Data?
    public var decisionTaskCompletedEventId: EventId
    public var runId: WorkflowRunIdOptional?
    public var workflowId: WorkflowId

    public init(control: Data? = nil,
                decisionTaskCompletedEventId: EventId,
                runId: WorkflowRunIdOptional? = nil,
                workflowId: WorkflowId) {
        self.control = control
        self.decisionTaskCompletedEventId = decisionTaskCompletedEventId
        self.runId = runId
        self.workflowId = workflowId
    }

    enum CodingKeys: String, CodingKey {
        case control
        case decisionTaskCompletedEventId
        case runId
        case workflowId
    }

    public func validate() throws {
        try control?.validateAsData()
        try runId?.validateAsWorkflowRunIdOptional()
        try workflowId.validateAsWorkflowId()
    }
}

public struct RequestCancelWorkflowExecutionInput: Codable, Equatable {
    public var domain: DomainName
    public var runId: WorkflowRunIdOptional?
    public var workflowId: WorkflowId

    public init(domain: DomainName,
                runId: WorkflowRunIdOptional? = nil,
                workflowId: WorkflowId) {
        self.domain = domain
        self.runId = runId
        self.workflowId = workflowId
    }

    enum CodingKeys: String, CodingKey {
        case domain
        case runId
        case workflowId
    }

    public func validate() throws {
        try domain.validateAsDomainName()
        try runId?.validateAsWorkflowRunIdOptional()
        try workflowId.validateAsWorkflowId()
    }
}

public struct ResourceTag: Codable, Equatable {
    public var key: ResourceTagKey
    public var value: ResourceTagValue?

    public init(key: ResourceTagKey,
                value: ResourceTagValue? = nil) {
        self.key = key
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case key
        case value
    }

    public func validate() throws {
        try key.validateAsResourceTagKey()
        try value?.validateAsResourceTagValue()
    }
}

public struct RespondActivityTaskCanceledInput: Codable, Equatable {
    public var details: Data?
    public var taskToken: TaskToken

    public init(details: Data? = nil,
                taskToken: TaskToken) {
        self.details = details
        self.taskToken = taskToken
    }

    enum CodingKeys: String, CodingKey {
        case details
        case taskToken
    }

    public func validate() throws {
        try details?.validateAsData()
        try taskToken.validateAsTaskToken()
    }
}

public struct RespondActivityTaskCompletedInput: Codable, Equatable {
    public var result: Data?
    public var taskToken: TaskToken

    public init(result: Data? = nil,
                taskToken: TaskToken) {
        self.result = result
        self.taskToken = taskToken
    }

    enum CodingKeys: String, CodingKey {
        case result
        case taskToken
    }

    public func validate() throws {
        try result?.validateAsData()
        try taskToken.validateAsTaskToken()
    }
}

public struct RespondActivityTaskFailedInput: Codable, Equatable {
    public var details: Data?
    public var reason: FailureReason?
    public var taskToken: TaskToken

    public init(details: Data? = nil,
                reason: FailureReason? = nil,
                taskToken: TaskToken) {
        self.details = details
        self.reason = reason
        self.taskToken = taskToken
    }

    enum CodingKeys: String, CodingKey {
        case details
        case reason
        case taskToken
    }

    public func validate() throws {
        try details?.validateAsData()
        try reason?.validateAsFailureReason()
        try taskToken.validateAsTaskToken()
    }
}

public struct RespondDecisionTaskCompletedInput: Codable, Equatable {
    public var decisions: DecisionList?
    public var executionContext: Data?
    public var taskToken: TaskToken

    public init(decisions: DecisionList? = nil,
                executionContext: Data? = nil,
                taskToken: TaskToken) {
        self.decisions = decisions
        self.executionContext = executionContext
        self.taskToken = taskToken
    }

    enum CodingKeys: String, CodingKey {
        case decisions
        case executionContext
        case taskToken
    }

    public func validate() throws {
        try executionContext?.validateAsData()
        try taskToken.validateAsTaskToken()
    }
}

public struct Run: Codable, Equatable {
    public var runId: WorkflowRunId?

    public init(runId: WorkflowRunId? = nil) {
        self.runId = runId
    }

    enum CodingKeys: String, CodingKey {
        case runId
    }

    public func validate() throws {
        try runId?.validateAsWorkflowRunId()
    }
}

public struct ScheduleActivityTaskDecisionAttributes: Codable, Equatable {
    public var activityId: ActivityId
    public var activityType: ActivityType
    public var control: Data?
    public var heartbeatTimeout: DurationInSecondsOptional?
    public var input: Data?
    public var scheduleToCloseTimeout: DurationInSecondsOptional?
    public var scheduleToStartTimeout: DurationInSecondsOptional?
    public var startToCloseTimeout: DurationInSecondsOptional?
    public var taskList: TaskList?
    public var taskPriority: TaskPriority?

    public init(activityId: ActivityId,
                activityType: ActivityType,
                control: Data? = nil,
                heartbeatTimeout: DurationInSecondsOptional? = nil,
                input: Data? = nil,
                scheduleToCloseTimeout: DurationInSecondsOptional? = nil,
                scheduleToStartTimeout: DurationInSecondsOptional? = nil,
                startToCloseTimeout: DurationInSecondsOptional? = nil,
                taskList: TaskList? = nil,
                taskPriority: TaskPriority? = nil) {
        self.activityId = activityId
        self.activityType = activityType
        self.control = control
        self.heartbeatTimeout = heartbeatTimeout
        self.input = input
        self.scheduleToCloseTimeout = scheduleToCloseTimeout
        self.scheduleToStartTimeout = scheduleToStartTimeout
        self.startToCloseTimeout = startToCloseTimeout
        self.taskList = taskList
        self.taskPriority = taskPriority
    }

    enum CodingKeys: String, CodingKey {
        case activityId
        case activityType
        case control
        case heartbeatTimeout
        case input
        case scheduleToCloseTimeout
        case scheduleToStartTimeout
        case startToCloseTimeout
        case taskList
        case taskPriority
    }

    public func validate() throws {
        try activityId.validateAsActivityId()
        try activityType.validate()
        try control?.validateAsData()
        try heartbeatTimeout?.validateAsDurationInSecondsOptional()
        try input?.validateAsData()
        try scheduleToCloseTimeout?.validateAsDurationInSecondsOptional()
        try scheduleToStartTimeout?.validateAsDurationInSecondsOptional()
        try startToCloseTimeout?.validateAsDurationInSecondsOptional()
        try taskList?.validate()
    }
}

public struct ScheduleActivityTaskFailedEventAttributes: Codable, Equatable {
    public var activityId: ActivityId
    public var activityType: ActivityType
    public var cause: ScheduleActivityTaskFailedCause
    public var decisionTaskCompletedEventId: EventId

    public init(activityId: ActivityId,
                activityType: ActivityType,
                cause: ScheduleActivityTaskFailedCause,
                decisionTaskCompletedEventId: EventId) {
        self.activityId = activityId
        self.activityType = activityType
        self.cause = cause
        self.decisionTaskCompletedEventId = decisionTaskCompletedEventId
    }

    enum CodingKeys: String, CodingKey {
        case activityId
        case activityType
        case cause
        case decisionTaskCompletedEventId
    }

    public func validate() throws {
        try activityId.validateAsActivityId()
        try activityType.validate()
    }
}

public struct ScheduleLambdaFunctionDecisionAttributes: Codable, Equatable {
    public var control: Data?
    public var id: FunctionId
    public var input: FunctionInput?
    public var name: FunctionName
    public var startToCloseTimeout: DurationInSecondsOptional?

    public init(control: Data? = nil,
                id: FunctionId,
                input: FunctionInput? = nil,
                name: FunctionName,
                startToCloseTimeout: DurationInSecondsOptional? = nil) {
        self.control = control
        self.id = id
        self.input = input
        self.name = name
        self.startToCloseTimeout = startToCloseTimeout
    }

    enum CodingKeys: String, CodingKey {
        case control
        case id
        case input
        case name
        case startToCloseTimeout
    }

    public func validate() throws {
        try control?.validateAsData()
        try id.validateAsFunctionId()
        try input?.validateAsFunctionInput()
        try name.validateAsFunctionName()
        try startToCloseTimeout?.validateAsDurationInSecondsOptional()
    }
}

public struct ScheduleLambdaFunctionFailedEventAttributes: Codable, Equatable {
    public var cause: ScheduleLambdaFunctionFailedCause
    public var decisionTaskCompletedEventId: EventId
    public var id: FunctionId
    public var name: FunctionName

    public init(cause: ScheduleLambdaFunctionFailedCause,
                decisionTaskCompletedEventId: EventId,
                id: FunctionId,
                name: FunctionName) {
        self.cause = cause
        self.decisionTaskCompletedEventId = decisionTaskCompletedEventId
        self.id = id
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case decisionTaskCompletedEventId
        case id
        case name
    }

    public func validate() throws {
        try id.validateAsFunctionId()
        try name.validateAsFunctionName()
    }
}

public struct SignalExternalWorkflowExecutionDecisionAttributes: Codable, Equatable {
    public var control: Data?
    public var input: Data?
    public var runId: WorkflowRunIdOptional?
    public var signalName: SignalName
    public var workflowId: WorkflowId

    public init(control: Data? = nil,
                input: Data? = nil,
                runId: WorkflowRunIdOptional? = nil,
                signalName: SignalName,
                workflowId: WorkflowId) {
        self.control = control
        self.input = input
        self.runId = runId
        self.signalName = signalName
        self.workflowId = workflowId
    }

    enum CodingKeys: String, CodingKey {
        case control
        case input
        case runId
        case signalName
        case workflowId
    }

    public func validate() throws {
        try control?.validateAsData()
        try input?.validateAsData()
        try runId?.validateAsWorkflowRunIdOptional()
        try signalName.validateAsSignalName()
        try workflowId.validateAsWorkflowId()
    }
}

public struct SignalExternalWorkflowExecutionFailedEventAttributes: Codable, Equatable {
    public var cause: SignalExternalWorkflowExecutionFailedCause
    public var control: Data?
    public var decisionTaskCompletedEventId: EventId
    public var initiatedEventId: EventId
    public var runId: WorkflowRunIdOptional?
    public var workflowId: WorkflowId

    public init(cause: SignalExternalWorkflowExecutionFailedCause,
                control: Data? = nil,
                decisionTaskCompletedEventId: EventId,
                initiatedEventId: EventId,
                runId: WorkflowRunIdOptional? = nil,
                workflowId: WorkflowId) {
        self.cause = cause
        self.control = control
        self.decisionTaskCompletedEventId = decisionTaskCompletedEventId
        self.initiatedEventId = initiatedEventId
        self.runId = runId
        self.workflowId = workflowId
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case control
        case decisionTaskCompletedEventId
        case initiatedEventId
        case runId
        case workflowId
    }

    public func validate() throws {
        try control?.validateAsData()
        try runId?.validateAsWorkflowRunIdOptional()
        try workflowId.validateAsWorkflowId()
    }
}

public struct SignalExternalWorkflowExecutionInitiatedEventAttributes: Codable, Equatable {
    public var control: Data?
    public var decisionTaskCompletedEventId: EventId
    public var input: Data?
    public var runId: WorkflowRunIdOptional?
    public var signalName: SignalName
    public var workflowId: WorkflowId

    public init(control: Data? = nil,
                decisionTaskCompletedEventId: EventId,
                input: Data? = nil,
                runId: WorkflowRunIdOptional? = nil,
                signalName: SignalName,
                workflowId: WorkflowId) {
        self.control = control
        self.decisionTaskCompletedEventId = decisionTaskCompletedEventId
        self.input = input
        self.runId = runId
        self.signalName = signalName
        self.workflowId = workflowId
    }

    enum CodingKeys: String, CodingKey {
        case control
        case decisionTaskCompletedEventId
        case input
        case runId
        case signalName
        case workflowId
    }

    public func validate() throws {
        try control?.validateAsData()
        try input?.validateAsData()
        try runId?.validateAsWorkflowRunIdOptional()
        try signalName.validateAsSignalName()
        try workflowId.validateAsWorkflowId()
    }
}

public struct SignalWorkflowExecutionInput: Codable, Equatable {
    public var domain: DomainName
    public var input: Data?
    public var runId: WorkflowRunIdOptional?
    public var signalName: SignalName
    public var workflowId: WorkflowId

    public init(domain: DomainName,
                input: Data? = nil,
                runId: WorkflowRunIdOptional? = nil,
                signalName: SignalName,
                workflowId: WorkflowId) {
        self.domain = domain
        self.input = input
        self.runId = runId
        self.signalName = signalName
        self.workflowId = workflowId
    }

    enum CodingKeys: String, CodingKey {
        case domain
        case input
        case runId
        case signalName
        case workflowId
    }

    public func validate() throws {
        try domain.validateAsDomainName()
        try input?.validateAsData()
        try runId?.validateAsWorkflowRunIdOptional()
        try signalName.validateAsSignalName()
        try workflowId.validateAsWorkflowId()
    }
}

public struct StartChildWorkflowExecutionDecisionAttributes: Codable, Equatable {
    public var childPolicy: ChildPolicy?
    public var control: Data?
    public var executionStartToCloseTimeout: DurationInSecondsOptional?
    public var input: Data?
    public var lambdaRole: Arn?
    public var tagList: TagList?
    public var taskList: TaskList?
    public var taskPriority: TaskPriority?
    public var taskStartToCloseTimeout: DurationInSecondsOptional?
    public var workflowId: WorkflowId
    public var workflowType: WorkflowType

    public init(childPolicy: ChildPolicy? = nil,
                control: Data? = nil,
                executionStartToCloseTimeout: DurationInSecondsOptional? = nil,
                input: Data? = nil,
                lambdaRole: Arn? = nil,
                tagList: TagList? = nil,
                taskList: TaskList? = nil,
                taskPriority: TaskPriority? = nil,
                taskStartToCloseTimeout: DurationInSecondsOptional? = nil,
                workflowId: WorkflowId,
                workflowType: WorkflowType) {
        self.childPolicy = childPolicy
        self.control = control
        self.executionStartToCloseTimeout = executionStartToCloseTimeout
        self.input = input
        self.lambdaRole = lambdaRole
        self.tagList = tagList
        self.taskList = taskList
        self.taskPriority = taskPriority
        self.taskStartToCloseTimeout = taskStartToCloseTimeout
        self.workflowId = workflowId
        self.workflowType = workflowType
    }

    enum CodingKeys: String, CodingKey {
        case childPolicy
        case control
        case executionStartToCloseTimeout
        case input
        case lambdaRole
        case tagList
        case taskList
        case taskPriority
        case taskStartToCloseTimeout
        case workflowId
        case workflowType
    }

    public func validate() throws {
        try control?.validateAsData()
        try executionStartToCloseTimeout?.validateAsDurationInSecondsOptional()
        try input?.validateAsData()
        try lambdaRole?.validateAsArn()
        try tagList?.validateAsTagList()
        try taskList?.validate()
        try taskStartToCloseTimeout?.validateAsDurationInSecondsOptional()
        try workflowId.validateAsWorkflowId()
        try workflowType.validate()
    }
}

public struct StartChildWorkflowExecutionFailedEventAttributes: Codable, Equatable {
    public var cause: StartChildWorkflowExecutionFailedCause
    public var control: Data?
    public var decisionTaskCompletedEventId: EventId
    public var initiatedEventId: EventId
    public var workflowId: WorkflowId
    public var workflowType: WorkflowType

    public init(cause: StartChildWorkflowExecutionFailedCause,
                control: Data? = nil,
                decisionTaskCompletedEventId: EventId,
                initiatedEventId: EventId,
                workflowId: WorkflowId,
                workflowType: WorkflowType) {
        self.cause = cause
        self.control = control
        self.decisionTaskCompletedEventId = decisionTaskCompletedEventId
        self.initiatedEventId = initiatedEventId
        self.workflowId = workflowId
        self.workflowType = workflowType
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case control
        case decisionTaskCompletedEventId
        case initiatedEventId
        case workflowId
        case workflowType
    }

    public func validate() throws {
        try control?.validateAsData()
        try workflowId.validateAsWorkflowId()
        try workflowType.validate()
    }
}

public struct StartChildWorkflowExecutionInitiatedEventAttributes: Codable, Equatable {
    public var childPolicy: ChildPolicy
    public var control: Data?
    public var decisionTaskCompletedEventId: EventId
    public var executionStartToCloseTimeout: DurationInSecondsOptional?
    public var input: Data?
    public var lambdaRole: Arn?
    public var tagList: TagList?
    public var taskList: TaskList
    public var taskPriority: TaskPriority?
    public var taskStartToCloseTimeout: DurationInSecondsOptional?
    public var workflowId: WorkflowId
    public var workflowType: WorkflowType

    public init(childPolicy: ChildPolicy,
                control: Data? = nil,
                decisionTaskCompletedEventId: EventId,
                executionStartToCloseTimeout: DurationInSecondsOptional? = nil,
                input: Data? = nil,
                lambdaRole: Arn? = nil,
                tagList: TagList? = nil,
                taskList: TaskList,
                taskPriority: TaskPriority? = nil,
                taskStartToCloseTimeout: DurationInSecondsOptional? = nil,
                workflowId: WorkflowId,
                workflowType: WorkflowType) {
        self.childPolicy = childPolicy
        self.control = control
        self.decisionTaskCompletedEventId = decisionTaskCompletedEventId
        self.executionStartToCloseTimeout = executionStartToCloseTimeout
        self.input = input
        self.lambdaRole = lambdaRole
        self.tagList = tagList
        self.taskList = taskList
        self.taskPriority = taskPriority
        self.taskStartToCloseTimeout = taskStartToCloseTimeout
        self.workflowId = workflowId
        self.workflowType = workflowType
    }

    enum CodingKeys: String, CodingKey {
        case childPolicy
        case control
        case decisionTaskCompletedEventId
        case executionStartToCloseTimeout
        case input
        case lambdaRole
        case tagList
        case taskList
        case taskPriority
        case taskStartToCloseTimeout
        case workflowId
        case workflowType
    }

    public func validate() throws {
        try control?.validateAsData()
        try executionStartToCloseTimeout?.validateAsDurationInSecondsOptional()
        try input?.validateAsData()
        try lambdaRole?.validateAsArn()
        try tagList?.validateAsTagList()
        try taskList.validate()
        try taskStartToCloseTimeout?.validateAsDurationInSecondsOptional()
        try workflowId.validateAsWorkflowId()
        try workflowType.validate()
    }
}

public struct StartLambdaFunctionFailedEventAttributes: Codable, Equatable {
    public var cause: StartLambdaFunctionFailedCause?
    public var message: CauseMessage?
    public var scheduledEventId: EventId?

    public init(cause: StartLambdaFunctionFailedCause? = nil,
                message: CauseMessage? = nil,
                scheduledEventId: EventId? = nil) {
        self.cause = cause
        self.message = message
        self.scheduledEventId = scheduledEventId
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case message
        case scheduledEventId
    }

    public func validate() throws {
        try message?.validateAsCauseMessage()
    }
}

public struct StartTimerDecisionAttributes: Codable, Equatable {
    public var control: Data?
    public var startToFireTimeout: DurationInSeconds
    public var timerId: TimerId

    public init(control: Data? = nil,
                startToFireTimeout: DurationInSeconds,
                timerId: TimerId) {
        self.control = control
        self.startToFireTimeout = startToFireTimeout
        self.timerId = timerId
    }

    enum CodingKeys: String, CodingKey {
        case control
        case startToFireTimeout
        case timerId
    }

    public func validate() throws {
        try control?.validateAsData()
        try startToFireTimeout.validateAsDurationInSeconds()
        try timerId.validateAsTimerId()
    }
}

public struct StartTimerFailedEventAttributes: Codable, Equatable {
    public var cause: StartTimerFailedCause
    public var decisionTaskCompletedEventId: EventId
    public var timerId: TimerId

    public init(cause: StartTimerFailedCause,
                decisionTaskCompletedEventId: EventId,
                timerId: TimerId) {
        self.cause = cause
        self.decisionTaskCompletedEventId = decisionTaskCompletedEventId
        self.timerId = timerId
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case decisionTaskCompletedEventId
        case timerId
    }

    public func validate() throws {
        try timerId.validateAsTimerId()
    }
}

public struct StartWorkflowExecutionInput: Codable, Equatable {
    public var childPolicy: ChildPolicy?
    public var domain: DomainName
    public var executionStartToCloseTimeout: DurationInSecondsOptional?
    public var input: Data?
    public var lambdaRole: Arn?
    public var tagList: TagList?
    public var taskList: TaskList?
    public var taskPriority: TaskPriority?
    public var taskStartToCloseTimeout: DurationInSecondsOptional?
    public var workflowId: WorkflowId
    public var workflowType: WorkflowType

    public init(childPolicy: ChildPolicy? = nil,
                domain: DomainName,
                executionStartToCloseTimeout: DurationInSecondsOptional? = nil,
                input: Data? = nil,
                lambdaRole: Arn? = nil,
                tagList: TagList? = nil,
                taskList: TaskList? = nil,
                taskPriority: TaskPriority? = nil,
                taskStartToCloseTimeout: DurationInSecondsOptional? = nil,
                workflowId: WorkflowId,
                workflowType: WorkflowType) {
        self.childPolicy = childPolicy
        self.domain = domain
        self.executionStartToCloseTimeout = executionStartToCloseTimeout
        self.input = input
        self.lambdaRole = lambdaRole
        self.tagList = tagList
        self.taskList = taskList
        self.taskPriority = taskPriority
        self.taskStartToCloseTimeout = taskStartToCloseTimeout
        self.workflowId = workflowId
        self.workflowType = workflowType
    }

    enum CodingKeys: String, CodingKey {
        case childPolicy
        case domain
        case executionStartToCloseTimeout
        case input
        case lambdaRole
        case tagList
        case taskList
        case taskPriority
        case taskStartToCloseTimeout
        case workflowId
        case workflowType
    }

    public func validate() throws {
        try domain.validateAsDomainName()
        try executionStartToCloseTimeout?.validateAsDurationInSecondsOptional()
        try input?.validateAsData()
        try lambdaRole?.validateAsArn()
        try tagList?.validateAsTagList()
        try taskList?.validate()
        try taskStartToCloseTimeout?.validateAsDurationInSecondsOptional()
        try workflowId.validateAsWorkflowId()
        try workflowType.validate()
    }
}

public struct TagFilter: Codable, Equatable {
    public var tag: Tag

    public init(tag: Tag) {
        self.tag = tag
    }

    enum CodingKeys: String, CodingKey {
        case tag
    }

    public func validate() throws {
        try tag.validateAsTag()
    }
}

public struct TagResourceInput: Codable, Equatable {
    public var resourceArn: Arn
    public var tags: ResourceTagList

    public init(resourceArn: Arn,
                tags: ResourceTagList) {
        self.resourceArn = resourceArn
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case resourceArn
        case tags
    }

    public func validate() throws {
        try resourceArn.validateAsArn()
    }
}

public struct TaskList: Codable, Equatable {
    public var name: Name

    public init(name: Name) {
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case name
    }

    public func validate() throws {
        try name.validateAsName()
    }
}

public struct TerminateWorkflowExecutionInput: Codable, Equatable {
    public var childPolicy: ChildPolicy?
    public var details: Data?
    public var domain: DomainName
    public var reason: TerminateReason?
    public var runId: WorkflowRunIdOptional?
    public var workflowId: WorkflowId

    public init(childPolicy: ChildPolicy? = nil,
                details: Data? = nil,
                domain: DomainName,
                reason: TerminateReason? = nil,
                runId: WorkflowRunIdOptional? = nil,
                workflowId: WorkflowId) {
        self.childPolicy = childPolicy
        self.details = details
        self.domain = domain
        self.reason = reason
        self.runId = runId
        self.workflowId = workflowId
    }

    enum CodingKeys: String, CodingKey {
        case childPolicy
        case details
        case domain
        case reason
        case runId
        case workflowId
    }

    public func validate() throws {
        try details?.validateAsData()
        try domain.validateAsDomainName()
        try reason?.validateAsTerminateReason()
        try runId?.validateAsWorkflowRunIdOptional()
        try workflowId.validateAsWorkflowId()
    }
}

public struct TimerCanceledEventAttributes: Codable, Equatable {
    public var decisionTaskCompletedEventId: EventId
    public var startedEventId: EventId
    public var timerId: TimerId

    public init(decisionTaskCompletedEventId: EventId,
                startedEventId: EventId,
                timerId: TimerId) {
        self.decisionTaskCompletedEventId = decisionTaskCompletedEventId
        self.startedEventId = startedEventId
        self.timerId = timerId
    }

    enum CodingKeys: String, CodingKey {
        case decisionTaskCompletedEventId
        case startedEventId
        case timerId
    }

    public func validate() throws {
        try timerId.validateAsTimerId()
    }
}

public struct TimerFiredEventAttributes: Codable, Equatable {
    public var startedEventId: EventId
    public var timerId: TimerId

    public init(startedEventId: EventId,
                timerId: TimerId) {
        self.startedEventId = startedEventId
        self.timerId = timerId
    }

    enum CodingKeys: String, CodingKey {
        case startedEventId
        case timerId
    }

    public func validate() throws {
        try timerId.validateAsTimerId()
    }
}

public struct TimerStartedEventAttributes: Codable, Equatable {
    public var control: Data?
    public var decisionTaskCompletedEventId: EventId
    public var startToFireTimeout: DurationInSeconds
    public var timerId: TimerId

    public init(control: Data? = nil,
                decisionTaskCompletedEventId: EventId,
                startToFireTimeout: DurationInSeconds,
                timerId: TimerId) {
        self.control = control
        self.decisionTaskCompletedEventId = decisionTaskCompletedEventId
        self.startToFireTimeout = startToFireTimeout
        self.timerId = timerId
    }

    enum CodingKeys: String, CodingKey {
        case control
        case decisionTaskCompletedEventId
        case startToFireTimeout
        case timerId
    }

    public func validate() throws {
        try control?.validateAsData()
        try startToFireTimeout.validateAsDurationInSeconds()
        try timerId.validateAsTimerId()
    }
}

public struct TooManyTagsFault: Codable, Equatable {
    public var message: ErrorMessage?

    public init(message: ErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct TypeAlreadyExistsFault: Codable, Equatable {
    public var message: ErrorMessage?

    public init(message: ErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct TypeDeprecatedFault: Codable, Equatable {
    public var message: ErrorMessage?

    public init(message: ErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct UndeprecateActivityTypeInput: Codable, Equatable {
    public var activityType: ActivityType
    public var domain: DomainName

    public init(activityType: ActivityType,
                domain: DomainName) {
        self.activityType = activityType
        self.domain = domain
    }

    enum CodingKeys: String, CodingKey {
        case activityType
        case domain
    }

    public func validate() throws {
        try activityType.validate()
        try domain.validateAsDomainName()
    }
}

public struct UndeprecateDomainInput: Codable, Equatable {
    public var name: DomainName

    public init(name: DomainName) {
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case name
    }

    public func validate() throws {
        try name.validateAsDomainName()
    }
}

public struct UndeprecateWorkflowTypeInput: Codable, Equatable {
    public var domain: DomainName
    public var workflowType: WorkflowType

    public init(domain: DomainName,
                workflowType: WorkflowType) {
        self.domain = domain
        self.workflowType = workflowType
    }

    enum CodingKeys: String, CodingKey {
        case domain
        case workflowType
    }

    public func validate() throws {
        try domain.validateAsDomainName()
        try workflowType.validate()
    }
}

public struct UnknownResourceFault: Codable, Equatable {
    public var message: ErrorMessage?

    public init(message: ErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct UntagResourceInput: Codable, Equatable {
    public var resourceArn: Arn
    public var tagKeys: ResourceTagKeyList

    public init(resourceArn: Arn,
                tagKeys: ResourceTagKeyList) {
        self.resourceArn = resourceArn
        self.tagKeys = tagKeys
    }

    enum CodingKeys: String, CodingKey {
        case resourceArn
        case tagKeys
    }

    public func validate() throws {
        try resourceArn.validateAsArn()
    }
}

public struct WorkflowExecution: Codable, Equatable {
    public var runId: WorkflowRunId
    public var workflowId: WorkflowId

    public init(runId: WorkflowRunId,
                workflowId: WorkflowId) {
        self.runId = runId
        self.workflowId = workflowId
    }

    enum CodingKeys: String, CodingKey {
        case runId
        case workflowId
    }

    public func validate() throws {
        try runId.validateAsWorkflowRunId()
        try workflowId.validateAsWorkflowId()
    }
}

public struct WorkflowExecutionAlreadyStartedFault: Codable, Equatable {
    public var message: ErrorMessage?

    public init(message: ErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
    }
}

public struct WorkflowExecutionCancelRequestedEventAttributes: Codable, Equatable {
    public var cause: WorkflowExecutionCancelRequestedCause?
    public var externalInitiatedEventId: EventId?
    public var externalWorkflowExecution: WorkflowExecution?

    public init(cause: WorkflowExecutionCancelRequestedCause? = nil,
                externalInitiatedEventId: EventId? = nil,
                externalWorkflowExecution: WorkflowExecution? = nil) {
        self.cause = cause
        self.externalInitiatedEventId = externalInitiatedEventId
        self.externalWorkflowExecution = externalWorkflowExecution
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case externalInitiatedEventId
        case externalWorkflowExecution
    }

    public func validate() throws {
        try externalWorkflowExecution?.validate()
    }
}

public struct WorkflowExecutionCanceledEventAttributes: Codable, Equatable {
    public var decisionTaskCompletedEventId: EventId
    public var details: Data?

    public init(decisionTaskCompletedEventId: EventId,
                details: Data? = nil) {
        self.decisionTaskCompletedEventId = decisionTaskCompletedEventId
        self.details = details
    }

    enum CodingKeys: String, CodingKey {
        case decisionTaskCompletedEventId
        case details
    }

    public func validate() throws {
        try details?.validateAsData()
    }
}

public struct WorkflowExecutionCompletedEventAttributes: Codable, Equatable {
    public var decisionTaskCompletedEventId: EventId
    public var result: Data?

    public init(decisionTaskCompletedEventId: EventId,
                result: Data? = nil) {
        self.decisionTaskCompletedEventId = decisionTaskCompletedEventId
        self.result = result
    }

    enum CodingKeys: String, CodingKey {
        case decisionTaskCompletedEventId
        case result
    }

    public func validate() throws {
        try result?.validateAsData()
    }
}

public struct WorkflowExecutionConfiguration: Codable, Equatable {
    public var childPolicy: ChildPolicy
    public var executionStartToCloseTimeout: DurationInSeconds
    public var lambdaRole: Arn?
    public var taskList: TaskList
    public var taskPriority: TaskPriority?
    public var taskStartToCloseTimeout: DurationInSeconds

    public init(childPolicy: ChildPolicy,
                executionStartToCloseTimeout: DurationInSeconds,
                lambdaRole: Arn? = nil,
                taskList: TaskList,
                taskPriority: TaskPriority? = nil,
                taskStartToCloseTimeout: DurationInSeconds) {
        self.childPolicy = childPolicy
        self.executionStartToCloseTimeout = executionStartToCloseTimeout
        self.lambdaRole = lambdaRole
        self.taskList = taskList
        self.taskPriority = taskPriority
        self.taskStartToCloseTimeout = taskStartToCloseTimeout
    }

    enum CodingKeys: String, CodingKey {
        case childPolicy
        case executionStartToCloseTimeout
        case lambdaRole
        case taskList
        case taskPriority
        case taskStartToCloseTimeout
    }

    public func validate() throws {
        try executionStartToCloseTimeout.validateAsDurationInSeconds()
        try lambdaRole?.validateAsArn()
        try taskList.validate()
        try taskStartToCloseTimeout.validateAsDurationInSeconds()
    }
}

public struct WorkflowExecutionContinuedAsNewEventAttributes: Codable, Equatable {
    public var childPolicy: ChildPolicy
    public var decisionTaskCompletedEventId: EventId
    public var executionStartToCloseTimeout: DurationInSecondsOptional?
    public var input: Data?
    public var lambdaRole: Arn?
    public var newExecutionRunId: WorkflowRunId
    public var tagList: TagList?
    public var taskList: TaskList
    public var taskPriority: TaskPriority?
    public var taskStartToCloseTimeout: DurationInSecondsOptional?
    public var workflowType: WorkflowType

    public init(childPolicy: ChildPolicy,
                decisionTaskCompletedEventId: EventId,
                executionStartToCloseTimeout: DurationInSecondsOptional? = nil,
                input: Data? = nil,
                lambdaRole: Arn? = nil,
                newExecutionRunId: WorkflowRunId,
                tagList: TagList? = nil,
                taskList: TaskList,
                taskPriority: TaskPriority? = nil,
                taskStartToCloseTimeout: DurationInSecondsOptional? = nil,
                workflowType: WorkflowType) {
        self.childPolicy = childPolicy
        self.decisionTaskCompletedEventId = decisionTaskCompletedEventId
        self.executionStartToCloseTimeout = executionStartToCloseTimeout
        self.input = input
        self.lambdaRole = lambdaRole
        self.newExecutionRunId = newExecutionRunId
        self.tagList = tagList
        self.taskList = taskList
        self.taskPriority = taskPriority
        self.taskStartToCloseTimeout = taskStartToCloseTimeout
        self.workflowType = workflowType
    }

    enum CodingKeys: String, CodingKey {
        case childPolicy
        case decisionTaskCompletedEventId
        case executionStartToCloseTimeout
        case input
        case lambdaRole
        case newExecutionRunId
        case tagList
        case taskList
        case taskPriority
        case taskStartToCloseTimeout
        case workflowType
    }

    public func validate() throws {
        try executionStartToCloseTimeout?.validateAsDurationInSecondsOptional()
        try input?.validateAsData()
        try lambdaRole?.validateAsArn()
        try newExecutionRunId.validateAsWorkflowRunId()
        try tagList?.validateAsTagList()
        try taskList.validate()
        try taskStartToCloseTimeout?.validateAsDurationInSecondsOptional()
        try workflowType.validate()
    }
}

public struct WorkflowExecutionCount: Codable, Equatable {
    public var count: Count
    public var truncated: Truncated?

    public init(count: Count,
                truncated: Truncated? = nil) {
        self.count = count
        self.truncated = truncated
    }

    enum CodingKeys: String, CodingKey {
        case count
        case truncated
    }

    public func validate() throws {
        try count.validateAsCount()
    }
}

public struct WorkflowExecutionDetail: Codable, Equatable {
    public var executionConfiguration: WorkflowExecutionConfiguration
    public var executionInfo: WorkflowExecutionInfo
    public var latestActivityTaskTimestamp: Timestamp?
    public var latestExecutionContext: Data?
    public var openCounts: WorkflowExecutionOpenCounts

    public init(executionConfiguration: WorkflowExecutionConfiguration,
                executionInfo: WorkflowExecutionInfo,
                latestActivityTaskTimestamp: Timestamp? = nil,
                latestExecutionContext: Data? = nil,
                openCounts: WorkflowExecutionOpenCounts) {
        self.executionConfiguration = executionConfiguration
        self.executionInfo = executionInfo
        self.latestActivityTaskTimestamp = latestActivityTaskTimestamp
        self.latestExecutionContext = latestExecutionContext
        self.openCounts = openCounts
    }

    enum CodingKeys: String, CodingKey {
        case executionConfiguration
        case executionInfo
        case latestActivityTaskTimestamp
        case latestExecutionContext
        case openCounts
    }

    public func validate() throws {
        try executionConfiguration.validate()
        try executionInfo.validate()
        try latestExecutionContext?.validateAsData()
        try openCounts.validate()
    }
}

public struct WorkflowExecutionFailedEventAttributes: Codable, Equatable {
    public var decisionTaskCompletedEventId: EventId
    public var details: Data?
    public var reason: FailureReason?

    public init(decisionTaskCompletedEventId: EventId,
                details: Data? = nil,
                reason: FailureReason? = nil) {
        self.decisionTaskCompletedEventId = decisionTaskCompletedEventId
        self.details = details
        self.reason = reason
    }

    enum CodingKeys: String, CodingKey {
        case decisionTaskCompletedEventId
        case details
        case reason
    }

    public func validate() throws {
        try details?.validateAsData()
        try reason?.validateAsFailureReason()
    }
}

public struct WorkflowExecutionFilter: Codable, Equatable {
    public var workflowId: WorkflowId

    public init(workflowId: WorkflowId) {
        self.workflowId = workflowId
    }

    enum CodingKeys: String, CodingKey {
        case workflowId
    }

    public func validate() throws {
        try workflowId.validateAsWorkflowId()
    }
}

public struct WorkflowExecutionInfo: Codable, Equatable {
    public var cancelRequested: Canceled?
    public var closeStatus: CloseStatus?
    public var closeTimestamp: Timestamp?
    public var execution: WorkflowExecution
    public var executionStatus: ExecutionStatus
    public var parent: WorkflowExecution?
    public var startTimestamp: Timestamp
    public var tagList: TagList?
    public var workflowType: WorkflowType

    public init(cancelRequested: Canceled? = nil,
                closeStatus: CloseStatus? = nil,
                closeTimestamp: Timestamp? = nil,
                execution: WorkflowExecution,
                executionStatus: ExecutionStatus,
                parent: WorkflowExecution? = nil,
                startTimestamp: Timestamp,
                tagList: TagList? = nil,
                workflowType: WorkflowType) {
        self.cancelRequested = cancelRequested
        self.closeStatus = closeStatus
        self.closeTimestamp = closeTimestamp
        self.execution = execution
        self.executionStatus = executionStatus
        self.parent = parent
        self.startTimestamp = startTimestamp
        self.tagList = tagList
        self.workflowType = workflowType
    }

    enum CodingKeys: String, CodingKey {
        case cancelRequested
        case closeStatus
        case closeTimestamp
        case execution
        case executionStatus
        case parent
        case startTimestamp
        case tagList
        case workflowType
    }

    public func validate() throws {
        try execution.validate()
        try parent?.validate()
        try tagList?.validateAsTagList()
        try workflowType.validate()
    }
}

public struct WorkflowExecutionInfos: Codable, Equatable {
    public var executionInfos: WorkflowExecutionInfoList
    public var nextPageToken: PageToken?

    public init(executionInfos: WorkflowExecutionInfoList,
                nextPageToken: PageToken? = nil) {
        self.executionInfos = executionInfos
        self.nextPageToken = nextPageToken
    }

    enum CodingKeys: String, CodingKey {
        case executionInfos
        case nextPageToken
    }

    public func validate() throws {
        try nextPageToken?.validateAsPageToken()
    }
}

public struct WorkflowExecutionOpenCounts: Codable, Equatable {
    public var openActivityTasks: Count
    public var openChildWorkflowExecutions: Count
    public var openDecisionTasks: OpenDecisionTasksCount
    public var openLambdaFunctions: Count?
    public var openTimers: Count

    public init(openActivityTasks: Count,
                openChildWorkflowExecutions: Count,
                openDecisionTasks: OpenDecisionTasksCount,
                openLambdaFunctions: Count? = nil,
                openTimers: Count) {
        self.openActivityTasks = openActivityTasks
        self.openChildWorkflowExecutions = openChildWorkflowExecutions
        self.openDecisionTasks = openDecisionTasks
        self.openLambdaFunctions = openLambdaFunctions
        self.openTimers = openTimers
    }

    enum CodingKeys: String, CodingKey {
        case openActivityTasks
        case openChildWorkflowExecutions
        case openDecisionTasks
        case openLambdaFunctions
        case openTimers
    }

    public func validate() throws {
        try openActivityTasks.validateAsCount()
        try openChildWorkflowExecutions.validateAsCount()
        try openDecisionTasks.validateAsOpenDecisionTasksCount()
        try openLambdaFunctions?.validateAsCount()
        try openTimers.validateAsCount()
    }
}

public struct WorkflowExecutionSignaledEventAttributes: Codable, Equatable {
    public var externalInitiatedEventId: EventId?
    public var externalWorkflowExecution: WorkflowExecution?
    public var input: Data?
    public var signalName: SignalName

    public init(externalInitiatedEventId: EventId? = nil,
                externalWorkflowExecution: WorkflowExecution? = nil,
                input: Data? = nil,
                signalName: SignalName) {
        self.externalInitiatedEventId = externalInitiatedEventId
        self.externalWorkflowExecution = externalWorkflowExecution
        self.input = input
        self.signalName = signalName
    }

    enum CodingKeys: String, CodingKey {
        case externalInitiatedEventId
        case externalWorkflowExecution
        case input
        case signalName
    }

    public func validate() throws {
        try externalWorkflowExecution?.validate()
        try input?.validateAsData()
        try signalName.validateAsSignalName()
    }
}

public struct WorkflowExecutionStartedEventAttributes: Codable, Equatable {
    public var childPolicy: ChildPolicy
    public var continuedExecutionRunId: WorkflowRunIdOptional?
    public var executionStartToCloseTimeout: DurationInSecondsOptional?
    public var input: Data?
    public var lambdaRole: Arn?
    public var parentInitiatedEventId: EventId?
    public var parentWorkflowExecution: WorkflowExecution?
    public var tagList: TagList?
    public var taskList: TaskList
    public var taskPriority: TaskPriority?
    public var taskStartToCloseTimeout: DurationInSecondsOptional?
    public var workflowType: WorkflowType

    public init(childPolicy: ChildPolicy,
                continuedExecutionRunId: WorkflowRunIdOptional? = nil,
                executionStartToCloseTimeout: DurationInSecondsOptional? = nil,
                input: Data? = nil,
                lambdaRole: Arn? = nil,
                parentInitiatedEventId: EventId? = nil,
                parentWorkflowExecution: WorkflowExecution? = nil,
                tagList: TagList? = nil,
                taskList: TaskList,
                taskPriority: TaskPriority? = nil,
                taskStartToCloseTimeout: DurationInSecondsOptional? = nil,
                workflowType: WorkflowType) {
        self.childPolicy = childPolicy
        self.continuedExecutionRunId = continuedExecutionRunId
        self.executionStartToCloseTimeout = executionStartToCloseTimeout
        self.input = input
        self.lambdaRole = lambdaRole
        self.parentInitiatedEventId = parentInitiatedEventId
        self.parentWorkflowExecution = parentWorkflowExecution
        self.tagList = tagList
        self.taskList = taskList
        self.taskPriority = taskPriority
        self.taskStartToCloseTimeout = taskStartToCloseTimeout
        self.workflowType = workflowType
    }

    enum CodingKeys: String, CodingKey {
        case childPolicy
        case continuedExecutionRunId
        case executionStartToCloseTimeout
        case input
        case lambdaRole
        case parentInitiatedEventId
        case parentWorkflowExecution
        case tagList
        case taskList
        case taskPriority
        case taskStartToCloseTimeout
        case workflowType
    }

    public func validate() throws {
        try continuedExecutionRunId?.validateAsWorkflowRunIdOptional()
        try executionStartToCloseTimeout?.validateAsDurationInSecondsOptional()
        try input?.validateAsData()
        try lambdaRole?.validateAsArn()
        try parentWorkflowExecution?.validate()
        try tagList?.validateAsTagList()
        try taskList.validate()
        try taskStartToCloseTimeout?.validateAsDurationInSecondsOptional()
        try workflowType.validate()
    }
}

public struct WorkflowExecutionTerminatedEventAttributes: Codable, Equatable {
    public var cause: WorkflowExecutionTerminatedCause?
    public var childPolicy: ChildPolicy
    public var details: Data?
    public var reason: TerminateReason?

    public init(cause: WorkflowExecutionTerminatedCause? = nil,
                childPolicy: ChildPolicy,
                details: Data? = nil,
                reason: TerminateReason? = nil) {
        self.cause = cause
        self.childPolicy = childPolicy
        self.details = details
        self.reason = reason
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case childPolicy
        case details
        case reason
    }

    public func validate() throws {
        try details?.validateAsData()
        try reason?.validateAsTerminateReason()
    }
}

public struct WorkflowExecutionTimedOutEventAttributes: Codable, Equatable {
    public var childPolicy: ChildPolicy
    public var timeoutType: WorkflowExecutionTimeoutType

    public init(childPolicy: ChildPolicy,
                timeoutType: WorkflowExecutionTimeoutType) {
        self.childPolicy = childPolicy
        self.timeoutType = timeoutType
    }

    enum CodingKeys: String, CodingKey {
        case childPolicy
        case timeoutType
    }

    public func validate() throws {
    }
}

public struct WorkflowType: Codable, Equatable {
    public var name: Name
    public var version: Version

    public init(name: Name,
                version: Version) {
        self.name = name
        self.version = version
    }

    enum CodingKeys: String, CodingKey {
        case name
        case version
    }

    public func validate() throws {
        try name.validateAsName()
        try version.validateAsVersion()
    }
}

public struct WorkflowTypeConfiguration: Codable, Equatable {
    public var defaultChildPolicy: ChildPolicy?
    public var defaultExecutionStartToCloseTimeout: DurationInSecondsOptional?
    public var defaultLambdaRole: Arn?
    public var defaultTaskList: TaskList?
    public var defaultTaskPriority: TaskPriority?
    public var defaultTaskStartToCloseTimeout: DurationInSecondsOptional?

    public init(defaultChildPolicy: ChildPolicy? = nil,
                defaultExecutionStartToCloseTimeout: DurationInSecondsOptional? = nil,
                defaultLambdaRole: Arn? = nil,
                defaultTaskList: TaskList? = nil,
                defaultTaskPriority: TaskPriority? = nil,
                defaultTaskStartToCloseTimeout: DurationInSecondsOptional? = nil) {
        self.defaultChildPolicy = defaultChildPolicy
        self.defaultExecutionStartToCloseTimeout = defaultExecutionStartToCloseTimeout
        self.defaultLambdaRole = defaultLambdaRole
        self.defaultTaskList = defaultTaskList
        self.defaultTaskPriority = defaultTaskPriority
        self.defaultTaskStartToCloseTimeout = defaultTaskStartToCloseTimeout
    }

    enum CodingKeys: String, CodingKey {
        case defaultChildPolicy
        case defaultExecutionStartToCloseTimeout
        case defaultLambdaRole
        case defaultTaskList
        case defaultTaskPriority
        case defaultTaskStartToCloseTimeout
    }

    public func validate() throws {
        try defaultExecutionStartToCloseTimeout?.validateAsDurationInSecondsOptional()
        try defaultLambdaRole?.validateAsArn()
        try defaultTaskList?.validate()
        try defaultTaskStartToCloseTimeout?.validateAsDurationInSecondsOptional()
    }
}

public struct WorkflowTypeDetail: Codable, Equatable {
    public var configuration: WorkflowTypeConfiguration
    public var typeInfo: WorkflowTypeInfo

    public init(configuration: WorkflowTypeConfiguration,
                typeInfo: WorkflowTypeInfo) {
        self.configuration = configuration
        self.typeInfo = typeInfo
    }

    enum CodingKeys: String, CodingKey {
        case configuration
        case typeInfo
    }

    public func validate() throws {
        try configuration.validate()
        try typeInfo.validate()
    }
}

public struct WorkflowTypeFilter: Codable, Equatable {
    public var name: Name
    public var version: VersionOptional?

    public init(name: Name,
                version: VersionOptional? = nil) {
        self.name = name
        self.version = version
    }

    enum CodingKeys: String, CodingKey {
        case name
        case version
    }

    public func validate() throws {
        try name.validateAsName()
        try version?.validateAsVersionOptional()
    }
}

public struct WorkflowTypeInfo: Codable, Equatable {
    public var creationDate: Timestamp
    public var deprecationDate: Timestamp?
    public var description: Description?
    public var status: RegistrationStatus
    public var workflowType: WorkflowType

    public init(creationDate: Timestamp,
                deprecationDate: Timestamp? = nil,
                description: Description? = nil,
                status: RegistrationStatus,
                workflowType: WorkflowType) {
        self.creationDate = creationDate
        self.deprecationDate = deprecationDate
        self.description = description
        self.status = status
        self.workflowType = workflowType
    }

    enum CodingKeys: String, CodingKey {
        case creationDate
        case deprecationDate
        case description
        case status
        case workflowType
    }

    public func validate() throws {
        try description?.validateAsDescription()
        try workflowType.validate()
    }
}

public struct WorkflowTypeInfos: Codable, Equatable {
    public var nextPageToken: PageToken?
    public var typeInfos: WorkflowTypeInfoList

    public init(nextPageToken: PageToken? = nil,
                typeInfos: WorkflowTypeInfoList) {
        self.nextPageToken = nextPageToken
        self.typeInfos = typeInfos
    }

    enum CodingKeys: String, CodingKey {
        case nextPageToken
        case typeInfos
    }

    public func validate() throws {
        try nextPageToken?.validateAsPageToken()
    }
}
