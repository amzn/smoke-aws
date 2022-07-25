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
// AppConfigModelStructures.swift
// AppConfigModel
//

import Foundation

extension Foundation.Data: @unchecked Sendable { }

public struct Action: Codable, Equatable, Sendable {
    public var description: Description?
    public var name: Name?
    public var roleArn: Arn?
    public var uri: Uri?

    public init(description: Description? = nil,
                name: Name? = nil,
                roleArn: Arn? = nil,
                uri: Uri? = nil) {
        self.description = description
        self.name = name
        self.roleArn = roleArn
        self.uri = uri
    }

    enum CodingKeys: String, CodingKey {
        case description = "Description"
        case name = "Name"
        case roleArn = "RoleArn"
        case uri = "Uri"
    }

    public func validate() throws {
        try description?.validateAsDescription()
        try name?.validateAsName()
        try roleArn?.validateAsArn()
        try uri?.validateAsUri()
    }
}

public struct ActionInvocation: Codable, Equatable, Sendable {
    public var actionName: Name?
    public var errorCode: String?
    public var errorMessage: String?
    public var extensionIdentifier: Identifier?
    public var invocationId: Id?
    public var roleArn: Arn?
    public var uri: Uri?

    public init(actionName: Name? = nil,
                errorCode: String? = nil,
                errorMessage: String? = nil,
                extensionIdentifier: Identifier? = nil,
                invocationId: Id? = nil,
                roleArn: Arn? = nil,
                uri: Uri? = nil) {
        self.actionName = actionName
        self.errorCode = errorCode
        self.errorMessage = errorMessage
        self.extensionIdentifier = extensionIdentifier
        self.invocationId = invocationId
        self.roleArn = roleArn
        self.uri = uri
    }

    enum CodingKeys: String, CodingKey {
        case actionName = "ActionName"
        case errorCode = "ErrorCode"
        case errorMessage = "ErrorMessage"
        case extensionIdentifier = "ExtensionIdentifier"
        case invocationId = "InvocationId"
        case roleArn = "RoleArn"
        case uri = "Uri"
    }

    public func validate() throws {
        try actionName?.validateAsName()
        try extensionIdentifier?.validateAsIdentifier()
        try invocationId?.validateAsId()
        try roleArn?.validateAsArn()
        try uri?.validateAsUri()
    }
}

public struct Application: Codable, Equatable, Sendable {
    public var description: Description?
    public var id: Id?
    public var name: Name?

    public init(description: Description? = nil,
                id: Id? = nil,
                name: Name? = nil) {
        self.description = description
        self.id = id
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case description = "Description"
        case id = "Id"
        case name = "Name"
    }

    public func validate() throws {
        try description?.validateAsDescription()
        try id?.validateAsId()
        try name?.validateAsName()
    }
}

public struct Applications: Codable, Equatable, Sendable {
    public var items: ApplicationList?
    public var nextToken: NextToken?

    public init(items: ApplicationList? = nil,
                nextToken: NextToken? = nil) {
        self.items = items
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case items = "Items"
        case nextToken = "NextToken"
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct AppliedExtension: Codable, Equatable, Sendable {
    public var extensionAssociationId: Id?
    public var extensionId: Id?
    public var parameters: ParameterValueMap?
    public var versionNumber: Integer?

    public init(extensionAssociationId: Id? = nil,
                extensionId: Id? = nil,
                parameters: ParameterValueMap? = nil,
                versionNumber: Integer? = nil) {
        self.extensionAssociationId = extensionAssociationId
        self.extensionId = extensionId
        self.parameters = parameters
        self.versionNumber = versionNumber
    }

    enum CodingKeys: String, CodingKey {
        case extensionAssociationId = "ExtensionAssociationId"
        case extensionId = "ExtensionId"
        case parameters = "Parameters"
        case versionNumber = "VersionNumber"
    }

    public func validate() throws {
        try extensionAssociationId?.validateAsId()
        try extensionId?.validateAsId()
    }
}

public struct BadRequestDetails: Codable, Equatable, Sendable {
    public var invalidConfiguration: InvalidConfigurationDetailList?

    public init(invalidConfiguration: InvalidConfigurationDetailList? = nil) {
        self.invalidConfiguration = invalidConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case invalidConfiguration = "InvalidConfiguration"
    }

    public func validate() throws {
    }
}

public struct BadRequestException: Codable, Equatable, Sendable {
    public var details: BadRequestDetails?
    public var message: String?
    public var reason: BadRequestReason?

    public init(details: BadRequestDetails? = nil,
                message: String? = nil,
                reason: BadRequestReason? = nil) {
        self.details = details
        self.message = message
        self.reason = reason
    }

    enum CodingKeys: String, CodingKey {
        case details = "Details"
        case message = "Message"
        case reason = "Reason"
    }

    public func validate() throws {
        try details?.validate()
    }
}

public struct Configuration: Codable, Equatable, Sendable {
    public var configurationVersion: Version?
    public var content: Blob?
    public var contentType: String?

    public init(configurationVersion: Version? = nil,
                content: Blob? = nil,
                contentType: String? = nil) {
        self.configurationVersion = configurationVersion
        self.content = content
        self.contentType = contentType
    }

    enum CodingKeys: String, CodingKey {
        case configurationVersion = "Configuration-Version"
        case content = "Content"
        case contentType = "Content-Type"
    }

    public func validate() throws {
        try configurationVersion?.validateAsVersion()
    }
}

public struct ConfigurationProfile: Codable, Equatable, Sendable {
    public var applicationId: Id?
    public var description: Description?
    public var id: Id?
    public var locationUri: Uri?
    public var name: LongName?
    public var retrievalRoleArn: RoleArn?
    public var type: ConfigurationProfileType?
    public var validators: ValidatorList?

    public init(applicationId: Id? = nil,
                description: Description? = nil,
                id: Id? = nil,
                locationUri: Uri? = nil,
                name: LongName? = nil,
                retrievalRoleArn: RoleArn? = nil,
                type: ConfigurationProfileType? = nil,
                validators: ValidatorList? = nil) {
        self.applicationId = applicationId
        self.description = description
        self.id = id
        self.locationUri = locationUri
        self.name = name
        self.retrievalRoleArn = retrievalRoleArn
        self.type = type
        self.validators = validators
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case description = "Description"
        case id = "Id"
        case locationUri = "LocationUri"
        case name = "Name"
        case retrievalRoleArn = "RetrievalRoleArn"
        case type = "Type"
        case validators = "Validators"
    }

    public func validate() throws {
        try applicationId?.validateAsId()
        try description?.validateAsDescription()
        try id?.validateAsId()
        try locationUri?.validateAsUri()
        try name?.validateAsLongName()
        try retrievalRoleArn?.validateAsRoleArn()
        try type?.validateAsConfigurationProfileType()
        try validators?.validateAsValidatorList()
    }
}

public struct ConfigurationProfileSummary: Codable, Equatable, Sendable {
    public var applicationId: Id?
    public var id: Id?
    public var locationUri: Uri?
    public var name: LongName?
    public var type: ConfigurationProfileType?
    public var validatorTypes: ValidatorTypeList?

    public init(applicationId: Id? = nil,
                id: Id? = nil,
                locationUri: Uri? = nil,
                name: LongName? = nil,
                type: ConfigurationProfileType? = nil,
                validatorTypes: ValidatorTypeList? = nil) {
        self.applicationId = applicationId
        self.id = id
        self.locationUri = locationUri
        self.name = name
        self.type = type
        self.validatorTypes = validatorTypes
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case id = "Id"
        case locationUri = "LocationUri"
        case name = "Name"
        case type = "Type"
        case validatorTypes = "ValidatorTypes"
    }

    public func validate() throws {
        try applicationId?.validateAsId()
        try id?.validateAsId()
        try locationUri?.validateAsUri()
        try name?.validateAsLongName()
        try type?.validateAsConfigurationProfileType()
        try validatorTypes?.validateAsValidatorTypeList()
    }
}

public struct ConfigurationProfiles: Codable, Equatable, Sendable {
    public var items: ConfigurationProfileSummaryList?
    public var nextToken: NextToken?

    public init(items: ConfigurationProfileSummaryList? = nil,
                nextToken: NextToken? = nil) {
        self.items = items
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case items = "Items"
        case nextToken = "NextToken"
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct ConflictException: Codable, Equatable, Sendable {
    public var message: String?

    public init(message: String? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message = "Message"
    }

    public func validate() throws {
    }
}

public struct CreateApplicationRequest: Codable, Equatable, Sendable {
    public var description: Description?
    public var name: Name
    public var tags: TagMap?

    public init(description: Description? = nil,
                name: Name,
                tags: TagMap? = nil) {
        self.description = description
        self.name = name
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case description = "Description"
        case name = "Name"
        case tags = "Tags"
    }

    public func validate() throws {
        try description?.validateAsDescription()
        try name.validateAsName()
    }
}

public struct CreateConfigurationProfileRequest: Codable, Equatable, Sendable {
    public var applicationId: Id
    public var description: Description?
    public var locationUri: Uri
    public var name: LongName
    public var retrievalRoleArn: RoleArn?
    public var tags: TagMap?
    public var type: ConfigurationProfileType?
    public var validators: ValidatorList?

    public init(applicationId: Id,
                description: Description? = nil,
                locationUri: Uri,
                name: LongName,
                retrievalRoleArn: RoleArn? = nil,
                tags: TagMap? = nil,
                type: ConfigurationProfileType? = nil,
                validators: ValidatorList? = nil) {
        self.applicationId = applicationId
        self.description = description
        self.locationUri = locationUri
        self.name = name
        self.retrievalRoleArn = retrievalRoleArn
        self.tags = tags
        self.type = type
        self.validators = validators
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case description = "Description"
        case locationUri = "LocationUri"
        case name = "Name"
        case retrievalRoleArn = "RetrievalRoleArn"
        case tags = "Tags"
        case type = "Type"
        case validators = "Validators"
    }

    public func validate() throws {
        try applicationId.validateAsId()
        try description?.validateAsDescription()
        try locationUri.validateAsUri()
        try name.validateAsLongName()
        try retrievalRoleArn?.validateAsRoleArn()
        try type?.validateAsConfigurationProfileType()
        try validators?.validateAsValidatorList()
    }
}

public struct CreateDeploymentStrategyRequest: Codable, Equatable, Sendable {
    public var deploymentDurationInMinutes: MinutesBetween0And24Hours
    public var description: Description?
    public var finalBakeTimeInMinutes: MinutesBetween0And24Hours?
    public var growthFactor: GrowthFactor
    public var growthType: GrowthType?
    public var name: Name
    public var replicateTo: ReplicateTo?
    public var tags: TagMap?

    public init(deploymentDurationInMinutes: MinutesBetween0And24Hours,
                description: Description? = nil,
                finalBakeTimeInMinutes: MinutesBetween0And24Hours? = nil,
                growthFactor: GrowthFactor,
                growthType: GrowthType? = nil,
                name: Name,
                replicateTo: ReplicateTo? = nil,
                tags: TagMap? = nil) {
        self.deploymentDurationInMinutes = deploymentDurationInMinutes
        self.description = description
        self.finalBakeTimeInMinutes = finalBakeTimeInMinutes
        self.growthFactor = growthFactor
        self.growthType = growthType
        self.name = name
        self.replicateTo = replicateTo
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case deploymentDurationInMinutes = "DeploymentDurationInMinutes"
        case description = "Description"
        case finalBakeTimeInMinutes = "FinalBakeTimeInMinutes"
        case growthFactor = "GrowthFactor"
        case growthType = "GrowthType"
        case name = "Name"
        case replicateTo = "ReplicateTo"
        case tags = "Tags"
    }

    public func validate() throws {
        try deploymentDurationInMinutes.validateAsMinutesBetween0And24Hours()
        try description?.validateAsDescription()
        try finalBakeTimeInMinutes?.validateAsMinutesBetween0And24Hours()
        try growthFactor.validateAsGrowthFactor()
        try name.validateAsName()
    }
}

public struct CreateEnvironmentRequest: Codable, Equatable, Sendable {
    public var applicationId: Id
    public var description: Description?
    public var monitors: MonitorList?
    public var name: Name
    public var tags: TagMap?

    public init(applicationId: Id,
                description: Description? = nil,
                monitors: MonitorList? = nil,
                name: Name,
                tags: TagMap? = nil) {
        self.applicationId = applicationId
        self.description = description
        self.monitors = monitors
        self.name = name
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case description = "Description"
        case monitors = "Monitors"
        case name = "Name"
        case tags = "Tags"
    }

    public func validate() throws {
        try applicationId.validateAsId()
        try description?.validateAsDescription()
        try monitors?.validateAsMonitorList()
        try name.validateAsName()
    }
}

public struct CreateExtensionAssociationRequest: Codable, Equatable, Sendable {
    public var extensionIdentifier: Identifier
    public var extensionVersionNumber: Integer?
    public var parameters: ParameterValueMap?
    public var resourceIdentifier: Identifier
    public var tags: TagMap?

    public init(extensionIdentifier: Identifier,
                extensionVersionNumber: Integer? = nil,
                parameters: ParameterValueMap? = nil,
                resourceIdentifier: Identifier,
                tags: TagMap? = nil) {
        self.extensionIdentifier = extensionIdentifier
        self.extensionVersionNumber = extensionVersionNumber
        self.parameters = parameters
        self.resourceIdentifier = resourceIdentifier
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case extensionIdentifier = "ExtensionIdentifier"
        case extensionVersionNumber = "ExtensionVersionNumber"
        case parameters = "Parameters"
        case resourceIdentifier = "ResourceIdentifier"
        case tags = "Tags"
    }

    public func validate() throws {
        try extensionIdentifier.validateAsIdentifier()
        try resourceIdentifier.validateAsIdentifier()
    }
}

public struct CreateExtensionRequest: Codable, Equatable, Sendable {
    public var actions: ActionsMap
    public var description: Description?
    public var latestVersionNumber: Integer?
    public var name: Name
    public var parameters: ParameterMap?
    public var tags: TagMap?

    public init(actions: ActionsMap,
                description: Description? = nil,
                latestVersionNumber: Integer? = nil,
                name: Name,
                parameters: ParameterMap? = nil,
                tags: TagMap? = nil) {
        self.actions = actions
        self.description = description
        self.latestVersionNumber = latestVersionNumber
        self.name = name
        self.parameters = parameters
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case actions = "Actions"
        case description = "Description"
        case latestVersionNumber = "Latest-Version-Number"
        case name = "Name"
        case parameters = "Parameters"
        case tags = "Tags"
    }

    public func validate() throws {
        try description?.validateAsDescription()
        try name.validateAsName()
    }
}

public struct CreateHostedConfigurationVersionRequest: Codable, Equatable, Sendable {
    public var applicationId: Id
    public var configurationProfileId: Id
    public var content: Blob
    public var contentType: StringWithLengthBetween1And255
    public var description: Description?
    public var latestVersionNumber: Integer?

    public init(applicationId: Id,
                configurationProfileId: Id,
                content: Blob,
                contentType: StringWithLengthBetween1And255,
                description: Description? = nil,
                latestVersionNumber: Integer? = nil) {
        self.applicationId = applicationId
        self.configurationProfileId = configurationProfileId
        self.content = content
        self.contentType = contentType
        self.description = description
        self.latestVersionNumber = latestVersionNumber
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case configurationProfileId = "ConfigurationProfileId"
        case content = "Content"
        case contentType = "Content-Type"
        case description = "Description"
        case latestVersionNumber = "Latest-Version-Number"
    }

    public func validate() throws {
        try applicationId.validateAsId()
        try configurationProfileId.validateAsId()
        try contentType.validateAsStringWithLengthBetween1And255()
        try description?.validateAsDescription()
    }
}

public struct DeleteApplicationRequest: Codable, Equatable, Sendable {
    public var applicationId: Id

    public init(applicationId: Id) {
        self.applicationId = applicationId
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
    }

    public func validate() throws {
        try applicationId.validateAsId()
    }
}

public struct DeleteConfigurationProfileRequest: Codable, Equatable, Sendable {
    public var applicationId: Id
    public var configurationProfileId: Id

    public init(applicationId: Id,
                configurationProfileId: Id) {
        self.applicationId = applicationId
        self.configurationProfileId = configurationProfileId
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case configurationProfileId = "ConfigurationProfileId"
    }

    public func validate() throws {
        try applicationId.validateAsId()
        try configurationProfileId.validateAsId()
    }
}

public struct DeleteDeploymentStrategyRequest: Codable, Equatable, Sendable {
    public var deploymentStrategyId: DeploymentStrategyId

    public init(deploymentStrategyId: DeploymentStrategyId) {
        self.deploymentStrategyId = deploymentStrategyId
    }

    enum CodingKeys: String, CodingKey {
        case deploymentStrategyId = "DeploymentStrategyId"
    }

    public func validate() throws {
        try deploymentStrategyId.validateAsDeploymentStrategyId()
    }
}

public struct DeleteEnvironmentRequest: Codable, Equatable, Sendable {
    public var applicationId: Id
    public var environmentId: Id

    public init(applicationId: Id,
                environmentId: Id) {
        self.applicationId = applicationId
        self.environmentId = environmentId
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case environmentId = "EnvironmentId"
    }

    public func validate() throws {
        try applicationId.validateAsId()
        try environmentId.validateAsId()
    }
}

public struct DeleteExtensionAssociationRequest: Codable, Equatable, Sendable {
    public var extensionAssociationId: Id

    public init(extensionAssociationId: Id) {
        self.extensionAssociationId = extensionAssociationId
    }

    enum CodingKeys: String, CodingKey {
        case extensionAssociationId = "ExtensionAssociationId"
    }

    public func validate() throws {
        try extensionAssociationId.validateAsId()
    }
}

public struct DeleteExtensionRequest: Codable, Equatable, Sendable {
    public var extensionIdentifier: Identifier
    public var versionNumber: Integer?

    public init(extensionIdentifier: Identifier,
                versionNumber: Integer? = nil) {
        self.extensionIdentifier = extensionIdentifier
        self.versionNumber = versionNumber
    }

    enum CodingKeys: String, CodingKey {
        case extensionIdentifier = "ExtensionIdentifier"
        case versionNumber = "version"
    }

    public func validate() throws {
        try extensionIdentifier.validateAsIdentifier()
    }
}

public struct DeleteHostedConfigurationVersionRequest: Codable, Equatable, Sendable {
    public var applicationId: Id
    public var configurationProfileId: Id
    public var versionNumber: Integer

    public init(applicationId: Id,
                configurationProfileId: Id,
                versionNumber: Integer) {
        self.applicationId = applicationId
        self.configurationProfileId = configurationProfileId
        self.versionNumber = versionNumber
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case configurationProfileId = "ConfigurationProfileId"
        case versionNumber = "VersionNumber"
    }

    public func validate() throws {
        try applicationId.validateAsId()
        try configurationProfileId.validateAsId()
    }
}

public struct Deployment: Codable, Equatable, Sendable {
    public var applicationId: Id?
    public var appliedExtensions: AppliedExtensions?
    public var completedAt: Iso8601DateTime?
    public var configurationLocationUri: Uri?
    public var configurationName: Name?
    public var configurationProfileId: Id?
    public var configurationVersion: Version?
    public var deploymentDurationInMinutes: MinutesBetween0And24Hours?
    public var deploymentNumber: Integer?
    public var deploymentStrategyId: Id?
    public var description: Description?
    public var environmentId: Id?
    public var eventLog: DeploymentEvents?
    public var finalBakeTimeInMinutes: MinutesBetween0And24Hours?
    public var growthFactor: Percentage?
    public var growthType: GrowthType?
    public var percentageComplete: Percentage?
    public var startedAt: Iso8601DateTime?
    public var state: DeploymentState?

    public init(applicationId: Id? = nil,
                appliedExtensions: AppliedExtensions? = nil,
                completedAt: Iso8601DateTime? = nil,
                configurationLocationUri: Uri? = nil,
                configurationName: Name? = nil,
                configurationProfileId: Id? = nil,
                configurationVersion: Version? = nil,
                deploymentDurationInMinutes: MinutesBetween0And24Hours? = nil,
                deploymentNumber: Integer? = nil,
                deploymentStrategyId: Id? = nil,
                description: Description? = nil,
                environmentId: Id? = nil,
                eventLog: DeploymentEvents? = nil,
                finalBakeTimeInMinutes: MinutesBetween0And24Hours? = nil,
                growthFactor: Percentage? = nil,
                growthType: GrowthType? = nil,
                percentageComplete: Percentage? = nil,
                startedAt: Iso8601DateTime? = nil,
                state: DeploymentState? = nil) {
        self.applicationId = applicationId
        self.appliedExtensions = appliedExtensions
        self.completedAt = completedAt
        self.configurationLocationUri = configurationLocationUri
        self.configurationName = configurationName
        self.configurationProfileId = configurationProfileId
        self.configurationVersion = configurationVersion
        self.deploymentDurationInMinutes = deploymentDurationInMinutes
        self.deploymentNumber = deploymentNumber
        self.deploymentStrategyId = deploymentStrategyId
        self.description = description
        self.environmentId = environmentId
        self.eventLog = eventLog
        self.finalBakeTimeInMinutes = finalBakeTimeInMinutes
        self.growthFactor = growthFactor
        self.growthType = growthType
        self.percentageComplete = percentageComplete
        self.startedAt = startedAt
        self.state = state
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case appliedExtensions = "AppliedExtensions"
        case completedAt = "CompletedAt"
        case configurationLocationUri = "ConfigurationLocationUri"
        case configurationName = "ConfigurationName"
        case configurationProfileId = "ConfigurationProfileId"
        case configurationVersion = "ConfigurationVersion"
        case deploymentDurationInMinutes = "DeploymentDurationInMinutes"
        case deploymentNumber = "DeploymentNumber"
        case deploymentStrategyId = "DeploymentStrategyId"
        case description = "Description"
        case environmentId = "EnvironmentId"
        case eventLog = "EventLog"
        case finalBakeTimeInMinutes = "FinalBakeTimeInMinutes"
        case growthFactor = "GrowthFactor"
        case growthType = "GrowthType"
        case percentageComplete = "PercentageComplete"
        case startedAt = "StartedAt"
        case state = "State"
    }

    public func validate() throws {
        try applicationId?.validateAsId()
        try configurationLocationUri?.validateAsUri()
        try configurationName?.validateAsName()
        try configurationProfileId?.validateAsId()
        try configurationVersion?.validateAsVersion()
        try deploymentDurationInMinutes?.validateAsMinutesBetween0And24Hours()
        try deploymentStrategyId?.validateAsId()
        try description?.validateAsDescription()
        try environmentId?.validateAsId()
        try finalBakeTimeInMinutes?.validateAsMinutesBetween0And24Hours()
        try growthFactor?.validateAsPercentage()
        try percentageComplete?.validateAsPercentage()
    }
}

public struct DeploymentEvent: Codable, Equatable, Sendable {
    public var actionInvocations: ActionInvocations?
    public var description: Description?
    public var eventType: DeploymentEventType?
    public var occurredAt: Iso8601DateTime?
    public var triggeredBy: TriggeredBy?

    public init(actionInvocations: ActionInvocations? = nil,
                description: Description? = nil,
                eventType: DeploymentEventType? = nil,
                occurredAt: Iso8601DateTime? = nil,
                triggeredBy: TriggeredBy? = nil) {
        self.actionInvocations = actionInvocations
        self.description = description
        self.eventType = eventType
        self.occurredAt = occurredAt
        self.triggeredBy = triggeredBy
    }

    enum CodingKeys: String, CodingKey {
        case actionInvocations = "ActionInvocations"
        case description = "Description"
        case eventType = "EventType"
        case occurredAt = "OccurredAt"
        case triggeredBy = "TriggeredBy"
    }

    public func validate() throws {
        try description?.validateAsDescription()
    }
}

public struct DeploymentStrategies: Codable, Equatable, Sendable {
    public var items: DeploymentStrategyList?
    public var nextToken: NextToken?

    public init(items: DeploymentStrategyList? = nil,
                nextToken: NextToken? = nil) {
        self.items = items
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case items = "Items"
        case nextToken = "NextToken"
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct DeploymentStrategy: Codable, Equatable, Sendable {
    public var deploymentDurationInMinutes: MinutesBetween0And24Hours?
    public var description: Description?
    public var finalBakeTimeInMinutes: MinutesBetween0And24Hours?
    public var growthFactor: Percentage?
    public var growthType: GrowthType?
    public var id: Id?
    public var name: Name?
    public var replicateTo: ReplicateTo?

    public init(deploymentDurationInMinutes: MinutesBetween0And24Hours? = nil,
                description: Description? = nil,
                finalBakeTimeInMinutes: MinutesBetween0And24Hours? = nil,
                growthFactor: Percentage? = nil,
                growthType: GrowthType? = nil,
                id: Id? = nil,
                name: Name? = nil,
                replicateTo: ReplicateTo? = nil) {
        self.deploymentDurationInMinutes = deploymentDurationInMinutes
        self.description = description
        self.finalBakeTimeInMinutes = finalBakeTimeInMinutes
        self.growthFactor = growthFactor
        self.growthType = growthType
        self.id = id
        self.name = name
        self.replicateTo = replicateTo
    }

    enum CodingKeys: String, CodingKey {
        case deploymentDurationInMinutes = "DeploymentDurationInMinutes"
        case description = "Description"
        case finalBakeTimeInMinutes = "FinalBakeTimeInMinutes"
        case growthFactor = "GrowthFactor"
        case growthType = "GrowthType"
        case id = "Id"
        case name = "Name"
        case replicateTo = "ReplicateTo"
    }

    public func validate() throws {
        try deploymentDurationInMinutes?.validateAsMinutesBetween0And24Hours()
        try description?.validateAsDescription()
        try finalBakeTimeInMinutes?.validateAsMinutesBetween0And24Hours()
        try growthFactor?.validateAsPercentage()
        try id?.validateAsId()
        try name?.validateAsName()
    }
}

public struct DeploymentSummary: Codable, Equatable, Sendable {
    public var completedAt: Iso8601DateTime?
    public var configurationName: Name?
    public var configurationVersion: Version?
    public var deploymentDurationInMinutes: MinutesBetween0And24Hours?
    public var deploymentNumber: Integer?
    public var finalBakeTimeInMinutes: MinutesBetween0And24Hours?
    public var growthFactor: Percentage?
    public var growthType: GrowthType?
    public var percentageComplete: Percentage?
    public var startedAt: Iso8601DateTime?
    public var state: DeploymentState?

    public init(completedAt: Iso8601DateTime? = nil,
                configurationName: Name? = nil,
                configurationVersion: Version? = nil,
                deploymentDurationInMinutes: MinutesBetween0And24Hours? = nil,
                deploymentNumber: Integer? = nil,
                finalBakeTimeInMinutes: MinutesBetween0And24Hours? = nil,
                growthFactor: Percentage? = nil,
                growthType: GrowthType? = nil,
                percentageComplete: Percentage? = nil,
                startedAt: Iso8601DateTime? = nil,
                state: DeploymentState? = nil) {
        self.completedAt = completedAt
        self.configurationName = configurationName
        self.configurationVersion = configurationVersion
        self.deploymentDurationInMinutes = deploymentDurationInMinutes
        self.deploymentNumber = deploymentNumber
        self.finalBakeTimeInMinutes = finalBakeTimeInMinutes
        self.growthFactor = growthFactor
        self.growthType = growthType
        self.percentageComplete = percentageComplete
        self.startedAt = startedAt
        self.state = state
    }

    enum CodingKeys: String, CodingKey {
        case completedAt = "CompletedAt"
        case configurationName = "ConfigurationName"
        case configurationVersion = "ConfigurationVersion"
        case deploymentDurationInMinutes = "DeploymentDurationInMinutes"
        case deploymentNumber = "DeploymentNumber"
        case finalBakeTimeInMinutes = "FinalBakeTimeInMinutes"
        case growthFactor = "GrowthFactor"
        case growthType = "GrowthType"
        case percentageComplete = "PercentageComplete"
        case startedAt = "StartedAt"
        case state = "State"
    }

    public func validate() throws {
        try configurationName?.validateAsName()
        try configurationVersion?.validateAsVersion()
        try deploymentDurationInMinutes?.validateAsMinutesBetween0And24Hours()
        try finalBakeTimeInMinutes?.validateAsMinutesBetween0And24Hours()
        try growthFactor?.validateAsPercentage()
        try percentageComplete?.validateAsPercentage()
    }
}

public struct Deployments: Codable, Equatable, Sendable {
    public var items: DeploymentList?
    public var nextToken: NextToken?

    public init(items: DeploymentList? = nil,
                nextToken: NextToken? = nil) {
        self.items = items
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case items = "Items"
        case nextToken = "NextToken"
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct Environment: Codable, Equatable, Sendable {
    public var applicationId: Id?
    public var description: Description?
    public var id: Id?
    public var monitors: MonitorList?
    public var name: Name?
    public var state: EnvironmentState?

    public init(applicationId: Id? = nil,
                description: Description? = nil,
                id: Id? = nil,
                monitors: MonitorList? = nil,
                name: Name? = nil,
                state: EnvironmentState? = nil) {
        self.applicationId = applicationId
        self.description = description
        self.id = id
        self.monitors = monitors
        self.name = name
        self.state = state
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case description = "Description"
        case id = "Id"
        case monitors = "Monitors"
        case name = "Name"
        case state = "State"
    }

    public func validate() throws {
        try applicationId?.validateAsId()
        try description?.validateAsDescription()
        try id?.validateAsId()
        try monitors?.validateAsMonitorList()
        try name?.validateAsName()
    }
}

public struct Environments: Codable, Equatable, Sendable {
    public var items: EnvironmentList?
    public var nextToken: NextToken?

    public init(items: EnvironmentList? = nil,
                nextToken: NextToken? = nil) {
        self.items = items
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case items = "Items"
        case nextToken = "NextToken"
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct Extension: Codable, Equatable, Sendable {
    public var actions: ActionsMap?
    public var arn: Arn?
    public var description: Description?
    public var id: Id?
    public var name: Name?
    public var parameters: ParameterMap?
    public var versionNumber: Integer?

    public init(actions: ActionsMap? = nil,
                arn: Arn? = nil,
                description: Description? = nil,
                id: Id? = nil,
                name: Name? = nil,
                parameters: ParameterMap? = nil,
                versionNumber: Integer? = nil) {
        self.actions = actions
        self.arn = arn
        self.description = description
        self.id = id
        self.name = name
        self.parameters = parameters
        self.versionNumber = versionNumber
    }

    enum CodingKeys: String, CodingKey {
        case actions = "Actions"
        case arn = "Arn"
        case description = "Description"
        case id = "Id"
        case name = "Name"
        case parameters = "Parameters"
        case versionNumber = "VersionNumber"
    }

    public func validate() throws {
        try arn?.validateAsArn()
        try description?.validateAsDescription()
        try id?.validateAsId()
        try name?.validateAsName()
    }
}

public struct ExtensionAssociation: Codable, Equatable, Sendable {
    public var arn: Arn?
    public var extensionArn: Arn?
    public var extensionVersionNumber: Integer?
    public var id: Identifier?
    public var parameters: ParameterValueMap?
    public var resourceArn: Arn?

    public init(arn: Arn? = nil,
                extensionArn: Arn? = nil,
                extensionVersionNumber: Integer? = nil,
                id: Identifier? = nil,
                parameters: ParameterValueMap? = nil,
                resourceArn: Arn? = nil) {
        self.arn = arn
        self.extensionArn = extensionArn
        self.extensionVersionNumber = extensionVersionNumber
        self.id = id
        self.parameters = parameters
        self.resourceArn = resourceArn
    }

    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
        case extensionArn = "ExtensionArn"
        case extensionVersionNumber = "ExtensionVersionNumber"
        case id = "Id"
        case parameters = "Parameters"
        case resourceArn = "ResourceArn"
    }

    public func validate() throws {
        try arn?.validateAsArn()
        try extensionArn?.validateAsArn()
        try id?.validateAsIdentifier()
        try resourceArn?.validateAsArn()
    }
}

public struct ExtensionAssociationSummary: Codable, Equatable, Sendable {
    public var extensionArn: Arn?
    public var id: Identifier?
    public var resourceArn: Arn?

    public init(extensionArn: Arn? = nil,
                id: Identifier? = nil,
                resourceArn: Arn? = nil) {
        self.extensionArn = extensionArn
        self.id = id
        self.resourceArn = resourceArn
    }

    enum CodingKeys: String, CodingKey {
        case extensionArn = "ExtensionArn"
        case id = "Id"
        case resourceArn = "ResourceArn"
    }

    public func validate() throws {
        try extensionArn?.validateAsArn()
        try id?.validateAsIdentifier()
        try resourceArn?.validateAsArn()
    }
}

public struct ExtensionAssociations: Codable, Equatable, Sendable {
    public var items: ExtensionAssociationSummaries?
    public var nextToken: NextToken?

    public init(items: ExtensionAssociationSummaries? = nil,
                nextToken: NextToken? = nil) {
        self.items = items
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case items = "Items"
        case nextToken = "NextToken"
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct ExtensionSummary: Codable, Equatable, Sendable {
    public var arn: Arn?
    public var description: Description?
    public var id: Id?
    public var name: Name?
    public var versionNumber: Integer?

    public init(arn: Arn? = nil,
                description: Description? = nil,
                id: Id? = nil,
                name: Name? = nil,
                versionNumber: Integer? = nil) {
        self.arn = arn
        self.description = description
        self.id = id
        self.name = name
        self.versionNumber = versionNumber
    }

    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
        case description = "Description"
        case id = "Id"
        case name = "Name"
        case versionNumber = "VersionNumber"
    }

    public func validate() throws {
        try arn?.validateAsArn()
        try description?.validateAsDescription()
        try id?.validateAsId()
        try name?.validateAsName()
    }
}

public struct Extensions: Codable, Equatable, Sendable {
    public var items: ExtensionSummaries?
    public var nextToken: NextToken?

    public init(items: ExtensionSummaries? = nil,
                nextToken: NextToken? = nil) {
        self.items = items
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case items = "Items"
        case nextToken = "NextToken"
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct GetApplicationRequest: Codable, Equatable, Sendable {
    public var applicationId: Id

    public init(applicationId: Id) {
        self.applicationId = applicationId
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
    }

    public func validate() throws {
        try applicationId.validateAsId()
    }
}

public struct GetConfigurationProfileRequest: Codable, Equatable, Sendable {
    public var applicationId: Id
    public var configurationProfileId: Id

    public init(applicationId: Id,
                configurationProfileId: Id) {
        self.applicationId = applicationId
        self.configurationProfileId = configurationProfileId
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case configurationProfileId = "ConfigurationProfileId"
    }

    public func validate() throws {
        try applicationId.validateAsId()
        try configurationProfileId.validateAsId()
    }
}

public struct GetConfigurationRequest: Codable, Equatable, Sendable {
    public var application: StringWithLengthBetween1And64
    public var clientConfigurationVersion: Version?
    public var clientId: StringWithLengthBetween1And64
    public var configuration: StringWithLengthBetween1And64
    public var environment: StringWithLengthBetween1And64

    public init(application: StringWithLengthBetween1And64,
                clientConfigurationVersion: Version? = nil,
                clientId: StringWithLengthBetween1And64,
                configuration: StringWithLengthBetween1And64,
                environment: StringWithLengthBetween1And64) {
        self.application = application
        self.clientConfigurationVersion = clientConfigurationVersion
        self.clientId = clientId
        self.configuration = configuration
        self.environment = environment
    }

    enum CodingKeys: String, CodingKey {
        case application = "Application"
        case clientConfigurationVersion = "client_configuration_version"
        case clientId = "client_id"
        case configuration = "Configuration"
        case environment = "Environment"
    }

    public func validate() throws {
        try application.validateAsStringWithLengthBetween1And64()
        try clientConfigurationVersion?.validateAsVersion()
        try clientId.validateAsStringWithLengthBetween1And64()
        try configuration.validateAsStringWithLengthBetween1And64()
        try environment.validateAsStringWithLengthBetween1And64()
    }
}

public struct GetDeploymentRequest: Codable, Equatable, Sendable {
    public var applicationId: Id
    public var deploymentNumber: Integer
    public var environmentId: Id

    public init(applicationId: Id,
                deploymentNumber: Integer,
                environmentId: Id) {
        self.applicationId = applicationId
        self.deploymentNumber = deploymentNumber
        self.environmentId = environmentId
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case deploymentNumber = "DeploymentNumber"
        case environmentId = "EnvironmentId"
    }

    public func validate() throws {
        try applicationId.validateAsId()
        try environmentId.validateAsId()
    }
}

public struct GetDeploymentStrategyRequest: Codable, Equatable, Sendable {
    public var deploymentStrategyId: DeploymentStrategyId

    public init(deploymentStrategyId: DeploymentStrategyId) {
        self.deploymentStrategyId = deploymentStrategyId
    }

    enum CodingKeys: String, CodingKey {
        case deploymentStrategyId = "DeploymentStrategyId"
    }

    public func validate() throws {
        try deploymentStrategyId.validateAsDeploymentStrategyId()
    }
}

public struct GetEnvironmentRequest: Codable, Equatable, Sendable {
    public var applicationId: Id
    public var environmentId: Id

    public init(applicationId: Id,
                environmentId: Id) {
        self.applicationId = applicationId
        self.environmentId = environmentId
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case environmentId = "EnvironmentId"
    }

    public func validate() throws {
        try applicationId.validateAsId()
        try environmentId.validateAsId()
    }
}

public struct GetExtensionAssociationRequest: Codable, Equatable, Sendable {
    public var extensionAssociationId: Id

    public init(extensionAssociationId: Id) {
        self.extensionAssociationId = extensionAssociationId
    }

    enum CodingKeys: String, CodingKey {
        case extensionAssociationId = "ExtensionAssociationId"
    }

    public func validate() throws {
        try extensionAssociationId.validateAsId()
    }
}

public struct GetExtensionRequest: Codable, Equatable, Sendable {
    public var extensionIdentifier: Identifier
    public var versionNumber: Integer?

    public init(extensionIdentifier: Identifier,
                versionNumber: Integer? = nil) {
        self.extensionIdentifier = extensionIdentifier
        self.versionNumber = versionNumber
    }

    enum CodingKeys: String, CodingKey {
        case extensionIdentifier = "ExtensionIdentifier"
        case versionNumber = "version_number"
    }

    public func validate() throws {
        try extensionIdentifier.validateAsIdentifier()
    }
}

public struct GetHostedConfigurationVersionRequest: Codable, Equatable, Sendable {
    public var applicationId: Id
    public var configurationProfileId: Id
    public var versionNumber: Integer

    public init(applicationId: Id,
                configurationProfileId: Id,
                versionNumber: Integer) {
        self.applicationId = applicationId
        self.configurationProfileId = configurationProfileId
        self.versionNumber = versionNumber
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case configurationProfileId = "ConfigurationProfileId"
        case versionNumber = "VersionNumber"
    }

    public func validate() throws {
        try applicationId.validateAsId()
        try configurationProfileId.validateAsId()
    }
}

public struct HostedConfigurationVersion: Codable, Equatable, Sendable {
    public var applicationId: Id?
    public var configurationProfileId: Id?
    public var content: Blob?
    public var contentType: StringWithLengthBetween1And255?
    public var description: Description?
    public var versionNumber: Integer?

    public init(applicationId: Id? = nil,
                configurationProfileId: Id? = nil,
                content: Blob? = nil,
                contentType: StringWithLengthBetween1And255? = nil,
                description: Description? = nil,
                versionNumber: Integer? = nil) {
        self.applicationId = applicationId
        self.configurationProfileId = configurationProfileId
        self.content = content
        self.contentType = contentType
        self.description = description
        self.versionNumber = versionNumber
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "Application-Id"
        case configurationProfileId = "Configuration-Profile-Id"
        case content = "Content"
        case contentType = "Content-Type"
        case description = "Description"
        case versionNumber = "Version-Number"
    }

    public func validate() throws {
        try applicationId?.validateAsId()
        try configurationProfileId?.validateAsId()
        try contentType?.validateAsStringWithLengthBetween1And255()
        try description?.validateAsDescription()
    }
}

public struct HostedConfigurationVersionSummary: Codable, Equatable, Sendable {
    public var applicationId: Id?
    public var configurationProfileId: Id?
    public var contentType: StringWithLengthBetween1And255?
    public var description: Description?
    public var versionNumber: Integer?

    public init(applicationId: Id? = nil,
                configurationProfileId: Id? = nil,
                contentType: StringWithLengthBetween1And255? = nil,
                description: Description? = nil,
                versionNumber: Integer? = nil) {
        self.applicationId = applicationId
        self.configurationProfileId = configurationProfileId
        self.contentType = contentType
        self.description = description
        self.versionNumber = versionNumber
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case configurationProfileId = "ConfigurationProfileId"
        case contentType = "ContentType"
        case description = "Description"
        case versionNumber = "VersionNumber"
    }

    public func validate() throws {
        try applicationId?.validateAsId()
        try configurationProfileId?.validateAsId()
        try contentType?.validateAsStringWithLengthBetween1And255()
        try description?.validateAsDescription()
    }
}

public struct HostedConfigurationVersions: Codable, Equatable, Sendable {
    public var items: HostedConfigurationVersionSummaryList?
    public var nextToken: NextToken?

    public init(items: HostedConfigurationVersionSummaryList? = nil,
                nextToken: NextToken? = nil) {
        self.items = items
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case items = "Items"
        case nextToken = "NextToken"
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct InternalServerException: Codable, Equatable, Sendable {
    public var message: String?

    public init(message: String? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message = "Message"
    }

    public func validate() throws {
    }
}

public struct InvalidConfigurationDetail: Codable, Equatable, Sendable {
    public var constraint: String?
    public var location: String?
    public var reason: String?
    public var type: String?
    public var value: String?

    public init(constraint: String? = nil,
                location: String? = nil,
                reason: String? = nil,
                type: String? = nil,
                value: String? = nil) {
        self.constraint = constraint
        self.location = location
        self.reason = reason
        self.type = type
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case constraint = "Constraint"
        case location = "Location"
        case reason = "Reason"
        case type = "Type"
        case value = "Value"
    }

    public func validate() throws {
    }
}

public struct ListApplicationsRequest: Codable, Equatable, Sendable {
    public var maxResults: MaxResults?
    public var nextToken: NextToken?

    public init(maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case maxResults = "max_results"
        case nextToken = "next_token"
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
        try nextToken?.validateAsNextToken()
    }
}

public struct ListConfigurationProfilesRequest: Codable, Equatable, Sendable {
    public var applicationId: Id
    public var maxResults: MaxResults?
    public var nextToken: NextToken?
    public var type: ConfigurationProfileType?

    public init(applicationId: Id,
                maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil,
                type: ConfigurationProfileType? = nil) {
        self.applicationId = applicationId
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case maxResults = "max_results"
        case nextToken = "next_token"
        case type
    }

    public func validate() throws {
        try applicationId.validateAsId()
        try maxResults?.validateAsMaxResults()
        try nextToken?.validateAsNextToken()
        try type?.validateAsConfigurationProfileType()
    }
}

public struct ListDeploymentStrategiesRequest: Codable, Equatable, Sendable {
    public var maxResults: MaxResults?
    public var nextToken: NextToken?

    public init(maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case maxResults = "max_results"
        case nextToken = "next_token"
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
        try nextToken?.validateAsNextToken()
    }
}

public struct ListDeploymentsRequest: Codable, Equatable, Sendable {
    public var applicationId: Id
    public var environmentId: Id
    public var maxResults: MaxResults?
    public var nextToken: NextToken?

    public init(applicationId: Id,
                environmentId: Id,
                maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil) {
        self.applicationId = applicationId
        self.environmentId = environmentId
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case environmentId = "EnvironmentId"
        case maxResults = "max_results"
        case nextToken = "next_token"
    }

    public func validate() throws {
        try applicationId.validateAsId()
        try environmentId.validateAsId()
        try maxResults?.validateAsMaxResults()
        try nextToken?.validateAsNextToken()
    }
}

public struct ListEnvironmentsRequest: Codable, Equatable, Sendable {
    public var applicationId: Id
    public var maxResults: MaxResults?
    public var nextToken: NextToken?

    public init(applicationId: Id,
                maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil) {
        self.applicationId = applicationId
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case maxResults = "max_results"
        case nextToken = "next_token"
    }

    public func validate() throws {
        try applicationId.validateAsId()
        try maxResults?.validateAsMaxResults()
        try nextToken?.validateAsNextToken()
    }
}

public struct ListExtensionAssociationsRequest: Codable, Equatable, Sendable {
    public var extensionIdentifier: Identifier?
    public var extensionVersionNumber: Integer?
    public var maxResults: MaxResults?
    public var nextToken: NextToken?
    public var resourceIdentifier: Arn?

    public init(extensionIdentifier: Identifier? = nil,
                extensionVersionNumber: Integer? = nil,
                maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil,
                resourceIdentifier: Arn? = nil) {
        self.extensionIdentifier = extensionIdentifier
        self.extensionVersionNumber = extensionVersionNumber
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.resourceIdentifier = resourceIdentifier
    }

    enum CodingKeys: String, CodingKey {
        case extensionIdentifier = "extension_identifier"
        case extensionVersionNumber = "extension_version_number"
        case maxResults = "max_results"
        case nextToken = "next_token"
        case resourceIdentifier = "resource_identifier"
    }

    public func validate() throws {
        try extensionIdentifier?.validateAsIdentifier()
        try maxResults?.validateAsMaxResults()
        try nextToken?.validateAsNextToken()
        try resourceIdentifier?.validateAsArn()
    }
}

public struct ListExtensionsRequest: Codable, Equatable, Sendable {
    public var maxResults: MaxResults?
    public var name: QueryName?
    public var nextToken: NextToken?

    public init(maxResults: MaxResults? = nil,
                name: QueryName? = nil,
                nextToken: NextToken? = nil) {
        self.maxResults = maxResults
        self.name = name
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case maxResults = "max_results"
        case name
        case nextToken = "next_token"
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
        try name?.validateAsQueryName()
        try nextToken?.validateAsNextToken()
    }
}

public struct ListHostedConfigurationVersionsRequest: Codable, Equatable, Sendable {
    public var applicationId: Id
    public var configurationProfileId: Id
    public var maxResults: MaxResults?
    public var nextToken: NextToken?

    public init(applicationId: Id,
                configurationProfileId: Id,
                maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil) {
        self.applicationId = applicationId
        self.configurationProfileId = configurationProfileId
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case configurationProfileId = "ConfigurationProfileId"
        case maxResults = "max_results"
        case nextToken = "next_token"
    }

    public func validate() throws {
        try applicationId.validateAsId()
        try configurationProfileId.validateAsId()
        try maxResults?.validateAsMaxResults()
        try nextToken?.validateAsNextToken()
    }
}

public struct ListTagsForResourceRequest: Codable, Equatable, Sendable {
    public var resourceArn: Arn

    public init(resourceArn: Arn) {
        self.resourceArn = resourceArn
    }

    enum CodingKeys: String, CodingKey {
        case resourceArn = "ResourceArn"
    }

    public func validate() throws {
        try resourceArn.validateAsArn()
    }
}

public struct Monitor: Codable, Equatable, Sendable {
    public var alarmArn: StringWithLengthBetween1And2048
    public var alarmRoleArn: RoleArn?

    public init(alarmArn: StringWithLengthBetween1And2048,
                alarmRoleArn: RoleArn? = nil) {
        self.alarmArn = alarmArn
        self.alarmRoleArn = alarmRoleArn
    }

    enum CodingKeys: String, CodingKey {
        case alarmArn = "AlarmArn"
        case alarmRoleArn = "AlarmRoleArn"
    }

    public func validate() throws {
        try alarmArn.validateAsStringWithLengthBetween1And2048()
        try alarmRoleArn?.validateAsRoleArn()
    }
}

public struct Parameter: Codable, Equatable, Sendable {
    public var description: Description?
    public var required: Boolean?

    public init(description: Description? = nil,
                required: Boolean? = nil) {
        self.description = description
        self.required = required
    }

    enum CodingKeys: String, CodingKey {
        case description = "Description"
        case required = "Required"
    }

    public func validate() throws {
        try description?.validateAsDescription()
    }
}

public struct PayloadTooLargeException: Codable, Equatable, Sendable {
    public var limit: Float?
    public var measure: BytesMeasure?
    public var message: String?
    public var size: Float?

    public init(limit: Float? = nil,
                measure: BytesMeasure? = nil,
                message: String? = nil,
                size: Float? = nil) {
        self.limit = limit
        self.measure = measure
        self.message = message
        self.size = size
    }

    enum CodingKeys: String, CodingKey {
        case limit = "Limit"
        case measure = "Measure"
        case message = "Message"
        case size = "Size"
    }

    public func validate() throws {
    }
}

public struct ResourceNotFoundException: Codable, Equatable, Sendable {
    public var message: String?
    public var resourceName: String?

    public init(message: String? = nil,
                resourceName: String? = nil) {
        self.message = message
        self.resourceName = resourceName
    }

    enum CodingKeys: String, CodingKey {
        case message = "Message"
        case resourceName = "ResourceName"
    }

    public func validate() throws {
    }
}

public struct ResourceTags: Codable, Equatable, Sendable {
    public var tags: TagMap?

    public init(tags: TagMap? = nil) {
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case tags = "Tags"
    }

    public func validate() throws {
    }
}

public struct ServiceQuotaExceededException: Codable, Equatable, Sendable {
    public var message: String?

    public init(message: String? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message = "Message"
    }

    public func validate() throws {
    }
}

public struct StartDeploymentRequest: Codable, Equatable, Sendable {
    public var applicationId: Id
    public var configurationProfileId: Id
    public var configurationVersion: Version
    public var deploymentStrategyId: DeploymentStrategyId
    public var description: Description?
    public var environmentId: Id
    public var tags: TagMap?

    public init(applicationId: Id,
                configurationProfileId: Id,
                configurationVersion: Version,
                deploymentStrategyId: DeploymentStrategyId,
                description: Description? = nil,
                environmentId: Id,
                tags: TagMap? = nil) {
        self.applicationId = applicationId
        self.configurationProfileId = configurationProfileId
        self.configurationVersion = configurationVersion
        self.deploymentStrategyId = deploymentStrategyId
        self.description = description
        self.environmentId = environmentId
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case configurationProfileId = "ConfigurationProfileId"
        case configurationVersion = "ConfigurationVersion"
        case deploymentStrategyId = "DeploymentStrategyId"
        case description = "Description"
        case environmentId = "EnvironmentId"
        case tags = "Tags"
    }

    public func validate() throws {
        try applicationId.validateAsId()
        try configurationProfileId.validateAsId()
        try configurationVersion.validateAsVersion()
        try deploymentStrategyId.validateAsDeploymentStrategyId()
        try description?.validateAsDescription()
        try environmentId.validateAsId()
    }
}

public struct StopDeploymentRequest: Codable, Equatable, Sendable {
    public var applicationId: Id
    public var deploymentNumber: Integer
    public var environmentId: Id

    public init(applicationId: Id,
                deploymentNumber: Integer,
                environmentId: Id) {
        self.applicationId = applicationId
        self.deploymentNumber = deploymentNumber
        self.environmentId = environmentId
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case deploymentNumber = "DeploymentNumber"
        case environmentId = "EnvironmentId"
    }

    public func validate() throws {
        try applicationId.validateAsId()
        try environmentId.validateAsId()
    }
}

public struct TagResourceRequest: Codable, Equatable, Sendable {
    public var resourceArn: Arn
    public var tags: TagMap

    public init(resourceArn: Arn,
                tags: TagMap) {
        self.resourceArn = resourceArn
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case resourceArn = "ResourceArn"
        case tags = "Tags"
    }

    public func validate() throws {
        try resourceArn.validateAsArn()
    }
}

public struct UntagResourceRequest: Codable, Equatable, Sendable {
    public var resourceArn: Arn
    public var tagKeys: TagKeyList

    public init(resourceArn: Arn,
                tagKeys: TagKeyList) {
        self.resourceArn = resourceArn
        self.tagKeys = tagKeys
    }

    enum CodingKeys: String, CodingKey {
        case resourceArn = "ResourceArn"
        case tagKeys
    }

    public func validate() throws {
        try resourceArn.validateAsArn()
        try tagKeys.validateAsTagKeyList()
    }
}

public struct UpdateApplicationRequest: Codable, Equatable, Sendable {
    public var applicationId: Id
    public var description: Description?
    public var name: Name?

    public init(applicationId: Id,
                description: Description? = nil,
                name: Name? = nil) {
        self.applicationId = applicationId
        self.description = description
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case description = "Description"
        case name = "Name"
    }

    public func validate() throws {
        try applicationId.validateAsId()
        try description?.validateAsDescription()
        try name?.validateAsName()
    }
}

public struct UpdateConfigurationProfileRequest: Codable, Equatable, Sendable {
    public var applicationId: Id
    public var configurationProfileId: Id
    public var description: Description?
    public var name: Name?
    public var retrievalRoleArn: RoleArn?
    public var validators: ValidatorList?

    public init(applicationId: Id,
                configurationProfileId: Id,
                description: Description? = nil,
                name: Name? = nil,
                retrievalRoleArn: RoleArn? = nil,
                validators: ValidatorList? = nil) {
        self.applicationId = applicationId
        self.configurationProfileId = configurationProfileId
        self.description = description
        self.name = name
        self.retrievalRoleArn = retrievalRoleArn
        self.validators = validators
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case configurationProfileId = "ConfigurationProfileId"
        case description = "Description"
        case name = "Name"
        case retrievalRoleArn = "RetrievalRoleArn"
        case validators = "Validators"
    }

    public func validate() throws {
        try applicationId.validateAsId()
        try configurationProfileId.validateAsId()
        try description?.validateAsDescription()
        try name?.validateAsName()
        try retrievalRoleArn?.validateAsRoleArn()
        try validators?.validateAsValidatorList()
    }
}

public struct UpdateDeploymentStrategyRequest: Codable, Equatable, Sendable {
    public var deploymentDurationInMinutes: MinutesBetween0And24Hours?
    public var deploymentStrategyId: DeploymentStrategyId
    public var description: Description?
    public var finalBakeTimeInMinutes: MinutesBetween0And24Hours?
    public var growthFactor: GrowthFactor?
    public var growthType: GrowthType?

    public init(deploymentDurationInMinutes: MinutesBetween0And24Hours? = nil,
                deploymentStrategyId: DeploymentStrategyId,
                description: Description? = nil,
                finalBakeTimeInMinutes: MinutesBetween0And24Hours? = nil,
                growthFactor: GrowthFactor? = nil,
                growthType: GrowthType? = nil) {
        self.deploymentDurationInMinutes = deploymentDurationInMinutes
        self.deploymentStrategyId = deploymentStrategyId
        self.description = description
        self.finalBakeTimeInMinutes = finalBakeTimeInMinutes
        self.growthFactor = growthFactor
        self.growthType = growthType
    }

    enum CodingKeys: String, CodingKey {
        case deploymentDurationInMinutes = "DeploymentDurationInMinutes"
        case deploymentStrategyId = "DeploymentStrategyId"
        case description = "Description"
        case finalBakeTimeInMinutes = "FinalBakeTimeInMinutes"
        case growthFactor = "GrowthFactor"
        case growthType = "GrowthType"
    }

    public func validate() throws {
        try deploymentDurationInMinutes?.validateAsMinutesBetween0And24Hours()
        try deploymentStrategyId.validateAsDeploymentStrategyId()
        try description?.validateAsDescription()
        try finalBakeTimeInMinutes?.validateAsMinutesBetween0And24Hours()
        try growthFactor?.validateAsGrowthFactor()
    }
}

public struct UpdateEnvironmentRequest: Codable, Equatable, Sendable {
    public var applicationId: Id
    public var description: Description?
    public var environmentId: Id
    public var monitors: MonitorList?
    public var name: Name?

    public init(applicationId: Id,
                description: Description? = nil,
                environmentId: Id,
                monitors: MonitorList? = nil,
                name: Name? = nil) {
        self.applicationId = applicationId
        self.description = description
        self.environmentId = environmentId
        self.monitors = monitors
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case description = "Description"
        case environmentId = "EnvironmentId"
        case monitors = "Monitors"
        case name = "Name"
    }

    public func validate() throws {
        try applicationId.validateAsId()
        try description?.validateAsDescription()
        try environmentId.validateAsId()
        try monitors?.validateAsMonitorList()
        try name?.validateAsName()
    }
}

public struct UpdateExtensionAssociationRequest: Codable, Equatable, Sendable {
    public var extensionAssociationId: Id
    public var parameters: ParameterValueMap?

    public init(extensionAssociationId: Id,
                parameters: ParameterValueMap? = nil) {
        self.extensionAssociationId = extensionAssociationId
        self.parameters = parameters
    }

    enum CodingKeys: String, CodingKey {
        case extensionAssociationId = "ExtensionAssociationId"
        case parameters = "Parameters"
    }

    public func validate() throws {
        try extensionAssociationId.validateAsId()
    }
}

public struct UpdateExtensionRequest: Codable, Equatable, Sendable {
    public var actions: ActionsMap?
    public var description: Description?
    public var extensionIdentifier: Identifier
    public var parameters: ParameterMap?
    public var versionNumber: Integer?

    public init(actions: ActionsMap? = nil,
                description: Description? = nil,
                extensionIdentifier: Identifier,
                parameters: ParameterMap? = nil,
                versionNumber: Integer? = nil) {
        self.actions = actions
        self.description = description
        self.extensionIdentifier = extensionIdentifier
        self.parameters = parameters
        self.versionNumber = versionNumber
    }

    enum CodingKeys: String, CodingKey {
        case actions = "Actions"
        case description = "Description"
        case extensionIdentifier = "ExtensionIdentifier"
        case parameters = "Parameters"
        case versionNumber = "VersionNumber"
    }

    public func validate() throws {
        try description?.validateAsDescription()
        try extensionIdentifier.validateAsIdentifier()
    }
}

public struct ValidateConfigurationRequest: Codable, Equatable, Sendable {
    public var applicationId: Id
    public var configurationProfileId: Id
    public var configurationVersion: Version

    public init(applicationId: Id,
                configurationProfileId: Id,
                configurationVersion: Version) {
        self.applicationId = applicationId
        self.configurationProfileId = configurationProfileId
        self.configurationVersion = configurationVersion
    }

    enum CodingKeys: String, CodingKey {
        case applicationId = "ApplicationId"
        case configurationProfileId = "ConfigurationProfileId"
        case configurationVersion = "configuration_version"
    }

    public func validate() throws {
        try applicationId.validateAsId()
        try configurationProfileId.validateAsId()
        try configurationVersion.validateAsVersion()
    }
}

public struct Validator: Codable, Equatable, Sendable {
    public var content: StringWithLengthBetween0And32768
    public var type: ValidatorType

    public init(content: StringWithLengthBetween0And32768,
                type: ValidatorType) {
        self.content = content
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case content = "Content"
        case type = "Type"
    }

    public func validate() throws {
        try content.validateAsStringWithLengthBetween0And32768()
    }
}
