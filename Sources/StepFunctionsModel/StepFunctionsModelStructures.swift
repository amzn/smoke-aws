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
// StepFunctionsModelStructures.swift
// StepFunctionsModel
//

import Foundation

extension Foundation.Data: @unchecked Sendable { }

public struct ActivityDoesNotExist: Codable, Equatable, Sendable {
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

public struct ActivityFailedEventDetails: Codable, Equatable, Sendable {
    public var cause: SensitiveCause?
    public var error: SensitiveError?

    public init(cause: SensitiveCause? = nil,
                error: SensitiveError? = nil) {
        self.cause = cause
        self.error = error
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case error
    }

    public func validate() throws {
        try cause?.validateAsSensitiveCause()
        try error?.validateAsSensitiveError()
    }
}

public struct ActivityLimitExceeded: Codable, Equatable, Sendable {
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

public struct ActivityListItem: Codable, Equatable, Sendable {
    public var activityArn: Arn
    public var creationDate: Timestamp
    public var name: Name

    public init(activityArn: Arn,
                creationDate: Timestamp,
                name: Name) {
        self.activityArn = activityArn
        self.creationDate = creationDate
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case activityArn
        case creationDate
        case name
    }

    public func validate() throws {
        try activityArn.validateAsArn()
        try name.validateAsName()
    }
}

public struct ActivityScheduleFailedEventDetails: Codable, Equatable, Sendable {
    public var cause: SensitiveCause?
    public var error: SensitiveError?

    public init(cause: SensitiveCause? = nil,
                error: SensitiveError? = nil) {
        self.cause = cause
        self.error = error
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case error
    }

    public func validate() throws {
        try cause?.validateAsSensitiveCause()
        try error?.validateAsSensitiveError()
    }
}

public struct ActivityScheduledEventDetails: Codable, Equatable, Sendable {
    public var heartbeatInSeconds: TimeoutInSeconds?
    public var input: SensitiveData?
    public var inputDetails: HistoryEventExecutionDataDetails?
    public var resource: Arn
    public var timeoutInSeconds: TimeoutInSeconds?

    public init(heartbeatInSeconds: TimeoutInSeconds? = nil,
                input: SensitiveData? = nil,
                inputDetails: HistoryEventExecutionDataDetails? = nil,
                resource: Arn,
                timeoutInSeconds: TimeoutInSeconds? = nil) {
        self.heartbeatInSeconds = heartbeatInSeconds
        self.input = input
        self.inputDetails = inputDetails
        self.resource = resource
        self.timeoutInSeconds = timeoutInSeconds
    }

    enum CodingKeys: String, CodingKey {
        case heartbeatInSeconds
        case input
        case inputDetails
        case resource
        case timeoutInSeconds
    }

    public func validate() throws {
        try input?.validateAsSensitiveData()
        try inputDetails?.validate()
        try resource.validateAsArn()
    }
}

public struct ActivityStartedEventDetails: Codable, Equatable, Sendable {
    public var workerName: Identity?

    public init(workerName: Identity? = nil) {
        self.workerName = workerName
    }

    enum CodingKeys: String, CodingKey {
        case workerName
    }

    public func validate() throws {
        try workerName?.validateAsIdentity()
    }
}

public struct ActivitySucceededEventDetails: Codable, Equatable, Sendable {
    public var output: SensitiveData?
    public var outputDetails: HistoryEventExecutionDataDetails?

    public init(output: SensitiveData? = nil,
                outputDetails: HistoryEventExecutionDataDetails? = nil) {
        self.output = output
        self.outputDetails = outputDetails
    }

    enum CodingKeys: String, CodingKey {
        case output
        case outputDetails
    }

    public func validate() throws {
        try output?.validateAsSensitiveData()
        try outputDetails?.validate()
    }
}

public struct ActivityTimedOutEventDetails: Codable, Equatable, Sendable {
    public var cause: SensitiveCause?
    public var error: SensitiveError?

    public init(cause: SensitiveCause? = nil,
                error: SensitiveError? = nil) {
        self.cause = cause
        self.error = error
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case error
    }

    public func validate() throws {
        try cause?.validateAsSensitiveCause()
        try error?.validateAsSensitiveError()
    }
}

public struct ActivityWorkerLimitExceeded: Codable, Equatable, Sendable {
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

public struct BillingDetails: Codable, Equatable, Sendable {
    public var billedDurationInMilliseconds: BilledDuration?
    public var billedMemoryUsedInMB: BilledMemoryUsed?

    public init(billedDurationInMilliseconds: BilledDuration? = nil,
                billedMemoryUsedInMB: BilledMemoryUsed? = nil) {
        self.billedDurationInMilliseconds = billedDurationInMilliseconds
        self.billedMemoryUsedInMB = billedMemoryUsedInMB
    }

    enum CodingKeys: String, CodingKey {
        case billedDurationInMilliseconds
        case billedMemoryUsedInMB
    }

    public func validate() throws {
        try billedDurationInMilliseconds?.validateAsBilledDuration()
        try billedMemoryUsedInMB?.validateAsBilledMemoryUsed()
    }
}

public struct CloudWatchEventsExecutionDataDetails: Codable, Equatable, Sendable {
    public var included: IncludedDetails?

    public init(included: IncludedDetails? = nil) {
        self.included = included
    }

    enum CodingKeys: String, CodingKey {
        case included
    }

    public func validate() throws {
    }
}

public struct CloudWatchLogsLogGroup: Codable, Equatable, Sendable {
    public var logGroupArn: Arn?

    public init(logGroupArn: Arn? = nil) {
        self.logGroupArn = logGroupArn
    }

    enum CodingKeys: String, CodingKey {
        case logGroupArn
    }

    public func validate() throws {
        try logGroupArn?.validateAsArn()
    }
}

public struct CreateActivityInput: Codable, Equatable, Sendable {
    public var name: Name
    public var tags: TagList?

    public init(name: Name,
                tags: TagList? = nil) {
        self.name = name
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case name
        case tags
    }

    public func validate() throws {
        try name.validateAsName()
    }
}

public struct CreateActivityOutput: Codable, Equatable, Sendable {
    public var activityArn: Arn
    public var creationDate: Timestamp

    public init(activityArn: Arn,
                creationDate: Timestamp) {
        self.activityArn = activityArn
        self.creationDate = creationDate
    }

    enum CodingKeys: String, CodingKey {
        case activityArn
        case creationDate
    }

    public func validate() throws {
        try activityArn.validateAsArn()
    }
}

public struct CreateStateMachineInput: Codable, Equatable, Sendable {
    public var definition: Definition
    public var loggingConfiguration: LoggingConfiguration?
    public var name: Name
    public var roleArn: Arn
    public var tags: TagList?
    public var tracingConfiguration: TracingConfiguration?
    public var type: StateMachineType?

    public init(definition: Definition,
                loggingConfiguration: LoggingConfiguration? = nil,
                name: Name,
                roleArn: Arn,
                tags: TagList? = nil,
                tracingConfiguration: TracingConfiguration? = nil,
                type: StateMachineType? = nil) {
        self.definition = definition
        self.loggingConfiguration = loggingConfiguration
        self.name = name
        self.roleArn = roleArn
        self.tags = tags
        self.tracingConfiguration = tracingConfiguration
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case definition
        case loggingConfiguration
        case name
        case roleArn
        case tags
        case tracingConfiguration
        case type
    }

    public func validate() throws {
        try definition.validateAsDefinition()
        try loggingConfiguration?.validate()
        try name.validateAsName()
        try roleArn.validateAsArn()
        try tracingConfiguration?.validate()
    }
}

public struct CreateStateMachineOutput: Codable, Equatable, Sendable {
    public var creationDate: Timestamp
    public var stateMachineArn: Arn

    public init(creationDate: Timestamp,
                stateMachineArn: Arn) {
        self.creationDate = creationDate
        self.stateMachineArn = stateMachineArn
    }

    enum CodingKeys: String, CodingKey {
        case creationDate
        case stateMachineArn
    }

    public func validate() throws {
        try stateMachineArn.validateAsArn()
    }
}

public struct DeleteActivityInput: Codable, Equatable, Sendable {
    public var activityArn: Arn

    public init(activityArn: Arn) {
        self.activityArn = activityArn
    }

    enum CodingKeys: String, CodingKey {
        case activityArn
    }

    public func validate() throws {
        try activityArn.validateAsArn()
    }
}

public struct DeleteActivityOutput: Codable, Equatable, Sendable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DeleteStateMachineInput: Codable, Equatable, Sendable {
    public var stateMachineArn: Arn

    public init(stateMachineArn: Arn) {
        self.stateMachineArn = stateMachineArn
    }

    enum CodingKeys: String, CodingKey {
        case stateMachineArn
    }

    public func validate() throws {
        try stateMachineArn.validateAsArn()
    }
}

public struct DeleteStateMachineOutput: Codable, Equatable, Sendable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DescribeActivityInput: Codable, Equatable, Sendable {
    public var activityArn: Arn

    public init(activityArn: Arn) {
        self.activityArn = activityArn
    }

    enum CodingKeys: String, CodingKey {
        case activityArn
    }

    public func validate() throws {
        try activityArn.validateAsArn()
    }
}

public struct DescribeActivityOutput: Codable, Equatable, Sendable {
    public var activityArn: Arn
    public var creationDate: Timestamp
    public var name: Name

    public init(activityArn: Arn,
                creationDate: Timestamp,
                name: Name) {
        self.activityArn = activityArn
        self.creationDate = creationDate
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case activityArn
        case creationDate
        case name
    }

    public func validate() throws {
        try activityArn.validateAsArn()
        try name.validateAsName()
    }
}

public struct DescribeExecutionInput: Codable, Equatable, Sendable {
    public var executionArn: Arn

    public init(executionArn: Arn) {
        self.executionArn = executionArn
    }

    enum CodingKeys: String, CodingKey {
        case executionArn
    }

    public func validate() throws {
        try executionArn.validateAsArn()
    }
}

public struct DescribeExecutionOutput: Codable, Equatable, Sendable {
    public var executionArn: Arn
    public var input: SensitiveData?
    public var inputDetails: CloudWatchEventsExecutionDataDetails?
    public var name: Name?
    public var output: SensitiveData?
    public var outputDetails: CloudWatchEventsExecutionDataDetails?
    public var startDate: Timestamp
    public var stateMachineArn: Arn
    public var status: ExecutionStatus
    public var stopDate: Timestamp?
    public var traceHeader: TraceHeader?

    public init(executionArn: Arn,
                input: SensitiveData? = nil,
                inputDetails: CloudWatchEventsExecutionDataDetails? = nil,
                name: Name? = nil,
                output: SensitiveData? = nil,
                outputDetails: CloudWatchEventsExecutionDataDetails? = nil,
                startDate: Timestamp,
                stateMachineArn: Arn,
                status: ExecutionStatus,
                stopDate: Timestamp? = nil,
                traceHeader: TraceHeader? = nil) {
        self.executionArn = executionArn
        self.input = input
        self.inputDetails = inputDetails
        self.name = name
        self.output = output
        self.outputDetails = outputDetails
        self.startDate = startDate
        self.stateMachineArn = stateMachineArn
        self.status = status
        self.stopDate = stopDate
        self.traceHeader = traceHeader
    }

    enum CodingKeys: String, CodingKey {
        case executionArn
        case input
        case inputDetails
        case name
        case output
        case outputDetails
        case startDate
        case stateMachineArn
        case status
        case stopDate
        case traceHeader
    }

    public func validate() throws {
        try executionArn.validateAsArn()
        try input?.validateAsSensitiveData()
        try inputDetails?.validate()
        try name?.validateAsName()
        try output?.validateAsSensitiveData()
        try outputDetails?.validate()
        try stateMachineArn.validateAsArn()
        try traceHeader?.validateAsTraceHeader()
    }
}

public struct DescribeStateMachineForExecutionInput: Codable, Equatable, Sendable {
    public var executionArn: Arn

    public init(executionArn: Arn) {
        self.executionArn = executionArn
    }

    enum CodingKeys: String, CodingKey {
        case executionArn
    }

    public func validate() throws {
        try executionArn.validateAsArn()
    }
}

public struct DescribeStateMachineForExecutionOutput: Codable, Equatable, Sendable {
    public var definition: Definition
    public var loggingConfiguration: LoggingConfiguration?
    public var name: Name
    public var roleArn: Arn
    public var stateMachineArn: Arn
    public var tracingConfiguration: TracingConfiguration?
    public var updateDate: Timestamp

    public init(definition: Definition,
                loggingConfiguration: LoggingConfiguration? = nil,
                name: Name,
                roleArn: Arn,
                stateMachineArn: Arn,
                tracingConfiguration: TracingConfiguration? = nil,
                updateDate: Timestamp) {
        self.definition = definition
        self.loggingConfiguration = loggingConfiguration
        self.name = name
        self.roleArn = roleArn
        self.stateMachineArn = stateMachineArn
        self.tracingConfiguration = tracingConfiguration
        self.updateDate = updateDate
    }

    enum CodingKeys: String, CodingKey {
        case definition
        case loggingConfiguration
        case name
        case roleArn
        case stateMachineArn
        case tracingConfiguration
        case updateDate
    }

    public func validate() throws {
        try definition.validateAsDefinition()
        try loggingConfiguration?.validate()
        try name.validateAsName()
        try roleArn.validateAsArn()
        try stateMachineArn.validateAsArn()
        try tracingConfiguration?.validate()
    }
}

public struct DescribeStateMachineInput: Codable, Equatable, Sendable {
    public var stateMachineArn: Arn

    public init(stateMachineArn: Arn) {
        self.stateMachineArn = stateMachineArn
    }

    enum CodingKeys: String, CodingKey {
        case stateMachineArn
    }

    public func validate() throws {
        try stateMachineArn.validateAsArn()
    }
}

public struct DescribeStateMachineOutput: Codable, Equatable, Sendable {
    public var creationDate: Timestamp
    public var definition: Definition
    public var loggingConfiguration: LoggingConfiguration?
    public var name: Name
    public var roleArn: Arn
    public var stateMachineArn: Arn
    public var status: StateMachineStatus?
    public var tracingConfiguration: TracingConfiguration?
    public var type: StateMachineType

    public init(creationDate: Timestamp,
                definition: Definition,
                loggingConfiguration: LoggingConfiguration? = nil,
                name: Name,
                roleArn: Arn,
                stateMachineArn: Arn,
                status: StateMachineStatus? = nil,
                tracingConfiguration: TracingConfiguration? = nil,
                type: StateMachineType) {
        self.creationDate = creationDate
        self.definition = definition
        self.loggingConfiguration = loggingConfiguration
        self.name = name
        self.roleArn = roleArn
        self.stateMachineArn = stateMachineArn
        self.status = status
        self.tracingConfiguration = tracingConfiguration
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case creationDate
        case definition
        case loggingConfiguration
        case name
        case roleArn
        case stateMachineArn
        case status
        case tracingConfiguration
        case type
    }

    public func validate() throws {
        try definition.validateAsDefinition()
        try loggingConfiguration?.validate()
        try name.validateAsName()
        try roleArn.validateAsArn()
        try stateMachineArn.validateAsArn()
        try tracingConfiguration?.validate()
    }
}

public struct ExecutionAbortedEventDetails: Codable, Equatable, Sendable {
    public var cause: SensitiveCause?
    public var error: SensitiveError?

    public init(cause: SensitiveCause? = nil,
                error: SensitiveError? = nil) {
        self.cause = cause
        self.error = error
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case error
    }

    public func validate() throws {
        try cause?.validateAsSensitiveCause()
        try error?.validateAsSensitiveError()
    }
}

public struct ExecutionAlreadyExists: Codable, Equatable, Sendable {
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

public struct ExecutionDoesNotExist: Codable, Equatable, Sendable {
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

public struct ExecutionFailedEventDetails: Codable, Equatable, Sendable {
    public var cause: SensitiveCause?
    public var error: SensitiveError?

    public init(cause: SensitiveCause? = nil,
                error: SensitiveError? = nil) {
        self.cause = cause
        self.error = error
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case error
    }

    public func validate() throws {
        try cause?.validateAsSensitiveCause()
        try error?.validateAsSensitiveError()
    }
}

public struct ExecutionLimitExceeded: Codable, Equatable, Sendable {
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

public struct ExecutionListItem: Codable, Equatable, Sendable {
    public var executionArn: Arn
    public var name: Name
    public var startDate: Timestamp
    public var stateMachineArn: Arn
    public var status: ExecutionStatus
    public var stopDate: Timestamp?

    public init(executionArn: Arn,
                name: Name,
                startDate: Timestamp,
                stateMachineArn: Arn,
                status: ExecutionStatus,
                stopDate: Timestamp? = nil) {
        self.executionArn = executionArn
        self.name = name
        self.startDate = startDate
        self.stateMachineArn = stateMachineArn
        self.status = status
        self.stopDate = stopDate
    }

    enum CodingKeys: String, CodingKey {
        case executionArn
        case name
        case startDate
        case stateMachineArn
        case status
        case stopDate
    }

    public func validate() throws {
        try executionArn.validateAsArn()
        try name.validateAsName()
        try stateMachineArn.validateAsArn()
    }
}

public struct ExecutionStartedEventDetails: Codable, Equatable, Sendable {
    public var input: SensitiveData?
    public var inputDetails: HistoryEventExecutionDataDetails?
    public var roleArn: Arn?

    public init(input: SensitiveData? = nil,
                inputDetails: HistoryEventExecutionDataDetails? = nil,
                roleArn: Arn? = nil) {
        self.input = input
        self.inputDetails = inputDetails
        self.roleArn = roleArn
    }

    enum CodingKeys: String, CodingKey {
        case input
        case inputDetails
        case roleArn
    }

    public func validate() throws {
        try input?.validateAsSensitiveData()
        try inputDetails?.validate()
        try roleArn?.validateAsArn()
    }
}

public struct ExecutionSucceededEventDetails: Codable, Equatable, Sendable {
    public var output: SensitiveData?
    public var outputDetails: HistoryEventExecutionDataDetails?

    public init(output: SensitiveData? = nil,
                outputDetails: HistoryEventExecutionDataDetails? = nil) {
        self.output = output
        self.outputDetails = outputDetails
    }

    enum CodingKeys: String, CodingKey {
        case output
        case outputDetails
    }

    public func validate() throws {
        try output?.validateAsSensitiveData()
        try outputDetails?.validate()
    }
}

public struct ExecutionTimedOutEventDetails: Codable, Equatable, Sendable {
    public var cause: SensitiveCause?
    public var error: SensitiveError?

    public init(cause: SensitiveCause? = nil,
                error: SensitiveError? = nil) {
        self.cause = cause
        self.error = error
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case error
    }

    public func validate() throws {
        try cause?.validateAsSensitiveCause()
        try error?.validateAsSensitiveError()
    }
}

public struct GetActivityTaskInput: Codable, Equatable, Sendable {
    public var activityArn: Arn
    public var workerName: Name?

    public init(activityArn: Arn,
                workerName: Name? = nil) {
        self.activityArn = activityArn
        self.workerName = workerName
    }

    enum CodingKeys: String, CodingKey {
        case activityArn
        case workerName
    }

    public func validate() throws {
        try activityArn.validateAsArn()
        try workerName?.validateAsName()
    }
}

public struct GetActivityTaskOutput: Codable, Equatable, Sendable {
    public var input: SensitiveDataJobInput?
    public var taskToken: TaskToken?

    public init(input: SensitiveDataJobInput? = nil,
                taskToken: TaskToken? = nil) {
        self.input = input
        self.taskToken = taskToken
    }

    enum CodingKeys: String, CodingKey {
        case input
        case taskToken
    }

    public func validate() throws {
        try input?.validateAsSensitiveDataJobInput()
        try taskToken?.validateAsTaskToken()
    }
}

public struct GetExecutionHistoryInput: Codable, Equatable, Sendable {
    public var executionArn: Arn
    public var includeExecutionData: IncludeExecutionDataGetExecutionHistory?
    public var maxResults: PageSize?
    public var nextToken: PageToken?
    public var reverseOrder: ReverseOrder?

    public init(executionArn: Arn,
                includeExecutionData: IncludeExecutionDataGetExecutionHistory? = nil,
                maxResults: PageSize? = nil,
                nextToken: PageToken? = nil,
                reverseOrder: ReverseOrder? = nil) {
        self.executionArn = executionArn
        self.includeExecutionData = includeExecutionData
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.reverseOrder = reverseOrder
    }

    enum CodingKeys: String, CodingKey {
        case executionArn
        case includeExecutionData
        case maxResults
        case nextToken
        case reverseOrder
    }

    public func validate() throws {
        try executionArn.validateAsArn()
        try maxResults?.validateAsPageSize()
        try nextToken?.validateAsPageToken()
    }
}

public struct GetExecutionHistoryOutput: Codable, Equatable, Sendable {
    public var events: HistoryEventList
    public var nextToken: PageToken?

    public init(events: HistoryEventList,
                nextToken: PageToken? = nil) {
        self.events = events
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case events
        case nextToken
    }

    public func validate() throws {
        try nextToken?.validateAsPageToken()
    }
}

public struct HistoryEvent: Codable, Equatable, Sendable {
    public var activityFailedEventDetails: ActivityFailedEventDetails?
    public var activityScheduleFailedEventDetails: ActivityScheduleFailedEventDetails?
    public var activityScheduledEventDetails: ActivityScheduledEventDetails?
    public var activityStartedEventDetails: ActivityStartedEventDetails?
    public var activitySucceededEventDetails: ActivitySucceededEventDetails?
    public var activityTimedOutEventDetails: ActivityTimedOutEventDetails?
    public var executionAbortedEventDetails: ExecutionAbortedEventDetails?
    public var executionFailedEventDetails: ExecutionFailedEventDetails?
    public var executionStartedEventDetails: ExecutionStartedEventDetails?
    public var executionSucceededEventDetails: ExecutionSucceededEventDetails?
    public var executionTimedOutEventDetails: ExecutionTimedOutEventDetails?
    public var id: EventId
    public var lambdaFunctionFailedEventDetails: LambdaFunctionFailedEventDetails?
    public var lambdaFunctionScheduleFailedEventDetails: LambdaFunctionScheduleFailedEventDetails?
    public var lambdaFunctionScheduledEventDetails: LambdaFunctionScheduledEventDetails?
    public var lambdaFunctionStartFailedEventDetails: LambdaFunctionStartFailedEventDetails?
    public var lambdaFunctionSucceededEventDetails: LambdaFunctionSucceededEventDetails?
    public var lambdaFunctionTimedOutEventDetails: LambdaFunctionTimedOutEventDetails?
    public var mapIterationAbortedEventDetails: MapIterationEventDetails?
    public var mapIterationFailedEventDetails: MapIterationEventDetails?
    public var mapIterationStartedEventDetails: MapIterationEventDetails?
    public var mapIterationSucceededEventDetails: MapIterationEventDetails?
    public var mapStateStartedEventDetails: MapStateStartedEventDetails?
    public var previousEventId: EventId?
    public var stateEnteredEventDetails: StateEnteredEventDetails?
    public var stateExitedEventDetails: StateExitedEventDetails?
    public var taskFailedEventDetails: TaskFailedEventDetails?
    public var taskScheduledEventDetails: TaskScheduledEventDetails?
    public var taskStartFailedEventDetails: TaskStartFailedEventDetails?
    public var taskStartedEventDetails: TaskStartedEventDetails?
    public var taskSubmitFailedEventDetails: TaskSubmitFailedEventDetails?
    public var taskSubmittedEventDetails: TaskSubmittedEventDetails?
    public var taskSucceededEventDetails: TaskSucceededEventDetails?
    public var taskTimedOutEventDetails: TaskTimedOutEventDetails?
    public var timestamp: Timestamp
    public var type: HistoryEventType

    public init(activityFailedEventDetails: ActivityFailedEventDetails? = nil,
                activityScheduleFailedEventDetails: ActivityScheduleFailedEventDetails? = nil,
                activityScheduledEventDetails: ActivityScheduledEventDetails? = nil,
                activityStartedEventDetails: ActivityStartedEventDetails? = nil,
                activitySucceededEventDetails: ActivitySucceededEventDetails? = nil,
                activityTimedOutEventDetails: ActivityTimedOutEventDetails? = nil,
                executionAbortedEventDetails: ExecutionAbortedEventDetails? = nil,
                executionFailedEventDetails: ExecutionFailedEventDetails? = nil,
                executionStartedEventDetails: ExecutionStartedEventDetails? = nil,
                executionSucceededEventDetails: ExecutionSucceededEventDetails? = nil,
                executionTimedOutEventDetails: ExecutionTimedOutEventDetails? = nil,
                id: EventId,
                lambdaFunctionFailedEventDetails: LambdaFunctionFailedEventDetails? = nil,
                lambdaFunctionScheduleFailedEventDetails: LambdaFunctionScheduleFailedEventDetails? = nil,
                lambdaFunctionScheduledEventDetails: LambdaFunctionScheduledEventDetails? = nil,
                lambdaFunctionStartFailedEventDetails: LambdaFunctionStartFailedEventDetails? = nil,
                lambdaFunctionSucceededEventDetails: LambdaFunctionSucceededEventDetails? = nil,
                lambdaFunctionTimedOutEventDetails: LambdaFunctionTimedOutEventDetails? = nil,
                mapIterationAbortedEventDetails: MapIterationEventDetails? = nil,
                mapIterationFailedEventDetails: MapIterationEventDetails? = nil,
                mapIterationStartedEventDetails: MapIterationEventDetails? = nil,
                mapIterationSucceededEventDetails: MapIterationEventDetails? = nil,
                mapStateStartedEventDetails: MapStateStartedEventDetails? = nil,
                previousEventId: EventId? = nil,
                stateEnteredEventDetails: StateEnteredEventDetails? = nil,
                stateExitedEventDetails: StateExitedEventDetails? = nil,
                taskFailedEventDetails: TaskFailedEventDetails? = nil,
                taskScheduledEventDetails: TaskScheduledEventDetails? = nil,
                taskStartFailedEventDetails: TaskStartFailedEventDetails? = nil,
                taskStartedEventDetails: TaskStartedEventDetails? = nil,
                taskSubmitFailedEventDetails: TaskSubmitFailedEventDetails? = nil,
                taskSubmittedEventDetails: TaskSubmittedEventDetails? = nil,
                taskSucceededEventDetails: TaskSucceededEventDetails? = nil,
                taskTimedOutEventDetails: TaskTimedOutEventDetails? = nil,
                timestamp: Timestamp,
                type: HistoryEventType) {
        self.activityFailedEventDetails = activityFailedEventDetails
        self.activityScheduleFailedEventDetails = activityScheduleFailedEventDetails
        self.activityScheduledEventDetails = activityScheduledEventDetails
        self.activityStartedEventDetails = activityStartedEventDetails
        self.activitySucceededEventDetails = activitySucceededEventDetails
        self.activityTimedOutEventDetails = activityTimedOutEventDetails
        self.executionAbortedEventDetails = executionAbortedEventDetails
        self.executionFailedEventDetails = executionFailedEventDetails
        self.executionStartedEventDetails = executionStartedEventDetails
        self.executionSucceededEventDetails = executionSucceededEventDetails
        self.executionTimedOutEventDetails = executionTimedOutEventDetails
        self.id = id
        self.lambdaFunctionFailedEventDetails = lambdaFunctionFailedEventDetails
        self.lambdaFunctionScheduleFailedEventDetails = lambdaFunctionScheduleFailedEventDetails
        self.lambdaFunctionScheduledEventDetails = lambdaFunctionScheduledEventDetails
        self.lambdaFunctionStartFailedEventDetails = lambdaFunctionStartFailedEventDetails
        self.lambdaFunctionSucceededEventDetails = lambdaFunctionSucceededEventDetails
        self.lambdaFunctionTimedOutEventDetails = lambdaFunctionTimedOutEventDetails
        self.mapIterationAbortedEventDetails = mapIterationAbortedEventDetails
        self.mapIterationFailedEventDetails = mapIterationFailedEventDetails
        self.mapIterationStartedEventDetails = mapIterationStartedEventDetails
        self.mapIterationSucceededEventDetails = mapIterationSucceededEventDetails
        self.mapStateStartedEventDetails = mapStateStartedEventDetails
        self.previousEventId = previousEventId
        self.stateEnteredEventDetails = stateEnteredEventDetails
        self.stateExitedEventDetails = stateExitedEventDetails
        self.taskFailedEventDetails = taskFailedEventDetails
        self.taskScheduledEventDetails = taskScheduledEventDetails
        self.taskStartFailedEventDetails = taskStartFailedEventDetails
        self.taskStartedEventDetails = taskStartedEventDetails
        self.taskSubmitFailedEventDetails = taskSubmitFailedEventDetails
        self.taskSubmittedEventDetails = taskSubmittedEventDetails
        self.taskSucceededEventDetails = taskSucceededEventDetails
        self.taskTimedOutEventDetails = taskTimedOutEventDetails
        self.timestamp = timestamp
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case activityFailedEventDetails
        case activityScheduleFailedEventDetails
        case activityScheduledEventDetails
        case activityStartedEventDetails
        case activitySucceededEventDetails
        case activityTimedOutEventDetails
        case executionAbortedEventDetails
        case executionFailedEventDetails
        case executionStartedEventDetails
        case executionSucceededEventDetails
        case executionTimedOutEventDetails
        case id
        case lambdaFunctionFailedEventDetails
        case lambdaFunctionScheduleFailedEventDetails
        case lambdaFunctionScheduledEventDetails
        case lambdaFunctionStartFailedEventDetails
        case lambdaFunctionSucceededEventDetails
        case lambdaFunctionTimedOutEventDetails
        case mapIterationAbortedEventDetails
        case mapIterationFailedEventDetails
        case mapIterationStartedEventDetails
        case mapIterationSucceededEventDetails
        case mapStateStartedEventDetails
        case previousEventId
        case stateEnteredEventDetails
        case stateExitedEventDetails
        case taskFailedEventDetails
        case taskScheduledEventDetails
        case taskStartFailedEventDetails
        case taskStartedEventDetails
        case taskSubmitFailedEventDetails
        case taskSubmittedEventDetails
        case taskSucceededEventDetails
        case taskTimedOutEventDetails
        case timestamp
        case type
    }

    public func validate() throws {
        try activityFailedEventDetails?.validate()
        try activityScheduleFailedEventDetails?.validate()
        try activityScheduledEventDetails?.validate()
        try activityStartedEventDetails?.validate()
        try activitySucceededEventDetails?.validate()
        try activityTimedOutEventDetails?.validate()
        try executionAbortedEventDetails?.validate()
        try executionFailedEventDetails?.validate()
        try executionStartedEventDetails?.validate()
        try executionSucceededEventDetails?.validate()
        try executionTimedOutEventDetails?.validate()
        try lambdaFunctionFailedEventDetails?.validate()
        try lambdaFunctionScheduleFailedEventDetails?.validate()
        try lambdaFunctionScheduledEventDetails?.validate()
        try lambdaFunctionStartFailedEventDetails?.validate()
        try lambdaFunctionSucceededEventDetails?.validate()
        try lambdaFunctionTimedOutEventDetails?.validate()
        try mapIterationAbortedEventDetails?.validate()
        try mapIterationFailedEventDetails?.validate()
        try mapIterationStartedEventDetails?.validate()
        try mapIterationSucceededEventDetails?.validate()
        try mapStateStartedEventDetails?.validate()
        try stateEnteredEventDetails?.validate()
        try stateExitedEventDetails?.validate()
        try taskFailedEventDetails?.validate()
        try taskScheduledEventDetails?.validate()
        try taskStartFailedEventDetails?.validate()
        try taskStartedEventDetails?.validate()
        try taskSubmitFailedEventDetails?.validate()
        try taskSubmittedEventDetails?.validate()
        try taskSucceededEventDetails?.validate()
        try taskTimedOutEventDetails?.validate()
    }
}

public struct HistoryEventExecutionDataDetails: Codable, Equatable, Sendable {
    public var truncated: Truncated?

    public init(truncated: Truncated? = nil) {
        self.truncated = truncated
    }

    enum CodingKeys: String, CodingKey {
        case truncated
    }

    public func validate() throws {
    }
}

public struct InvalidArn: Codable, Equatable, Sendable {
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

public struct InvalidDefinition: Codable, Equatable, Sendable {
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

public struct InvalidExecutionInput: Codable, Equatable, Sendable {
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

public struct InvalidLoggingConfiguration: Codable, Equatable, Sendable {
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

public struct InvalidName: Codable, Equatable, Sendable {
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

public struct InvalidOutput: Codable, Equatable, Sendable {
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

public struct InvalidToken: Codable, Equatable, Sendable {
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

public struct InvalidTracingConfiguration: Codable, Equatable, Sendable {
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

public struct LambdaFunctionFailedEventDetails: Codable, Equatable, Sendable {
    public var cause: SensitiveCause?
    public var error: SensitiveError?

    public init(cause: SensitiveCause? = nil,
                error: SensitiveError? = nil) {
        self.cause = cause
        self.error = error
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case error
    }

    public func validate() throws {
        try cause?.validateAsSensitiveCause()
        try error?.validateAsSensitiveError()
    }
}

public struct LambdaFunctionScheduleFailedEventDetails: Codable, Equatable, Sendable {
    public var cause: SensitiveCause?
    public var error: SensitiveError?

    public init(cause: SensitiveCause? = nil,
                error: SensitiveError? = nil) {
        self.cause = cause
        self.error = error
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case error
    }

    public func validate() throws {
        try cause?.validateAsSensitiveCause()
        try error?.validateAsSensitiveError()
    }
}

public struct LambdaFunctionScheduledEventDetails: Codable, Equatable, Sendable {
    public var input: SensitiveData?
    public var inputDetails: HistoryEventExecutionDataDetails?
    public var resource: Arn
    public var timeoutInSeconds: TimeoutInSeconds?

    public init(input: SensitiveData? = nil,
                inputDetails: HistoryEventExecutionDataDetails? = nil,
                resource: Arn,
                timeoutInSeconds: TimeoutInSeconds? = nil) {
        self.input = input
        self.inputDetails = inputDetails
        self.resource = resource
        self.timeoutInSeconds = timeoutInSeconds
    }

    enum CodingKeys: String, CodingKey {
        case input
        case inputDetails
        case resource
        case timeoutInSeconds
    }

    public func validate() throws {
        try input?.validateAsSensitiveData()
        try inputDetails?.validate()
        try resource.validateAsArn()
    }
}

public struct LambdaFunctionStartFailedEventDetails: Codable, Equatable, Sendable {
    public var cause: SensitiveCause?
    public var error: SensitiveError?

    public init(cause: SensitiveCause? = nil,
                error: SensitiveError? = nil) {
        self.cause = cause
        self.error = error
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case error
    }

    public func validate() throws {
        try cause?.validateAsSensitiveCause()
        try error?.validateAsSensitiveError()
    }
}

public struct LambdaFunctionSucceededEventDetails: Codable, Equatable, Sendable {
    public var output: SensitiveData?
    public var outputDetails: HistoryEventExecutionDataDetails?

    public init(output: SensitiveData? = nil,
                outputDetails: HistoryEventExecutionDataDetails? = nil) {
        self.output = output
        self.outputDetails = outputDetails
    }

    enum CodingKeys: String, CodingKey {
        case output
        case outputDetails
    }

    public func validate() throws {
        try output?.validateAsSensitiveData()
        try outputDetails?.validate()
    }
}

public struct LambdaFunctionTimedOutEventDetails: Codable, Equatable, Sendable {
    public var cause: SensitiveCause?
    public var error: SensitiveError?

    public init(cause: SensitiveCause? = nil,
                error: SensitiveError? = nil) {
        self.cause = cause
        self.error = error
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case error
    }

    public func validate() throws {
        try cause?.validateAsSensitiveCause()
        try error?.validateAsSensitiveError()
    }
}

public struct ListActivitiesInput: Codable, Equatable, Sendable {
    public var maxResults: PageSize?
    public var nextToken: PageToken?

    public init(maxResults: PageSize? = nil,
                nextToken: PageToken? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
    }

    public func validate() throws {
        try maxResults?.validateAsPageSize()
        try nextToken?.validateAsPageToken()
    }
}

public struct ListActivitiesOutput: Codable, Equatable, Sendable {
    public var activities: ActivityList
    public var nextToken: PageToken?

    public init(activities: ActivityList,
                nextToken: PageToken? = nil) {
        self.activities = activities
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case activities
        case nextToken
    }

    public func validate() throws {
        try nextToken?.validateAsPageToken()
    }
}

public struct ListExecutionsInput: Codable, Equatable, Sendable {
    public var maxResults: PageSize?
    public var nextToken: ListExecutionsPageToken?
    public var stateMachineArn: Arn
    public var statusFilter: ExecutionStatus?

    public init(maxResults: PageSize? = nil,
                nextToken: ListExecutionsPageToken? = nil,
                stateMachineArn: Arn,
                statusFilter: ExecutionStatus? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.stateMachineArn = stateMachineArn
        self.statusFilter = statusFilter
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
        case stateMachineArn
        case statusFilter
    }

    public func validate() throws {
        try maxResults?.validateAsPageSize()
        try nextToken?.validateAsListExecutionsPageToken()
        try stateMachineArn.validateAsArn()
    }
}

public struct ListExecutionsOutput: Codable, Equatable, Sendable {
    public var executions: ExecutionList
    public var nextToken: ListExecutionsPageToken?

    public init(executions: ExecutionList,
                nextToken: ListExecutionsPageToken? = nil) {
        self.executions = executions
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case executions
        case nextToken
    }

    public func validate() throws {
        try nextToken?.validateAsListExecutionsPageToken()
    }
}

public struct ListStateMachinesInput: Codable, Equatable, Sendable {
    public var maxResults: PageSize?
    public var nextToken: PageToken?

    public init(maxResults: PageSize? = nil,
                nextToken: PageToken? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
    }

    public func validate() throws {
        try maxResults?.validateAsPageSize()
        try nextToken?.validateAsPageToken()
    }
}

public struct ListStateMachinesOutput: Codable, Equatable, Sendable {
    public var nextToken: PageToken?
    public var stateMachines: StateMachineList

    public init(nextToken: PageToken? = nil,
                stateMachines: StateMachineList) {
        self.nextToken = nextToken
        self.stateMachines = stateMachines
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case stateMachines
    }

    public func validate() throws {
        try nextToken?.validateAsPageToken()
    }
}

public struct ListTagsForResourceInput: Codable, Equatable, Sendable {
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

public struct ListTagsForResourceOutput: Codable, Equatable, Sendable {
    public var tags: TagList?

    public init(tags: TagList? = nil) {
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case tags
    }

    public func validate() throws {
    }
}

public struct LogDestination: Codable, Equatable, Sendable {
    public var cloudWatchLogsLogGroup: CloudWatchLogsLogGroup?

    public init(cloudWatchLogsLogGroup: CloudWatchLogsLogGroup? = nil) {
        self.cloudWatchLogsLogGroup = cloudWatchLogsLogGroup
    }

    enum CodingKeys: String, CodingKey {
        case cloudWatchLogsLogGroup
    }

    public func validate() throws {
        try cloudWatchLogsLogGroup?.validate()
    }
}

public struct LoggingConfiguration: Codable, Equatable, Sendable {
    public var destinations: LogDestinationList?
    public var includeExecutionData: IncludeExecutionData?
    public var level: LogLevel?

    public init(destinations: LogDestinationList? = nil,
                includeExecutionData: IncludeExecutionData? = nil,
                level: LogLevel? = nil) {
        self.destinations = destinations
        self.includeExecutionData = includeExecutionData
        self.level = level
    }

    enum CodingKeys: String, CodingKey {
        case destinations
        case includeExecutionData
        case level
    }

    public func validate() throws {
    }
}

public struct MapIterationEventDetails: Codable, Equatable, Sendable {
    public var index: UnsignedInteger?
    public var name: Name?

    public init(index: UnsignedInteger? = nil,
                name: Name? = nil) {
        self.index = index
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case index
        case name
    }

    public func validate() throws {
        try index?.validateAsUnsignedInteger()
        try name?.validateAsName()
    }
}

public struct MapStateStartedEventDetails: Codable, Equatable, Sendable {
    public var length: UnsignedInteger?

    public init(length: UnsignedInteger? = nil) {
        self.length = length
    }

    enum CodingKeys: String, CodingKey {
        case length
    }

    public func validate() throws {
        try length?.validateAsUnsignedInteger()
    }
}

public struct MissingRequiredParameter: Codable, Equatable, Sendable {
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

public struct ResourceNotFound: Codable, Equatable, Sendable {
    public var message: ErrorMessage?
    public var resourceName: Arn?

    public init(message: ErrorMessage? = nil,
                resourceName: Arn? = nil) {
        self.message = message
        self.resourceName = resourceName
    }

    enum CodingKeys: String, CodingKey {
        case message
        case resourceName
    }

    public func validate() throws {
        try resourceName?.validateAsArn()
    }
}

public struct SendTaskFailureInput: Codable, Equatable, Sendable {
    public var cause: SensitiveCause?
    public var error: SensitiveError?
    public var taskToken: TaskToken

    public init(cause: SensitiveCause? = nil,
                error: SensitiveError? = nil,
                taskToken: TaskToken) {
        self.cause = cause
        self.error = error
        self.taskToken = taskToken
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case error
        case taskToken
    }

    public func validate() throws {
        try cause?.validateAsSensitiveCause()
        try error?.validateAsSensitiveError()
        try taskToken.validateAsTaskToken()
    }
}

public struct SendTaskFailureOutput: Codable, Equatable, Sendable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct SendTaskHeartbeatInput: Codable, Equatable, Sendable {
    public var taskToken: TaskToken

    public init(taskToken: TaskToken) {
        self.taskToken = taskToken
    }

    enum CodingKeys: String, CodingKey {
        case taskToken
    }

    public func validate() throws {
        try taskToken.validateAsTaskToken()
    }
}

public struct SendTaskHeartbeatOutput: Codable, Equatable, Sendable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct SendTaskSuccessInput: Codable, Equatable, Sendable {
    public var output: SensitiveData
    public var taskToken: TaskToken

    public init(output: SensitiveData,
                taskToken: TaskToken) {
        self.output = output
        self.taskToken = taskToken
    }

    enum CodingKeys: String, CodingKey {
        case output
        case taskToken
    }

    public func validate() throws {
        try output.validateAsSensitiveData()
        try taskToken.validateAsTaskToken()
    }
}

public struct SendTaskSuccessOutput: Codable, Equatable, Sendable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct StartExecutionInput: Codable, Equatable, Sendable {
    public var input: SensitiveData?
    public var name: Name?
    public var stateMachineArn: Arn
    public var traceHeader: TraceHeader?

    public init(input: SensitiveData? = nil,
                name: Name? = nil,
                stateMachineArn: Arn,
                traceHeader: TraceHeader? = nil) {
        self.input = input
        self.name = name
        self.stateMachineArn = stateMachineArn
        self.traceHeader = traceHeader
    }

    enum CodingKeys: String, CodingKey {
        case input
        case name
        case stateMachineArn
        case traceHeader
    }

    public func validate() throws {
        try input?.validateAsSensitiveData()
        try name?.validateAsName()
        try stateMachineArn.validateAsArn()
        try traceHeader?.validateAsTraceHeader()
    }
}

public struct StartExecutionOutput: Codable, Equatable, Sendable {
    public var executionArn: Arn
    public var startDate: Timestamp

    public init(executionArn: Arn,
                startDate: Timestamp) {
        self.executionArn = executionArn
        self.startDate = startDate
    }

    enum CodingKeys: String, CodingKey {
        case executionArn
        case startDate
    }

    public func validate() throws {
        try executionArn.validateAsArn()
    }
}

public struct StartSyncExecutionInput: Codable, Equatable, Sendable {
    public var input: SensitiveData?
    public var name: Name?
    public var stateMachineArn: Arn
    public var traceHeader: TraceHeader?

    public init(input: SensitiveData? = nil,
                name: Name? = nil,
                stateMachineArn: Arn,
                traceHeader: TraceHeader? = nil) {
        self.input = input
        self.name = name
        self.stateMachineArn = stateMachineArn
        self.traceHeader = traceHeader
    }

    enum CodingKeys: String, CodingKey {
        case input
        case name
        case stateMachineArn
        case traceHeader
    }

    public func validate() throws {
        try input?.validateAsSensitiveData()
        try name?.validateAsName()
        try stateMachineArn.validateAsArn()
        try traceHeader?.validateAsTraceHeader()
    }
}

public struct StartSyncExecutionOutput: Codable, Equatable, Sendable {
    public var billingDetails: BillingDetails?
    public var cause: SensitiveCause?
    public var error: SensitiveError?
    public var executionArn: Arn
    public var input: SensitiveData?
    public var inputDetails: CloudWatchEventsExecutionDataDetails?
    public var name: Name?
    public var output: SensitiveData?
    public var outputDetails: CloudWatchEventsExecutionDataDetails?
    public var startDate: Timestamp
    public var stateMachineArn: Arn?
    public var status: SyncExecutionStatus
    public var stopDate: Timestamp
    public var traceHeader: TraceHeader?

    public init(billingDetails: BillingDetails? = nil,
                cause: SensitiveCause? = nil,
                error: SensitiveError? = nil,
                executionArn: Arn,
                input: SensitiveData? = nil,
                inputDetails: CloudWatchEventsExecutionDataDetails? = nil,
                name: Name? = nil,
                output: SensitiveData? = nil,
                outputDetails: CloudWatchEventsExecutionDataDetails? = nil,
                startDate: Timestamp,
                stateMachineArn: Arn? = nil,
                status: SyncExecutionStatus,
                stopDate: Timestamp,
                traceHeader: TraceHeader? = nil) {
        self.billingDetails = billingDetails
        self.cause = cause
        self.error = error
        self.executionArn = executionArn
        self.input = input
        self.inputDetails = inputDetails
        self.name = name
        self.output = output
        self.outputDetails = outputDetails
        self.startDate = startDate
        self.stateMachineArn = stateMachineArn
        self.status = status
        self.stopDate = stopDate
        self.traceHeader = traceHeader
    }

    enum CodingKeys: String, CodingKey {
        case billingDetails
        case cause
        case error
        case executionArn
        case input
        case inputDetails
        case name
        case output
        case outputDetails
        case startDate
        case stateMachineArn
        case status
        case stopDate
        case traceHeader
    }

    public func validate() throws {
        try billingDetails?.validate()
        try cause?.validateAsSensitiveCause()
        try error?.validateAsSensitiveError()
        try executionArn.validateAsArn()
        try input?.validateAsSensitiveData()
        try inputDetails?.validate()
        try name?.validateAsName()
        try output?.validateAsSensitiveData()
        try outputDetails?.validate()
        try stateMachineArn?.validateAsArn()
        try traceHeader?.validateAsTraceHeader()
    }
}

public struct StateEnteredEventDetails: Codable, Equatable, Sendable {
    public var input: SensitiveData?
    public var inputDetails: HistoryEventExecutionDataDetails?
    public var name: Name

    public init(input: SensitiveData? = nil,
                inputDetails: HistoryEventExecutionDataDetails? = nil,
                name: Name) {
        self.input = input
        self.inputDetails = inputDetails
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case input
        case inputDetails
        case name
    }

    public func validate() throws {
        try input?.validateAsSensitiveData()
        try inputDetails?.validate()
        try name.validateAsName()
    }
}

public struct StateExitedEventDetails: Codable, Equatable, Sendable {
    public var name: Name
    public var output: SensitiveData?
    public var outputDetails: HistoryEventExecutionDataDetails?

    public init(name: Name,
                output: SensitiveData? = nil,
                outputDetails: HistoryEventExecutionDataDetails? = nil) {
        self.name = name
        self.output = output
        self.outputDetails = outputDetails
    }

    enum CodingKeys: String, CodingKey {
        case name
        case output
        case outputDetails
    }

    public func validate() throws {
        try name.validateAsName()
        try output?.validateAsSensitiveData()
        try outputDetails?.validate()
    }
}

public struct StateMachineAlreadyExists: Codable, Equatable, Sendable {
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

public struct StateMachineDeleting: Codable, Equatable, Sendable {
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

public struct StateMachineDoesNotExist: Codable, Equatable, Sendable {
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

public struct StateMachineLimitExceeded: Codable, Equatable, Sendable {
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

public struct StateMachineListItem: Codable, Equatable, Sendable {
    public var creationDate: Timestamp
    public var name: Name
    public var stateMachineArn: Arn
    public var type: StateMachineType

    public init(creationDate: Timestamp,
                name: Name,
                stateMachineArn: Arn,
                type: StateMachineType) {
        self.creationDate = creationDate
        self.name = name
        self.stateMachineArn = stateMachineArn
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case creationDate
        case name
        case stateMachineArn
        case type
    }

    public func validate() throws {
        try name.validateAsName()
        try stateMachineArn.validateAsArn()
    }
}

public struct StateMachineTypeNotSupported: Codable, Equatable, Sendable {
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

public struct StopExecutionInput: Codable, Equatable, Sendable {
    public var cause: SensitiveCause?
    public var error: SensitiveError?
    public var executionArn: Arn

    public init(cause: SensitiveCause? = nil,
                error: SensitiveError? = nil,
                executionArn: Arn) {
        self.cause = cause
        self.error = error
        self.executionArn = executionArn
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case error
        case executionArn
    }

    public func validate() throws {
        try cause?.validateAsSensitiveCause()
        try error?.validateAsSensitiveError()
        try executionArn.validateAsArn()
    }
}

public struct StopExecutionOutput: Codable, Equatable, Sendable {
    public var stopDate: Timestamp

    public init(stopDate: Timestamp) {
        self.stopDate = stopDate
    }

    enum CodingKeys: String, CodingKey {
        case stopDate
    }

    public func validate() throws {
    }
}

public struct Tag: Codable, Equatable, Sendable {
    public var key: TagKey?
    public var value: TagValue?

    public init(key: TagKey? = nil,
                value: TagValue? = nil) {
        self.key = key
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case key
        case value
    }

    public func validate() throws {
        try key?.validateAsTagKey()
        try value?.validateAsTagValue()
    }
}

public struct TagResourceInput: Codable, Equatable, Sendable {
    public var resourceArn: Arn
    public var tags: TagList

    public init(resourceArn: Arn,
                tags: TagList) {
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

public struct TagResourceOutput: Codable, Equatable, Sendable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct TaskDoesNotExist: Codable, Equatable, Sendable {
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

public struct TaskFailedEventDetails: Codable, Equatable, Sendable {
    public var cause: SensitiveCause?
    public var error: SensitiveError?
    public var resource: Name
    public var resourceType: Name

    public init(cause: SensitiveCause? = nil,
                error: SensitiveError? = nil,
                resource: Name,
                resourceType: Name) {
        self.cause = cause
        self.error = error
        self.resource = resource
        self.resourceType = resourceType
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case error
        case resource
        case resourceType
    }

    public func validate() throws {
        try cause?.validateAsSensitiveCause()
        try error?.validateAsSensitiveError()
        try resource.validateAsName()
        try resourceType.validateAsName()
    }
}

public struct TaskScheduledEventDetails: Codable, Equatable, Sendable {
    public var heartbeatInSeconds: TimeoutInSeconds?
    public var parameters: ConnectorParameters
    public var region: Name
    public var resource: Name
    public var resourceType: Name
    public var timeoutInSeconds: TimeoutInSeconds?

    public init(heartbeatInSeconds: TimeoutInSeconds? = nil,
                parameters: ConnectorParameters,
                region: Name,
                resource: Name,
                resourceType: Name,
                timeoutInSeconds: TimeoutInSeconds? = nil) {
        self.heartbeatInSeconds = heartbeatInSeconds
        self.parameters = parameters
        self.region = region
        self.resource = resource
        self.resourceType = resourceType
        self.timeoutInSeconds = timeoutInSeconds
    }

    enum CodingKeys: String, CodingKey {
        case heartbeatInSeconds
        case parameters
        case region
        case resource
        case resourceType
        case timeoutInSeconds
    }

    public func validate() throws {
        try parameters.validateAsConnectorParameters()
        try region.validateAsName()
        try resource.validateAsName()
        try resourceType.validateAsName()
    }
}

public struct TaskStartFailedEventDetails: Codable, Equatable, Sendable {
    public var cause: SensitiveCause?
    public var error: SensitiveError?
    public var resource: Name
    public var resourceType: Name

    public init(cause: SensitiveCause? = nil,
                error: SensitiveError? = nil,
                resource: Name,
                resourceType: Name) {
        self.cause = cause
        self.error = error
        self.resource = resource
        self.resourceType = resourceType
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case error
        case resource
        case resourceType
    }

    public func validate() throws {
        try cause?.validateAsSensitiveCause()
        try error?.validateAsSensitiveError()
        try resource.validateAsName()
        try resourceType.validateAsName()
    }
}

public struct TaskStartedEventDetails: Codable, Equatable, Sendable {
    public var resource: Name
    public var resourceType: Name

    public init(resource: Name,
                resourceType: Name) {
        self.resource = resource
        self.resourceType = resourceType
    }

    enum CodingKeys: String, CodingKey {
        case resource
        case resourceType
    }

    public func validate() throws {
        try resource.validateAsName()
        try resourceType.validateAsName()
    }
}

public struct TaskSubmitFailedEventDetails: Codable, Equatable, Sendable {
    public var cause: SensitiveCause?
    public var error: SensitiveError?
    public var resource: Name
    public var resourceType: Name

    public init(cause: SensitiveCause? = nil,
                error: SensitiveError? = nil,
                resource: Name,
                resourceType: Name) {
        self.cause = cause
        self.error = error
        self.resource = resource
        self.resourceType = resourceType
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case error
        case resource
        case resourceType
    }

    public func validate() throws {
        try cause?.validateAsSensitiveCause()
        try error?.validateAsSensitiveError()
        try resource.validateAsName()
        try resourceType.validateAsName()
    }
}

public struct TaskSubmittedEventDetails: Codable, Equatable, Sendable {
    public var output: SensitiveData?
    public var outputDetails: HistoryEventExecutionDataDetails?
    public var resource: Name
    public var resourceType: Name

    public init(output: SensitiveData? = nil,
                outputDetails: HistoryEventExecutionDataDetails? = nil,
                resource: Name,
                resourceType: Name) {
        self.output = output
        self.outputDetails = outputDetails
        self.resource = resource
        self.resourceType = resourceType
    }

    enum CodingKeys: String, CodingKey {
        case output
        case outputDetails
        case resource
        case resourceType
    }

    public func validate() throws {
        try output?.validateAsSensitiveData()
        try outputDetails?.validate()
        try resource.validateAsName()
        try resourceType.validateAsName()
    }
}

public struct TaskSucceededEventDetails: Codable, Equatable, Sendable {
    public var output: SensitiveData?
    public var outputDetails: HistoryEventExecutionDataDetails?
    public var resource: Name
    public var resourceType: Name

    public init(output: SensitiveData? = nil,
                outputDetails: HistoryEventExecutionDataDetails? = nil,
                resource: Name,
                resourceType: Name) {
        self.output = output
        self.outputDetails = outputDetails
        self.resource = resource
        self.resourceType = resourceType
    }

    enum CodingKeys: String, CodingKey {
        case output
        case outputDetails
        case resource
        case resourceType
    }

    public func validate() throws {
        try output?.validateAsSensitiveData()
        try outputDetails?.validate()
        try resource.validateAsName()
        try resourceType.validateAsName()
    }
}

public struct TaskTimedOut: Codable, Equatable, Sendable {
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

public struct TaskTimedOutEventDetails: Codable, Equatable, Sendable {
    public var cause: SensitiveCause?
    public var error: SensitiveError?
    public var resource: Name
    public var resourceType: Name

    public init(cause: SensitiveCause? = nil,
                error: SensitiveError? = nil,
                resource: Name,
                resourceType: Name) {
        self.cause = cause
        self.error = error
        self.resource = resource
        self.resourceType = resourceType
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case error
        case resource
        case resourceType
    }

    public func validate() throws {
        try cause?.validateAsSensitiveCause()
        try error?.validateAsSensitiveError()
        try resource.validateAsName()
        try resourceType.validateAsName()
    }
}

public struct TooManyTags: Codable, Equatable, Sendable {
    public var message: ErrorMessage?
    public var resourceName: Arn?

    public init(message: ErrorMessage? = nil,
                resourceName: Arn? = nil) {
        self.message = message
        self.resourceName = resourceName
    }

    enum CodingKeys: String, CodingKey {
        case message
        case resourceName
    }

    public func validate() throws {
        try resourceName?.validateAsArn()
    }
}

public struct TracingConfiguration: Codable, Equatable, Sendable {
    public var enabled: Enabled?

    public init(enabled: Enabled? = nil) {
        self.enabled = enabled
    }

    enum CodingKeys: String, CodingKey {
        case enabled
    }

    public func validate() throws {
    }
}

public struct UntagResourceInput: Codable, Equatable, Sendable {
    public var resourceArn: Arn
    public var tagKeys: TagKeyList

    public init(resourceArn: Arn,
                tagKeys: TagKeyList) {
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

public struct UntagResourceOutput: Codable, Equatable, Sendable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct UpdateStateMachineInput: Codable, Equatable, Sendable {
    public var definition: Definition?
    public var loggingConfiguration: LoggingConfiguration?
    public var roleArn: Arn?
    public var stateMachineArn: Arn
    public var tracingConfiguration: TracingConfiguration?

    public init(definition: Definition? = nil,
                loggingConfiguration: LoggingConfiguration? = nil,
                roleArn: Arn? = nil,
                stateMachineArn: Arn,
                tracingConfiguration: TracingConfiguration? = nil) {
        self.definition = definition
        self.loggingConfiguration = loggingConfiguration
        self.roleArn = roleArn
        self.stateMachineArn = stateMachineArn
        self.tracingConfiguration = tracingConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case definition
        case loggingConfiguration
        case roleArn
        case stateMachineArn
        case tracingConfiguration
    }

    public func validate() throws {
        try definition?.validateAsDefinition()
        try loggingConfiguration?.validate()
        try roleArn?.validateAsArn()
        try stateMachineArn.validateAsArn()
        try tracingConfiguration?.validate()
    }
}

public struct UpdateStateMachineOutput: Codable, Equatable, Sendable {
    public var updateDate: Timestamp

    public init(updateDate: Timestamp) {
        self.updateDate = updateDate
    }

    enum CodingKeys: String, CodingKey {
        case updateDate
    }

    public func validate() throws {
    }
}
