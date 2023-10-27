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
// SchedulerModelStructures.swift
// SchedulerModel
//

import Foundation

public struct AwsVpcConfiguration: Codable, Equatable {
    public var assignPublicIp: AssignPublicIp?
    public var securityGroups: SecurityGroups?
    public var subnets: Subnets

    public init(assignPublicIp: AssignPublicIp? = nil,
                securityGroups: SecurityGroups? = nil,
                subnets: Subnets) {
        self.assignPublicIp = assignPublicIp
        self.securityGroups = securityGroups
        self.subnets = subnets
    }

    enum CodingKeys: String, CodingKey {
        case assignPublicIp = "AssignPublicIp"
        case securityGroups = "SecurityGroups"
        case subnets = "Subnets"
    }

    public func validate() throws {
        try securityGroups?.validateAsSecurityGroups()
        try subnets.validateAsSubnets()
    }
}

public struct CapacityProviderStrategyItem: Codable, Equatable {
    public var base: CapacityProviderStrategyItemBase?
    public var capacityProvider: CapacityProvider
    public var weight: CapacityProviderStrategyItemWeight?

    public init(base: CapacityProviderStrategyItemBase? = nil,
                capacityProvider: CapacityProvider,
                weight: CapacityProviderStrategyItemWeight? = nil) {
        self.base = base
        self.capacityProvider = capacityProvider
        self.weight = weight
    }

    enum CodingKeys: String, CodingKey {
        case base
        case capacityProvider
        case weight
    }

    public func validate() throws {
        try base?.validateAsCapacityProviderStrategyItemBase()
        try capacityProvider.validateAsCapacityProvider()
        try weight?.validateAsCapacityProviderStrategyItemWeight()
    }
}

public struct ConflictException: Codable, Equatable {
    public var message: String

    public init(message: String) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message = "Message"
    }

    public func validate() throws {
    }
}

public struct CreateScheduleGroupInput: Codable, Equatable {
    public var clientToken: ClientToken?
    public var name: ScheduleGroupName
    public var tags: TagList?

    public init(clientToken: ClientToken? = nil,
                name: ScheduleGroupName,
                tags: TagList? = nil) {
        self.clientToken = clientToken
        self.name = name
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case clientToken = "ClientToken"
        case name = "Name"
        case tags = "Tags"
    }

    public func validate() throws {
        try clientToken?.validateAsClientToken()
        try name.validateAsScheduleGroupName()
        try tags?.validateAsTagList()
    }
}

public struct CreateScheduleGroupOutput: Codable, Equatable {
    public var scheduleGroupArn: ScheduleGroupArn

    public init(scheduleGroupArn: ScheduleGroupArn) {
        self.scheduleGroupArn = scheduleGroupArn
    }

    enum CodingKeys: String, CodingKey {
        case scheduleGroupArn = "ScheduleGroupArn"
    }

    public func validate() throws {
        try scheduleGroupArn.validateAsScheduleGroupArn()
    }
}

public struct CreateScheduleInput: Codable, Equatable {
    public var actionAfterCompletion: ActionAfterCompletion?
    public var clientToken: ClientToken?
    public var description: Description?
    public var endDate: EndDate?
    public var flexibleTimeWindow: FlexibleTimeWindow
    public var groupName: ScheduleGroupName?
    public var kmsKeyArn: KmsKeyArn?
    public var name: Name
    public var scheduleExpression: ScheduleExpression
    public var scheduleExpressionTimezone: ScheduleExpressionTimezone?
    public var startDate: StartDate?
    public var state: ScheduleState?
    public var target: Target

    public init(actionAfterCompletion: ActionAfterCompletion? = nil,
                clientToken: ClientToken? = nil,
                description: Description? = nil,
                endDate: EndDate? = nil,
                flexibleTimeWindow: FlexibleTimeWindow,
                groupName: ScheduleGroupName? = nil,
                kmsKeyArn: KmsKeyArn? = nil,
                name: Name,
                scheduleExpression: ScheduleExpression,
                scheduleExpressionTimezone: ScheduleExpressionTimezone? = nil,
                startDate: StartDate? = nil,
                state: ScheduleState? = nil,
                target: Target) {
        self.actionAfterCompletion = actionAfterCompletion
        self.clientToken = clientToken
        self.description = description
        self.endDate = endDate
        self.flexibleTimeWindow = flexibleTimeWindow
        self.groupName = groupName
        self.kmsKeyArn = kmsKeyArn
        self.name = name
        self.scheduleExpression = scheduleExpression
        self.scheduleExpressionTimezone = scheduleExpressionTimezone
        self.startDate = startDate
        self.state = state
        self.target = target
    }

    enum CodingKeys: String, CodingKey {
        case actionAfterCompletion = "ActionAfterCompletion"
        case clientToken = "ClientToken"
        case description = "Description"
        case endDate = "EndDate"
        case flexibleTimeWindow = "FlexibleTimeWindow"
        case groupName = "GroupName"
        case kmsKeyArn = "KmsKeyArn"
        case name = "Name"
        case scheduleExpression = "ScheduleExpression"
        case scheduleExpressionTimezone = "ScheduleExpressionTimezone"
        case startDate = "StartDate"
        case state = "State"
        case target = "Target"
    }

    public func validate() throws {
        try clientToken?.validateAsClientToken()
        try description?.validateAsDescription()
        try flexibleTimeWindow.validate()
        try groupName?.validateAsScheduleGroupName()
        try kmsKeyArn?.validateAsKmsKeyArn()
        try name.validateAsName()
        try scheduleExpression.validateAsScheduleExpression()
        try scheduleExpressionTimezone?.validateAsScheduleExpressionTimezone()
        try target.validate()
    }
}

public struct CreateScheduleOutput: Codable, Equatable {
    public var scheduleArn: ScheduleArn

    public init(scheduleArn: ScheduleArn) {
        self.scheduleArn = scheduleArn
    }

    enum CodingKeys: String, CodingKey {
        case scheduleArn = "ScheduleArn"
    }

    public func validate() throws {
        try scheduleArn.validateAsScheduleArn()
    }
}

public struct DeadLetterConfig: Codable, Equatable {
    public var arn: DeadLetterConfigArnString?

    public init(arn: DeadLetterConfigArnString? = nil) {
        self.arn = arn
    }

    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
    }

    public func validate() throws {
        try arn?.validateAsDeadLetterConfigArnString()
    }
}

public struct DeleteScheduleGroupInput: Codable, Equatable {
    public var clientToken: ClientToken?
    public var name: ScheduleGroupName

    public init(clientToken: ClientToken? = nil,
                name: ScheduleGroupName) {
        self.clientToken = clientToken
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case clientToken
        case name = "Name"
    }

    public func validate() throws {
        try clientToken?.validateAsClientToken()
        try name.validateAsScheduleGroupName()
    }
}

public struct DeleteScheduleGroupOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DeleteScheduleInput: Codable, Equatable {
    public var clientToken: ClientToken?
    public var groupName: ScheduleGroupName?
    public var name: Name

    public init(clientToken: ClientToken? = nil,
                groupName: ScheduleGroupName? = nil,
                name: Name) {
        self.clientToken = clientToken
        self.groupName = groupName
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case clientToken
        case groupName
        case name = "Name"
    }

    public func validate() throws {
        try clientToken?.validateAsClientToken()
        try groupName?.validateAsScheduleGroupName()
        try name.validateAsName()
    }
}

public struct DeleteScheduleOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct EcsParameters: Codable, Equatable {
    public var capacityProviderStrategy: CapacityProviderStrategy?
    public var enableECSManagedTags: EnableECSManagedTags?
    public var enableExecuteCommand: EnableExecuteCommand?
    public var group: Group?
    public var launchType: LaunchType?
    public var networkConfiguration: NetworkConfiguration?
    public var placementConstraints: PlacementConstraints?
    public var placementStrategy: PlacementStrategies?
    public var platformVersion: PlatformVersion?
    public var propagateTags: PropagateTags?
    public var referenceId: ReferenceId?
    public var tags: Tags?
    public var taskCount: TaskCount?
    public var taskDefinitionArn: TaskDefinitionArn

    public init(capacityProviderStrategy: CapacityProviderStrategy? = nil,
                enableECSManagedTags: EnableECSManagedTags? = nil,
                enableExecuteCommand: EnableExecuteCommand? = nil,
                group: Group? = nil,
                launchType: LaunchType? = nil,
                networkConfiguration: NetworkConfiguration? = nil,
                placementConstraints: PlacementConstraints? = nil,
                placementStrategy: PlacementStrategies? = nil,
                platformVersion: PlatformVersion? = nil,
                propagateTags: PropagateTags? = nil,
                referenceId: ReferenceId? = nil,
                tags: Tags? = nil,
                taskCount: TaskCount? = nil,
                taskDefinitionArn: TaskDefinitionArn) {
        self.capacityProviderStrategy = capacityProviderStrategy
        self.enableECSManagedTags = enableECSManagedTags
        self.enableExecuteCommand = enableExecuteCommand
        self.group = group
        self.launchType = launchType
        self.networkConfiguration = networkConfiguration
        self.placementConstraints = placementConstraints
        self.placementStrategy = placementStrategy
        self.platformVersion = platformVersion
        self.propagateTags = propagateTags
        self.referenceId = referenceId
        self.tags = tags
        self.taskCount = taskCount
        self.taskDefinitionArn = taskDefinitionArn
    }

    enum CodingKeys: String, CodingKey {
        case capacityProviderStrategy = "CapacityProviderStrategy"
        case enableECSManagedTags = "EnableECSManagedTags"
        case enableExecuteCommand = "EnableExecuteCommand"
        case group = "Group"
        case launchType = "LaunchType"
        case networkConfiguration = "NetworkConfiguration"
        case placementConstraints = "PlacementConstraints"
        case placementStrategy = "PlacementStrategy"
        case platformVersion = "PlatformVersion"
        case propagateTags = "PropagateTags"
        case referenceId = "ReferenceId"
        case tags = "Tags"
        case taskCount = "TaskCount"
        case taskDefinitionArn = "TaskDefinitionArn"
    }

    public func validate() throws {
        try capacityProviderStrategy?.validateAsCapacityProviderStrategy()
        try group?.validateAsGroup()
        try networkConfiguration?.validate()
        try placementConstraints?.validateAsPlacementConstraints()
        try placementStrategy?.validateAsPlacementStrategies()
        try platformVersion?.validateAsPlatformVersion()
        try referenceId?.validateAsReferenceId()
        try tags?.validateAsTags()
        try taskCount?.validateAsTaskCount()
        try taskDefinitionArn.validateAsTaskDefinitionArn()
    }
}

public struct EventBridgeParameters: Codable, Equatable {
    public var detailType: DetailType
    public var source: Source

    public init(detailType: DetailType,
                source: Source) {
        self.detailType = detailType
        self.source = source
    }

    enum CodingKeys: String, CodingKey {
        case detailType = "DetailType"
        case source = "Source"
    }

    public func validate() throws {
        try detailType.validateAsDetailType()
        try source.validateAsSource()
    }
}

public struct FlexibleTimeWindow: Codable, Equatable {
    public var maximumWindowInMinutes: MaximumWindowInMinutes?
    public var mode: FlexibleTimeWindowMode

    public init(maximumWindowInMinutes: MaximumWindowInMinutes? = nil,
                mode: FlexibleTimeWindowMode) {
        self.maximumWindowInMinutes = maximumWindowInMinutes
        self.mode = mode
    }

    enum CodingKeys: String, CodingKey {
        case maximumWindowInMinutes = "MaximumWindowInMinutes"
        case mode = "Mode"
    }

    public func validate() throws {
        try maximumWindowInMinutes?.validateAsMaximumWindowInMinutes()
    }
}

public struct GetScheduleGroupInput: Codable, Equatable {
    public var name: ScheduleGroupName

    public init(name: ScheduleGroupName) {
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case name = "Name"
    }

    public func validate() throws {
        try name.validateAsScheduleGroupName()
    }
}

public struct GetScheduleGroupOutput: Codable, Equatable {
    public var arn: ScheduleGroupArn?
    public var creationDate: CreationDate?
    public var lastModificationDate: LastModificationDate?
    public var name: ScheduleGroupName?
    public var state: ScheduleGroupState?

    public init(arn: ScheduleGroupArn? = nil,
                creationDate: CreationDate? = nil,
                lastModificationDate: LastModificationDate? = nil,
                name: ScheduleGroupName? = nil,
                state: ScheduleGroupState? = nil) {
        self.arn = arn
        self.creationDate = creationDate
        self.lastModificationDate = lastModificationDate
        self.name = name
        self.state = state
    }

    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
        case creationDate = "CreationDate"
        case lastModificationDate = "LastModificationDate"
        case name = "Name"
        case state = "State"
    }

    public func validate() throws {
        try arn?.validateAsScheduleGroupArn()
        try name?.validateAsScheduleGroupName()
    }
}

public struct GetScheduleInput: Codable, Equatable {
    public var groupName: ScheduleGroupName?
    public var name: Name

    public init(groupName: ScheduleGroupName? = nil,
                name: Name) {
        self.groupName = groupName
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case groupName
        case name = "Name"
    }

    public func validate() throws {
        try groupName?.validateAsScheduleGroupName()
        try name.validateAsName()
    }
}

public struct GetScheduleOutput: Codable, Equatable {
    public var actionAfterCompletion: ActionAfterCompletion?
    public var arn: ScheduleArn?
    public var creationDate: CreationDate?
    public var description: Description?
    public var endDate: EndDate?
    public var flexibleTimeWindow: FlexibleTimeWindow?
    public var groupName: ScheduleGroupName?
    public var kmsKeyArn: KmsKeyArn?
    public var lastModificationDate: LastModificationDate?
    public var name: Name?
    public var scheduleExpression: ScheduleExpression?
    public var scheduleExpressionTimezone: ScheduleExpressionTimezone?
    public var startDate: StartDate?
    public var state: ScheduleState?
    public var target: Target?

    public init(actionAfterCompletion: ActionAfterCompletion? = nil,
                arn: ScheduleArn? = nil,
                creationDate: CreationDate? = nil,
                description: Description? = nil,
                endDate: EndDate? = nil,
                flexibleTimeWindow: FlexibleTimeWindow? = nil,
                groupName: ScheduleGroupName? = nil,
                kmsKeyArn: KmsKeyArn? = nil,
                lastModificationDate: LastModificationDate? = nil,
                name: Name? = nil,
                scheduleExpression: ScheduleExpression? = nil,
                scheduleExpressionTimezone: ScheduleExpressionTimezone? = nil,
                startDate: StartDate? = nil,
                state: ScheduleState? = nil,
                target: Target? = nil) {
        self.actionAfterCompletion = actionAfterCompletion
        self.arn = arn
        self.creationDate = creationDate
        self.description = description
        self.endDate = endDate
        self.flexibleTimeWindow = flexibleTimeWindow
        self.groupName = groupName
        self.kmsKeyArn = kmsKeyArn
        self.lastModificationDate = lastModificationDate
        self.name = name
        self.scheduleExpression = scheduleExpression
        self.scheduleExpressionTimezone = scheduleExpressionTimezone
        self.startDate = startDate
        self.state = state
        self.target = target
    }

    enum CodingKeys: String, CodingKey {
        case actionAfterCompletion = "ActionAfterCompletion"
        case arn = "Arn"
        case creationDate = "CreationDate"
        case description = "Description"
        case endDate = "EndDate"
        case flexibleTimeWindow = "FlexibleTimeWindow"
        case groupName = "GroupName"
        case kmsKeyArn = "KmsKeyArn"
        case lastModificationDate = "LastModificationDate"
        case name = "Name"
        case scheduleExpression = "ScheduleExpression"
        case scheduleExpressionTimezone = "ScheduleExpressionTimezone"
        case startDate = "StartDate"
        case state = "State"
        case target = "Target"
    }

    public func validate() throws {
        try arn?.validateAsScheduleArn()
        try description?.validateAsDescription()
        try flexibleTimeWindow?.validate()
        try groupName?.validateAsScheduleGroupName()
        try kmsKeyArn?.validateAsKmsKeyArn()
        try name?.validateAsName()
        try scheduleExpression?.validateAsScheduleExpression()
        try scheduleExpressionTimezone?.validateAsScheduleExpressionTimezone()
        try target?.validate()
    }
}

public struct InternalServerException: Codable, Equatable {
    public var message: String

    public init(message: String) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message = "Message"
    }

    public func validate() throws {
    }
}

public struct KinesisParameters: Codable, Equatable {
    public var partitionKey: TargetPartitionKey

    public init(partitionKey: TargetPartitionKey) {
        self.partitionKey = partitionKey
    }

    enum CodingKeys: String, CodingKey {
        case partitionKey = "PartitionKey"
    }

    public func validate() throws {
        try partitionKey.validateAsTargetPartitionKey()
    }
}

public struct ListScheduleGroupsInput: Codable, Equatable {
    public var maxResults: MaxResults?
    public var namePrefix: ScheduleGroupNamePrefix?
    public var nextToken: NextToken?

    public init(maxResults: MaxResults? = nil,
                namePrefix: ScheduleGroupNamePrefix? = nil,
                nextToken: NextToken? = nil) {
        self.maxResults = maxResults
        self.namePrefix = namePrefix
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case maxResults = "MaxResults"
        case namePrefix = "NamePrefix"
        case nextToken = "NextToken"
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
        try namePrefix?.validateAsScheduleGroupNamePrefix()
        try nextToken?.validateAsNextToken()
    }
}

public struct ListScheduleGroupsOutput: Codable, Equatable {
    public var nextToken: NextToken?
    public var scheduleGroups: ScheduleGroupList

    public init(nextToken: NextToken? = nil,
                scheduleGroups: ScheduleGroupList) {
        self.nextToken = nextToken
        self.scheduleGroups = scheduleGroups
    }

    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case scheduleGroups = "ScheduleGroups"
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct ListSchedulesInput: Codable, Equatable {
    public var groupName: ScheduleGroupName?
    public var maxResults: MaxResults?
    public var namePrefix: NamePrefix?
    public var nextToken: NextToken?
    public var state: ScheduleState?

    public init(groupName: ScheduleGroupName? = nil,
                maxResults: MaxResults? = nil,
                namePrefix: NamePrefix? = nil,
                nextToken: NextToken? = nil,
                state: ScheduleState? = nil) {
        self.groupName = groupName
        self.maxResults = maxResults
        self.namePrefix = namePrefix
        self.nextToken = nextToken
        self.state = state
    }

    enum CodingKeys: String, CodingKey {
        case groupName = "ScheduleGroup"
        case maxResults = "MaxResults"
        case namePrefix = "NamePrefix"
        case nextToken = "NextToken"
        case state = "State"
    }

    public func validate() throws {
        try groupName?.validateAsScheduleGroupName()
        try maxResults?.validateAsMaxResults()
        try namePrefix?.validateAsNamePrefix()
        try nextToken?.validateAsNextToken()
    }
}

public struct ListSchedulesOutput: Codable, Equatable {
    public var nextToken: NextToken?
    public var schedules: ScheduleList

    public init(nextToken: NextToken? = nil,
                schedules: ScheduleList) {
        self.nextToken = nextToken
        self.schedules = schedules
    }

    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case schedules = "Schedules"
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct ListTagsForResourceInput: Codable, Equatable {
    public var resourceArn: TagResourceArn

    public init(resourceArn: TagResourceArn) {
        self.resourceArn = resourceArn
    }

    enum CodingKeys: String, CodingKey {
        case resourceArn = "ResourceArn"
    }

    public func validate() throws {
        try resourceArn.validateAsTagResourceArn()
    }
}

public struct ListTagsForResourceOutput: Codable, Equatable {
    public var tags: TagList?

    public init(tags: TagList? = nil) {
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case tags = "Tags"
    }

    public func validate() throws {
        try tags?.validateAsTagList()
    }
}

public struct NetworkConfiguration: Codable, Equatable {
    public var awsvpcConfiguration: AwsVpcConfiguration?

    public init(awsvpcConfiguration: AwsVpcConfiguration? = nil) {
        self.awsvpcConfiguration = awsvpcConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case awsvpcConfiguration
    }

    public func validate() throws {
        try awsvpcConfiguration?.validate()
    }
}

public struct PlacementConstraint: Codable, Equatable {
    public var expression: PlacementConstraintExpression?
    public var type: PlacementConstraintType?

    public init(expression: PlacementConstraintExpression? = nil,
                type: PlacementConstraintType? = nil) {
        self.expression = expression
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case expression
        case type
    }

    public func validate() throws {
        try expression?.validateAsPlacementConstraintExpression()
    }
}

public struct PlacementStrategy: Codable, Equatable {
    public var field: PlacementStrategyField?
    public var type: PlacementStrategyType?

    public init(field: PlacementStrategyField? = nil,
                type: PlacementStrategyType? = nil) {
        self.field = field
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case field
        case type
    }

    public func validate() throws {
        try field?.validateAsPlacementStrategyField()
    }
}

public struct ResourceNotFoundException: Codable, Equatable {
    public var message: String

    public init(message: String) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message = "Message"
    }

    public func validate() throws {
    }
}

public struct RetryPolicy: Codable, Equatable {
    public var maximumEventAgeInSeconds: MaximumEventAgeInSeconds?
    public var maximumRetryAttempts: MaximumRetryAttempts?

    public init(maximumEventAgeInSeconds: MaximumEventAgeInSeconds? = nil,
                maximumRetryAttempts: MaximumRetryAttempts? = nil) {
        self.maximumEventAgeInSeconds = maximumEventAgeInSeconds
        self.maximumRetryAttempts = maximumRetryAttempts
    }

    enum CodingKeys: String, CodingKey {
        case maximumEventAgeInSeconds = "MaximumEventAgeInSeconds"
        case maximumRetryAttempts = "MaximumRetryAttempts"
    }

    public func validate() throws {
        try maximumEventAgeInSeconds?.validateAsMaximumEventAgeInSeconds()
        try maximumRetryAttempts?.validateAsMaximumRetryAttempts()
    }
}

public struct SageMakerPipelineParameter: Codable, Equatable {
    public var name: SageMakerPipelineParameterName
    public var value: SageMakerPipelineParameterValue

    public init(name: SageMakerPipelineParameterName,
                value: SageMakerPipelineParameterValue) {
        self.name = name
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case value = "Value"
    }

    public func validate() throws {
        try name.validateAsSageMakerPipelineParameterName()
        try value.validateAsSageMakerPipelineParameterValue()
    }
}

public struct SageMakerPipelineParameters: Codable, Equatable {
    public var pipelineParameterList: SageMakerPipelineParameterList?

    public init(pipelineParameterList: SageMakerPipelineParameterList? = nil) {
        self.pipelineParameterList = pipelineParameterList
    }

    enum CodingKeys: String, CodingKey {
        case pipelineParameterList = "PipelineParameterList"
    }

    public func validate() throws {
        try pipelineParameterList?.validateAsSageMakerPipelineParameterList()
    }
}

public struct ScheduleGroupSummary: Codable, Equatable {
    public var arn: ScheduleGroupArn?
    public var creationDate: CreationDate?
    public var lastModificationDate: LastModificationDate?
    public var name: ScheduleGroupName?
    public var state: ScheduleGroupState?

    public init(arn: ScheduleGroupArn? = nil,
                creationDate: CreationDate? = nil,
                lastModificationDate: LastModificationDate? = nil,
                name: ScheduleGroupName? = nil,
                state: ScheduleGroupState? = nil) {
        self.arn = arn
        self.creationDate = creationDate
        self.lastModificationDate = lastModificationDate
        self.name = name
        self.state = state
    }

    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
        case creationDate = "CreationDate"
        case lastModificationDate = "LastModificationDate"
        case name = "Name"
        case state = "State"
    }

    public func validate() throws {
        try arn?.validateAsScheduleGroupArn()
        try name?.validateAsScheduleGroupName()
    }
}

public struct ScheduleSummary: Codable, Equatable {
    public var arn: ScheduleArn?
    public var creationDate: CreationDate?
    public var groupName: ScheduleGroupName?
    public var lastModificationDate: LastModificationDate?
    public var name: Name?
    public var state: ScheduleState?
    public var target: TargetSummary?

    public init(arn: ScheduleArn? = nil,
                creationDate: CreationDate? = nil,
                groupName: ScheduleGroupName? = nil,
                lastModificationDate: LastModificationDate? = nil,
                name: Name? = nil,
                state: ScheduleState? = nil,
                target: TargetSummary? = nil) {
        self.arn = arn
        self.creationDate = creationDate
        self.groupName = groupName
        self.lastModificationDate = lastModificationDate
        self.name = name
        self.state = state
        self.target = target
    }

    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
        case creationDate = "CreationDate"
        case groupName = "GroupName"
        case lastModificationDate = "LastModificationDate"
        case name = "Name"
        case state = "State"
        case target = "Target"
    }

    public func validate() throws {
        try arn?.validateAsScheduleArn()
        try groupName?.validateAsScheduleGroupName()
        try name?.validateAsName()
        try target?.validate()
    }
}

public struct ServiceQuotaExceededException: Codable, Equatable {
    public var message: String

    public init(message: String) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message = "Message"
    }

    public func validate() throws {
    }
}

public struct SqsParameters: Codable, Equatable {
    public var messageGroupId: MessageGroupId?

    public init(messageGroupId: MessageGroupId? = nil) {
        self.messageGroupId = messageGroupId
    }

    enum CodingKeys: String, CodingKey {
        case messageGroupId = "MessageGroupId"
    }

    public func validate() throws {
        try messageGroupId?.validateAsMessageGroupId()
    }
}

public struct Tag: Codable, Equatable {
    public var key: TagKey
    public var value: TagValue

    public init(key: TagKey,
                value: TagValue) {
        self.key = key
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case key = "Key"
        case value = "Value"
    }

    public func validate() throws {
        try key.validateAsTagKey()
        try value.validateAsTagValue()
    }
}

public struct TagResourceInput: Codable, Equatable {
    public var resourceArn: TagResourceArn
    public var tags: TagList

    public init(resourceArn: TagResourceArn,
                tags: TagList) {
        self.resourceArn = resourceArn
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case resourceArn = "ResourceArn"
        case tags = "Tags"
    }

    public func validate() throws {
        try resourceArn.validateAsTagResourceArn()
        try tags.validateAsTagList()
    }
}

public struct TagResourceOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct Target: Codable, Equatable {
    public var arn: TargetArn
    public var deadLetterConfig: DeadLetterConfig?
    public var ecsParameters: EcsParameters?
    public var eventBridgeParameters: EventBridgeParameters?
    public var input: TargetInput?
    public var kinesisParameters: KinesisParameters?
    public var retryPolicy: RetryPolicy?
    public var roleArn: RoleArn
    public var sageMakerPipelineParameters: SageMakerPipelineParameters?
    public var sqsParameters: SqsParameters?

    public init(arn: TargetArn,
                deadLetterConfig: DeadLetterConfig? = nil,
                ecsParameters: EcsParameters? = nil,
                eventBridgeParameters: EventBridgeParameters? = nil,
                input: TargetInput? = nil,
                kinesisParameters: KinesisParameters? = nil,
                retryPolicy: RetryPolicy? = nil,
                roleArn: RoleArn,
                sageMakerPipelineParameters: SageMakerPipelineParameters? = nil,
                sqsParameters: SqsParameters? = nil) {
        self.arn = arn
        self.deadLetterConfig = deadLetterConfig
        self.ecsParameters = ecsParameters
        self.eventBridgeParameters = eventBridgeParameters
        self.input = input
        self.kinesisParameters = kinesisParameters
        self.retryPolicy = retryPolicy
        self.roleArn = roleArn
        self.sageMakerPipelineParameters = sageMakerPipelineParameters
        self.sqsParameters = sqsParameters
    }

    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
        case deadLetterConfig = "DeadLetterConfig"
        case ecsParameters = "EcsParameters"
        case eventBridgeParameters = "EventBridgeParameters"
        case input = "Input"
        case kinesisParameters = "KinesisParameters"
        case retryPolicy = "RetryPolicy"
        case roleArn = "RoleArn"
        case sageMakerPipelineParameters = "SageMakerPipelineParameters"
        case sqsParameters = "SqsParameters"
    }

    public func validate() throws {
        try arn.validateAsTargetArn()
        try deadLetterConfig?.validate()
        try ecsParameters?.validate()
        try eventBridgeParameters?.validate()
        try input?.validateAsTargetInput()
        try kinesisParameters?.validate()
        try retryPolicy?.validate()
        try roleArn.validateAsRoleArn()
        try sageMakerPipelineParameters?.validate()
        try sqsParameters?.validate()
    }
}

public struct TargetSummary: Codable, Equatable {
    public var arn: TargetArn

    public init(arn: TargetArn) {
        self.arn = arn
    }

    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
    }

    public func validate() throws {
        try arn.validateAsTargetArn()
    }
}

public struct ThrottlingException: Codable, Equatable {
    public var message: String

    public init(message: String) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message = "Message"
    }

    public func validate() throws {
    }
}

public struct UntagResourceInput: Codable, Equatable {
    public var resourceArn: TagResourceArn
    public var tagKeys: TagKeyList

    public init(resourceArn: TagResourceArn,
                tagKeys: TagKeyList) {
        self.resourceArn = resourceArn
        self.tagKeys = tagKeys
    }

    enum CodingKeys: String, CodingKey {
        case resourceArn = "ResourceArn"
        case tagKeys = "TagKeys"
    }

    public func validate() throws {
        try resourceArn.validateAsTagResourceArn()
        try tagKeys.validateAsTagKeyList()
    }
}

public struct UntagResourceOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct UpdateScheduleInput: Codable, Equatable {
    public var actionAfterCompletion: ActionAfterCompletion?
    public var clientToken: ClientToken?
    public var description: Description?
    public var endDate: EndDate?
    public var flexibleTimeWindow: FlexibleTimeWindow
    public var groupName: ScheduleGroupName?
    public var kmsKeyArn: KmsKeyArn?
    public var name: Name
    public var scheduleExpression: ScheduleExpression
    public var scheduleExpressionTimezone: ScheduleExpressionTimezone?
    public var startDate: StartDate?
    public var state: ScheduleState?
    public var target: Target

    public init(actionAfterCompletion: ActionAfterCompletion? = nil,
                clientToken: ClientToken? = nil,
                description: Description? = nil,
                endDate: EndDate? = nil,
                flexibleTimeWindow: FlexibleTimeWindow,
                groupName: ScheduleGroupName? = nil,
                kmsKeyArn: KmsKeyArn? = nil,
                name: Name,
                scheduleExpression: ScheduleExpression,
                scheduleExpressionTimezone: ScheduleExpressionTimezone? = nil,
                startDate: StartDate? = nil,
                state: ScheduleState? = nil,
                target: Target) {
        self.actionAfterCompletion = actionAfterCompletion
        self.clientToken = clientToken
        self.description = description
        self.endDate = endDate
        self.flexibleTimeWindow = flexibleTimeWindow
        self.groupName = groupName
        self.kmsKeyArn = kmsKeyArn
        self.name = name
        self.scheduleExpression = scheduleExpression
        self.scheduleExpressionTimezone = scheduleExpressionTimezone
        self.startDate = startDate
        self.state = state
        self.target = target
    }

    enum CodingKeys: String, CodingKey {
        case actionAfterCompletion = "ActionAfterCompletion"
        case clientToken = "ClientToken"
        case description = "Description"
        case endDate = "EndDate"
        case flexibleTimeWindow = "FlexibleTimeWindow"
        case groupName = "GroupName"
        case kmsKeyArn = "KmsKeyArn"
        case name = "Name"
        case scheduleExpression = "ScheduleExpression"
        case scheduleExpressionTimezone = "ScheduleExpressionTimezone"
        case startDate = "StartDate"
        case state = "State"
        case target = "Target"
    }

    public func validate() throws {
        try clientToken?.validateAsClientToken()
        try description?.validateAsDescription()
        try flexibleTimeWindow.validate()
        try groupName?.validateAsScheduleGroupName()
        try kmsKeyArn?.validateAsKmsKeyArn()
        try name.validateAsName()
        try scheduleExpression.validateAsScheduleExpression()
        try scheduleExpressionTimezone?.validateAsScheduleExpressionTimezone()
        try target.validate()
    }
}

public struct UpdateScheduleOutput: Codable, Equatable {
    public var scheduleArn: ScheduleArn

    public init(scheduleArn: ScheduleArn) {
        self.scheduleArn = scheduleArn
    }

    enum CodingKeys: String, CodingKey {
        case scheduleArn = "ScheduleArn"
    }

    public func validate() throws {
        try scheduleArn.validateAsScheduleArn()
    }
}

public struct ValidationException: Codable, Equatable {
    public var message: String

    public init(message: String) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message = "Message"
    }

    public func validate() throws {
    }
}
