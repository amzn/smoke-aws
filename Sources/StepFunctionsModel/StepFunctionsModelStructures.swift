// Copyright 2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
// StepFunctionsModelStructures.swift
// StepFunctionsModel
//

import Foundation

public struct ActivityDoesNotExist: Codable, Equatable {
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

public struct ActivityFailedEventDetails: Codable, Equatable {
    public var cause: Cause?
    public var error: Error?

    public init(cause: Cause? = nil,
                error: Error? = nil) {
        self.cause = cause
        self.error = error
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case error
    }

    public func validate() throws {
        try cause?.validateAsCause()
        try error?.validateAsError()
    }
}

public struct ActivityLimitExceeded: Codable, Equatable {
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

public struct ActivityListItem: Codable, Equatable {
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

public struct ActivityScheduleFailedEventDetails: Codable, Equatable {
    public var cause: Cause?
    public var error: Error?

    public init(cause: Cause? = nil,
                error: Error? = nil) {
        self.cause = cause
        self.error = error
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case error
    }

    public func validate() throws {
        try cause?.validateAsCause()
        try error?.validateAsError()
    }
}

public struct ActivityScheduledEventDetails: Codable, Equatable {
    public var heartbeatInSeconds: TimeoutInSeconds?
    public var input: Data?
    public var resource: Arn
    public var timeoutInSeconds: TimeoutInSeconds?

    public init(heartbeatInSeconds: TimeoutInSeconds? = nil,
                input: Data? = nil,
                resource: Arn,
                timeoutInSeconds: TimeoutInSeconds? = nil) {
        self.heartbeatInSeconds = heartbeatInSeconds
        self.input = input
        self.resource = resource
        self.timeoutInSeconds = timeoutInSeconds
    }

    enum CodingKeys: String, CodingKey {
        case heartbeatInSeconds
        case input
        case resource
        case timeoutInSeconds
    }

    public func validate() throws {
        try input?.validateAsData()
        try resource.validateAsArn()
    }
}

public struct ActivityStartedEventDetails: Codable, Equatable {
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

public struct ActivitySucceededEventDetails: Codable, Equatable {
    public var output: Data?

    public init(output: Data? = nil) {
        self.output = output
    }

    enum CodingKeys: String, CodingKey {
        case output
    }

    public func validate() throws {
        try output?.validateAsData()
    }
}

public struct ActivityTimedOutEventDetails: Codable, Equatable {
    public var cause: Cause?
    public var error: Error?

    public init(cause: Cause? = nil,
                error: Error? = nil) {
        self.cause = cause
        self.error = error
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case error
    }

    public func validate() throws {
        try cause?.validateAsCause()
        try error?.validateAsError()
    }
}

public struct ActivityWorkerLimitExceeded: Codable, Equatable {
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

public struct CreateActivityInput: Codable, Equatable {
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

public struct CreateActivityOutput: Codable, Equatable {
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

public struct CreateStateMachineInput: Codable, Equatable {
    public var definition: Definition
    public var name: Name
    public var roleArn: Arn

    public init(definition: Definition,
                name: Name,
                roleArn: Arn) {
        self.definition = definition
        self.name = name
        self.roleArn = roleArn
    }

    enum CodingKeys: String, CodingKey {
        case definition
        case name
        case roleArn
    }

    public func validate() throws {
        try definition.validateAsDefinition()
        try name.validateAsName()
        try roleArn.validateAsArn()
    }
}

public struct CreateStateMachineOutput: Codable, Equatable {
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

public struct DeleteActivityInput: Codable, Equatable {
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

public struct DeleteActivityOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DeleteStateMachineInput: Codable, Equatable {
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

public struct DeleteStateMachineOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DescribeActivityInput: Codable, Equatable {
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

public struct DescribeActivityOutput: Codable, Equatable {
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

public struct DescribeExecutionInput: Codable, Equatable {
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

public struct DescribeExecutionOutput: Codable, Equatable {
    public var executionArn: Arn
    public var input: Data
    public var name: Name?
    public var output: Data?
    public var startDate: Timestamp
    public var stateMachineArn: Arn
    public var status: ExecutionStatus
    public var stopDate: Timestamp?

    public init(executionArn: Arn,
                input: Data,
                name: Name? = nil,
                output: Data? = nil,
                startDate: Timestamp,
                stateMachineArn: Arn,
                status: ExecutionStatus,
                stopDate: Timestamp? = nil) {
        self.executionArn = executionArn
        self.input = input
        self.name = name
        self.output = output
        self.startDate = startDate
        self.stateMachineArn = stateMachineArn
        self.status = status
        self.stopDate = stopDate
    }

    enum CodingKeys: String, CodingKey {
        case executionArn
        case input
        case name
        case output
        case startDate
        case stateMachineArn
        case status
        case stopDate
    }

    public func validate() throws {
        try executionArn.validateAsArn()
        try input.validateAsData()
        try name?.validateAsName()
        try output?.validateAsData()
        try stateMachineArn.validateAsArn()
    }
}

public struct DescribeStateMachineForExecutionInput: Codable, Equatable {
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

public struct DescribeStateMachineForExecutionOutput: Codable, Equatable {
    public var definition: Definition
    public var name: Name
    public var roleArn: Arn
    public var stateMachineArn: Arn
    public var updateDate: Timestamp

    public init(definition: Definition,
                name: Name,
                roleArn: Arn,
                stateMachineArn: Arn,
                updateDate: Timestamp) {
        self.definition = definition
        self.name = name
        self.roleArn = roleArn
        self.stateMachineArn = stateMachineArn
        self.updateDate = updateDate
    }

    enum CodingKeys: String, CodingKey {
        case definition
        case name
        case roleArn
        case stateMachineArn
        case updateDate
    }

    public func validate() throws {
        try definition.validateAsDefinition()
        try name.validateAsName()
        try roleArn.validateAsArn()
        try stateMachineArn.validateAsArn()
    }
}

public struct DescribeStateMachineInput: Codable, Equatable {
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

public struct DescribeStateMachineOutput: Codable, Equatable {
    public var creationDate: Timestamp
    public var definition: Definition
    public var name: Name
    public var roleArn: Arn
    public var stateMachineArn: Arn
    public var status: StateMachineStatus?

    public init(creationDate: Timestamp,
                definition: Definition,
                name: Name,
                roleArn: Arn,
                stateMachineArn: Arn,
                status: StateMachineStatus? = nil) {
        self.creationDate = creationDate
        self.definition = definition
        self.name = name
        self.roleArn = roleArn
        self.stateMachineArn = stateMachineArn
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case creationDate
        case definition
        case name
        case roleArn
        case stateMachineArn
        case status
    }

    public func validate() throws {
        try definition.validateAsDefinition()
        try name.validateAsName()
        try roleArn.validateAsArn()
        try stateMachineArn.validateAsArn()
    }
}

public struct ExecutionAbortedEventDetails: Codable, Equatable {
    public var cause: Cause?
    public var error: Error?

    public init(cause: Cause? = nil,
                error: Error? = nil) {
        self.cause = cause
        self.error = error
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case error
    }

    public func validate() throws {
        try cause?.validateAsCause()
        try error?.validateAsError()
    }
}

public struct ExecutionAlreadyExists: Codable, Equatable {
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

public struct ExecutionDoesNotExist: Codable, Equatable {
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

public struct ExecutionFailedEventDetails: Codable, Equatable {
    public var cause: Cause?
    public var error: Error?

    public init(cause: Cause? = nil,
                error: Error? = nil) {
        self.cause = cause
        self.error = error
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case error
    }

    public func validate() throws {
        try cause?.validateAsCause()
        try error?.validateAsError()
    }
}

public struct ExecutionLimitExceeded: Codable, Equatable {
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

public struct ExecutionListItem: Codable, Equatable {
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

public struct ExecutionStartedEventDetails: Codable, Equatable {
    public var input: Data?
    public var roleArn: Arn?

    public init(input: Data? = nil,
                roleArn: Arn? = nil) {
        self.input = input
        self.roleArn = roleArn
    }

    enum CodingKeys: String, CodingKey {
        case input
        case roleArn
    }

    public func validate() throws {
        try input?.validateAsData()
        try roleArn?.validateAsArn()
    }
}

public struct ExecutionSucceededEventDetails: Codable, Equatable {
    public var output: Data?

    public init(output: Data? = nil) {
        self.output = output
    }

    enum CodingKeys: String, CodingKey {
        case output
    }

    public func validate() throws {
        try output?.validateAsData()
    }
}

public struct ExecutionTimedOutEventDetails: Codable, Equatable {
    public var cause: Cause?
    public var error: Error?

    public init(cause: Cause? = nil,
                error: Error? = nil) {
        self.cause = cause
        self.error = error
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case error
    }

    public func validate() throws {
        try cause?.validateAsCause()
        try error?.validateAsError()
    }
}

public struct GetActivityTaskInput: Codable, Equatable {
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

public struct GetActivityTaskOutput: Codable, Equatable {
    public var input: Data?
    public var taskToken: TaskToken?

    public init(input: Data? = nil,
                taskToken: TaskToken? = nil) {
        self.input = input
        self.taskToken = taskToken
    }

    enum CodingKeys: String, CodingKey {
        case input
        case taskToken
    }

    public func validate() throws {
        try input?.validateAsData()
        try taskToken?.validateAsTaskToken()
    }
}

public struct GetExecutionHistoryInput: Codable, Equatable {
    public var executionArn: Arn
    public var maxResults: PageSize?
    public var nextToken: PageToken?
    public var reverseOrder: ReverseOrder?

    public init(executionArn: Arn,
                maxResults: PageSize? = nil,
                nextToken: PageToken? = nil,
                reverseOrder: ReverseOrder? = nil) {
        self.executionArn = executionArn
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.reverseOrder = reverseOrder
    }

    enum CodingKeys: String, CodingKey {
        case executionArn
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

public struct GetExecutionHistoryOutput: Codable, Equatable {
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

public struct HistoryEvent: Codable, Equatable {
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
    public var previousEventId: EventId?
    public var stateEnteredEventDetails: StateEnteredEventDetails?
    public var stateExitedEventDetails: StateExitedEventDetails?
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
                previousEventId: EventId? = nil,
                stateEnteredEventDetails: StateEnteredEventDetails? = nil,
                stateExitedEventDetails: StateExitedEventDetails? = nil,
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
        self.previousEventId = previousEventId
        self.stateEnteredEventDetails = stateEnteredEventDetails
        self.stateExitedEventDetails = stateExitedEventDetails
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
        case previousEventId
        case stateEnteredEventDetails
        case stateExitedEventDetails
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
        try stateEnteredEventDetails?.validate()
        try stateExitedEventDetails?.validate()
    }
}

public struct InvalidArn: Codable, Equatable {
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

public struct InvalidDefinition: Codable, Equatable {
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

public struct InvalidExecutionInput: Codable, Equatable {
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

public struct InvalidName: Codable, Equatable {
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

public struct InvalidOutput: Codable, Equatable {
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

public struct InvalidToken: Codable, Equatable {
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

public struct LambdaFunctionFailedEventDetails: Codable, Equatable {
    public var cause: Cause?
    public var error: Error?

    public init(cause: Cause? = nil,
                error: Error? = nil) {
        self.cause = cause
        self.error = error
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case error
    }

    public func validate() throws {
        try cause?.validateAsCause()
        try error?.validateAsError()
    }
}

public struct LambdaFunctionScheduleFailedEventDetails: Codable, Equatable {
    public var cause: Cause?
    public var error: Error?

    public init(cause: Cause? = nil,
                error: Error? = nil) {
        self.cause = cause
        self.error = error
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case error
    }

    public func validate() throws {
        try cause?.validateAsCause()
        try error?.validateAsError()
    }
}

public struct LambdaFunctionScheduledEventDetails: Codable, Equatable {
    public var input: Data?
    public var resource: Arn
    public var timeoutInSeconds: TimeoutInSeconds?

    public init(input: Data? = nil,
                resource: Arn,
                timeoutInSeconds: TimeoutInSeconds? = nil) {
        self.input = input
        self.resource = resource
        self.timeoutInSeconds = timeoutInSeconds
    }

    enum CodingKeys: String, CodingKey {
        case input
        case resource
        case timeoutInSeconds
    }

    public func validate() throws {
        try input?.validateAsData()
        try resource.validateAsArn()
    }
}

public struct LambdaFunctionStartFailedEventDetails: Codable, Equatable {
    public var cause: Cause?
    public var error: Error?

    public init(cause: Cause? = nil,
                error: Error? = nil) {
        self.cause = cause
        self.error = error
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case error
    }

    public func validate() throws {
        try cause?.validateAsCause()
        try error?.validateAsError()
    }
}

public struct LambdaFunctionSucceededEventDetails: Codable, Equatable {
    public var output: Data?

    public init(output: Data? = nil) {
        self.output = output
    }

    enum CodingKeys: String, CodingKey {
        case output
    }

    public func validate() throws {
        try output?.validateAsData()
    }
}

public struct LambdaFunctionTimedOutEventDetails: Codable, Equatable {
    public var cause: Cause?
    public var error: Error?

    public init(cause: Cause? = nil,
                error: Error? = nil) {
        self.cause = cause
        self.error = error
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case error
    }

    public func validate() throws {
        try cause?.validateAsCause()
        try error?.validateAsError()
    }
}

public struct ListActivitiesInput: Codable, Equatable {
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

public struct ListActivitiesOutput: Codable, Equatable {
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

public struct ListExecutionsInput: Codable, Equatable {
    public var maxResults: PageSize?
    public var nextToken: PageToken?
    public var stateMachineArn: Arn
    public var statusFilter: ExecutionStatus?

    public init(maxResults: PageSize? = nil,
                nextToken: PageToken? = nil,
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
        try nextToken?.validateAsPageToken()
        try stateMachineArn.validateAsArn()
    }
}

public struct ListExecutionsOutput: Codable, Equatable {
    public var executions: ExecutionList
    public var nextToken: PageToken?

    public init(executions: ExecutionList,
                nextToken: PageToken? = nil) {
        self.executions = executions
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case executions
        case nextToken
    }

    public func validate() throws {
        try nextToken?.validateAsPageToken()
    }
}

public struct ListStateMachinesInput: Codable, Equatable {
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

public struct ListStateMachinesOutput: Codable, Equatable {
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

public struct MissingRequiredParameter: Codable, Equatable {
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

public struct SendTaskFailureInput: Codable, Equatable {
    public var cause: Cause?
    public var error: Error?
    public var taskToken: TaskToken

    public init(cause: Cause? = nil,
                error: Error? = nil,
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
        try cause?.validateAsCause()
        try error?.validateAsError()
        try taskToken.validateAsTaskToken()
    }
}

public struct SendTaskFailureOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct SendTaskHeartbeatInput: Codable, Equatable {
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

public struct SendTaskHeartbeatOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct SendTaskSuccessInput: Codable, Equatable {
    public var output: Data
    public var taskToken: TaskToken

    public init(output: Data,
                taskToken: TaskToken) {
        self.output = output
        self.taskToken = taskToken
    }

    enum CodingKeys: String, CodingKey {
        case output
        case taskToken
    }

    public func validate() throws {
        try output.validateAsData()
        try taskToken.validateAsTaskToken()
    }
}

public struct SendTaskSuccessOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct StartExecutionInput: Codable, Equatable {
    public var input: Data?
    public var name: Name?
    public var stateMachineArn: Arn

    public init(input: Data? = nil,
                name: Name? = nil,
                stateMachineArn: Arn) {
        self.input = input
        self.name = name
        self.stateMachineArn = stateMachineArn
    }

    enum CodingKeys: String, CodingKey {
        case input
        case name
        case stateMachineArn
    }

    public func validate() throws {
        try input?.validateAsData()
        try name?.validateAsName()
        try stateMachineArn.validateAsArn()
    }
}

public struct StartExecutionOutput: Codable, Equatable {
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

public struct StateEnteredEventDetails: Codable, Equatable {
    public var input: Data?
    public var name: Name

    public init(input: Data? = nil,
                name: Name) {
        self.input = input
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case input
        case name
    }

    public func validate() throws {
        try input?.validateAsData()
        try name.validateAsName()
    }
}

public struct StateExitedEventDetails: Codable, Equatable {
    public var name: Name
    public var output: Data?

    public init(name: Name,
                output: Data? = nil) {
        self.name = name
        self.output = output
    }

    enum CodingKeys: String, CodingKey {
        case name
        case output
    }

    public func validate() throws {
        try name.validateAsName()
        try output?.validateAsData()
    }
}

public struct StateMachineAlreadyExists: Codable, Equatable {
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

public struct StateMachineDeleting: Codable, Equatable {
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

public struct StateMachineDoesNotExist: Codable, Equatable {
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

public struct StateMachineLimitExceeded: Codable, Equatable {
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

public struct StateMachineListItem: Codable, Equatable {
    public var creationDate: Timestamp
    public var name: Name
    public var stateMachineArn: Arn

    public init(creationDate: Timestamp,
                name: Name,
                stateMachineArn: Arn) {
        self.creationDate = creationDate
        self.name = name
        self.stateMachineArn = stateMachineArn
    }

    enum CodingKeys: String, CodingKey {
        case creationDate
        case name
        case stateMachineArn
    }

    public func validate() throws {
        try name.validateAsName()
        try stateMachineArn.validateAsArn()
    }
}

public struct StopExecutionInput: Codable, Equatable {
    public var cause: Cause?
    public var error: Error?
    public var executionArn: Arn

    public init(cause: Cause? = nil,
                error: Error? = nil,
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
        try cause?.validateAsCause()
        try error?.validateAsError()
        try executionArn.validateAsArn()
    }
}

public struct StopExecutionOutput: Codable, Equatable {
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

public struct TaskDoesNotExist: Codable, Equatable {
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

public struct TaskTimedOut: Codable, Equatable {
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

public struct UpdateStateMachineInput: Codable, Equatable {
    public var definition: Definition?
    public var roleArn: Arn?
    public var stateMachineArn: Arn

    public init(definition: Definition? = nil,
                roleArn: Arn? = nil,
                stateMachineArn: Arn) {
        self.definition = definition
        self.roleArn = roleArn
        self.stateMachineArn = stateMachineArn
    }

    enum CodingKeys: String, CodingKey {
        case definition
        case roleArn
        case stateMachineArn
    }

    public func validate() throws {
        try definition?.validateAsDefinition()
        try roleArn?.validateAsArn()
        try stateMachineArn.validateAsArn()
    }
}

public struct UpdateStateMachineOutput: Codable, Equatable {
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
