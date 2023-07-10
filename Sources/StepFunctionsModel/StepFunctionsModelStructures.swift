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

public struct ActivityScheduledEventDetails: Codable, Equatable {
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

public struct ActivityTimedOutEventDetails: Codable, Equatable {
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

public struct BillingDetails: Codable, Equatable {
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

public struct CloudWatchEventsExecutionDataDetails: Codable, Equatable {
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

public struct CloudWatchLogsLogGroup: Codable, Equatable {
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

public struct ConflictException: Codable, Equatable {
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

public struct CreateStateMachineAliasInput: Codable, Equatable {
    public var description: AliasDescription?
    public var name: CharacterRestrictedName
    public var routingConfiguration: RoutingConfigurationList

    public init(description: AliasDescription? = nil,
                name: CharacterRestrictedName,
                routingConfiguration: RoutingConfigurationList) {
        self.description = description
        self.name = name
        self.routingConfiguration = routingConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case description
        case name
        case routingConfiguration
    }

    public func validate() throws {
        try description?.validateAsAliasDescription()
        try name.validateAsCharacterRestrictedName()
        try routingConfiguration.validateAsRoutingConfigurationList()
    }
}

public struct CreateStateMachineAliasOutput: Codable, Equatable {
    public var creationDate: Timestamp
    public var stateMachineAliasArn: Arn

    public init(creationDate: Timestamp,
                stateMachineAliasArn: Arn) {
        self.creationDate = creationDate
        self.stateMachineAliasArn = stateMachineAliasArn
    }

    enum CodingKeys: String, CodingKey {
        case creationDate
        case stateMachineAliasArn
    }

    public func validate() throws {
        try stateMachineAliasArn.validateAsArn()
    }
}

public struct CreateStateMachineInput: Codable, Equatable {
    public var definition: Definition
    public var loggingConfiguration: LoggingConfiguration?
    public var name: Name
    public var publish: Publish?
    public var roleArn: Arn
    public var tags: TagList?
    public var tracingConfiguration: TracingConfiguration?
    public var type: StateMachineType?
    public var versionDescription: VersionDescription?

    public init(definition: Definition,
                loggingConfiguration: LoggingConfiguration? = nil,
                name: Name,
                publish: Publish? = nil,
                roleArn: Arn,
                tags: TagList? = nil,
                tracingConfiguration: TracingConfiguration? = nil,
                type: StateMachineType? = nil,
                versionDescription: VersionDescription? = nil) {
        self.definition = definition
        self.loggingConfiguration = loggingConfiguration
        self.name = name
        self.publish = publish
        self.roleArn = roleArn
        self.tags = tags
        self.tracingConfiguration = tracingConfiguration
        self.type = type
        self.versionDescription = versionDescription
    }

    enum CodingKeys: String, CodingKey {
        case definition
        case loggingConfiguration
        case name
        case publish
        case roleArn
        case tags
        case tracingConfiguration
        case type
        case versionDescription
    }

    public func validate() throws {
        try definition.validateAsDefinition()
        try loggingConfiguration?.validate()
        try name.validateAsName()
        try roleArn.validateAsArn()
        try tracingConfiguration?.validate()
        try versionDescription?.validateAsVersionDescription()
    }
}

public struct CreateStateMachineOutput: Codable, Equatable {
    public var creationDate: Timestamp
    public var stateMachineArn: Arn
    public var stateMachineVersionArn: Arn?

    public init(creationDate: Timestamp,
                stateMachineArn: Arn,
                stateMachineVersionArn: Arn? = nil) {
        self.creationDate = creationDate
        self.stateMachineArn = stateMachineArn
        self.stateMachineVersionArn = stateMachineVersionArn
    }

    enum CodingKeys: String, CodingKey {
        case creationDate
        case stateMachineArn
        case stateMachineVersionArn
    }

    public func validate() throws {
        try stateMachineArn.validateAsArn()
        try stateMachineVersionArn?.validateAsArn()
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

public struct DeleteStateMachineAliasInput: Codable, Equatable {
    public var stateMachineAliasArn: Arn

    public init(stateMachineAliasArn: Arn) {
        self.stateMachineAliasArn = stateMachineAliasArn
    }

    enum CodingKeys: String, CodingKey {
        case stateMachineAliasArn
    }

    public func validate() throws {
        try stateMachineAliasArn.validateAsArn()
    }
}

public struct DeleteStateMachineAliasOutput: Codable, Equatable {

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

public struct DeleteStateMachineVersionInput: Codable, Equatable {
    public var stateMachineVersionArn: LongArn

    public init(stateMachineVersionArn: LongArn) {
        self.stateMachineVersionArn = stateMachineVersionArn
    }

    enum CodingKeys: String, CodingKey {
        case stateMachineVersionArn
    }

    public func validate() throws {
        try stateMachineVersionArn.validateAsLongArn()
    }
}

public struct DeleteStateMachineVersionOutput: Codable, Equatable {

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
    public var cause: SensitiveCause?
    public var error: SensitiveError?
    public var executionArn: Arn
    public var input: SensitiveData?
    public var inputDetails: CloudWatchEventsExecutionDataDetails?
    public var mapRunArn: LongArn?
    public var name: Name?
    public var output: SensitiveData?
    public var outputDetails: CloudWatchEventsExecutionDataDetails?
    public var startDate: Timestamp
    public var stateMachineAliasArn: Arn?
    public var stateMachineArn: Arn
    public var stateMachineVersionArn: Arn?
    public var status: ExecutionStatus
    public var stopDate: Timestamp?
    public var traceHeader: TraceHeader?

    public init(cause: SensitiveCause? = nil,
                error: SensitiveError? = nil,
                executionArn: Arn,
                input: SensitiveData? = nil,
                inputDetails: CloudWatchEventsExecutionDataDetails? = nil,
                mapRunArn: LongArn? = nil,
                name: Name? = nil,
                output: SensitiveData? = nil,
                outputDetails: CloudWatchEventsExecutionDataDetails? = nil,
                startDate: Timestamp,
                stateMachineAliasArn: Arn? = nil,
                stateMachineArn: Arn,
                stateMachineVersionArn: Arn? = nil,
                status: ExecutionStatus,
                stopDate: Timestamp? = nil,
                traceHeader: TraceHeader? = nil) {
        self.cause = cause
        self.error = error
        self.executionArn = executionArn
        self.input = input
        self.inputDetails = inputDetails
        self.mapRunArn = mapRunArn
        self.name = name
        self.output = output
        self.outputDetails = outputDetails
        self.startDate = startDate
        self.stateMachineAliasArn = stateMachineAliasArn
        self.stateMachineArn = stateMachineArn
        self.stateMachineVersionArn = stateMachineVersionArn
        self.status = status
        self.stopDate = stopDate
        self.traceHeader = traceHeader
    }

    enum CodingKeys: String, CodingKey {
        case cause
        case error
        case executionArn
        case input
        case inputDetails
        case mapRunArn
        case name
        case output
        case outputDetails
        case startDate
        case stateMachineAliasArn
        case stateMachineArn
        case stateMachineVersionArn
        case status
        case stopDate
        case traceHeader
    }

    public func validate() throws {
        try cause?.validateAsSensitiveCause()
        try error?.validateAsSensitiveError()
        try executionArn.validateAsArn()
        try input?.validateAsSensitiveData()
        try inputDetails?.validate()
        try mapRunArn?.validateAsLongArn()
        try name?.validateAsName()
        try output?.validateAsSensitiveData()
        try outputDetails?.validate()
        try stateMachineAliasArn?.validateAsArn()
        try stateMachineArn.validateAsArn()
        try stateMachineVersionArn?.validateAsArn()
        try traceHeader?.validateAsTraceHeader()
    }
}

public struct DescribeMapRunInput: Codable, Equatable {
    public var mapRunArn: LongArn

    public init(mapRunArn: LongArn) {
        self.mapRunArn = mapRunArn
    }

    enum CodingKeys: String, CodingKey {
        case mapRunArn
    }

    public func validate() throws {
        try mapRunArn.validateAsLongArn()
    }
}

public struct DescribeMapRunOutput: Codable, Equatable {
    public var executionArn: Arn
    public var executionCounts: MapRunExecutionCounts
    public var itemCounts: MapRunItemCounts
    public var mapRunArn: LongArn
    public var maxConcurrency: MaxConcurrency
    public var startDate: Timestamp
    public var status: MapRunStatus
    public var stopDate: Timestamp?
    public var toleratedFailureCount: ToleratedFailureCount
    public var toleratedFailurePercentage: ToleratedFailurePercentage

    public init(executionArn: Arn,
                executionCounts: MapRunExecutionCounts,
                itemCounts: MapRunItemCounts,
                mapRunArn: LongArn,
                maxConcurrency: MaxConcurrency,
                startDate: Timestamp,
                status: MapRunStatus,
                stopDate: Timestamp? = nil,
                toleratedFailureCount: ToleratedFailureCount,
                toleratedFailurePercentage: ToleratedFailurePercentage) {
        self.executionArn = executionArn
        self.executionCounts = executionCounts
        self.itemCounts = itemCounts
        self.mapRunArn = mapRunArn
        self.maxConcurrency = maxConcurrency
        self.startDate = startDate
        self.status = status
        self.stopDate = stopDate
        self.toleratedFailureCount = toleratedFailureCount
        self.toleratedFailurePercentage = toleratedFailurePercentage
    }

    enum CodingKeys: String, CodingKey {
        case executionArn
        case executionCounts
        case itemCounts
        case mapRunArn
        case maxConcurrency
        case startDate
        case status
        case stopDate
        case toleratedFailureCount
        case toleratedFailurePercentage
    }

    public func validate() throws {
        try executionArn.validateAsArn()
        try executionCounts.validate()
        try itemCounts.validate()
        try mapRunArn.validateAsLongArn()
        try maxConcurrency.validateAsMaxConcurrency()
        try toleratedFailureCount.validateAsToleratedFailureCount()
        try toleratedFailurePercentage.validateAsToleratedFailurePercentage()
    }
}

public struct DescribeStateMachineAliasInput: Codable, Equatable {
    public var stateMachineAliasArn: Arn

    public init(stateMachineAliasArn: Arn) {
        self.stateMachineAliasArn = stateMachineAliasArn
    }

    enum CodingKeys: String, CodingKey {
        case stateMachineAliasArn
    }

    public func validate() throws {
        try stateMachineAliasArn.validateAsArn()
    }
}

public struct DescribeStateMachineAliasOutput: Codable, Equatable {
    public var creationDate: Timestamp?
    public var description: AliasDescription?
    public var name: Name?
    public var routingConfiguration: RoutingConfigurationList?
    public var stateMachineAliasArn: Arn?
    public var updateDate: Timestamp?

    public init(creationDate: Timestamp? = nil,
                description: AliasDescription? = nil,
                name: Name? = nil,
                routingConfiguration: RoutingConfigurationList? = nil,
                stateMachineAliasArn: Arn? = nil,
                updateDate: Timestamp? = nil) {
        self.creationDate = creationDate
        self.description = description
        self.name = name
        self.routingConfiguration = routingConfiguration
        self.stateMachineAliasArn = stateMachineAliasArn
        self.updateDate = updateDate
    }

    enum CodingKeys: String, CodingKey {
        case creationDate
        case description
        case name
        case routingConfiguration
        case stateMachineAliasArn
        case updateDate
    }

    public func validate() throws {
        try description?.validateAsAliasDescription()
        try name?.validateAsName()
        try routingConfiguration?.validateAsRoutingConfigurationList()
        try stateMachineAliasArn?.validateAsArn()
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
    public var label: MapRunLabel?
    public var loggingConfiguration: LoggingConfiguration?
    public var mapRunArn: LongArn?
    public var name: Name
    public var revisionId: RevisionId?
    public var roleArn: Arn
    public var stateMachineArn: Arn
    public var tracingConfiguration: TracingConfiguration?
    public var updateDate: Timestamp

    public init(definition: Definition,
                label: MapRunLabel? = nil,
                loggingConfiguration: LoggingConfiguration? = nil,
                mapRunArn: LongArn? = nil,
                name: Name,
                revisionId: RevisionId? = nil,
                roleArn: Arn,
                stateMachineArn: Arn,
                tracingConfiguration: TracingConfiguration? = nil,
                updateDate: Timestamp) {
        self.definition = definition
        self.label = label
        self.loggingConfiguration = loggingConfiguration
        self.mapRunArn = mapRunArn
        self.name = name
        self.revisionId = revisionId
        self.roleArn = roleArn
        self.stateMachineArn = stateMachineArn
        self.tracingConfiguration = tracingConfiguration
        self.updateDate = updateDate
    }

    enum CodingKeys: String, CodingKey {
        case definition
        case label
        case loggingConfiguration
        case mapRunArn
        case name
        case revisionId
        case roleArn
        case stateMachineArn
        case tracingConfiguration
        case updateDate
    }

    public func validate() throws {
        try definition.validateAsDefinition()
        try loggingConfiguration?.validate()
        try mapRunArn?.validateAsLongArn()
        try name.validateAsName()
        try roleArn.validateAsArn()
        try stateMachineArn.validateAsArn()
        try tracingConfiguration?.validate()
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
    public var description: VersionDescription?
    public var label: MapRunLabel?
    public var loggingConfiguration: LoggingConfiguration?
    public var name: Name
    public var revisionId: RevisionId?
    public var roleArn: Arn
    public var stateMachineArn: Arn
    public var status: StateMachineStatus?
    public var tracingConfiguration: TracingConfiguration?
    public var type: StateMachineType

    public init(creationDate: Timestamp,
                definition: Definition,
                description: VersionDescription? = nil,
                label: MapRunLabel? = nil,
                loggingConfiguration: LoggingConfiguration? = nil,
                name: Name,
                revisionId: RevisionId? = nil,
                roleArn: Arn,
                stateMachineArn: Arn,
                status: StateMachineStatus? = nil,
                tracingConfiguration: TracingConfiguration? = nil,
                type: StateMachineType) {
        self.creationDate = creationDate
        self.definition = definition
        self.description = description
        self.label = label
        self.loggingConfiguration = loggingConfiguration
        self.name = name
        self.revisionId = revisionId
        self.roleArn = roleArn
        self.stateMachineArn = stateMachineArn
        self.status = status
        self.tracingConfiguration = tracingConfiguration
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case creationDate
        case definition
        case description
        case label
        case loggingConfiguration
        case name
        case revisionId
        case roleArn
        case stateMachineArn
        case status
        case tracingConfiguration
        case type
    }

    public func validate() throws {
        try definition.validateAsDefinition()
        try description?.validateAsVersionDescription()
        try loggingConfiguration?.validate()
        try name.validateAsName()
        try roleArn.validateAsArn()
        try stateMachineArn.validateAsArn()
        try tracingConfiguration?.validate()
    }
}

public struct ExecutionAbortedEventDetails: Codable, Equatable {
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
    public var itemCount: UnsignedInteger?
    public var mapRunArn: LongArn?
    public var name: Name
    public var startDate: Timestamp
    public var stateMachineAliasArn: Arn?
    public var stateMachineArn: Arn
    public var stateMachineVersionArn: Arn?
    public var status: ExecutionStatus
    public var stopDate: Timestamp?

    public init(executionArn: Arn,
                itemCount: UnsignedInteger? = nil,
                mapRunArn: LongArn? = nil,
                name: Name,
                startDate: Timestamp,
                stateMachineAliasArn: Arn? = nil,
                stateMachineArn: Arn,
                stateMachineVersionArn: Arn? = nil,
                status: ExecutionStatus,
                stopDate: Timestamp? = nil) {
        self.executionArn = executionArn
        self.itemCount = itemCount
        self.mapRunArn = mapRunArn
        self.name = name
        self.startDate = startDate
        self.stateMachineAliasArn = stateMachineAliasArn
        self.stateMachineArn = stateMachineArn
        self.stateMachineVersionArn = stateMachineVersionArn
        self.status = status
        self.stopDate = stopDate
    }

    enum CodingKeys: String, CodingKey {
        case executionArn
        case itemCount
        case mapRunArn
        case name
        case startDate
        case stateMachineAliasArn
        case stateMachineArn
        case stateMachineVersionArn
        case status
        case stopDate
    }

    public func validate() throws {
        try executionArn.validateAsArn()
        try itemCount?.validateAsUnsignedInteger()
        try mapRunArn?.validateAsLongArn()
        try name.validateAsName()
        try stateMachineAliasArn?.validateAsArn()
        try stateMachineArn.validateAsArn()
        try stateMachineVersionArn?.validateAsArn()
    }
}

public struct ExecutionStartedEventDetails: Codable, Equatable {
    public var input: SensitiveData?
    public var inputDetails: HistoryEventExecutionDataDetails?
    public var roleArn: Arn?
    public var stateMachineAliasArn: Arn?
    public var stateMachineVersionArn: Arn?

    public init(input: SensitiveData? = nil,
                inputDetails: HistoryEventExecutionDataDetails? = nil,
                roleArn: Arn? = nil,
                stateMachineAliasArn: Arn? = nil,
                stateMachineVersionArn: Arn? = nil) {
        self.input = input
        self.inputDetails = inputDetails
        self.roleArn = roleArn
        self.stateMachineAliasArn = stateMachineAliasArn
        self.stateMachineVersionArn = stateMachineVersionArn
    }

    enum CodingKeys: String, CodingKey {
        case input
        case inputDetails
        case roleArn
        case stateMachineAliasArn
        case stateMachineVersionArn
    }

    public func validate() throws {
        try input?.validateAsSensitiveData()
        try inputDetails?.validate()
        try roleArn?.validateAsArn()
        try stateMachineAliasArn?.validateAsArn()
        try stateMachineVersionArn?.validateAsArn()
    }
}

public struct ExecutionSucceededEventDetails: Codable, Equatable {
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

public struct ExecutionTimedOutEventDetails: Codable, Equatable {
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

public struct GetExecutionHistoryInput: Codable, Equatable {
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
    public var mapIterationAbortedEventDetails: MapIterationEventDetails?
    public var mapIterationFailedEventDetails: MapIterationEventDetails?
    public var mapIterationStartedEventDetails: MapIterationEventDetails?
    public var mapIterationSucceededEventDetails: MapIterationEventDetails?
    public var mapRunFailedEventDetails: MapRunFailedEventDetails?
    public var mapRunStartedEventDetails: MapRunStartedEventDetails?
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
                mapRunFailedEventDetails: MapRunFailedEventDetails? = nil,
                mapRunStartedEventDetails: MapRunStartedEventDetails? = nil,
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
        self.mapRunFailedEventDetails = mapRunFailedEventDetails
        self.mapRunStartedEventDetails = mapRunStartedEventDetails
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
        case mapRunFailedEventDetails
        case mapRunStartedEventDetails
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
        try mapRunFailedEventDetails?.validate()
        try mapRunStartedEventDetails?.validate()
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

public struct HistoryEventExecutionDataDetails: Codable, Equatable {
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

public struct InvalidLoggingConfiguration: Codable, Equatable {
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

public struct InvalidTracingConfiguration: Codable, Equatable {
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

public struct LambdaFunctionScheduleFailedEventDetails: Codable, Equatable {
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

public struct LambdaFunctionScheduledEventDetails: Codable, Equatable {
    public var input: SensitiveData?
    public var inputDetails: HistoryEventExecutionDataDetails?
    public var resource: Arn
    public var taskCredentials: TaskCredentials?
    public var timeoutInSeconds: TimeoutInSeconds?

    public init(input: SensitiveData? = nil,
                inputDetails: HistoryEventExecutionDataDetails? = nil,
                resource: Arn,
                taskCredentials: TaskCredentials? = nil,
                timeoutInSeconds: TimeoutInSeconds? = nil) {
        self.input = input
        self.inputDetails = inputDetails
        self.resource = resource
        self.taskCredentials = taskCredentials
        self.timeoutInSeconds = timeoutInSeconds
    }

    enum CodingKeys: String, CodingKey {
        case input
        case inputDetails
        case resource
        case taskCredentials
        case timeoutInSeconds
    }

    public func validate() throws {
        try input?.validateAsSensitiveData()
        try inputDetails?.validate()
        try resource.validateAsArn()
        try taskCredentials?.validate()
    }
}

public struct LambdaFunctionStartFailedEventDetails: Codable, Equatable {
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

public struct LambdaFunctionSucceededEventDetails: Codable, Equatable {
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

public struct LambdaFunctionTimedOutEventDetails: Codable, Equatable {
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
    public var mapRunArn: LongArn?
    public var maxResults: PageSize?
    public var nextToken: ListExecutionsPageToken?
    public var stateMachineArn: Arn?
    public var statusFilter: ExecutionStatus?

    public init(mapRunArn: LongArn? = nil,
                maxResults: PageSize? = nil,
                nextToken: ListExecutionsPageToken? = nil,
                stateMachineArn: Arn? = nil,
                statusFilter: ExecutionStatus? = nil) {
        self.mapRunArn = mapRunArn
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.stateMachineArn = stateMachineArn
        self.statusFilter = statusFilter
    }

    enum CodingKeys: String, CodingKey {
        case mapRunArn
        case maxResults
        case nextToken
        case stateMachineArn
        case statusFilter
    }

    public func validate() throws {
        try mapRunArn?.validateAsLongArn()
        try maxResults?.validateAsPageSize()
        try nextToken?.validateAsListExecutionsPageToken()
        try stateMachineArn?.validateAsArn()
    }
}

public struct ListExecutionsOutput: Codable, Equatable {
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

public struct ListMapRunsInput: Codable, Equatable {
    public var executionArn: Arn
    public var maxResults: PageSize?
    public var nextToken: PageToken?

    public init(executionArn: Arn,
                maxResults: PageSize? = nil,
                nextToken: PageToken? = nil) {
        self.executionArn = executionArn
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case executionArn
        case maxResults
        case nextToken
    }

    public func validate() throws {
        try executionArn.validateAsArn()
        try maxResults?.validateAsPageSize()
        try nextToken?.validateAsPageToken()
    }
}

public struct ListMapRunsOutput: Codable, Equatable {
    public var mapRuns: MapRunList
    public var nextToken: PageToken?

    public init(mapRuns: MapRunList,
                nextToken: PageToken? = nil) {
        self.mapRuns = mapRuns
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case mapRuns
        case nextToken
    }

    public func validate() throws {
        try nextToken?.validateAsPageToken()
    }
}

public struct ListStateMachineAliasesInput: Codable, Equatable {
    public var maxResults: PageSize?
    public var nextToken: PageToken?
    public var stateMachineArn: Arn

    public init(maxResults: PageSize? = nil,
                nextToken: PageToken? = nil,
                stateMachineArn: Arn) {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.stateMachineArn = stateMachineArn
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
        case stateMachineArn
    }

    public func validate() throws {
        try maxResults?.validateAsPageSize()
        try nextToken?.validateAsPageToken()
        try stateMachineArn.validateAsArn()
    }
}

public struct ListStateMachineAliasesOutput: Codable, Equatable {
    public var nextToken: PageToken?
    public var stateMachineAliases: StateMachineAliasList

    public init(nextToken: PageToken? = nil,
                stateMachineAliases: StateMachineAliasList) {
        self.nextToken = nextToken
        self.stateMachineAliases = stateMachineAliases
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case stateMachineAliases
    }

    public func validate() throws {
        try nextToken?.validateAsPageToken()
    }
}

public struct ListStateMachineVersionsInput: Codable, Equatable {
    public var maxResults: PageSize?
    public var nextToken: PageToken?
    public var stateMachineArn: Arn

    public init(maxResults: PageSize? = nil,
                nextToken: PageToken? = nil,
                stateMachineArn: Arn) {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.stateMachineArn = stateMachineArn
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
        case stateMachineArn
    }

    public func validate() throws {
        try maxResults?.validateAsPageSize()
        try nextToken?.validateAsPageToken()
        try stateMachineArn.validateAsArn()
    }
}

public struct ListStateMachineVersionsOutput: Codable, Equatable {
    public var nextToken: PageToken?
    public var stateMachineVersions: StateMachineVersionList

    public init(nextToken: PageToken? = nil,
                stateMachineVersions: StateMachineVersionList) {
        self.nextToken = nextToken
        self.stateMachineVersions = stateMachineVersions
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case stateMachineVersions
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

public struct LogDestination: Codable, Equatable {
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

public struct LoggingConfiguration: Codable, Equatable {
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

public struct MapIterationEventDetails: Codable, Equatable {
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

public struct MapRunExecutionCounts: Codable, Equatable {
    public var aborted: UnsignedLong
    public var failed: UnsignedLong
    public var pending: UnsignedLong
    public var resultsWritten: UnsignedLong
    public var running: UnsignedLong
    public var succeeded: UnsignedLong
    public var timedOut: UnsignedLong
    public var total: UnsignedLong

    public init(aborted: UnsignedLong,
                failed: UnsignedLong,
                pending: UnsignedLong,
                resultsWritten: UnsignedLong,
                running: UnsignedLong,
                succeeded: UnsignedLong,
                timedOut: UnsignedLong,
                total: UnsignedLong) {
        self.aborted = aborted
        self.failed = failed
        self.pending = pending
        self.resultsWritten = resultsWritten
        self.running = running
        self.succeeded = succeeded
        self.timedOut = timedOut
        self.total = total
    }

    enum CodingKeys: String, CodingKey {
        case aborted
        case failed
        case pending
        case resultsWritten
        case running
        case succeeded
        case timedOut
        case total
    }

    public func validate() throws {
        try aborted.validateAsUnsignedLong()
        try failed.validateAsUnsignedLong()
        try pending.validateAsUnsignedLong()
        try resultsWritten.validateAsUnsignedLong()
        try running.validateAsUnsignedLong()
        try succeeded.validateAsUnsignedLong()
        try timedOut.validateAsUnsignedLong()
        try total.validateAsUnsignedLong()
    }
}

public struct MapRunFailedEventDetails: Codable, Equatable {
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

public struct MapRunItemCounts: Codable, Equatable {
    public var aborted: UnsignedLong
    public var failed: UnsignedLong
    public var pending: UnsignedLong
    public var resultsWritten: UnsignedLong
    public var running: UnsignedLong
    public var succeeded: UnsignedLong
    public var timedOut: UnsignedLong
    public var total: UnsignedLong

    public init(aborted: UnsignedLong,
                failed: UnsignedLong,
                pending: UnsignedLong,
                resultsWritten: UnsignedLong,
                running: UnsignedLong,
                succeeded: UnsignedLong,
                timedOut: UnsignedLong,
                total: UnsignedLong) {
        self.aborted = aborted
        self.failed = failed
        self.pending = pending
        self.resultsWritten = resultsWritten
        self.running = running
        self.succeeded = succeeded
        self.timedOut = timedOut
        self.total = total
    }

    enum CodingKeys: String, CodingKey {
        case aborted
        case failed
        case pending
        case resultsWritten
        case running
        case succeeded
        case timedOut
        case total
    }

    public func validate() throws {
        try aborted.validateAsUnsignedLong()
        try failed.validateAsUnsignedLong()
        try pending.validateAsUnsignedLong()
        try resultsWritten.validateAsUnsignedLong()
        try running.validateAsUnsignedLong()
        try succeeded.validateAsUnsignedLong()
        try timedOut.validateAsUnsignedLong()
        try total.validateAsUnsignedLong()
    }
}

public struct MapRunListItem: Codable, Equatable {
    public var executionArn: Arn
    public var mapRunArn: LongArn
    public var startDate: Timestamp
    public var stateMachineArn: Arn
    public var stopDate: Timestamp?

    public init(executionArn: Arn,
                mapRunArn: LongArn,
                startDate: Timestamp,
                stateMachineArn: Arn,
                stopDate: Timestamp? = nil) {
        self.executionArn = executionArn
        self.mapRunArn = mapRunArn
        self.startDate = startDate
        self.stateMachineArn = stateMachineArn
        self.stopDate = stopDate
    }

    enum CodingKeys: String, CodingKey {
        case executionArn
        case mapRunArn
        case startDate
        case stateMachineArn
        case stopDate
    }

    public func validate() throws {
        try executionArn.validateAsArn()
        try mapRunArn.validateAsLongArn()
        try stateMachineArn.validateAsArn()
    }
}

public struct MapRunStartedEventDetails: Codable, Equatable {
    public var mapRunArn: LongArn?

    public init(mapRunArn: LongArn? = nil) {
        self.mapRunArn = mapRunArn
    }

    enum CodingKeys: String, CodingKey {
        case mapRunArn
    }

    public func validate() throws {
        try mapRunArn?.validateAsLongArn()
    }
}

public struct MapStateStartedEventDetails: Codable, Equatable {
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

public struct PublishStateMachineVersionInput: Codable, Equatable {
    public var description: VersionDescription?
    public var revisionId: RevisionId?
    public var stateMachineArn: Arn

    public init(description: VersionDescription? = nil,
                revisionId: RevisionId? = nil,
                stateMachineArn: Arn) {
        self.description = description
        self.revisionId = revisionId
        self.stateMachineArn = stateMachineArn
    }

    enum CodingKeys: String, CodingKey {
        case description
        case revisionId
        case stateMachineArn
    }

    public func validate() throws {
        try description?.validateAsVersionDescription()
        try stateMachineArn.validateAsArn()
    }
}

public struct PublishStateMachineVersionOutput: Codable, Equatable {
    public var creationDate: Timestamp
    public var stateMachineVersionArn: Arn

    public init(creationDate: Timestamp,
                stateMachineVersionArn: Arn) {
        self.creationDate = creationDate
        self.stateMachineVersionArn = stateMachineVersionArn
    }

    enum CodingKeys: String, CodingKey {
        case creationDate
        case stateMachineVersionArn
    }

    public func validate() throws {
        try stateMachineVersionArn.validateAsArn()
    }
}

public struct ResourceNotFound: Codable, Equatable {
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

public struct RoutingConfigurationListItem: Codable, Equatable {
    public var stateMachineVersionArn: Arn
    public var weight: VersionWeight

    public init(stateMachineVersionArn: Arn,
                weight: VersionWeight) {
        self.stateMachineVersionArn = stateMachineVersionArn
        self.weight = weight
    }

    enum CodingKeys: String, CodingKey {
        case stateMachineVersionArn
        case weight
    }

    public func validate() throws {
        try stateMachineVersionArn.validateAsArn()
        try weight.validateAsVersionWeight()
    }
}

public struct SendTaskFailureInput: Codable, Equatable {
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

public struct SendTaskSuccessOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ServiceQuotaExceededException: Codable, Equatable {
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

public struct StartExecutionInput: Codable, Equatable {
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

public struct StartSyncExecutionInput: Codable, Equatable {
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

public struct StartSyncExecutionOutput: Codable, Equatable {
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

public struct StateEnteredEventDetails: Codable, Equatable {
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

public struct StateExitedEventDetails: Codable, Equatable {
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

public struct StateMachineAliasListItem: Codable, Equatable {
    public var creationDate: Timestamp
    public var stateMachineAliasArn: LongArn

    public init(creationDate: Timestamp,
                stateMachineAliasArn: LongArn) {
        self.creationDate = creationDate
        self.stateMachineAliasArn = stateMachineAliasArn
    }

    enum CodingKeys: String, CodingKey {
        case creationDate
        case stateMachineAliasArn
    }

    public func validate() throws {
        try stateMachineAliasArn.validateAsLongArn()
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

public struct StateMachineTypeNotSupported: Codable, Equatable {
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

public struct StateMachineVersionListItem: Codable, Equatable {
    public var creationDate: Timestamp
    public var stateMachineVersionArn: LongArn

    public init(creationDate: Timestamp,
                stateMachineVersionArn: LongArn) {
        self.creationDate = creationDate
        self.stateMachineVersionArn = stateMachineVersionArn
    }

    enum CodingKeys: String, CodingKey {
        case creationDate
        case stateMachineVersionArn
    }

    public func validate() throws {
        try stateMachineVersionArn.validateAsLongArn()
    }
}

public struct StopExecutionInput: Codable, Equatable {
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

public struct Tag: Codable, Equatable {
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

public struct TagResourceInput: Codable, Equatable {
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

public struct TagResourceOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct TaskCredentials: Codable, Equatable {
    public var roleArn: LongArn?

    public init(roleArn: LongArn? = nil) {
        self.roleArn = roleArn
    }

    enum CodingKeys: String, CodingKey {
        case roleArn
    }

    public func validate() throws {
        try roleArn?.validateAsLongArn()
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

public struct TaskFailedEventDetails: Codable, Equatable {
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

public struct TaskScheduledEventDetails: Codable, Equatable {
    public var heartbeatInSeconds: TimeoutInSeconds?
    public var parameters: ConnectorParameters
    public var region: Name
    public var resource: Name
    public var resourceType: Name
    public var taskCredentials: TaskCredentials?
    public var timeoutInSeconds: TimeoutInSeconds?

    public init(heartbeatInSeconds: TimeoutInSeconds? = nil,
                parameters: ConnectorParameters,
                region: Name,
                resource: Name,
                resourceType: Name,
                taskCredentials: TaskCredentials? = nil,
                timeoutInSeconds: TimeoutInSeconds? = nil) {
        self.heartbeatInSeconds = heartbeatInSeconds
        self.parameters = parameters
        self.region = region
        self.resource = resource
        self.resourceType = resourceType
        self.taskCredentials = taskCredentials
        self.timeoutInSeconds = timeoutInSeconds
    }

    enum CodingKeys: String, CodingKey {
        case heartbeatInSeconds
        case parameters
        case region
        case resource
        case resourceType
        case taskCredentials
        case timeoutInSeconds
    }

    public func validate() throws {
        try parameters.validateAsConnectorParameters()
        try region.validateAsName()
        try resource.validateAsName()
        try resourceType.validateAsName()
        try taskCredentials?.validate()
    }
}

public struct TaskStartFailedEventDetails: Codable, Equatable {
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

public struct TaskStartedEventDetails: Codable, Equatable {
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

public struct TaskSubmitFailedEventDetails: Codable, Equatable {
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

public struct TaskSubmittedEventDetails: Codable, Equatable {
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

public struct TaskSucceededEventDetails: Codable, Equatable {
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

public struct TaskTimedOutEventDetails: Codable, Equatable {
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

public struct TooManyTags: Codable, Equatable {
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

public struct TracingConfiguration: Codable, Equatable {
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

public struct UntagResourceInput: Codable, Equatable {
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

public struct UntagResourceOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct UpdateMapRunInput: Codable, Equatable {
    public var mapRunArn: LongArn
    public var maxConcurrency: MaxConcurrency?
    public var toleratedFailureCount: ToleratedFailureCount?
    public var toleratedFailurePercentage: ToleratedFailurePercentage?

    public init(mapRunArn: LongArn,
                maxConcurrency: MaxConcurrency? = nil,
                toleratedFailureCount: ToleratedFailureCount? = nil,
                toleratedFailurePercentage: ToleratedFailurePercentage? = nil) {
        self.mapRunArn = mapRunArn
        self.maxConcurrency = maxConcurrency
        self.toleratedFailureCount = toleratedFailureCount
        self.toleratedFailurePercentage = toleratedFailurePercentage
    }

    enum CodingKeys: String, CodingKey {
        case mapRunArn
        case maxConcurrency
        case toleratedFailureCount
        case toleratedFailurePercentage
    }

    public func validate() throws {
        try mapRunArn.validateAsLongArn()
        try maxConcurrency?.validateAsMaxConcurrency()
        try toleratedFailureCount?.validateAsToleratedFailureCount()
        try toleratedFailurePercentage?.validateAsToleratedFailurePercentage()
    }
}

public struct UpdateMapRunOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct UpdateStateMachineAliasInput: Codable, Equatable {
    public var description: AliasDescription?
    public var routingConfiguration: RoutingConfigurationList?
    public var stateMachineAliasArn: Arn

    public init(description: AliasDescription? = nil,
                routingConfiguration: RoutingConfigurationList? = nil,
                stateMachineAliasArn: Arn) {
        self.description = description
        self.routingConfiguration = routingConfiguration
        self.stateMachineAliasArn = stateMachineAliasArn
    }

    enum CodingKeys: String, CodingKey {
        case description
        case routingConfiguration
        case stateMachineAliasArn
    }

    public func validate() throws {
        try description?.validateAsAliasDescription()
        try routingConfiguration?.validateAsRoutingConfigurationList()
        try stateMachineAliasArn.validateAsArn()
    }
}

public struct UpdateStateMachineAliasOutput: Codable, Equatable {
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

public struct UpdateStateMachineInput: Codable, Equatable {
    public var definition: Definition?
    public var loggingConfiguration: LoggingConfiguration?
    public var publish: Publish?
    public var roleArn: Arn?
    public var stateMachineArn: Arn
    public var tracingConfiguration: TracingConfiguration?
    public var versionDescription: VersionDescription?

    public init(definition: Definition? = nil,
                loggingConfiguration: LoggingConfiguration? = nil,
                publish: Publish? = nil,
                roleArn: Arn? = nil,
                stateMachineArn: Arn,
                tracingConfiguration: TracingConfiguration? = nil,
                versionDescription: VersionDescription? = nil) {
        self.definition = definition
        self.loggingConfiguration = loggingConfiguration
        self.publish = publish
        self.roleArn = roleArn
        self.stateMachineArn = stateMachineArn
        self.tracingConfiguration = tracingConfiguration
        self.versionDescription = versionDescription
    }

    enum CodingKeys: String, CodingKey {
        case definition
        case loggingConfiguration
        case publish
        case roleArn
        case stateMachineArn
        case tracingConfiguration
        case versionDescription
    }

    public func validate() throws {
        try definition?.validateAsDefinition()
        try loggingConfiguration?.validate()
        try roleArn?.validateAsArn()
        try stateMachineArn.validateAsArn()
        try tracingConfiguration?.validate()
        try versionDescription?.validateAsVersionDescription()
    }
}

public struct UpdateStateMachineOutput: Codable, Equatable {
    public var revisionId: RevisionId?
    public var stateMachineVersionArn: Arn?
    public var updateDate: Timestamp

    public init(revisionId: RevisionId? = nil,
                stateMachineVersionArn: Arn? = nil,
                updateDate: Timestamp) {
        self.revisionId = revisionId
        self.stateMachineVersionArn = stateMachineVersionArn
        self.updateDate = updateDate
    }

    enum CodingKeys: String, CodingKey {
        case revisionId
        case stateMachineVersionArn
        case updateDate
    }

    public func validate() throws {
        try stateMachineVersionArn?.validateAsArn()
    }
}

public struct ValidationException: Codable, Equatable {
    public var message: ErrorMessage?
    public var reason: ValidationExceptionReason?

    public init(message: ErrorMessage? = nil,
                reason: ValidationExceptionReason? = nil) {
        self.message = message
        self.reason = reason
    }

    enum CodingKeys: String, CodingKey {
        case message
        case reason
    }

    public func validate() throws {
    }
}
