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
// CloudformationModelStructures.swift
// CloudformationModel
//

import Foundation

public struct AccountGateResult: Codable, Equatable {
    public var status: AccountGateStatus?
    public var statusReason: AccountGateStatusReason?

    public init(status: AccountGateStatus? = nil,
                statusReason: AccountGateStatusReason? = nil) {
        self.status = status
        self.statusReason = statusReason
    }

    enum CodingKeys: String, CodingKey {
        case status = "Status"
        case statusReason = "StatusReason"
    }

    public func validate() throws {
    }
}

public struct AccountLimit: Codable, Equatable {
    public var name: LimitName?
    public var value: LimitValue?

    public init(name: LimitName? = nil,
                value: LimitValue? = nil) {
        self.name = name
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case value = "Value"
    }

    public func validate() throws {
    }
}

public struct ActivateTypeInput: Codable, Equatable {
    public var autoUpdate: AutoUpdate?
    public var executionRoleArn: RoleArn?
    public var loggingConfig: LoggingConfig?
    public var majorVersion: MajorVersion?
    public var publicTypeArn: ThirdPartyTypeArn?
    public var publisherId: PublisherId?
    public var type: ThirdPartyType?
    public var typeName: TypeName?
    public var typeNameAlias: TypeName?
    public var versionBump: VersionBump?

    public init(autoUpdate: AutoUpdate? = nil,
                executionRoleArn: RoleArn? = nil,
                loggingConfig: LoggingConfig? = nil,
                majorVersion: MajorVersion? = nil,
                publicTypeArn: ThirdPartyTypeArn? = nil,
                publisherId: PublisherId? = nil,
                type: ThirdPartyType? = nil,
                typeName: TypeName? = nil,
                typeNameAlias: TypeName? = nil,
                versionBump: VersionBump? = nil) {
        self.autoUpdate = autoUpdate
        self.executionRoleArn = executionRoleArn
        self.loggingConfig = loggingConfig
        self.majorVersion = majorVersion
        self.publicTypeArn = publicTypeArn
        self.publisherId = publisherId
        self.type = type
        self.typeName = typeName
        self.typeNameAlias = typeNameAlias
        self.versionBump = versionBump
    }

    enum CodingKeys: String, CodingKey {
        case autoUpdate = "AutoUpdate"
        case executionRoleArn = "ExecutionRoleArn"
        case loggingConfig = "LoggingConfig"
        case majorVersion = "MajorVersion"
        case publicTypeArn = "PublicTypeArn"
        case publisherId = "PublisherId"
        case type = "Type"
        case typeName = "TypeName"
        case typeNameAlias = "TypeNameAlias"
        case versionBump = "VersionBump"
    }

    public func validate() throws {
        try executionRoleArn?.validateAsRoleArn()
        try loggingConfig?.validate()
        try majorVersion?.validateAsMajorVersion()
        try publicTypeArn?.validateAsThirdPartyTypeArn()
        try publisherId?.validateAsPublisherId()
        try typeName?.validateAsTypeName()
        try typeNameAlias?.validateAsTypeName()
    }
}

public struct ActivateTypeOutput: Codable, Equatable {
    public var arn: PrivateTypeArn?

    public init(arn: PrivateTypeArn? = nil) {
        self.arn = arn
    }

    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
    }

    public func validate() throws {
        try arn?.validateAsPrivateTypeArn()
    }
}

public struct ActivateTypeOutputForActivateType: Codable, Equatable {
    public var activateTypeResult: ActivateTypeOutput

    public init(activateTypeResult: ActivateTypeOutput) {
        self.activateTypeResult = activateTypeResult
    }

    enum CodingKeys: String, CodingKey {
        case activateTypeResult = "ActivateTypeResult"
    }

    public func validate() throws {
        try activateTypeResult.validate()
    }
}

public struct AlreadyExistsException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct AutoDeployment: Codable, Equatable {
    public var enabled: AutoDeploymentNullable?
    public var retainStacksOnAccountRemoval: RetainStacksOnAccountRemovalNullable?

    public init(enabled: AutoDeploymentNullable? = nil,
                retainStacksOnAccountRemoval: RetainStacksOnAccountRemovalNullable? = nil) {
        self.enabled = enabled
        self.retainStacksOnAccountRemoval = retainStacksOnAccountRemoval
    }

    enum CodingKeys: String, CodingKey {
        case enabled = "Enabled"
        case retainStacksOnAccountRemoval = "RetainStacksOnAccountRemoval"
    }

    public func validate() throws {
    }
}

public struct BatchDescribeTypeConfigurationsError: Codable, Equatable {
    public var errorCode: ErrorCode?
    public var errorMessage: ErrorMessage?
    public var typeConfigurationIdentifier: TypeConfigurationIdentifier?

    public init(errorCode: ErrorCode? = nil,
                errorMessage: ErrorMessage? = nil,
                typeConfigurationIdentifier: TypeConfigurationIdentifier? = nil) {
        self.errorCode = errorCode
        self.errorMessage = errorMessage
        self.typeConfigurationIdentifier = typeConfigurationIdentifier
    }

    enum CodingKeys: String, CodingKey {
        case errorCode = "ErrorCode"
        case errorMessage = "ErrorMessage"
        case typeConfigurationIdentifier = "TypeConfigurationIdentifier"
    }

    public func validate() throws {
        try errorCode?.validateAsErrorCode()
        try errorMessage?.validateAsErrorMessage()
        try typeConfigurationIdentifier?.validate()
    }
}

public struct BatchDescribeTypeConfigurationsInput: Codable, Equatable {
    public var typeConfigurationIdentifiers: TypeConfigurationIdentifiers

    public init(typeConfigurationIdentifiers: TypeConfigurationIdentifiers) {
        self.typeConfigurationIdentifiers = typeConfigurationIdentifiers
    }

    enum CodingKeys: String, CodingKey {
        case typeConfigurationIdentifiers = "TypeConfigurationIdentifiers"
    }

    public func validate() throws {
        try typeConfigurationIdentifiers.validateAsTypeConfigurationIdentifiers()
    }
}

public struct BatchDescribeTypeConfigurationsOutput: Codable, Equatable {
    public var errors: BatchDescribeTypeConfigurationsErrors?
    public var typeConfigurations: TypeConfigurationDetailsList?
    public var unprocessedTypeConfigurations: UnprocessedTypeConfigurations?

    public init(errors: BatchDescribeTypeConfigurationsErrors? = nil,
                typeConfigurations: TypeConfigurationDetailsList? = nil,
                unprocessedTypeConfigurations: UnprocessedTypeConfigurations? = nil) {
        self.errors = errors
        self.typeConfigurations = typeConfigurations
        self.unprocessedTypeConfigurations = unprocessedTypeConfigurations
    }

    enum CodingKeys: String, CodingKey {
        case errors = "Errors"
        case typeConfigurations = "TypeConfigurations"
        case unprocessedTypeConfigurations = "UnprocessedTypeConfigurations"
    }

    public func validate() throws {
    }
}

public struct BatchDescribeTypeConfigurationsOutputForBatchDescribeTypeConfigurations: Codable, Equatable {
    public var batchDescribeTypeConfigurationsResult: BatchDescribeTypeConfigurationsOutput

    public init(batchDescribeTypeConfigurationsResult: BatchDescribeTypeConfigurationsOutput) {
        self.batchDescribeTypeConfigurationsResult = batchDescribeTypeConfigurationsResult
    }

    enum CodingKeys: String, CodingKey {
        case batchDescribeTypeConfigurationsResult = "BatchDescribeTypeConfigurationsResult"
    }

    public func validate() throws {
        try batchDescribeTypeConfigurationsResult.validate()
    }
}

public struct CFNRegistryException: Codable, Equatable {
    public var message: ErrorMessage?

    public init(message: ErrorMessage? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message = "Message"
    }

    public func validate() throws {
        try message?.validateAsErrorMessage()
    }
}

public struct CancelUpdateStackInput: Codable, Equatable {
    public var clientRequestToken: ClientRequestToken?
    public var stackName: StackName

    public init(clientRequestToken: ClientRequestToken? = nil,
                stackName: StackName) {
        self.clientRequestToken = clientRequestToken
        self.stackName = stackName
    }

    enum CodingKeys: String, CodingKey {
        case clientRequestToken = "ClientRequestToken"
        case stackName = "StackName"
    }

    public func validate() throws {
        try clientRequestToken?.validateAsClientRequestToken()
    }
}

public struct Change: Codable, Equatable {
    public var hookInvocationCount: HookInvocationCount?
    public var resourceChange: ResourceChange?
    public var type: ChangeType?

    public init(hookInvocationCount: HookInvocationCount? = nil,
                resourceChange: ResourceChange? = nil,
                type: ChangeType? = nil) {
        self.hookInvocationCount = hookInvocationCount
        self.resourceChange = resourceChange
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case hookInvocationCount = "HookInvocationCount"
        case resourceChange = "ResourceChange"
        case type = "Type"
    }

    public func validate() throws {
        try hookInvocationCount?.validateAsHookInvocationCount()
        try resourceChange?.validate()
    }
}

public struct ChangeSetHook: Codable, Equatable {
    public var failureMode: HookFailureMode?
    public var invocationPoint: HookInvocationPoint?
    public var targetDetails: ChangeSetHookTargetDetails?
    public var typeConfigurationVersionId: HookTypeConfigurationVersionId?
    public var typeName: HookTypeName?
    public var typeVersionId: HookTypeVersionId?

    public init(failureMode: HookFailureMode? = nil,
                invocationPoint: HookInvocationPoint? = nil,
                targetDetails: ChangeSetHookTargetDetails? = nil,
                typeConfigurationVersionId: HookTypeConfigurationVersionId? = nil,
                typeName: HookTypeName? = nil,
                typeVersionId: HookTypeVersionId? = nil) {
        self.failureMode = failureMode
        self.invocationPoint = invocationPoint
        self.targetDetails = targetDetails
        self.typeConfigurationVersionId = typeConfigurationVersionId
        self.typeName = typeName
        self.typeVersionId = typeVersionId
    }

    enum CodingKeys: String, CodingKey {
        case failureMode = "FailureMode"
        case invocationPoint = "InvocationPoint"
        case targetDetails = "TargetDetails"
        case typeConfigurationVersionId = "TypeConfigurationVersionId"
        case typeName = "TypeName"
        case typeVersionId = "TypeVersionId"
    }

    public func validate() throws {
        try targetDetails?.validate()
        try typeConfigurationVersionId?.validateAsHookTypeConfigurationVersionId()
        try typeName?.validateAsHookTypeName()
        try typeVersionId?.validateAsHookTypeVersionId()
    }
}

public struct ChangeSetHookResourceTargetDetails: Codable, Equatable {
    public var logicalResourceId: LogicalResourceId?
    public var resourceAction: ChangeAction?
    public var resourceType: HookTargetTypeName?

    public init(logicalResourceId: LogicalResourceId? = nil,
                resourceAction: ChangeAction? = nil,
                resourceType: HookTargetTypeName? = nil) {
        self.logicalResourceId = logicalResourceId
        self.resourceAction = resourceAction
        self.resourceType = resourceType
    }

    enum CodingKeys: String, CodingKey {
        case logicalResourceId = "LogicalResourceId"
        case resourceAction = "ResourceAction"
        case resourceType = "ResourceType"
    }

    public func validate() throws {
        try resourceType?.validateAsHookTargetTypeName()
    }
}

public struct ChangeSetHookTargetDetails: Codable, Equatable {
    public var resourceTargetDetails: ChangeSetHookResourceTargetDetails?
    public var targetType: HookTargetType?

    public init(resourceTargetDetails: ChangeSetHookResourceTargetDetails? = nil,
                targetType: HookTargetType? = nil) {
        self.resourceTargetDetails = resourceTargetDetails
        self.targetType = targetType
    }

    enum CodingKeys: String, CodingKey {
        case resourceTargetDetails = "ResourceTargetDetails"
        case targetType = "TargetType"
    }

    public func validate() throws {
        try resourceTargetDetails?.validate()
    }
}

public struct ChangeSetNotFoundException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ChangeSetSummary: Codable, Equatable {
    public var changeSetId: ChangeSetId?
    public var changeSetName: ChangeSetName?
    public var creationTime: CreationTime?
    public var description: Description?
    public var executionStatus: ExecutionStatus?
    public var includeNestedStacks: IncludeNestedStacks?
    public var parentChangeSetId: ChangeSetId?
    public var rootChangeSetId: ChangeSetId?
    public var stackId: StackId?
    public var stackName: StackName?
    public var status: ChangeSetStatus?
    public var statusReason: ChangeSetStatusReason?

    public init(changeSetId: ChangeSetId? = nil,
                changeSetName: ChangeSetName? = nil,
                creationTime: CreationTime? = nil,
                description: Description? = nil,
                executionStatus: ExecutionStatus? = nil,
                includeNestedStacks: IncludeNestedStacks? = nil,
                parentChangeSetId: ChangeSetId? = nil,
                rootChangeSetId: ChangeSetId? = nil,
                stackId: StackId? = nil,
                stackName: StackName? = nil,
                status: ChangeSetStatus? = nil,
                statusReason: ChangeSetStatusReason? = nil) {
        self.changeSetId = changeSetId
        self.changeSetName = changeSetName
        self.creationTime = creationTime
        self.description = description
        self.executionStatus = executionStatus
        self.includeNestedStacks = includeNestedStacks
        self.parentChangeSetId = parentChangeSetId
        self.rootChangeSetId = rootChangeSetId
        self.stackId = stackId
        self.stackName = stackName
        self.status = status
        self.statusReason = statusReason
    }

    enum CodingKeys: String, CodingKey {
        case changeSetId = "ChangeSetId"
        case changeSetName = "ChangeSetName"
        case creationTime = "CreationTime"
        case description = "Description"
        case executionStatus = "ExecutionStatus"
        case includeNestedStacks = "IncludeNestedStacks"
        case parentChangeSetId = "ParentChangeSetId"
        case rootChangeSetId = "RootChangeSetId"
        case stackId = "StackId"
        case stackName = "StackName"
        case status = "Status"
        case statusReason = "StatusReason"
    }

    public func validate() throws {
        try changeSetId?.validateAsChangeSetId()
        try changeSetName?.validateAsChangeSetName()
        try description?.validateAsDescription()
        try parentChangeSetId?.validateAsChangeSetId()
        try rootChangeSetId?.validateAsChangeSetId()
    }
}

public struct ContinueUpdateRollbackInput: Codable, Equatable {
    public var clientRequestToken: ClientRequestToken?
    public var resourcesToSkip: ResourcesToSkip?
    public var roleARN: RoleARN?
    public var stackName: StackNameOrId

    public init(clientRequestToken: ClientRequestToken? = nil,
                resourcesToSkip: ResourcesToSkip? = nil,
                roleARN: RoleARN? = nil,
                stackName: StackNameOrId) {
        self.clientRequestToken = clientRequestToken
        self.resourcesToSkip = resourcesToSkip
        self.roleARN = roleARN
        self.stackName = stackName
    }

    enum CodingKeys: String, CodingKey {
        case clientRequestToken = "ClientRequestToken"
        case resourcesToSkip = "ResourcesToSkip"
        case roleARN = "RoleARN"
        case stackName = "StackName"
    }

    public func validate() throws {
        try clientRequestToken?.validateAsClientRequestToken()
        try roleARN?.validateAsRoleARN()
        try stackName.validateAsStackNameOrId()
    }
}

public struct ContinueUpdateRollbackOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ContinueUpdateRollbackOutputForContinueUpdateRollback: Codable, Equatable {
    public var continueUpdateRollbackResult: ContinueUpdateRollbackOutput

    public init(continueUpdateRollbackResult: ContinueUpdateRollbackOutput) {
        self.continueUpdateRollbackResult = continueUpdateRollbackResult
    }

    enum CodingKeys: String, CodingKey {
        case continueUpdateRollbackResult = "ContinueUpdateRollbackResult"
    }

    public func validate() throws {
        try continueUpdateRollbackResult.validate()
    }
}

public struct CreateChangeSetInput: Codable, Equatable {
    public var capabilities: Capabilities?
    public var changeSetName: ChangeSetName
    public var changeSetType: ChangeSetType?
    public var clientToken: ClientToken?
    public var description: Description?
    public var includeNestedStacks: IncludeNestedStacks?
    public var notificationARNs: NotificationARNs?
    public var parameters: Parameters?
    public var resourceTypes: ResourceTypes?
    public var resourcesToImport: ResourcesToImport?
    public var roleARN: RoleARN?
    public var rollbackConfiguration: RollbackConfiguration?
    public var stackName: StackNameOrId
    public var tags: Tags?
    public var templateBody: TemplateBody?
    public var templateURL: TemplateURL?
    public var usePreviousTemplate: UsePreviousTemplate?

    public init(capabilities: Capabilities? = nil,
                changeSetName: ChangeSetName,
                changeSetType: ChangeSetType? = nil,
                clientToken: ClientToken? = nil,
                description: Description? = nil,
                includeNestedStacks: IncludeNestedStacks? = nil,
                notificationARNs: NotificationARNs? = nil,
                parameters: Parameters? = nil,
                resourceTypes: ResourceTypes? = nil,
                resourcesToImport: ResourcesToImport? = nil,
                roleARN: RoleARN? = nil,
                rollbackConfiguration: RollbackConfiguration? = nil,
                stackName: StackNameOrId,
                tags: Tags? = nil,
                templateBody: TemplateBody? = nil,
                templateURL: TemplateURL? = nil,
                usePreviousTemplate: UsePreviousTemplate? = nil) {
        self.capabilities = capabilities
        self.changeSetName = changeSetName
        self.changeSetType = changeSetType
        self.clientToken = clientToken
        self.description = description
        self.includeNestedStacks = includeNestedStacks
        self.notificationARNs = notificationARNs
        self.parameters = parameters
        self.resourceTypes = resourceTypes
        self.resourcesToImport = resourcesToImport
        self.roleARN = roleARN
        self.rollbackConfiguration = rollbackConfiguration
        self.stackName = stackName
        self.tags = tags
        self.templateBody = templateBody
        self.templateURL = templateURL
        self.usePreviousTemplate = usePreviousTemplate
    }

    enum CodingKeys: String, CodingKey {
        case capabilities = "Capabilities"
        case changeSetName = "ChangeSetName"
        case changeSetType = "ChangeSetType"
        case clientToken = "ClientToken"
        case description = "Description"
        case includeNestedStacks = "IncludeNestedStacks"
        case notificationARNs = "NotificationARNs"
        case parameters = "Parameters"
        case resourceTypes = "ResourceTypes"
        case resourcesToImport = "ResourcesToImport"
        case roleARN = "RoleARN"
        case rollbackConfiguration = "RollbackConfiguration"
        case stackName = "StackName"
        case tags = "Tags"
        case templateBody = "TemplateBody"
        case templateURL = "TemplateURL"
        case usePreviousTemplate = "UsePreviousTemplate"
    }

    public func validate() throws {
        try changeSetName.validateAsChangeSetName()
        try clientToken?.validateAsClientToken()
        try description?.validateAsDescription()
        try notificationARNs?.validateAsNotificationARNs()
        try resourcesToImport?.validateAsResourcesToImport()
        try roleARN?.validateAsRoleARN()
        try rollbackConfiguration?.validate()
        try stackName.validateAsStackNameOrId()
        try tags?.validateAsTags()
        try templateBody?.validateAsTemplateBody()
        try templateURL?.validateAsTemplateURL()
    }
}

public struct CreateChangeSetOutput: Codable, Equatable {
    public var id: ChangeSetId?
    public var stackId: StackId?

    public init(id: ChangeSetId? = nil,
                stackId: StackId? = nil) {
        self.id = id
        self.stackId = stackId
    }

    enum CodingKeys: String, CodingKey {
        case id = "Id"
        case stackId = "StackId"
    }

    public func validate() throws {
        try id?.validateAsChangeSetId()
    }
}

public struct CreateChangeSetOutputForCreateChangeSet: Codable, Equatable {
    public var createChangeSetResult: CreateChangeSetOutput

    public init(createChangeSetResult: CreateChangeSetOutput) {
        self.createChangeSetResult = createChangeSetResult
    }

    enum CodingKeys: String, CodingKey {
        case createChangeSetResult = "CreateChangeSetResult"
    }

    public func validate() throws {
        try createChangeSetResult.validate()
    }
}

public struct CreateStackInput: Codable, Equatable {
    public var capabilities: Capabilities?
    public var clientRequestToken: ClientRequestToken?
    public var disableRollback: DisableRollback?
    public var enableTerminationProtection: EnableTerminationProtection?
    public var notificationARNs: NotificationARNs?
    public var onFailure: OnFailure?
    public var parameters: Parameters?
    public var resourceTypes: ResourceTypes?
    public var roleARN: RoleARN?
    public var rollbackConfiguration: RollbackConfiguration?
    public var stackName: StackName
    public var stackPolicyBody: StackPolicyBody?
    public var stackPolicyURL: StackPolicyURL?
    public var tags: Tags?
    public var templateBody: TemplateBody?
    public var templateURL: TemplateURL?
    public var timeoutInMinutes: TimeoutMinutes?

    public init(capabilities: Capabilities? = nil,
                clientRequestToken: ClientRequestToken? = nil,
                disableRollback: DisableRollback? = nil,
                enableTerminationProtection: EnableTerminationProtection? = nil,
                notificationARNs: NotificationARNs? = nil,
                onFailure: OnFailure? = nil,
                parameters: Parameters? = nil,
                resourceTypes: ResourceTypes? = nil,
                roleARN: RoleARN? = nil,
                rollbackConfiguration: RollbackConfiguration? = nil,
                stackName: StackName,
                stackPolicyBody: StackPolicyBody? = nil,
                stackPolicyURL: StackPolicyURL? = nil,
                tags: Tags? = nil,
                templateBody: TemplateBody? = nil,
                templateURL: TemplateURL? = nil,
                timeoutInMinutes: TimeoutMinutes? = nil) {
        self.capabilities = capabilities
        self.clientRequestToken = clientRequestToken
        self.disableRollback = disableRollback
        self.enableTerminationProtection = enableTerminationProtection
        self.notificationARNs = notificationARNs
        self.onFailure = onFailure
        self.parameters = parameters
        self.resourceTypes = resourceTypes
        self.roleARN = roleARN
        self.rollbackConfiguration = rollbackConfiguration
        self.stackName = stackName
        self.stackPolicyBody = stackPolicyBody
        self.stackPolicyURL = stackPolicyURL
        self.tags = tags
        self.templateBody = templateBody
        self.templateURL = templateURL
        self.timeoutInMinutes = timeoutInMinutes
    }

    enum CodingKeys: String, CodingKey {
        case capabilities = "Capabilities"
        case clientRequestToken = "ClientRequestToken"
        case disableRollback = "DisableRollback"
        case enableTerminationProtection = "EnableTerminationProtection"
        case notificationARNs = "NotificationARNs"
        case onFailure = "OnFailure"
        case parameters = "Parameters"
        case resourceTypes = "ResourceTypes"
        case roleARN = "RoleARN"
        case rollbackConfiguration = "RollbackConfiguration"
        case stackName = "StackName"
        case stackPolicyBody = "StackPolicyBody"
        case stackPolicyURL = "StackPolicyURL"
        case tags = "Tags"
        case templateBody = "TemplateBody"
        case templateURL = "TemplateURL"
        case timeoutInMinutes = "TimeoutInMinutes"
    }

    public func validate() throws {
        try clientRequestToken?.validateAsClientRequestToken()
        try notificationARNs?.validateAsNotificationARNs()
        try roleARN?.validateAsRoleARN()
        try rollbackConfiguration?.validate()
        try stackPolicyBody?.validateAsStackPolicyBody()
        try stackPolicyURL?.validateAsStackPolicyURL()
        try tags?.validateAsTags()
        try templateBody?.validateAsTemplateBody()
        try templateURL?.validateAsTemplateURL()
        try timeoutInMinutes?.validateAsTimeoutMinutes()
    }
}

public struct CreateStackInstancesInput: Codable, Equatable {
    public var accounts: AccountList?
    public var callAs: CallAs?
    public var deploymentTargets: DeploymentTargets?
    public var operationId: ClientRequestToken?
    public var operationPreferences: StackSetOperationPreferences?
    public var parameterOverrides: Parameters?
    public var regions: RegionList
    public var stackSetName: StackSetName

    public init(accounts: AccountList? = nil,
                callAs: CallAs? = nil,
                deploymentTargets: DeploymentTargets? = nil,
                operationId: ClientRequestToken? = nil,
                operationPreferences: StackSetOperationPreferences? = nil,
                parameterOverrides: Parameters? = nil,
                regions: RegionList,
                stackSetName: StackSetName) {
        self.accounts = accounts
        self.callAs = callAs
        self.deploymentTargets = deploymentTargets
        self.operationId = operationId
        self.operationPreferences = operationPreferences
        self.parameterOverrides = parameterOverrides
        self.regions = regions
        self.stackSetName = stackSetName
    }

    enum CodingKeys: String, CodingKey {
        case accounts = "Accounts"
        case callAs = "CallAs"
        case deploymentTargets = "DeploymentTargets"
        case operationId = "OperationId"
        case operationPreferences = "OperationPreferences"
        case parameterOverrides = "ParameterOverrides"
        case regions = "Regions"
        case stackSetName = "StackSetName"
    }

    public func validate() throws {
        try deploymentTargets?.validate()
        try operationId?.validateAsClientRequestToken()
        try operationPreferences?.validate()
    }
}

public struct CreateStackInstancesOutput: Codable, Equatable {
    public var operationId: ClientRequestToken?

    public init(operationId: ClientRequestToken? = nil) {
        self.operationId = operationId
    }

    enum CodingKeys: String, CodingKey {
        case operationId = "OperationId"
    }

    public func validate() throws {
        try operationId?.validateAsClientRequestToken()
    }
}

public struct CreateStackInstancesOutputForCreateStackInstances: Codable, Equatable {
    public var createStackInstancesResult: CreateStackInstancesOutput

    public init(createStackInstancesResult: CreateStackInstancesOutput) {
        self.createStackInstancesResult = createStackInstancesResult
    }

    enum CodingKeys: String, CodingKey {
        case createStackInstancesResult = "CreateStackInstancesResult"
    }

    public func validate() throws {
        try createStackInstancesResult.validate()
    }
}

public struct CreateStackOutput: Codable, Equatable {
    public var stackId: StackId?

    public init(stackId: StackId? = nil) {
        self.stackId = stackId
    }

    enum CodingKeys: String, CodingKey {
        case stackId = "StackId"
    }

    public func validate() throws {
    }
}

public struct CreateStackOutputForCreateStack: Codable, Equatable {
    public var createStackResult: CreateStackOutput

    public init(createStackResult: CreateStackOutput) {
        self.createStackResult = createStackResult
    }

    enum CodingKeys: String, CodingKey {
        case createStackResult = "CreateStackResult"
    }

    public func validate() throws {
        try createStackResult.validate()
    }
}

public struct CreateStackSetInput: Codable, Equatable {
    public var administrationRoleARN: RoleARN?
    public var autoDeployment: AutoDeployment?
    public var callAs: CallAs?
    public var capabilities: Capabilities?
    public var clientRequestToken: ClientRequestToken?
    public var description: Description?
    public var executionRoleName: ExecutionRoleName?
    public var managedExecution: ManagedExecution?
    public var parameters: Parameters?
    public var permissionModel: PermissionModels?
    public var stackId: StackId?
    public var stackSetName: StackSetName
    public var tags: Tags?
    public var templateBody: TemplateBody?
    public var templateURL: TemplateURL?

    public init(administrationRoleARN: RoleARN? = nil,
                autoDeployment: AutoDeployment? = nil,
                callAs: CallAs? = nil,
                capabilities: Capabilities? = nil,
                clientRequestToken: ClientRequestToken? = nil,
                description: Description? = nil,
                executionRoleName: ExecutionRoleName? = nil,
                managedExecution: ManagedExecution? = nil,
                parameters: Parameters? = nil,
                permissionModel: PermissionModels? = nil,
                stackId: StackId? = nil,
                stackSetName: StackSetName,
                tags: Tags? = nil,
                templateBody: TemplateBody? = nil,
                templateURL: TemplateURL? = nil) {
        self.administrationRoleARN = administrationRoleARN
        self.autoDeployment = autoDeployment
        self.callAs = callAs
        self.capabilities = capabilities
        self.clientRequestToken = clientRequestToken
        self.description = description
        self.executionRoleName = executionRoleName
        self.managedExecution = managedExecution
        self.parameters = parameters
        self.permissionModel = permissionModel
        self.stackId = stackId
        self.stackSetName = stackSetName
        self.tags = tags
        self.templateBody = templateBody
        self.templateURL = templateURL
    }

    enum CodingKeys: String, CodingKey {
        case administrationRoleARN = "AdministrationRoleARN"
        case autoDeployment = "AutoDeployment"
        case callAs = "CallAs"
        case capabilities = "Capabilities"
        case clientRequestToken = "ClientRequestToken"
        case description = "Description"
        case executionRoleName = "ExecutionRoleName"
        case managedExecution = "ManagedExecution"
        case parameters = "Parameters"
        case permissionModel = "PermissionModel"
        case stackId = "StackId"
        case stackSetName = "StackSetName"
        case tags = "Tags"
        case templateBody = "TemplateBody"
        case templateURL = "TemplateURL"
    }

    public func validate() throws {
        try administrationRoleARN?.validateAsRoleARN()
        try autoDeployment?.validate()
        try clientRequestToken?.validateAsClientRequestToken()
        try description?.validateAsDescription()
        try executionRoleName?.validateAsExecutionRoleName()
        try managedExecution?.validate()
        try tags?.validateAsTags()
        try templateBody?.validateAsTemplateBody()
        try templateURL?.validateAsTemplateURL()
    }
}

public struct CreateStackSetOutput: Codable, Equatable {
    public var stackSetId: StackSetId?

    public init(stackSetId: StackSetId? = nil) {
        self.stackSetId = stackSetId
    }

    enum CodingKeys: String, CodingKey {
        case stackSetId = "StackSetId"
    }

    public func validate() throws {
    }
}

public struct CreateStackSetOutputForCreateStackSet: Codable, Equatable {
    public var createStackSetResult: CreateStackSetOutput

    public init(createStackSetResult: CreateStackSetOutput) {
        self.createStackSetResult = createStackSetResult
    }

    enum CodingKeys: String, CodingKey {
        case createStackSetResult = "CreateStackSetResult"
    }

    public func validate() throws {
        try createStackSetResult.validate()
    }
}

public struct CreatedButModifiedException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DeactivateTypeInput: Codable, Equatable {
    public var arn: PrivateTypeArn?
    public var type: ThirdPartyType?
    public var typeName: TypeName?

    public init(arn: PrivateTypeArn? = nil,
                type: ThirdPartyType? = nil,
                typeName: TypeName? = nil) {
        self.arn = arn
        self.type = type
        self.typeName = typeName
    }

    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
        case type = "Type"
        case typeName = "TypeName"
    }

    public func validate() throws {
        try arn?.validateAsPrivateTypeArn()
        try typeName?.validateAsTypeName()
    }
}

public struct DeactivateTypeOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DeactivateTypeOutputForDeactivateType: Codable, Equatable {
    public var deactivateTypeResult: DeactivateTypeOutput

    public init(deactivateTypeResult: DeactivateTypeOutput) {
        self.deactivateTypeResult = deactivateTypeResult
    }

    enum CodingKeys: String, CodingKey {
        case deactivateTypeResult = "DeactivateTypeResult"
    }

    public func validate() throws {
        try deactivateTypeResult.validate()
    }
}

public struct DeleteChangeSetInput: Codable, Equatable {
    public var changeSetName: ChangeSetNameOrId
    public var stackName: StackNameOrId?

    public init(changeSetName: ChangeSetNameOrId,
                stackName: StackNameOrId? = nil) {
        self.changeSetName = changeSetName
        self.stackName = stackName
    }

    enum CodingKeys: String, CodingKey {
        case changeSetName = "ChangeSetName"
        case stackName = "StackName"
    }

    public func validate() throws {
        try changeSetName.validateAsChangeSetNameOrId()
        try stackName?.validateAsStackNameOrId()
    }
}

public struct DeleteChangeSetOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DeleteChangeSetOutputForDeleteChangeSet: Codable, Equatable {
    public var deleteChangeSetResult: DeleteChangeSetOutput

    public init(deleteChangeSetResult: DeleteChangeSetOutput) {
        self.deleteChangeSetResult = deleteChangeSetResult
    }

    enum CodingKeys: String, CodingKey {
        case deleteChangeSetResult = "DeleteChangeSetResult"
    }

    public func validate() throws {
        try deleteChangeSetResult.validate()
    }
}

public struct DeleteStackInput: Codable, Equatable {
    public var clientRequestToken: ClientRequestToken?
    public var retainResources: RetainResources?
    public var roleARN: RoleARN?
    public var stackName: StackName

    public init(clientRequestToken: ClientRequestToken? = nil,
                retainResources: RetainResources? = nil,
                roleARN: RoleARN? = nil,
                stackName: StackName) {
        self.clientRequestToken = clientRequestToken
        self.retainResources = retainResources
        self.roleARN = roleARN
        self.stackName = stackName
    }

    enum CodingKeys: String, CodingKey {
        case clientRequestToken = "ClientRequestToken"
        case retainResources = "RetainResources"
        case roleARN = "RoleARN"
        case stackName = "StackName"
    }

    public func validate() throws {
        try clientRequestToken?.validateAsClientRequestToken()
        try roleARN?.validateAsRoleARN()
    }
}

public struct DeleteStackInstancesInput: Codable, Equatable {
    public var accounts: AccountList?
    public var callAs: CallAs?
    public var deploymentTargets: DeploymentTargets?
    public var operationId: ClientRequestToken?
    public var operationPreferences: StackSetOperationPreferences?
    public var regions: RegionList
    public var retainStacks: RetainStacks
    public var stackSetName: StackSetName

    public init(accounts: AccountList? = nil,
                callAs: CallAs? = nil,
                deploymentTargets: DeploymentTargets? = nil,
                operationId: ClientRequestToken? = nil,
                operationPreferences: StackSetOperationPreferences? = nil,
                regions: RegionList,
                retainStacks: RetainStacks,
                stackSetName: StackSetName) {
        self.accounts = accounts
        self.callAs = callAs
        self.deploymentTargets = deploymentTargets
        self.operationId = operationId
        self.operationPreferences = operationPreferences
        self.regions = regions
        self.retainStacks = retainStacks
        self.stackSetName = stackSetName
    }

    enum CodingKeys: String, CodingKey {
        case accounts = "Accounts"
        case callAs = "CallAs"
        case deploymentTargets = "DeploymentTargets"
        case operationId = "OperationId"
        case operationPreferences = "OperationPreferences"
        case regions = "Regions"
        case retainStacks = "RetainStacks"
        case stackSetName = "StackSetName"
    }

    public func validate() throws {
        try deploymentTargets?.validate()
        try operationId?.validateAsClientRequestToken()
        try operationPreferences?.validate()
    }
}

public struct DeleteStackInstancesOutput: Codable, Equatable {
    public var operationId: ClientRequestToken?

    public init(operationId: ClientRequestToken? = nil) {
        self.operationId = operationId
    }

    enum CodingKeys: String, CodingKey {
        case operationId = "OperationId"
    }

    public func validate() throws {
        try operationId?.validateAsClientRequestToken()
    }
}

public struct DeleteStackInstancesOutputForDeleteStackInstances: Codable, Equatable {
    public var deleteStackInstancesResult: DeleteStackInstancesOutput

    public init(deleteStackInstancesResult: DeleteStackInstancesOutput) {
        self.deleteStackInstancesResult = deleteStackInstancesResult
    }

    enum CodingKeys: String, CodingKey {
        case deleteStackInstancesResult = "DeleteStackInstancesResult"
    }

    public func validate() throws {
        try deleteStackInstancesResult.validate()
    }
}

public struct DeleteStackSetInput: Codable, Equatable {
    public var callAs: CallAs?
    public var stackSetName: StackSetName

    public init(callAs: CallAs? = nil,
                stackSetName: StackSetName) {
        self.callAs = callAs
        self.stackSetName = stackSetName
    }

    enum CodingKeys: String, CodingKey {
        case callAs = "CallAs"
        case stackSetName = "StackSetName"
    }

    public func validate() throws {
    }
}

public struct DeleteStackSetOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DeleteStackSetOutputForDeleteStackSet: Codable, Equatable {
    public var deleteStackSetResult: DeleteStackSetOutput

    public init(deleteStackSetResult: DeleteStackSetOutput) {
        self.deleteStackSetResult = deleteStackSetResult
    }

    enum CodingKeys: String, CodingKey {
        case deleteStackSetResult = "DeleteStackSetResult"
    }

    public func validate() throws {
        try deleteStackSetResult.validate()
    }
}

public struct DeploymentTargets: Codable, Equatable {
    public var accounts: AccountList?
    public var accountsUrl: AccountsUrl?
    public var organizationalUnitIds: OrganizationalUnitIdList?

    public init(accounts: AccountList? = nil,
                accountsUrl: AccountsUrl? = nil,
                organizationalUnitIds: OrganizationalUnitIdList? = nil) {
        self.accounts = accounts
        self.accountsUrl = accountsUrl
        self.organizationalUnitIds = organizationalUnitIds
    }

    enum CodingKeys: String, CodingKey {
        case accounts = "Accounts"
        case accountsUrl = "AccountsUrl"
        case organizationalUnitIds = "OrganizationalUnitIds"
    }

    public func validate() throws {
        try accountsUrl?.validateAsAccountsUrl()
    }
}

public struct DeregisterTypeInput: Codable, Equatable {
    public var arn: PrivateTypeArn?
    public var type: RegistryType?
    public var typeName: TypeName?
    public var versionId: TypeVersionId?

    public init(arn: PrivateTypeArn? = nil,
                type: RegistryType? = nil,
                typeName: TypeName? = nil,
                versionId: TypeVersionId? = nil) {
        self.arn = arn
        self.type = type
        self.typeName = typeName
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
        case type = "Type"
        case typeName = "TypeName"
        case versionId = "VersionId"
    }

    public func validate() throws {
        try arn?.validateAsPrivateTypeArn()
        try typeName?.validateAsTypeName()
        try versionId?.validateAsTypeVersionId()
    }
}

public struct DeregisterTypeOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DeregisterTypeOutputForDeregisterType: Codable, Equatable {
    public var deregisterTypeResult: DeregisterTypeOutput

    public init(deregisterTypeResult: DeregisterTypeOutput) {
        self.deregisterTypeResult = deregisterTypeResult
    }

    enum CodingKeys: String, CodingKey {
        case deregisterTypeResult = "DeregisterTypeResult"
    }

    public func validate() throws {
        try deregisterTypeResult.validate()
    }
}

public struct DescribeAccountLimitsInput: Codable, Equatable {
    public var nextToken: NextToken?

    public init(nextToken: NextToken? = nil) {
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct DescribeAccountLimitsOutput: Codable, Equatable {
    public var accountLimits: AccountLimitList?
    public var nextToken: NextToken?

    public init(accountLimits: AccountLimitList? = nil,
                nextToken: NextToken? = nil) {
        self.accountLimits = accountLimits
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case accountLimits = "AccountLimits"
        case nextToken = "NextToken"
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct DescribeAccountLimitsOutputForDescribeAccountLimits: Codable, Equatable {
    public var describeAccountLimitsResult: DescribeAccountLimitsOutput

    public init(describeAccountLimitsResult: DescribeAccountLimitsOutput) {
        self.describeAccountLimitsResult = describeAccountLimitsResult
    }

    enum CodingKeys: String, CodingKey {
        case describeAccountLimitsResult = "DescribeAccountLimitsResult"
    }

    public func validate() throws {
        try describeAccountLimitsResult.validate()
    }
}

public struct DescribeChangeSetHooksInput: Codable, Equatable {
    public var changeSetName: ChangeSetNameOrId
    public var logicalResourceId: LogicalResourceId?
    public var nextToken: NextToken?
    public var stackName: StackNameOrId?

    public init(changeSetName: ChangeSetNameOrId,
                logicalResourceId: LogicalResourceId? = nil,
                nextToken: NextToken? = nil,
                stackName: StackNameOrId? = nil) {
        self.changeSetName = changeSetName
        self.logicalResourceId = logicalResourceId
        self.nextToken = nextToken
        self.stackName = stackName
    }

    enum CodingKeys: String, CodingKey {
        case changeSetName = "ChangeSetName"
        case logicalResourceId = "LogicalResourceId"
        case nextToken = "NextToken"
        case stackName = "StackName"
    }

    public func validate() throws {
        try changeSetName.validateAsChangeSetNameOrId()
        try nextToken?.validateAsNextToken()
        try stackName?.validateAsStackNameOrId()
    }
}

public struct DescribeChangeSetHooksOutput: Codable, Equatable {
    public var changeSetId: ChangeSetId?
    public var changeSetName: ChangeSetName?
    public var hooks: ChangeSetHooks?
    public var nextToken: NextToken?
    public var stackId: StackId?
    public var stackName: StackName?
    public var status: ChangeSetHooksStatus?

    public init(changeSetId: ChangeSetId? = nil,
                changeSetName: ChangeSetName? = nil,
                hooks: ChangeSetHooks? = nil,
                nextToken: NextToken? = nil,
                stackId: StackId? = nil,
                stackName: StackName? = nil,
                status: ChangeSetHooksStatus? = nil) {
        self.changeSetId = changeSetId
        self.changeSetName = changeSetName
        self.hooks = hooks
        self.nextToken = nextToken
        self.stackId = stackId
        self.stackName = stackName
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case changeSetId = "ChangeSetId"
        case changeSetName = "ChangeSetName"
        case hooks = "Hooks"
        case nextToken = "NextToken"
        case stackId = "StackId"
        case stackName = "StackName"
        case status = "Status"
    }

    public func validate() throws {
        try changeSetId?.validateAsChangeSetId()
        try changeSetName?.validateAsChangeSetName()
        try nextToken?.validateAsNextToken()
    }
}

public struct DescribeChangeSetHooksOutputForDescribeChangeSetHooks: Codable, Equatable {
    public var describeChangeSetHooksResult: DescribeChangeSetHooksOutput

    public init(describeChangeSetHooksResult: DescribeChangeSetHooksOutput) {
        self.describeChangeSetHooksResult = describeChangeSetHooksResult
    }

    enum CodingKeys: String, CodingKey {
        case describeChangeSetHooksResult = "DescribeChangeSetHooksResult"
    }

    public func validate() throws {
        try describeChangeSetHooksResult.validate()
    }
}

public struct DescribeChangeSetInput: Codable, Equatable {
    public var changeSetName: ChangeSetNameOrId
    public var nextToken: NextToken?
    public var stackName: StackNameOrId?

    public init(changeSetName: ChangeSetNameOrId,
                nextToken: NextToken? = nil,
                stackName: StackNameOrId? = nil) {
        self.changeSetName = changeSetName
        self.nextToken = nextToken
        self.stackName = stackName
    }

    enum CodingKeys: String, CodingKey {
        case changeSetName = "ChangeSetName"
        case nextToken = "NextToken"
        case stackName = "StackName"
    }

    public func validate() throws {
        try changeSetName.validateAsChangeSetNameOrId()
        try nextToken?.validateAsNextToken()
        try stackName?.validateAsStackNameOrId()
    }
}

public struct DescribeChangeSetOutput: Codable, Equatable {
    public var capabilities: Capabilities?
    public var changeSetId: ChangeSetId?
    public var changeSetName: ChangeSetName?
    public var changes: Changes?
    public var creationTime: CreationTime?
    public var description: Description?
    public var executionStatus: ExecutionStatus?
    public var includeNestedStacks: IncludeNestedStacks?
    public var nextToken: NextToken?
    public var notificationARNs: NotificationARNs?
    public var parameters: Parameters?
    public var parentChangeSetId: ChangeSetId?
    public var rollbackConfiguration: RollbackConfiguration?
    public var rootChangeSetId: ChangeSetId?
    public var stackId: StackId?
    public var stackName: StackName?
    public var status: ChangeSetStatus?
    public var statusReason: ChangeSetStatusReason?
    public var tags: Tags?

    public init(capabilities: Capabilities? = nil,
                changeSetId: ChangeSetId? = nil,
                changeSetName: ChangeSetName? = nil,
                changes: Changes? = nil,
                creationTime: CreationTime? = nil,
                description: Description? = nil,
                executionStatus: ExecutionStatus? = nil,
                includeNestedStacks: IncludeNestedStacks? = nil,
                nextToken: NextToken? = nil,
                notificationARNs: NotificationARNs? = nil,
                parameters: Parameters? = nil,
                parentChangeSetId: ChangeSetId? = nil,
                rollbackConfiguration: RollbackConfiguration? = nil,
                rootChangeSetId: ChangeSetId? = nil,
                stackId: StackId? = nil,
                stackName: StackName? = nil,
                status: ChangeSetStatus? = nil,
                statusReason: ChangeSetStatusReason? = nil,
                tags: Tags? = nil) {
        self.capabilities = capabilities
        self.changeSetId = changeSetId
        self.changeSetName = changeSetName
        self.changes = changes
        self.creationTime = creationTime
        self.description = description
        self.executionStatus = executionStatus
        self.includeNestedStacks = includeNestedStacks
        self.nextToken = nextToken
        self.notificationARNs = notificationARNs
        self.parameters = parameters
        self.parentChangeSetId = parentChangeSetId
        self.rollbackConfiguration = rollbackConfiguration
        self.rootChangeSetId = rootChangeSetId
        self.stackId = stackId
        self.stackName = stackName
        self.status = status
        self.statusReason = statusReason
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case capabilities = "Capabilities"
        case changeSetId = "ChangeSetId"
        case changeSetName = "ChangeSetName"
        case changes = "Changes"
        case creationTime = "CreationTime"
        case description = "Description"
        case executionStatus = "ExecutionStatus"
        case includeNestedStacks = "IncludeNestedStacks"
        case nextToken = "NextToken"
        case notificationARNs = "NotificationARNs"
        case parameters = "Parameters"
        case parentChangeSetId = "ParentChangeSetId"
        case rollbackConfiguration = "RollbackConfiguration"
        case rootChangeSetId = "RootChangeSetId"
        case stackId = "StackId"
        case stackName = "StackName"
        case status = "Status"
        case statusReason = "StatusReason"
        case tags = "Tags"
    }

    public func validate() throws {
        try changeSetId?.validateAsChangeSetId()
        try changeSetName?.validateAsChangeSetName()
        try description?.validateAsDescription()
        try nextToken?.validateAsNextToken()
        try notificationARNs?.validateAsNotificationARNs()
        try parentChangeSetId?.validateAsChangeSetId()
        try rollbackConfiguration?.validate()
        try rootChangeSetId?.validateAsChangeSetId()
        try tags?.validateAsTags()
    }
}

public struct DescribeChangeSetOutputForDescribeChangeSet: Codable, Equatable {
    public var describeChangeSetResult: DescribeChangeSetOutput

    public init(describeChangeSetResult: DescribeChangeSetOutput) {
        self.describeChangeSetResult = describeChangeSetResult
    }

    enum CodingKeys: String, CodingKey {
        case describeChangeSetResult = "DescribeChangeSetResult"
    }

    public func validate() throws {
        try describeChangeSetResult.validate()
    }
}

public struct DescribePublisherInput: Codable, Equatable {
    public var publisherId: PublisherId?

    public init(publisherId: PublisherId? = nil) {
        self.publisherId = publisherId
    }

    enum CodingKeys: String, CodingKey {
        case publisherId = "PublisherId"
    }

    public func validate() throws {
        try publisherId?.validateAsPublisherId()
    }
}

public struct DescribePublisherOutput: Codable, Equatable {
    public var identityProvider: IdentityProvider?
    public var publisherId: PublisherId?
    public var publisherProfile: PublisherProfile?
    public var publisherStatus: PublisherStatus?

    public init(identityProvider: IdentityProvider? = nil,
                publisherId: PublisherId? = nil,
                publisherProfile: PublisherProfile? = nil,
                publisherStatus: PublisherStatus? = nil) {
        self.identityProvider = identityProvider
        self.publisherId = publisherId
        self.publisherProfile = publisherProfile
        self.publisherStatus = publisherStatus
    }

    enum CodingKeys: String, CodingKey {
        case identityProvider = "IdentityProvider"
        case publisherId = "PublisherId"
        case publisherProfile = "PublisherProfile"
        case publisherStatus = "PublisherStatus"
    }

    public func validate() throws {
        try publisherId?.validateAsPublisherId()
        try publisherProfile?.validateAsPublisherProfile()
    }
}

public struct DescribePublisherOutputForDescribePublisher: Codable, Equatable {
    public var describePublisherResult: DescribePublisherOutput

    public init(describePublisherResult: DescribePublisherOutput) {
        self.describePublisherResult = describePublisherResult
    }

    enum CodingKeys: String, CodingKey {
        case describePublisherResult = "DescribePublisherResult"
    }

    public func validate() throws {
        try describePublisherResult.validate()
    }
}

public struct DescribeStackDriftDetectionStatusInput: Codable, Equatable {
    public var stackDriftDetectionId: StackDriftDetectionId

    public init(stackDriftDetectionId: StackDriftDetectionId) {
        self.stackDriftDetectionId = stackDriftDetectionId
    }

    enum CodingKeys: String, CodingKey {
        case stackDriftDetectionId = "StackDriftDetectionId"
    }

    public func validate() throws {
        try stackDriftDetectionId.validateAsStackDriftDetectionId()
    }
}

public struct DescribeStackDriftDetectionStatusOutput: Codable, Equatable {
    public var detectionStatus: StackDriftDetectionStatus
    public var detectionStatusReason: StackDriftDetectionStatusReason?
    public var driftedStackResourceCount: BoxedInteger?
    public var stackDriftDetectionId: StackDriftDetectionId
    public var stackDriftStatus: StackDriftStatus?
    public var stackId: StackId
    public var timestamp: Timestamp

    public init(detectionStatus: StackDriftDetectionStatus,
                detectionStatusReason: StackDriftDetectionStatusReason? = nil,
                driftedStackResourceCount: BoxedInteger? = nil,
                stackDriftDetectionId: StackDriftDetectionId,
                stackDriftStatus: StackDriftStatus? = nil,
                stackId: StackId,
                timestamp: Timestamp) {
        self.detectionStatus = detectionStatus
        self.detectionStatusReason = detectionStatusReason
        self.driftedStackResourceCount = driftedStackResourceCount
        self.stackDriftDetectionId = stackDriftDetectionId
        self.stackDriftStatus = stackDriftStatus
        self.stackId = stackId
        self.timestamp = timestamp
    }

    enum CodingKeys: String, CodingKey {
        case detectionStatus = "DetectionStatus"
        case detectionStatusReason = "DetectionStatusReason"
        case driftedStackResourceCount = "DriftedStackResourceCount"
        case stackDriftDetectionId = "StackDriftDetectionId"
        case stackDriftStatus = "StackDriftStatus"
        case stackId = "StackId"
        case timestamp = "Timestamp"
    }

    public func validate() throws {
        try stackDriftDetectionId.validateAsStackDriftDetectionId()
    }
}

public struct DescribeStackDriftDetectionStatusOutputForDescribeStackDriftDetectionStatus: Codable, Equatable {
    public var describeStackDriftDetectionStatusResult: DescribeStackDriftDetectionStatusOutput

    public init(describeStackDriftDetectionStatusResult: DescribeStackDriftDetectionStatusOutput) {
        self.describeStackDriftDetectionStatusResult = describeStackDriftDetectionStatusResult
    }

    enum CodingKeys: String, CodingKey {
        case describeStackDriftDetectionStatusResult = "DescribeStackDriftDetectionStatusResult"
    }

    public func validate() throws {
        try describeStackDriftDetectionStatusResult.validate()
    }
}

public struct DescribeStackEventsInput: Codable, Equatable {
    public var nextToken: NextToken?
    public var stackName: StackName?

    public init(nextToken: NextToken? = nil,
                stackName: StackName? = nil) {
        self.nextToken = nextToken
        self.stackName = stackName
    }

    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case stackName = "StackName"
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct DescribeStackEventsOutput: Codable, Equatable {
    public var nextToken: NextToken?
    public var stackEvents: StackEvents?

    public init(nextToken: NextToken? = nil,
                stackEvents: StackEvents? = nil) {
        self.nextToken = nextToken
        self.stackEvents = stackEvents
    }

    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case stackEvents = "StackEvents"
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct DescribeStackEventsOutputForDescribeStackEvents: Codable, Equatable {
    public var describeStackEventsResult: DescribeStackEventsOutput

    public init(describeStackEventsResult: DescribeStackEventsOutput) {
        self.describeStackEventsResult = describeStackEventsResult
    }

    enum CodingKeys: String, CodingKey {
        case describeStackEventsResult = "DescribeStackEventsResult"
    }

    public func validate() throws {
        try describeStackEventsResult.validate()
    }
}

public struct DescribeStackInstanceInput: Codable, Equatable {
    public var callAs: CallAs?
    public var stackInstanceAccount: Account
    public var stackInstanceRegion: Region
    public var stackSetName: StackSetName

    public init(callAs: CallAs? = nil,
                stackInstanceAccount: Account,
                stackInstanceRegion: Region,
                stackSetName: StackSetName) {
        self.callAs = callAs
        self.stackInstanceAccount = stackInstanceAccount
        self.stackInstanceRegion = stackInstanceRegion
        self.stackSetName = stackSetName
    }

    enum CodingKeys: String, CodingKey {
        case callAs = "CallAs"
        case stackInstanceAccount = "StackInstanceAccount"
        case stackInstanceRegion = "StackInstanceRegion"
        case stackSetName = "StackSetName"
    }

    public func validate() throws {
        try stackInstanceAccount.validateAsAccount()
        try stackInstanceRegion.validateAsRegion()
    }
}

public struct DescribeStackInstanceOutput: Codable, Equatable {
    public var stackInstance: StackInstance?

    public init(stackInstance: StackInstance? = nil) {
        self.stackInstance = stackInstance
    }

    enum CodingKeys: String, CodingKey {
        case stackInstance = "StackInstance"
    }

    public func validate() throws {
        try stackInstance?.validate()
    }
}

public struct DescribeStackInstanceOutputForDescribeStackInstance: Codable, Equatable {
    public var describeStackInstanceResult: DescribeStackInstanceOutput

    public init(describeStackInstanceResult: DescribeStackInstanceOutput) {
        self.describeStackInstanceResult = describeStackInstanceResult
    }

    enum CodingKeys: String, CodingKey {
        case describeStackInstanceResult = "DescribeStackInstanceResult"
    }

    public func validate() throws {
        try describeStackInstanceResult.validate()
    }
}

public struct DescribeStackResourceDriftsInput: Codable, Equatable {
    public var maxResults: BoxedMaxResults?
    public var nextToken: NextToken?
    public var stackName: StackNameOrId
    public var stackResourceDriftStatusFilters: StackResourceDriftStatusFilters?

    public init(maxResults: BoxedMaxResults? = nil,
                nextToken: NextToken? = nil,
                stackName: StackNameOrId,
                stackResourceDriftStatusFilters: StackResourceDriftStatusFilters? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.stackName = stackName
        self.stackResourceDriftStatusFilters = stackResourceDriftStatusFilters
    }

    enum CodingKeys: String, CodingKey {
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case stackName = "StackName"
        case stackResourceDriftStatusFilters = "StackResourceDriftStatusFilters"
    }

    public func validate() throws {
        try maxResults?.validateAsBoxedMaxResults()
        try nextToken?.validateAsNextToken()
        try stackName.validateAsStackNameOrId()
        try stackResourceDriftStatusFilters?.validateAsStackResourceDriftStatusFilters()
    }
}

public struct DescribeStackResourceDriftsOutput: Codable, Equatable {
    public var nextToken: NextToken?
    public var stackResourceDrifts: StackResourceDrifts

    public init(nextToken: NextToken? = nil,
                stackResourceDrifts: StackResourceDrifts) {
        self.nextToken = nextToken
        self.stackResourceDrifts = stackResourceDrifts
    }

    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case stackResourceDrifts = "StackResourceDrifts"
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct DescribeStackResourceDriftsOutputForDescribeStackResourceDrifts: Codable, Equatable {
    public var describeStackResourceDriftsResult: DescribeStackResourceDriftsOutput

    public init(describeStackResourceDriftsResult: DescribeStackResourceDriftsOutput) {
        self.describeStackResourceDriftsResult = describeStackResourceDriftsResult
    }

    enum CodingKeys: String, CodingKey {
        case describeStackResourceDriftsResult = "DescribeStackResourceDriftsResult"
    }

    public func validate() throws {
        try describeStackResourceDriftsResult.validate()
    }
}

public struct DescribeStackResourceInput: Codable, Equatable {
    public var logicalResourceId: LogicalResourceId
    public var stackName: StackName

    public init(logicalResourceId: LogicalResourceId,
                stackName: StackName) {
        self.logicalResourceId = logicalResourceId
        self.stackName = stackName
    }

    enum CodingKeys: String, CodingKey {
        case logicalResourceId = "LogicalResourceId"
        case stackName = "StackName"
    }

    public func validate() throws {
    }
}

public struct DescribeStackResourceOutput: Codable, Equatable {
    public var stackResourceDetail: StackResourceDetail?

    public init(stackResourceDetail: StackResourceDetail? = nil) {
        self.stackResourceDetail = stackResourceDetail
    }

    enum CodingKeys: String, CodingKey {
        case stackResourceDetail = "StackResourceDetail"
    }

    public func validate() throws {
        try stackResourceDetail?.validate()
    }
}

public struct DescribeStackResourceOutputForDescribeStackResource: Codable, Equatable {
    public var describeStackResourceResult: DescribeStackResourceOutput

    public init(describeStackResourceResult: DescribeStackResourceOutput) {
        self.describeStackResourceResult = describeStackResourceResult
    }

    enum CodingKeys: String, CodingKey {
        case describeStackResourceResult = "DescribeStackResourceResult"
    }

    public func validate() throws {
        try describeStackResourceResult.validate()
    }
}

public struct DescribeStackResourcesInput: Codable, Equatable {
    public var logicalResourceId: LogicalResourceId?
    public var physicalResourceId: PhysicalResourceId?
    public var stackName: StackName?

    public init(logicalResourceId: LogicalResourceId? = nil,
                physicalResourceId: PhysicalResourceId? = nil,
                stackName: StackName? = nil) {
        self.logicalResourceId = logicalResourceId
        self.physicalResourceId = physicalResourceId
        self.stackName = stackName
    }

    enum CodingKeys: String, CodingKey {
        case logicalResourceId = "LogicalResourceId"
        case physicalResourceId = "PhysicalResourceId"
        case stackName = "StackName"
    }

    public func validate() throws {
    }
}

public struct DescribeStackResourcesOutput: Codable, Equatable {
    public var stackResources: StackResources?

    public init(stackResources: StackResources? = nil) {
        self.stackResources = stackResources
    }

    enum CodingKeys: String, CodingKey {
        case stackResources = "StackResources"
    }

    public func validate() throws {
    }
}

public struct DescribeStackResourcesOutputForDescribeStackResources: Codable, Equatable {
    public var describeStackResourcesResult: DescribeStackResourcesOutput

    public init(describeStackResourcesResult: DescribeStackResourcesOutput) {
        self.describeStackResourcesResult = describeStackResourcesResult
    }

    enum CodingKeys: String, CodingKey {
        case describeStackResourcesResult = "DescribeStackResourcesResult"
    }

    public func validate() throws {
        try describeStackResourcesResult.validate()
    }
}

public struct DescribeStackSetInput: Codable, Equatable {
    public var callAs: CallAs?
    public var stackSetName: StackSetName

    public init(callAs: CallAs? = nil,
                stackSetName: StackSetName) {
        self.callAs = callAs
        self.stackSetName = stackSetName
    }

    enum CodingKeys: String, CodingKey {
        case callAs = "CallAs"
        case stackSetName = "StackSetName"
    }

    public func validate() throws {
    }
}

public struct DescribeStackSetOperationInput: Codable, Equatable {
    public var callAs: CallAs?
    public var operationId: ClientRequestToken
    public var stackSetName: StackSetName

    public init(callAs: CallAs? = nil,
                operationId: ClientRequestToken,
                stackSetName: StackSetName) {
        self.callAs = callAs
        self.operationId = operationId
        self.stackSetName = stackSetName
    }

    enum CodingKeys: String, CodingKey {
        case callAs = "CallAs"
        case operationId = "OperationId"
        case stackSetName = "StackSetName"
    }

    public func validate() throws {
        try operationId.validateAsClientRequestToken()
    }
}

public struct DescribeStackSetOperationOutput: Codable, Equatable {
    public var stackSetOperation: StackSetOperation?

    public init(stackSetOperation: StackSetOperation? = nil) {
        self.stackSetOperation = stackSetOperation
    }

    enum CodingKeys: String, CodingKey {
        case stackSetOperation = "StackSetOperation"
    }

    public func validate() throws {
        try stackSetOperation?.validate()
    }
}

public struct DescribeStackSetOperationOutputForDescribeStackSetOperation: Codable, Equatable {
    public var describeStackSetOperationResult: DescribeStackSetOperationOutput

    public init(describeStackSetOperationResult: DescribeStackSetOperationOutput) {
        self.describeStackSetOperationResult = describeStackSetOperationResult
    }

    enum CodingKeys: String, CodingKey {
        case describeStackSetOperationResult = "DescribeStackSetOperationResult"
    }

    public func validate() throws {
        try describeStackSetOperationResult.validate()
    }
}

public struct DescribeStackSetOutput: Codable, Equatable {
    public var stackSet: StackSet?

    public init(stackSet: StackSet? = nil) {
        self.stackSet = stackSet
    }

    enum CodingKeys: String, CodingKey {
        case stackSet = "StackSet"
    }

    public func validate() throws {
        try stackSet?.validate()
    }
}

public struct DescribeStackSetOutputForDescribeStackSet: Codable, Equatable {
    public var describeStackSetResult: DescribeStackSetOutput

    public init(describeStackSetResult: DescribeStackSetOutput) {
        self.describeStackSetResult = describeStackSetResult
    }

    enum CodingKeys: String, CodingKey {
        case describeStackSetResult = "DescribeStackSetResult"
    }

    public func validate() throws {
        try describeStackSetResult.validate()
    }
}

public struct DescribeStacksInput: Codable, Equatable {
    public var nextToken: NextToken?
    public var stackName: StackName?

    public init(nextToken: NextToken? = nil,
                stackName: StackName? = nil) {
        self.nextToken = nextToken
        self.stackName = stackName
    }

    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case stackName = "StackName"
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct DescribeStacksOutput: Codable, Equatable {
    public var nextToken: NextToken?
    public var stacks: Stacks?

    public init(nextToken: NextToken? = nil,
                stacks: Stacks? = nil) {
        self.nextToken = nextToken
        self.stacks = stacks
    }

    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case stacks = "Stacks"
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct DescribeStacksOutputForDescribeStacks: Codable, Equatable {
    public var describeStacksResult: DescribeStacksOutput

    public init(describeStacksResult: DescribeStacksOutput) {
        self.describeStacksResult = describeStacksResult
    }

    enum CodingKeys: String, CodingKey {
        case describeStacksResult = "DescribeStacksResult"
    }

    public func validate() throws {
        try describeStacksResult.validate()
    }
}

public struct DescribeTypeInput: Codable, Equatable {
    public var arn: TypeArn?
    public var publicVersionNumber: PublicVersionNumber?
    public var publisherId: PublisherId?
    public var type: RegistryType?
    public var typeName: TypeName?
    public var versionId: TypeVersionId?

    public init(arn: TypeArn? = nil,
                publicVersionNumber: PublicVersionNumber? = nil,
                publisherId: PublisherId? = nil,
                type: RegistryType? = nil,
                typeName: TypeName? = nil,
                versionId: TypeVersionId? = nil) {
        self.arn = arn
        self.publicVersionNumber = publicVersionNumber
        self.publisherId = publisherId
        self.type = type
        self.typeName = typeName
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
        case publicVersionNumber = "PublicVersionNumber"
        case publisherId = "PublisherId"
        case type = "Type"
        case typeName = "TypeName"
        case versionId = "VersionId"
    }

    public func validate() throws {
        try arn?.validateAsTypeArn()
        try publicVersionNumber?.validateAsPublicVersionNumber()
        try publisherId?.validateAsPublisherId()
        try typeName?.validateAsTypeName()
        try versionId?.validateAsTypeVersionId()
    }
}

public struct DescribeTypeOutput: Codable, Equatable {
    public var arn: TypeArn?
    public var autoUpdate: AutoUpdate?
    public var configurationSchema: ConfigurationSchema?
    public var defaultVersionId: TypeVersionId?
    public var deprecatedStatus: DeprecatedStatus?
    public var description: Description?
    public var documentationUrl: OptionalSecureUrl?
    public var executionRoleArn: RoleArn?
    public var isActivated: IsActivated?
    public var isDefaultVersion: IsDefaultVersion?
    public var lastUpdated: Timestamp?
    public var latestPublicVersion: PublicVersionNumber?
    public var loggingConfig: LoggingConfig?
    public var originalTypeArn: TypeArn?
    public var originalTypeName: TypeName?
    public var provisioningType: ProvisioningType?
    public var publicVersionNumber: PublicVersionNumber?
    public var publisherId: PublisherId?
    public var requiredActivatedTypes: RequiredActivatedTypes?
    public var schema: TypeSchema?
    public var sourceUrl: OptionalSecureUrl?
    public var timeCreated: Timestamp?
    public var type: RegistryType?
    public var typeName: TypeName?
    public var typeTestsStatus: TypeTestsStatus?
    public var typeTestsStatusDescription: TypeTestsStatusDescription?
    public var visibility: Visibility?

    public init(arn: TypeArn? = nil,
                autoUpdate: AutoUpdate? = nil,
                configurationSchema: ConfigurationSchema? = nil,
                defaultVersionId: TypeVersionId? = nil,
                deprecatedStatus: DeprecatedStatus? = nil,
                description: Description? = nil,
                documentationUrl: OptionalSecureUrl? = nil,
                executionRoleArn: RoleArn? = nil,
                isActivated: IsActivated? = nil,
                isDefaultVersion: IsDefaultVersion? = nil,
                lastUpdated: Timestamp? = nil,
                latestPublicVersion: PublicVersionNumber? = nil,
                loggingConfig: LoggingConfig? = nil,
                originalTypeArn: TypeArn? = nil,
                originalTypeName: TypeName? = nil,
                provisioningType: ProvisioningType? = nil,
                publicVersionNumber: PublicVersionNumber? = nil,
                publisherId: PublisherId? = nil,
                requiredActivatedTypes: RequiredActivatedTypes? = nil,
                schema: TypeSchema? = nil,
                sourceUrl: OptionalSecureUrl? = nil,
                timeCreated: Timestamp? = nil,
                type: RegistryType? = nil,
                typeName: TypeName? = nil,
                typeTestsStatus: TypeTestsStatus? = nil,
                typeTestsStatusDescription: TypeTestsStatusDescription? = nil,
                visibility: Visibility? = nil) {
        self.arn = arn
        self.autoUpdate = autoUpdate
        self.configurationSchema = configurationSchema
        self.defaultVersionId = defaultVersionId
        self.deprecatedStatus = deprecatedStatus
        self.description = description
        self.documentationUrl = documentationUrl
        self.executionRoleArn = executionRoleArn
        self.isActivated = isActivated
        self.isDefaultVersion = isDefaultVersion
        self.lastUpdated = lastUpdated
        self.latestPublicVersion = latestPublicVersion
        self.loggingConfig = loggingConfig
        self.originalTypeArn = originalTypeArn
        self.originalTypeName = originalTypeName
        self.provisioningType = provisioningType
        self.publicVersionNumber = publicVersionNumber
        self.publisherId = publisherId
        self.requiredActivatedTypes = requiredActivatedTypes
        self.schema = schema
        self.sourceUrl = sourceUrl
        self.timeCreated = timeCreated
        self.type = type
        self.typeName = typeName
        self.typeTestsStatus = typeTestsStatus
        self.typeTestsStatusDescription = typeTestsStatusDescription
        self.visibility = visibility
    }

    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
        case autoUpdate = "AutoUpdate"
        case configurationSchema = "ConfigurationSchema"
        case defaultVersionId = "DefaultVersionId"
        case deprecatedStatus = "DeprecatedStatus"
        case description = "Description"
        case documentationUrl = "DocumentationUrl"
        case executionRoleArn = "ExecutionRoleArn"
        case isActivated = "IsActivated"
        case isDefaultVersion = "IsDefaultVersion"
        case lastUpdated = "LastUpdated"
        case latestPublicVersion = "LatestPublicVersion"
        case loggingConfig = "LoggingConfig"
        case originalTypeArn = "OriginalTypeArn"
        case originalTypeName = "OriginalTypeName"
        case provisioningType = "ProvisioningType"
        case publicVersionNumber = "PublicVersionNumber"
        case publisherId = "PublisherId"
        case requiredActivatedTypes = "RequiredActivatedTypes"
        case schema = "Schema"
        case sourceUrl = "SourceUrl"
        case timeCreated = "TimeCreated"
        case type = "Type"
        case typeName = "TypeName"
        case typeTestsStatus = "TypeTestsStatus"
        case typeTestsStatusDescription = "TypeTestsStatusDescription"
        case visibility = "Visibility"
    }

    public func validate() throws {
        try arn?.validateAsTypeArn()
        try configurationSchema?.validateAsConfigurationSchema()
        try defaultVersionId?.validateAsTypeVersionId()
        try description?.validateAsDescription()
        try documentationUrl?.validateAsOptionalSecureUrl()
        try executionRoleArn?.validateAsRoleArn()
        try latestPublicVersion?.validateAsPublicVersionNumber()
        try loggingConfig?.validate()
        try originalTypeArn?.validateAsTypeArn()
        try originalTypeName?.validateAsTypeName()
        try publicVersionNumber?.validateAsPublicVersionNumber()
        try publisherId?.validateAsPublisherId()
        try schema?.validateAsTypeSchema()
        try sourceUrl?.validateAsOptionalSecureUrl()
        try typeName?.validateAsTypeName()
        try typeTestsStatusDescription?.validateAsTypeTestsStatusDescription()
    }
}

public struct DescribeTypeOutputForDescribeType: Codable, Equatable {
    public var describeTypeResult: DescribeTypeOutput

    public init(describeTypeResult: DescribeTypeOutput) {
        self.describeTypeResult = describeTypeResult
    }

    enum CodingKeys: String, CodingKey {
        case describeTypeResult = "DescribeTypeResult"
    }

    public func validate() throws {
        try describeTypeResult.validate()
    }
}

public struct DescribeTypeRegistrationInput: Codable, Equatable {
    public var registrationToken: RegistrationToken

    public init(registrationToken: RegistrationToken) {
        self.registrationToken = registrationToken
    }

    enum CodingKeys: String, CodingKey {
        case registrationToken = "RegistrationToken"
    }

    public func validate() throws {
        try registrationToken.validateAsRegistrationToken()
    }
}

public struct DescribeTypeRegistrationOutput: Codable, Equatable {
    public var description: Description?
    public var progressStatus: RegistrationStatus?
    public var typeArn: TypeArn?
    public var typeVersionArn: TypeArn?

    public init(description: Description? = nil,
                progressStatus: RegistrationStatus? = nil,
                typeArn: TypeArn? = nil,
                typeVersionArn: TypeArn? = nil) {
        self.description = description
        self.progressStatus = progressStatus
        self.typeArn = typeArn
        self.typeVersionArn = typeVersionArn
    }

    enum CodingKeys: String, CodingKey {
        case description = "Description"
        case progressStatus = "ProgressStatus"
        case typeArn = "TypeArn"
        case typeVersionArn = "TypeVersionArn"
    }

    public func validate() throws {
        try description?.validateAsDescription()
        try typeArn?.validateAsTypeArn()
        try typeVersionArn?.validateAsTypeArn()
    }
}

public struct DescribeTypeRegistrationOutputForDescribeTypeRegistration: Codable, Equatable {
    public var describeTypeRegistrationResult: DescribeTypeRegistrationOutput

    public init(describeTypeRegistrationResult: DescribeTypeRegistrationOutput) {
        self.describeTypeRegistrationResult = describeTypeRegistrationResult
    }

    enum CodingKeys: String, CodingKey {
        case describeTypeRegistrationResult = "DescribeTypeRegistrationResult"
    }

    public func validate() throws {
        try describeTypeRegistrationResult.validate()
    }
}

public struct DetectStackDriftInput: Codable, Equatable {
    public var logicalResourceIds: LogicalResourceIds?
    public var stackName: StackNameOrId

    public init(logicalResourceIds: LogicalResourceIds? = nil,
                stackName: StackNameOrId) {
        self.logicalResourceIds = logicalResourceIds
        self.stackName = stackName
    }

    enum CodingKeys: String, CodingKey {
        case logicalResourceIds = "LogicalResourceIds"
        case stackName = "StackName"
    }

    public func validate() throws {
        try logicalResourceIds?.validateAsLogicalResourceIds()
        try stackName.validateAsStackNameOrId()
    }
}

public struct DetectStackDriftOutput: Codable, Equatable {
    public var stackDriftDetectionId: StackDriftDetectionId

    public init(stackDriftDetectionId: StackDriftDetectionId) {
        self.stackDriftDetectionId = stackDriftDetectionId
    }

    enum CodingKeys: String, CodingKey {
        case stackDriftDetectionId = "StackDriftDetectionId"
    }

    public func validate() throws {
        try stackDriftDetectionId.validateAsStackDriftDetectionId()
    }
}

public struct DetectStackDriftOutputForDetectStackDrift: Codable, Equatable {
    public var detectStackDriftResult: DetectStackDriftOutput

    public init(detectStackDriftResult: DetectStackDriftOutput) {
        self.detectStackDriftResult = detectStackDriftResult
    }

    enum CodingKeys: String, CodingKey {
        case detectStackDriftResult = "DetectStackDriftResult"
    }

    public func validate() throws {
        try detectStackDriftResult.validate()
    }
}

public struct DetectStackResourceDriftInput: Codable, Equatable {
    public var logicalResourceId: LogicalResourceId
    public var stackName: StackNameOrId

    public init(logicalResourceId: LogicalResourceId,
                stackName: StackNameOrId) {
        self.logicalResourceId = logicalResourceId
        self.stackName = stackName
    }

    enum CodingKeys: String, CodingKey {
        case logicalResourceId = "LogicalResourceId"
        case stackName = "StackName"
    }

    public func validate() throws {
        try stackName.validateAsStackNameOrId()
    }
}

public struct DetectStackResourceDriftOutput: Codable, Equatable {
    public var stackResourceDrift: StackResourceDrift

    public init(stackResourceDrift: StackResourceDrift) {
        self.stackResourceDrift = stackResourceDrift
    }

    enum CodingKeys: String, CodingKey {
        case stackResourceDrift = "StackResourceDrift"
    }

    public func validate() throws {
        try stackResourceDrift.validate()
    }
}

public struct DetectStackResourceDriftOutputForDetectStackResourceDrift: Codable, Equatable {
    public var detectStackResourceDriftResult: DetectStackResourceDriftOutput

    public init(detectStackResourceDriftResult: DetectStackResourceDriftOutput) {
        self.detectStackResourceDriftResult = detectStackResourceDriftResult
    }

    enum CodingKeys: String, CodingKey {
        case detectStackResourceDriftResult = "DetectStackResourceDriftResult"
    }

    public func validate() throws {
        try detectStackResourceDriftResult.validate()
    }
}

public struct DetectStackSetDriftInput: Codable, Equatable {
    public var callAs: CallAs?
    public var operationId: ClientRequestToken?
    public var operationPreferences: StackSetOperationPreferences?
    public var stackSetName: StackSetNameOrId

    public init(callAs: CallAs? = nil,
                operationId: ClientRequestToken? = nil,
                operationPreferences: StackSetOperationPreferences? = nil,
                stackSetName: StackSetNameOrId) {
        self.callAs = callAs
        self.operationId = operationId
        self.operationPreferences = operationPreferences
        self.stackSetName = stackSetName
    }

    enum CodingKeys: String, CodingKey {
        case callAs = "CallAs"
        case operationId = "OperationId"
        case operationPreferences = "OperationPreferences"
        case stackSetName = "StackSetName"
    }

    public func validate() throws {
        try operationId?.validateAsClientRequestToken()
        try operationPreferences?.validate()
        try stackSetName.validateAsStackSetNameOrId()
    }
}

public struct DetectStackSetDriftOutput: Codable, Equatable {
    public var operationId: ClientRequestToken?

    public init(operationId: ClientRequestToken? = nil) {
        self.operationId = operationId
    }

    enum CodingKeys: String, CodingKey {
        case operationId = "OperationId"
    }

    public func validate() throws {
        try operationId?.validateAsClientRequestToken()
    }
}

public struct DetectStackSetDriftOutputForDetectStackSetDrift: Codable, Equatable {
    public var detectStackSetDriftResult: DetectStackSetDriftOutput

    public init(detectStackSetDriftResult: DetectStackSetDriftOutput) {
        self.detectStackSetDriftResult = detectStackSetDriftResult
    }

    enum CodingKeys: String, CodingKey {
        case detectStackSetDriftResult = "DetectStackSetDriftResult"
    }

    public func validate() throws {
        try detectStackSetDriftResult.validate()
    }
}

public struct EstimateTemplateCostInput: Codable, Equatable {
    public var parameters: Parameters?
    public var templateBody: TemplateBody?
    public var templateURL: TemplateURL?

    public init(parameters: Parameters? = nil,
                templateBody: TemplateBody? = nil,
                templateURL: TemplateURL? = nil) {
        self.parameters = parameters
        self.templateBody = templateBody
        self.templateURL = templateURL
    }

    enum CodingKeys: String, CodingKey {
        case parameters = "Parameters"
        case templateBody = "TemplateBody"
        case templateURL = "TemplateURL"
    }

    public func validate() throws {
        try templateBody?.validateAsTemplateBody()
        try templateURL?.validateAsTemplateURL()
    }
}

public struct EstimateTemplateCostOutput: Codable, Equatable {
    public var url: Url?

    public init(url: Url? = nil) {
        self.url = url
    }

    enum CodingKeys: String, CodingKey {
        case url = "Url"
    }

    public func validate() throws {
    }
}

public struct EstimateTemplateCostOutputForEstimateTemplateCost: Codable, Equatable {
    public var estimateTemplateCostResult: EstimateTemplateCostOutput

    public init(estimateTemplateCostResult: EstimateTemplateCostOutput) {
        self.estimateTemplateCostResult = estimateTemplateCostResult
    }

    enum CodingKeys: String, CodingKey {
        case estimateTemplateCostResult = "EstimateTemplateCostResult"
    }

    public func validate() throws {
        try estimateTemplateCostResult.validate()
    }
}

public struct ExecuteChangeSetInput: Codable, Equatable {
    public var changeSetName: ChangeSetNameOrId
    public var clientRequestToken: ClientRequestToken?
    public var disableRollback: DisableRollback?
    public var stackName: StackNameOrId?

    public init(changeSetName: ChangeSetNameOrId,
                clientRequestToken: ClientRequestToken? = nil,
                disableRollback: DisableRollback? = nil,
                stackName: StackNameOrId? = nil) {
        self.changeSetName = changeSetName
        self.clientRequestToken = clientRequestToken
        self.disableRollback = disableRollback
        self.stackName = stackName
    }

    enum CodingKeys: String, CodingKey {
        case changeSetName = "ChangeSetName"
        case clientRequestToken = "ClientRequestToken"
        case disableRollback = "DisableRollback"
        case stackName = "StackName"
    }

    public func validate() throws {
        try changeSetName.validateAsChangeSetNameOrId()
        try clientRequestToken?.validateAsClientRequestToken()
        try stackName?.validateAsStackNameOrId()
    }
}

public struct ExecuteChangeSetOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ExecuteChangeSetOutputForExecuteChangeSet: Codable, Equatable {
    public var executeChangeSetResult: ExecuteChangeSetOutput

    public init(executeChangeSetResult: ExecuteChangeSetOutput) {
        self.executeChangeSetResult = executeChangeSetResult
    }

    enum CodingKeys: String, CodingKey {
        case executeChangeSetResult = "ExecuteChangeSetResult"
    }

    public func validate() throws {
        try executeChangeSetResult.validate()
    }
}

public struct Export: Codable, Equatable {
    public var exportingStackId: StackId?
    public var name: ExportName?
    public var value: ExportValue?

    public init(exportingStackId: StackId? = nil,
                name: ExportName? = nil,
                value: ExportValue? = nil) {
        self.exportingStackId = exportingStackId
        self.name = name
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case exportingStackId = "ExportingStackId"
        case name = "Name"
        case value = "Value"
    }

    public func validate() throws {
    }
}

public struct GetStackPolicyInput: Codable, Equatable {
    public var stackName: StackName

    public init(stackName: StackName) {
        self.stackName = stackName
    }

    enum CodingKeys: String, CodingKey {
        case stackName = "StackName"
    }

    public func validate() throws {
    }
}

public struct GetStackPolicyOutput: Codable, Equatable {
    public var stackPolicyBody: StackPolicyBody?

    public init(stackPolicyBody: StackPolicyBody? = nil) {
        self.stackPolicyBody = stackPolicyBody
    }

    enum CodingKeys: String, CodingKey {
        case stackPolicyBody = "StackPolicyBody"
    }

    public func validate() throws {
        try stackPolicyBody?.validateAsStackPolicyBody()
    }
}

public struct GetStackPolicyOutputForGetStackPolicy: Codable, Equatable {
    public var getStackPolicyResult: GetStackPolicyOutput

    public init(getStackPolicyResult: GetStackPolicyOutput) {
        self.getStackPolicyResult = getStackPolicyResult
    }

    enum CodingKeys: String, CodingKey {
        case getStackPolicyResult = "GetStackPolicyResult"
    }

    public func validate() throws {
        try getStackPolicyResult.validate()
    }
}

public struct GetTemplateInput: Codable, Equatable {
    public var changeSetName: ChangeSetNameOrId?
    public var stackName: StackName?
    public var templateStage: TemplateStage?

    public init(changeSetName: ChangeSetNameOrId? = nil,
                stackName: StackName? = nil,
                templateStage: TemplateStage? = nil) {
        self.changeSetName = changeSetName
        self.stackName = stackName
        self.templateStage = templateStage
    }

    enum CodingKeys: String, CodingKey {
        case changeSetName = "ChangeSetName"
        case stackName = "StackName"
        case templateStage = "TemplateStage"
    }

    public func validate() throws {
        try changeSetName?.validateAsChangeSetNameOrId()
    }
}

public struct GetTemplateOutput: Codable, Equatable {
    public var stagesAvailable: StageList?
    public var templateBody: TemplateBody?

    public init(stagesAvailable: StageList? = nil,
                templateBody: TemplateBody? = nil) {
        self.stagesAvailable = stagesAvailable
        self.templateBody = templateBody
    }

    enum CodingKeys: String, CodingKey {
        case stagesAvailable = "StagesAvailable"
        case templateBody = "TemplateBody"
    }

    public func validate() throws {
        try templateBody?.validateAsTemplateBody()
    }
}

public struct GetTemplateOutputForGetTemplate: Codable, Equatable {
    public var getTemplateResult: GetTemplateOutput

    public init(getTemplateResult: GetTemplateOutput) {
        self.getTemplateResult = getTemplateResult
    }

    enum CodingKeys: String, CodingKey {
        case getTemplateResult = "GetTemplateResult"
    }

    public func validate() throws {
        try getTemplateResult.validate()
    }
}

public struct GetTemplateSummaryInput: Codable, Equatable {
    public var callAs: CallAs?
    public var stackName: StackNameOrId?
    public var stackSetName: StackSetNameOrId?
    public var templateBody: TemplateBody?
    public var templateURL: TemplateURL?

    public init(callAs: CallAs? = nil,
                stackName: StackNameOrId? = nil,
                stackSetName: StackSetNameOrId? = nil,
                templateBody: TemplateBody? = nil,
                templateURL: TemplateURL? = nil) {
        self.callAs = callAs
        self.stackName = stackName
        self.stackSetName = stackSetName
        self.templateBody = templateBody
        self.templateURL = templateURL
    }

    enum CodingKeys: String, CodingKey {
        case callAs = "CallAs"
        case stackName = "StackName"
        case stackSetName = "StackSetName"
        case templateBody = "TemplateBody"
        case templateURL = "TemplateURL"
    }

    public func validate() throws {
        try stackName?.validateAsStackNameOrId()
        try stackSetName?.validateAsStackSetNameOrId()
        try templateBody?.validateAsTemplateBody()
        try templateURL?.validateAsTemplateURL()
    }
}

public struct GetTemplateSummaryOutput: Codable, Equatable {
    public var capabilities: Capabilities?
    public var capabilitiesReason: CapabilitiesReason?
    public var declaredTransforms: TransformsList?
    public var description: Description?
    public var metadata: Metadata?
    public var parameters: ParameterDeclarations?
    public var resourceIdentifierSummaries: ResourceIdentifierSummaries?
    public var resourceTypes: ResourceTypes?
    public var version: Version?

    public init(capabilities: Capabilities? = nil,
                capabilitiesReason: CapabilitiesReason? = nil,
                declaredTransforms: TransformsList? = nil,
                description: Description? = nil,
                metadata: Metadata? = nil,
                parameters: ParameterDeclarations? = nil,
                resourceIdentifierSummaries: ResourceIdentifierSummaries? = nil,
                resourceTypes: ResourceTypes? = nil,
                version: Version? = nil) {
        self.capabilities = capabilities
        self.capabilitiesReason = capabilitiesReason
        self.declaredTransforms = declaredTransforms
        self.description = description
        self.metadata = metadata
        self.parameters = parameters
        self.resourceIdentifierSummaries = resourceIdentifierSummaries
        self.resourceTypes = resourceTypes
        self.version = version
    }

    enum CodingKeys: String, CodingKey {
        case capabilities = "Capabilities"
        case capabilitiesReason = "CapabilitiesReason"
        case declaredTransforms = "DeclaredTransforms"
        case description = "Description"
        case metadata = "Metadata"
        case parameters = "Parameters"
        case resourceIdentifierSummaries = "ResourceIdentifierSummaries"
        case resourceTypes = "ResourceTypes"
        case version = "Version"
    }

    public func validate() throws {
        try description?.validateAsDescription()
    }
}

public struct GetTemplateSummaryOutputForGetTemplateSummary: Codable, Equatable {
    public var getTemplateSummaryResult: GetTemplateSummaryOutput

    public init(getTemplateSummaryResult: GetTemplateSummaryOutput) {
        self.getTemplateSummaryResult = getTemplateSummaryResult
    }

    enum CodingKeys: String, CodingKey {
        case getTemplateSummaryResult = "GetTemplateSummaryResult"
    }

    public func validate() throws {
        try getTemplateSummaryResult.validate()
    }
}

public struct ImportStacksToStackSetInput: Codable, Equatable {
    public var callAs: CallAs?
    public var operationId: ClientRequestToken?
    public var operationPreferences: StackSetOperationPreferences?
    public var organizationalUnitIds: OrganizationalUnitIdList?
    public var stackIds: StackIdList?
    public var stackIdsUrl: StackIdsUrl?
    public var stackSetName: StackSetNameOrId

    public init(callAs: CallAs? = nil,
                operationId: ClientRequestToken? = nil,
                operationPreferences: StackSetOperationPreferences? = nil,
                organizationalUnitIds: OrganizationalUnitIdList? = nil,
                stackIds: StackIdList? = nil,
                stackIdsUrl: StackIdsUrl? = nil,
                stackSetName: StackSetNameOrId) {
        self.callAs = callAs
        self.operationId = operationId
        self.operationPreferences = operationPreferences
        self.organizationalUnitIds = organizationalUnitIds
        self.stackIds = stackIds
        self.stackIdsUrl = stackIdsUrl
        self.stackSetName = stackSetName
    }

    enum CodingKeys: String, CodingKey {
        case callAs = "CallAs"
        case operationId = "OperationId"
        case operationPreferences = "OperationPreferences"
        case organizationalUnitIds = "OrganizationalUnitIds"
        case stackIds = "StackIds"
        case stackIdsUrl = "StackIdsUrl"
        case stackSetName = "StackSetName"
    }

    public func validate() throws {
        try operationId?.validateAsClientRequestToken()
        try operationPreferences?.validate()
        try stackIdsUrl?.validateAsStackIdsUrl()
        try stackSetName.validateAsStackSetNameOrId()
    }
}

public struct ImportStacksToStackSetOutput: Codable, Equatable {
    public var operationId: ClientRequestToken?

    public init(operationId: ClientRequestToken? = nil) {
        self.operationId = operationId
    }

    enum CodingKeys: String, CodingKey {
        case operationId = "OperationId"
    }

    public func validate() throws {
        try operationId?.validateAsClientRequestToken()
    }
}

public struct ImportStacksToStackSetOutputForImportStacksToStackSet: Codable, Equatable {
    public var importStacksToStackSetResult: ImportStacksToStackSetOutput

    public init(importStacksToStackSetResult: ImportStacksToStackSetOutput) {
        self.importStacksToStackSetResult = importStacksToStackSetResult
    }

    enum CodingKeys: String, CodingKey {
        case importStacksToStackSetResult = "ImportStacksToStackSetResult"
    }

    public func validate() throws {
        try importStacksToStackSetResult.validate()
    }
}

public struct InsufficientCapabilitiesException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InvalidChangeSetStatusException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InvalidOperationException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InvalidStateTransitionException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct LimitExceededException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ListChangeSetsInput: Codable, Equatable {
    public var nextToken: NextToken?
    public var stackName: StackNameOrId

    public init(nextToken: NextToken? = nil,
                stackName: StackNameOrId) {
        self.nextToken = nextToken
        self.stackName = stackName
    }

    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case stackName = "StackName"
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
        try stackName.validateAsStackNameOrId()
    }
}

public struct ListChangeSetsOutput: Codable, Equatable {
    public var nextToken: NextToken?
    public var summaries: ChangeSetSummaries?

    public init(nextToken: NextToken? = nil,
                summaries: ChangeSetSummaries? = nil) {
        self.nextToken = nextToken
        self.summaries = summaries
    }

    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case summaries = "Summaries"
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct ListChangeSetsOutputForListChangeSets: Codable, Equatable {
    public var listChangeSetsResult: ListChangeSetsOutput

    public init(listChangeSetsResult: ListChangeSetsOutput) {
        self.listChangeSetsResult = listChangeSetsResult
    }

    enum CodingKeys: String, CodingKey {
        case listChangeSetsResult = "ListChangeSetsResult"
    }

    public func validate() throws {
        try listChangeSetsResult.validate()
    }
}

public struct ListExportsInput: Codable, Equatable {
    public var nextToken: NextToken?

    public init(nextToken: NextToken? = nil) {
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct ListExportsOutput: Codable, Equatable {
    public var exports: Exports?
    public var nextToken: NextToken?

    public init(exports: Exports? = nil,
                nextToken: NextToken? = nil) {
        self.exports = exports
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case exports = "Exports"
        case nextToken = "NextToken"
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct ListExportsOutputForListExports: Codable, Equatable {
    public var listExportsResult: ListExportsOutput

    public init(listExportsResult: ListExportsOutput) {
        self.listExportsResult = listExportsResult
    }

    enum CodingKeys: String, CodingKey {
        case listExportsResult = "ListExportsResult"
    }

    public func validate() throws {
        try listExportsResult.validate()
    }
}

public struct ListImportsInput: Codable, Equatable {
    public var exportName: ExportName
    public var nextToken: NextToken?

    public init(exportName: ExportName,
                nextToken: NextToken? = nil) {
        self.exportName = exportName
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case exportName = "ExportName"
        case nextToken = "NextToken"
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct ListImportsOutput: Codable, Equatable {
    public var imports: Imports?
    public var nextToken: NextToken?

    public init(imports: Imports? = nil,
                nextToken: NextToken? = nil) {
        self.imports = imports
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case imports = "Imports"
        case nextToken = "NextToken"
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct ListImportsOutputForListImports: Codable, Equatable {
    public var listImportsResult: ListImportsOutput

    public init(listImportsResult: ListImportsOutput) {
        self.listImportsResult = listImportsResult
    }

    enum CodingKeys: String, CodingKey {
        case listImportsResult = "ListImportsResult"
    }

    public func validate() throws {
        try listImportsResult.validate()
    }
}

public struct ListStackInstancesInput: Codable, Equatable {
    public var callAs: CallAs?
    public var filters: StackInstanceFilters?
    public var maxResults: MaxResults?
    public var nextToken: NextToken?
    public var stackInstanceAccount: Account?
    public var stackInstanceRegion: Region?
    public var stackSetName: StackSetName

    public init(callAs: CallAs? = nil,
                filters: StackInstanceFilters? = nil,
                maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil,
                stackInstanceAccount: Account? = nil,
                stackInstanceRegion: Region? = nil,
                stackSetName: StackSetName) {
        self.callAs = callAs
        self.filters = filters
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.stackInstanceAccount = stackInstanceAccount
        self.stackInstanceRegion = stackInstanceRegion
        self.stackSetName = stackSetName
    }

    enum CodingKeys: String, CodingKey {
        case callAs = "CallAs"
        case filters = "Filters"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case stackInstanceAccount = "StackInstanceAccount"
        case stackInstanceRegion = "StackInstanceRegion"
        case stackSetName = "StackSetName"
    }

    public func validate() throws {
        try filters?.validateAsStackInstanceFilters()
        try maxResults?.validateAsMaxResults()
        try nextToken?.validateAsNextToken()
        try stackInstanceAccount?.validateAsAccount()
        try stackInstanceRegion?.validateAsRegion()
    }
}

public struct ListStackInstancesOutput: Codable, Equatable {
    public var nextToken: NextToken?
    public var summaries: StackInstanceSummaries?

    public init(nextToken: NextToken? = nil,
                summaries: StackInstanceSummaries? = nil) {
        self.nextToken = nextToken
        self.summaries = summaries
    }

    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case summaries = "Summaries"
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct ListStackInstancesOutputForListStackInstances: Codable, Equatable {
    public var listStackInstancesResult: ListStackInstancesOutput

    public init(listStackInstancesResult: ListStackInstancesOutput) {
        self.listStackInstancesResult = listStackInstancesResult
    }

    enum CodingKeys: String, CodingKey {
        case listStackInstancesResult = "ListStackInstancesResult"
    }

    public func validate() throws {
        try listStackInstancesResult.validate()
    }
}

public struct ListStackResourcesInput: Codable, Equatable {
    public var nextToken: NextToken?
    public var stackName: StackName

    public init(nextToken: NextToken? = nil,
                stackName: StackName) {
        self.nextToken = nextToken
        self.stackName = stackName
    }

    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case stackName = "StackName"
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct ListStackResourcesOutput: Codable, Equatable {
    public var nextToken: NextToken?
    public var stackResourceSummaries: StackResourceSummaries?

    public init(nextToken: NextToken? = nil,
                stackResourceSummaries: StackResourceSummaries? = nil) {
        self.nextToken = nextToken
        self.stackResourceSummaries = stackResourceSummaries
    }

    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case stackResourceSummaries = "StackResourceSummaries"
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct ListStackResourcesOutputForListStackResources: Codable, Equatable {
    public var listStackResourcesResult: ListStackResourcesOutput

    public init(listStackResourcesResult: ListStackResourcesOutput) {
        self.listStackResourcesResult = listStackResourcesResult
    }

    enum CodingKeys: String, CodingKey {
        case listStackResourcesResult = "ListStackResourcesResult"
    }

    public func validate() throws {
        try listStackResourcesResult.validate()
    }
}

public struct ListStackSetOperationResultsInput: Codable, Equatable {
    public var callAs: CallAs?
    public var maxResults: MaxResults?
    public var nextToken: NextToken?
    public var operationId: ClientRequestToken
    public var stackSetName: StackSetName

    public init(callAs: CallAs? = nil,
                maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil,
                operationId: ClientRequestToken,
                stackSetName: StackSetName) {
        self.callAs = callAs
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.operationId = operationId
        self.stackSetName = stackSetName
    }

    enum CodingKeys: String, CodingKey {
        case callAs = "CallAs"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case operationId = "OperationId"
        case stackSetName = "StackSetName"
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
        try nextToken?.validateAsNextToken()
        try operationId.validateAsClientRequestToken()
    }
}

public struct ListStackSetOperationResultsOutput: Codable, Equatable {
    public var nextToken: NextToken?
    public var summaries: StackSetOperationResultSummaries?

    public init(nextToken: NextToken? = nil,
                summaries: StackSetOperationResultSummaries? = nil) {
        self.nextToken = nextToken
        self.summaries = summaries
    }

    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case summaries = "Summaries"
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct ListStackSetOperationResultsOutputForListStackSetOperationResults: Codable, Equatable {
    public var listStackSetOperationResultsResult: ListStackSetOperationResultsOutput

    public init(listStackSetOperationResultsResult: ListStackSetOperationResultsOutput) {
        self.listStackSetOperationResultsResult = listStackSetOperationResultsResult
    }

    enum CodingKeys: String, CodingKey {
        case listStackSetOperationResultsResult = "ListStackSetOperationResultsResult"
    }

    public func validate() throws {
        try listStackSetOperationResultsResult.validate()
    }
}

public struct ListStackSetOperationsInput: Codable, Equatable {
    public var callAs: CallAs?
    public var maxResults: MaxResults?
    public var nextToken: NextToken?
    public var stackSetName: StackSetName

    public init(callAs: CallAs? = nil,
                maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil,
                stackSetName: StackSetName) {
        self.callAs = callAs
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.stackSetName = stackSetName
    }

    enum CodingKeys: String, CodingKey {
        case callAs = "CallAs"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case stackSetName = "StackSetName"
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
        try nextToken?.validateAsNextToken()
    }
}

public struct ListStackSetOperationsOutput: Codable, Equatable {
    public var nextToken: NextToken?
    public var summaries: StackSetOperationSummaries?

    public init(nextToken: NextToken? = nil,
                summaries: StackSetOperationSummaries? = nil) {
        self.nextToken = nextToken
        self.summaries = summaries
    }

    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case summaries = "Summaries"
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct ListStackSetOperationsOutputForListStackSetOperations: Codable, Equatable {
    public var listStackSetOperationsResult: ListStackSetOperationsOutput

    public init(listStackSetOperationsResult: ListStackSetOperationsOutput) {
        self.listStackSetOperationsResult = listStackSetOperationsResult
    }

    enum CodingKeys: String, CodingKey {
        case listStackSetOperationsResult = "ListStackSetOperationsResult"
    }

    public func validate() throws {
        try listStackSetOperationsResult.validate()
    }
}

public struct ListStackSetsInput: Codable, Equatable {
    public var callAs: CallAs?
    public var maxResults: MaxResults?
    public var nextToken: NextToken?
    public var status: StackSetStatus?

    public init(callAs: CallAs? = nil,
                maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil,
                status: StackSetStatus? = nil) {
        self.callAs = callAs
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case callAs = "CallAs"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case status = "Status"
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
        try nextToken?.validateAsNextToken()
    }
}

public struct ListStackSetsOutput: Codable, Equatable {
    public var nextToken: NextToken?
    public var summaries: StackSetSummaries?

    public init(nextToken: NextToken? = nil,
                summaries: StackSetSummaries? = nil) {
        self.nextToken = nextToken
        self.summaries = summaries
    }

    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case summaries = "Summaries"
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct ListStackSetsOutputForListStackSets: Codable, Equatable {
    public var listStackSetsResult: ListStackSetsOutput

    public init(listStackSetsResult: ListStackSetsOutput) {
        self.listStackSetsResult = listStackSetsResult
    }

    enum CodingKeys: String, CodingKey {
        case listStackSetsResult = "ListStackSetsResult"
    }

    public func validate() throws {
        try listStackSetsResult.validate()
    }
}

public struct ListStacksInput: Codable, Equatable {
    public var nextToken: NextToken?
    public var stackStatusFilter: StackStatusFilter?

    public init(nextToken: NextToken? = nil,
                stackStatusFilter: StackStatusFilter? = nil) {
        self.nextToken = nextToken
        self.stackStatusFilter = stackStatusFilter
    }

    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case stackStatusFilter = "StackStatusFilter"
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct ListStacksOutput: Codable, Equatable {
    public var nextToken: NextToken?
    public var stackSummaries: StackSummaries?

    public init(nextToken: NextToken? = nil,
                stackSummaries: StackSummaries? = nil) {
        self.nextToken = nextToken
        self.stackSummaries = stackSummaries
    }

    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case stackSummaries = "StackSummaries"
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct ListStacksOutputForListStacks: Codable, Equatable {
    public var listStacksResult: ListStacksOutput

    public init(listStacksResult: ListStacksOutput) {
        self.listStacksResult = listStacksResult
    }

    enum CodingKeys: String, CodingKey {
        case listStacksResult = "ListStacksResult"
    }

    public func validate() throws {
        try listStacksResult.validate()
    }
}

public struct ListTypeRegistrationsInput: Codable, Equatable {
    public var maxResults: MaxResults?
    public var nextToken: NextToken?
    public var registrationStatusFilter: RegistrationStatus?
    public var type: RegistryType?
    public var typeArn: TypeArn?
    public var typeName: TypeName?

    public init(maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil,
                registrationStatusFilter: RegistrationStatus? = nil,
                type: RegistryType? = nil,
                typeArn: TypeArn? = nil,
                typeName: TypeName? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.registrationStatusFilter = registrationStatusFilter
        self.type = type
        self.typeArn = typeArn
        self.typeName = typeName
    }

    enum CodingKeys: String, CodingKey {
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case registrationStatusFilter = "RegistrationStatusFilter"
        case type = "Type"
        case typeArn = "TypeArn"
        case typeName = "TypeName"
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
        try nextToken?.validateAsNextToken()
        try typeArn?.validateAsTypeArn()
        try typeName?.validateAsTypeName()
    }
}

public struct ListTypeRegistrationsOutput: Codable, Equatable {
    public var nextToken: NextToken?
    public var registrationTokenList: RegistrationTokenList?

    public init(nextToken: NextToken? = nil,
                registrationTokenList: RegistrationTokenList? = nil) {
        self.nextToken = nextToken
        self.registrationTokenList = registrationTokenList
    }

    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case registrationTokenList = "RegistrationTokenList"
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct ListTypeRegistrationsOutputForListTypeRegistrations: Codable, Equatable {
    public var listTypeRegistrationsResult: ListTypeRegistrationsOutput

    public init(listTypeRegistrationsResult: ListTypeRegistrationsOutput) {
        self.listTypeRegistrationsResult = listTypeRegistrationsResult
    }

    enum CodingKeys: String, CodingKey {
        case listTypeRegistrationsResult = "ListTypeRegistrationsResult"
    }

    public func validate() throws {
        try listTypeRegistrationsResult.validate()
    }
}

public struct ListTypeVersionsInput: Codable, Equatable {
    public var arn: TypeArn?
    public var deprecatedStatus: DeprecatedStatus?
    public var maxResults: MaxResults?
    public var nextToken: NextToken?
    public var publisherId: PublisherId?
    public var type: RegistryType?
    public var typeName: TypeName?

    public init(arn: TypeArn? = nil,
                deprecatedStatus: DeprecatedStatus? = nil,
                maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil,
                publisherId: PublisherId? = nil,
                type: RegistryType? = nil,
                typeName: TypeName? = nil) {
        self.arn = arn
        self.deprecatedStatus = deprecatedStatus
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.publisherId = publisherId
        self.type = type
        self.typeName = typeName
    }

    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
        case deprecatedStatus = "DeprecatedStatus"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case publisherId = "PublisherId"
        case type = "Type"
        case typeName = "TypeName"
    }

    public func validate() throws {
        try arn?.validateAsTypeArn()
        try maxResults?.validateAsMaxResults()
        try nextToken?.validateAsNextToken()
        try publisherId?.validateAsPublisherId()
        try typeName?.validateAsTypeName()
    }
}

public struct ListTypeVersionsOutput: Codable, Equatable {
    public var nextToken: NextToken?
    public var typeVersionSummaries: TypeVersionSummaries?

    public init(nextToken: NextToken? = nil,
                typeVersionSummaries: TypeVersionSummaries? = nil) {
        self.nextToken = nextToken
        self.typeVersionSummaries = typeVersionSummaries
    }

    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case typeVersionSummaries = "TypeVersionSummaries"
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct ListTypeVersionsOutputForListTypeVersions: Codable, Equatable {
    public var listTypeVersionsResult: ListTypeVersionsOutput

    public init(listTypeVersionsResult: ListTypeVersionsOutput) {
        self.listTypeVersionsResult = listTypeVersionsResult
    }

    enum CodingKeys: String, CodingKey {
        case listTypeVersionsResult = "ListTypeVersionsResult"
    }

    public func validate() throws {
        try listTypeVersionsResult.validate()
    }
}

public struct ListTypesInput: Codable, Equatable {
    public var deprecatedStatus: DeprecatedStatus?
    public var filters: TypeFilters?
    public var maxResults: MaxResults?
    public var nextToken: NextToken?
    public var provisioningType: ProvisioningType?
    public var type: RegistryType?
    public var visibility: Visibility?

    public init(deprecatedStatus: DeprecatedStatus? = nil,
                filters: TypeFilters? = nil,
                maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil,
                provisioningType: ProvisioningType? = nil,
                type: RegistryType? = nil,
                visibility: Visibility? = nil) {
        self.deprecatedStatus = deprecatedStatus
        self.filters = filters
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.provisioningType = provisioningType
        self.type = type
        self.visibility = visibility
    }

    enum CodingKeys: String, CodingKey {
        case deprecatedStatus = "DeprecatedStatus"
        case filters = "Filters"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case provisioningType = "ProvisioningType"
        case type = "Type"
        case visibility = "Visibility"
    }

    public func validate() throws {
        try filters?.validate()
        try maxResults?.validateAsMaxResults()
        try nextToken?.validateAsNextToken()
    }
}

public struct ListTypesOutput: Codable, Equatable {
    public var nextToken: NextToken?
    public var typeSummaries: TypeSummaries?

    public init(nextToken: NextToken? = nil,
                typeSummaries: TypeSummaries? = nil) {
        self.nextToken = nextToken
        self.typeSummaries = typeSummaries
    }

    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case typeSummaries = "TypeSummaries"
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct ListTypesOutputForListTypes: Codable, Equatable {
    public var listTypesResult: ListTypesOutput

    public init(listTypesResult: ListTypesOutput) {
        self.listTypesResult = listTypesResult
    }

    enum CodingKeys: String, CodingKey {
        case listTypesResult = "ListTypesResult"
    }

    public func validate() throws {
        try listTypesResult.validate()
    }
}

public struct LoggingConfig: Codable, Equatable {
    public var logGroupName: LogGroupName
    public var logRoleArn: RoleArn

    public init(logGroupName: LogGroupName,
                logRoleArn: RoleArn) {
        self.logGroupName = logGroupName
        self.logRoleArn = logRoleArn
    }

    enum CodingKeys: String, CodingKey {
        case logGroupName = "LogGroupName"
        case logRoleArn = "LogRoleArn"
    }

    public func validate() throws {
        try logGroupName.validateAsLogGroupName()
        try logRoleArn.validateAsRoleArn()
    }
}

public struct ManagedExecution: Codable, Equatable {
    public var active: ManagedExecutionNullable?

    public init(active: ManagedExecutionNullable? = nil) {
        self.active = active
    }

    enum CodingKeys: String, CodingKey {
        case active = "Active"
    }

    public func validate() throws {
    }
}

public struct ModuleInfo: Codable, Equatable {
    public var logicalIdHierarchy: LogicalIdHierarchy?
    public var typeHierarchy: TypeHierarchy?

    public init(logicalIdHierarchy: LogicalIdHierarchy? = nil,
                typeHierarchy: TypeHierarchy? = nil) {
        self.logicalIdHierarchy = logicalIdHierarchy
        self.typeHierarchy = typeHierarchy
    }

    enum CodingKeys: String, CodingKey {
        case logicalIdHierarchy = "LogicalIdHierarchy"
        case typeHierarchy = "TypeHierarchy"
    }

    public func validate() throws {
    }
}

public struct NameAlreadyExistsException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct OperationIdAlreadyExistsException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct OperationInProgressException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct OperationNotFoundException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct OperationStatusCheckFailedException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct Output: Codable, Equatable {
    public var description: Description?
    public var exportName: ExportName?
    public var outputKey: OutputKey?
    public var outputValue: OutputValue?

    public init(description: Description? = nil,
                exportName: ExportName? = nil,
                outputKey: OutputKey? = nil,
                outputValue: OutputValue? = nil) {
        self.description = description
        self.exportName = exportName
        self.outputKey = outputKey
        self.outputValue = outputValue
    }

    enum CodingKeys: String, CodingKey {
        case description = "Description"
        case exportName = "ExportName"
        case outputKey = "OutputKey"
        case outputValue = "OutputValue"
    }

    public func validate() throws {
        try description?.validateAsDescription()
    }
}

public struct Parameter: Codable, Equatable {
    public var parameterKey: ParameterKey?
    public var parameterValue: ParameterValue?
    public var resolvedValue: ParameterValue?
    public var usePreviousValue: UsePreviousValue?

    public init(parameterKey: ParameterKey? = nil,
                parameterValue: ParameterValue? = nil,
                resolvedValue: ParameterValue? = nil,
                usePreviousValue: UsePreviousValue? = nil) {
        self.parameterKey = parameterKey
        self.parameterValue = parameterValue
        self.resolvedValue = resolvedValue
        self.usePreviousValue = usePreviousValue
    }

    enum CodingKeys: String, CodingKey {
        case parameterKey = "ParameterKey"
        case parameterValue = "ParameterValue"
        case resolvedValue = "ResolvedValue"
        case usePreviousValue = "UsePreviousValue"
    }

    public func validate() throws {
    }
}

public struct ParameterConstraints: Codable, Equatable {
    public var allowedValues: AllowedValues?

    public init(allowedValues: AllowedValues? = nil) {
        self.allowedValues = allowedValues
    }

    enum CodingKeys: String, CodingKey {
        case allowedValues = "AllowedValues"
    }

    public func validate() throws {
    }
}

public struct ParameterDeclaration: Codable, Equatable {
    public var defaultValue: ParameterValue?
    public var description: Description?
    public var noEcho: NoEcho?
    public var parameterConstraints: ParameterConstraints?
    public var parameterKey: ParameterKey?
    public var parameterType: ParameterType?

    public init(defaultValue: ParameterValue? = nil,
                description: Description? = nil,
                noEcho: NoEcho? = nil,
                parameterConstraints: ParameterConstraints? = nil,
                parameterKey: ParameterKey? = nil,
                parameterType: ParameterType? = nil) {
        self.defaultValue = defaultValue
        self.description = description
        self.noEcho = noEcho
        self.parameterConstraints = parameterConstraints
        self.parameterKey = parameterKey
        self.parameterType = parameterType
    }

    enum CodingKeys: String, CodingKey {
        case defaultValue = "DefaultValue"
        case description = "Description"
        case noEcho = "NoEcho"
        case parameterConstraints = "ParameterConstraints"
        case parameterKey = "ParameterKey"
        case parameterType = "ParameterType"
    }

    public func validate() throws {
        try description?.validateAsDescription()
        try parameterConstraints?.validate()
    }
}

public struct PhysicalResourceIdContextKeyValuePair: Codable, Equatable {
    public var key: Key
    public var value: Value

    public init(key: Key,
                value: Value) {
        self.key = key
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case key = "Key"
        case value = "Value"
    }

    public func validate() throws {
    }
}

public struct PropertyDifference: Codable, Equatable {
    public var actualValue: PropertyValue
    public var differenceType: DifferenceType
    public var expectedValue: PropertyValue
    public var propertyPath: PropertyPath

    public init(actualValue: PropertyValue,
                differenceType: DifferenceType,
                expectedValue: PropertyValue,
                propertyPath: PropertyPath) {
        self.actualValue = actualValue
        self.differenceType = differenceType
        self.expectedValue = expectedValue
        self.propertyPath = propertyPath
    }

    enum CodingKeys: String, CodingKey {
        case actualValue = "ActualValue"
        case differenceType = "DifferenceType"
        case expectedValue = "ExpectedValue"
        case propertyPath = "PropertyPath"
    }

    public func validate() throws {
    }
}

public struct PublishTypeInput: Codable, Equatable {
    public var arn: PrivateTypeArn?
    public var publicVersionNumber: PublicVersionNumber?
    public var type: ThirdPartyType?
    public var typeName: TypeName?

    public init(arn: PrivateTypeArn? = nil,
                publicVersionNumber: PublicVersionNumber? = nil,
                type: ThirdPartyType? = nil,
                typeName: TypeName? = nil) {
        self.arn = arn
        self.publicVersionNumber = publicVersionNumber
        self.type = type
        self.typeName = typeName
    }

    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
        case publicVersionNumber = "PublicVersionNumber"
        case type = "Type"
        case typeName = "TypeName"
    }

    public func validate() throws {
        try arn?.validateAsPrivateTypeArn()
        try publicVersionNumber?.validateAsPublicVersionNumber()
        try typeName?.validateAsTypeName()
    }
}

public struct PublishTypeOutput: Codable, Equatable {
    public var publicTypeArn: TypeArn?

    public init(publicTypeArn: TypeArn? = nil) {
        self.publicTypeArn = publicTypeArn
    }

    enum CodingKeys: String, CodingKey {
        case publicTypeArn = "PublicTypeArn"
    }

    public func validate() throws {
        try publicTypeArn?.validateAsTypeArn()
    }
}

public struct PublishTypeOutputForPublishType: Codable, Equatable {
    public var publishTypeResult: PublishTypeOutput

    public init(publishTypeResult: PublishTypeOutput) {
        self.publishTypeResult = publishTypeResult
    }

    enum CodingKeys: String, CodingKey {
        case publishTypeResult = "PublishTypeResult"
    }

    public func validate() throws {
        try publishTypeResult.validate()
    }
}

public struct RecordHandlerProgressInput: Codable, Equatable {
    public var bearerToken: ClientToken
    public var clientRequestToken: ClientRequestToken?
    public var currentOperationStatus: OperationStatus?
    public var errorCode: HandlerErrorCode?
    public var operationStatus: OperationStatus
    public var resourceModel: ResourceModel?
    public var statusMessage: StatusMessage?

    public init(bearerToken: ClientToken,
                clientRequestToken: ClientRequestToken? = nil,
                currentOperationStatus: OperationStatus? = nil,
                errorCode: HandlerErrorCode? = nil,
                operationStatus: OperationStatus,
                resourceModel: ResourceModel? = nil,
                statusMessage: StatusMessage? = nil) {
        self.bearerToken = bearerToken
        self.clientRequestToken = clientRequestToken
        self.currentOperationStatus = currentOperationStatus
        self.errorCode = errorCode
        self.operationStatus = operationStatus
        self.resourceModel = resourceModel
        self.statusMessage = statusMessage
    }

    enum CodingKeys: String, CodingKey {
        case bearerToken = "BearerToken"
        case clientRequestToken = "ClientRequestToken"
        case currentOperationStatus = "CurrentOperationStatus"
        case errorCode = "ErrorCode"
        case operationStatus = "OperationStatus"
        case resourceModel = "ResourceModel"
        case statusMessage = "StatusMessage"
    }

    public func validate() throws {
        try bearerToken.validateAsClientToken()
        try clientRequestToken?.validateAsClientRequestToken()
        try resourceModel?.validateAsResourceModel()
        try statusMessage?.validateAsStatusMessage()
    }
}

public struct RecordHandlerProgressOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct RecordHandlerProgressOutputForRecordHandlerProgress: Codable, Equatable {
    public var recordHandlerProgressResult: RecordHandlerProgressOutput

    public init(recordHandlerProgressResult: RecordHandlerProgressOutput) {
        self.recordHandlerProgressResult = recordHandlerProgressResult
    }

    enum CodingKeys: String, CodingKey {
        case recordHandlerProgressResult = "RecordHandlerProgressResult"
    }

    public func validate() throws {
        try recordHandlerProgressResult.validate()
    }
}

public struct RegisterPublisherInput: Codable, Equatable {
    public var acceptTermsAndConditions: AcceptTermsAndConditions?
    public var connectionArn: ConnectionArn?

    public init(acceptTermsAndConditions: AcceptTermsAndConditions? = nil,
                connectionArn: ConnectionArn? = nil) {
        self.acceptTermsAndConditions = acceptTermsAndConditions
        self.connectionArn = connectionArn
    }

    enum CodingKeys: String, CodingKey {
        case acceptTermsAndConditions = "AcceptTermsAndConditions"
        case connectionArn = "ConnectionArn"
    }

    public func validate() throws {
        try connectionArn?.validateAsConnectionArn()
    }
}

public struct RegisterPublisherOutput: Codable, Equatable {
    public var publisherId: PublisherId?

    public init(publisherId: PublisherId? = nil) {
        self.publisherId = publisherId
    }

    enum CodingKeys: String, CodingKey {
        case publisherId = "PublisherId"
    }

    public func validate() throws {
        try publisherId?.validateAsPublisherId()
    }
}

public struct RegisterPublisherOutputForRegisterPublisher: Codable, Equatable {
    public var registerPublisherResult: RegisterPublisherOutput

    public init(registerPublisherResult: RegisterPublisherOutput) {
        self.registerPublisherResult = registerPublisherResult
    }

    enum CodingKeys: String, CodingKey {
        case registerPublisherResult = "RegisterPublisherResult"
    }

    public func validate() throws {
        try registerPublisherResult.validate()
    }
}

public struct RegisterTypeInput: Codable, Equatable {
    public var clientRequestToken: RequestToken?
    public var executionRoleArn: RoleArn?
    public var loggingConfig: LoggingConfig?
    public var schemaHandlerPackage: S3Url
    public var type: RegistryType?
    public var typeName: TypeName

    public init(clientRequestToken: RequestToken? = nil,
                executionRoleArn: RoleArn? = nil,
                loggingConfig: LoggingConfig? = nil,
                schemaHandlerPackage: S3Url,
                type: RegistryType? = nil,
                typeName: TypeName) {
        self.clientRequestToken = clientRequestToken
        self.executionRoleArn = executionRoleArn
        self.loggingConfig = loggingConfig
        self.schemaHandlerPackage = schemaHandlerPackage
        self.type = type
        self.typeName = typeName
    }

    enum CodingKeys: String, CodingKey {
        case clientRequestToken = "ClientRequestToken"
        case executionRoleArn = "ExecutionRoleArn"
        case loggingConfig = "LoggingConfig"
        case schemaHandlerPackage = "SchemaHandlerPackage"
        case type = "Type"
        case typeName = "TypeName"
    }

    public func validate() throws {
        try clientRequestToken?.validateAsRequestToken()
        try executionRoleArn?.validateAsRoleArn()
        try loggingConfig?.validate()
        try schemaHandlerPackage.validateAsS3Url()
        try typeName.validateAsTypeName()
    }
}

public struct RegisterTypeOutput: Codable, Equatable {
    public var registrationToken: RegistrationToken?

    public init(registrationToken: RegistrationToken? = nil) {
        self.registrationToken = registrationToken
    }

    enum CodingKeys: String, CodingKey {
        case registrationToken = "RegistrationToken"
    }

    public func validate() throws {
        try registrationToken?.validateAsRegistrationToken()
    }
}

public struct RegisterTypeOutputForRegisterType: Codable, Equatable {
    public var registerTypeResult: RegisterTypeOutput

    public init(registerTypeResult: RegisterTypeOutput) {
        self.registerTypeResult = registerTypeResult
    }

    enum CodingKeys: String, CodingKey {
        case registerTypeResult = "RegisterTypeResult"
    }

    public func validate() throws {
        try registerTypeResult.validate()
    }
}

public struct RequiredActivatedType: Codable, Equatable {
    public var originalTypeName: TypeName?
    public var publisherId: PublisherId?
    public var supportedMajorVersions: SupportedMajorVersions?
    public var typeNameAlias: TypeName?

    public init(originalTypeName: TypeName? = nil,
                publisherId: PublisherId? = nil,
                supportedMajorVersions: SupportedMajorVersions? = nil,
                typeNameAlias: TypeName? = nil) {
        self.originalTypeName = originalTypeName
        self.publisherId = publisherId
        self.supportedMajorVersions = supportedMajorVersions
        self.typeNameAlias = typeNameAlias
    }

    enum CodingKeys: String, CodingKey {
        case originalTypeName = "OriginalTypeName"
        case publisherId = "PublisherId"
        case supportedMajorVersions = "SupportedMajorVersions"
        case typeNameAlias = "TypeNameAlias"
    }

    public func validate() throws {
        try originalTypeName?.validateAsTypeName()
        try publisherId?.validateAsPublisherId()
        try typeNameAlias?.validateAsTypeName()
    }
}

public struct ResourceChange: Codable, Equatable {
    public var action: ChangeAction?
    public var changeSetId: ChangeSetId?
    public var details: ResourceChangeDetails?
    public var logicalResourceId: LogicalResourceId?
    public var moduleInfo: ModuleInfo?
    public var physicalResourceId: PhysicalResourceId?
    public var replacement: Replacement?
    public var resourceType: ResourceType?
    public var scope: Scope?

    public init(action: ChangeAction? = nil,
                changeSetId: ChangeSetId? = nil,
                details: ResourceChangeDetails? = nil,
                logicalResourceId: LogicalResourceId? = nil,
                moduleInfo: ModuleInfo? = nil,
                physicalResourceId: PhysicalResourceId? = nil,
                replacement: Replacement? = nil,
                resourceType: ResourceType? = nil,
                scope: Scope? = nil) {
        self.action = action
        self.changeSetId = changeSetId
        self.details = details
        self.logicalResourceId = logicalResourceId
        self.moduleInfo = moduleInfo
        self.physicalResourceId = physicalResourceId
        self.replacement = replacement
        self.resourceType = resourceType
        self.scope = scope
    }

    enum CodingKeys: String, CodingKey {
        case action = "Action"
        case changeSetId = "ChangeSetId"
        case details = "Details"
        case logicalResourceId = "LogicalResourceId"
        case moduleInfo = "ModuleInfo"
        case physicalResourceId = "PhysicalResourceId"
        case replacement = "Replacement"
        case resourceType = "ResourceType"
        case scope = "Scope"
    }

    public func validate() throws {
        try changeSetId?.validateAsChangeSetId()
        try moduleInfo?.validate()
        try resourceType?.validateAsResourceType()
    }
}

public struct ResourceChangeDetail: Codable, Equatable {
    public var causingEntity: CausingEntity?
    public var changeSource: ChangeSource?
    public var evaluation: EvaluationType?
    public var target: ResourceTargetDefinition?

    public init(causingEntity: CausingEntity? = nil,
                changeSource: ChangeSource? = nil,
                evaluation: EvaluationType? = nil,
                target: ResourceTargetDefinition? = nil) {
        self.causingEntity = causingEntity
        self.changeSource = changeSource
        self.evaluation = evaluation
        self.target = target
    }

    enum CodingKeys: String, CodingKey {
        case causingEntity = "CausingEntity"
        case changeSource = "ChangeSource"
        case evaluation = "Evaluation"
        case target = "Target"
    }

    public func validate() throws {
        try target?.validate()
    }
}

public struct ResourceIdentifierSummary: Codable, Equatable {
    public var logicalResourceIds: LogicalResourceIds?
    public var resourceIdentifiers: ResourceIdentifiers?
    public var resourceType: ResourceType?

    public init(logicalResourceIds: LogicalResourceIds? = nil,
                resourceIdentifiers: ResourceIdentifiers? = nil,
                resourceType: ResourceType? = nil) {
        self.logicalResourceIds = logicalResourceIds
        self.resourceIdentifiers = resourceIdentifiers
        self.resourceType = resourceType
    }

    enum CodingKeys: String, CodingKey {
        case logicalResourceIds = "LogicalResourceIds"
        case resourceIdentifiers = "ResourceIdentifiers"
        case resourceType = "ResourceType"
    }

    public func validate() throws {
        try logicalResourceIds?.validateAsLogicalResourceIds()
        try resourceType?.validateAsResourceType()
    }
}

public struct ResourceTargetDefinition: Codable, Equatable {
    public var attribute: ResourceAttribute?
    public var name: PropertyName?
    public var requiresRecreation: RequiresRecreation?

    public init(attribute: ResourceAttribute? = nil,
                name: PropertyName? = nil,
                requiresRecreation: RequiresRecreation? = nil) {
        self.attribute = attribute
        self.name = name
        self.requiresRecreation = requiresRecreation
    }

    enum CodingKeys: String, CodingKey {
        case attribute = "Attribute"
        case name = "Name"
        case requiresRecreation = "RequiresRecreation"
    }

    public func validate() throws {
    }
}

public struct ResourceToImport: Codable, Equatable {
    public var logicalResourceId: LogicalResourceId
    public var resourceIdentifier: ResourceIdentifierProperties
    public var resourceType: ResourceType

    public init(logicalResourceId: LogicalResourceId,
                resourceIdentifier: ResourceIdentifierProperties,
                resourceType: ResourceType) {
        self.logicalResourceId = logicalResourceId
        self.resourceIdentifier = resourceIdentifier
        self.resourceType = resourceType
    }

    enum CodingKeys: String, CodingKey {
        case logicalResourceId = "LogicalResourceId"
        case resourceIdentifier = "ResourceIdentifier"
        case resourceType = "ResourceType"
    }

    public func validate() throws {
        try resourceType.validateAsResourceType()
    }
}

public struct RollbackConfiguration: Codable, Equatable {
    public var monitoringTimeInMinutes: MonitoringTimeInMinutes?
    public var rollbackTriggers: RollbackTriggers?

    public init(monitoringTimeInMinutes: MonitoringTimeInMinutes? = nil,
                rollbackTriggers: RollbackTriggers? = nil) {
        self.monitoringTimeInMinutes = monitoringTimeInMinutes
        self.rollbackTriggers = rollbackTriggers
    }

    enum CodingKeys: String, CodingKey {
        case monitoringTimeInMinutes = "MonitoringTimeInMinutes"
        case rollbackTriggers = "RollbackTriggers"
    }

    public func validate() throws {
        try monitoringTimeInMinutes?.validateAsMonitoringTimeInMinutes()
        try rollbackTriggers?.validateAsRollbackTriggers()
    }
}

public struct RollbackStackInput: Codable, Equatable {
    public var clientRequestToken: ClientRequestToken?
    public var roleARN: RoleARN?
    public var stackName: StackNameOrId

    public init(clientRequestToken: ClientRequestToken? = nil,
                roleARN: RoleARN? = nil,
                stackName: StackNameOrId) {
        self.clientRequestToken = clientRequestToken
        self.roleARN = roleARN
        self.stackName = stackName
    }

    enum CodingKeys: String, CodingKey {
        case clientRequestToken = "ClientRequestToken"
        case roleARN = "RoleARN"
        case stackName = "StackName"
    }

    public func validate() throws {
        try clientRequestToken?.validateAsClientRequestToken()
        try roleARN?.validateAsRoleARN()
        try stackName.validateAsStackNameOrId()
    }
}

public struct RollbackStackOutput: Codable, Equatable {
    public var stackId: StackId?

    public init(stackId: StackId? = nil) {
        self.stackId = stackId
    }

    enum CodingKeys: String, CodingKey {
        case stackId = "StackId"
    }

    public func validate() throws {
    }
}

public struct RollbackStackOutputForRollbackStack: Codable, Equatable {
    public var rollbackStackResult: RollbackStackOutput

    public init(rollbackStackResult: RollbackStackOutput) {
        self.rollbackStackResult = rollbackStackResult
    }

    enum CodingKeys: String, CodingKey {
        case rollbackStackResult = "RollbackStackResult"
    }

    public func validate() throws {
        try rollbackStackResult.validate()
    }
}

public struct RollbackTrigger: Codable, Equatable {
    public var arn: Arn
    public var type: Type

    public init(arn: Arn,
                type: Type) {
        self.arn = arn
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
        case type = "Type"
    }

    public func validate() throws {
    }
}

public struct SetStackPolicyInput: Codable, Equatable {
    public var stackName: StackName
    public var stackPolicyBody: StackPolicyBody?
    public var stackPolicyURL: StackPolicyURL?

    public init(stackName: StackName,
                stackPolicyBody: StackPolicyBody? = nil,
                stackPolicyURL: StackPolicyURL? = nil) {
        self.stackName = stackName
        self.stackPolicyBody = stackPolicyBody
        self.stackPolicyURL = stackPolicyURL
    }

    enum CodingKeys: String, CodingKey {
        case stackName = "StackName"
        case stackPolicyBody = "StackPolicyBody"
        case stackPolicyURL = "StackPolicyURL"
    }

    public func validate() throws {
        try stackPolicyBody?.validateAsStackPolicyBody()
        try stackPolicyURL?.validateAsStackPolicyURL()
    }
}

public struct SetTypeConfigurationInput: Codable, Equatable {
    public var configuration: TypeConfiguration
    public var configurationAlias: TypeConfigurationAlias?
    public var type: ThirdPartyType?
    public var typeArn: TypeArn?
    public var typeName: TypeName?

    public init(configuration: TypeConfiguration,
                configurationAlias: TypeConfigurationAlias? = nil,
                type: ThirdPartyType? = nil,
                typeArn: TypeArn? = nil,
                typeName: TypeName? = nil) {
        self.configuration = configuration
        self.configurationAlias = configurationAlias
        self.type = type
        self.typeArn = typeArn
        self.typeName = typeName
    }

    enum CodingKeys: String, CodingKey {
        case configuration = "Configuration"
        case configurationAlias = "ConfigurationAlias"
        case type = "Type"
        case typeArn = "TypeArn"
        case typeName = "TypeName"
    }

    public func validate() throws {
        try configuration.validateAsTypeConfiguration()
        try configurationAlias?.validateAsTypeConfigurationAlias()
        try typeArn?.validateAsTypeArn()
        try typeName?.validateAsTypeName()
    }
}

public struct SetTypeConfigurationOutput: Codable, Equatable {
    public var configurationArn: TypeConfigurationArn?

    public init(configurationArn: TypeConfigurationArn? = nil) {
        self.configurationArn = configurationArn
    }

    enum CodingKeys: String, CodingKey {
        case configurationArn = "ConfigurationArn"
    }

    public func validate() throws {
        try configurationArn?.validateAsTypeConfigurationArn()
    }
}

public struct SetTypeConfigurationOutputForSetTypeConfiguration: Codable, Equatable {
    public var setTypeConfigurationResult: SetTypeConfigurationOutput

    public init(setTypeConfigurationResult: SetTypeConfigurationOutput) {
        self.setTypeConfigurationResult = setTypeConfigurationResult
    }

    enum CodingKeys: String, CodingKey {
        case setTypeConfigurationResult = "SetTypeConfigurationResult"
    }

    public func validate() throws {
        try setTypeConfigurationResult.validate()
    }
}

public struct SetTypeDefaultVersionInput: Codable, Equatable {
    public var arn: PrivateTypeArn?
    public var type: RegistryType?
    public var typeName: TypeName?
    public var versionId: TypeVersionId?

    public init(arn: PrivateTypeArn? = nil,
                type: RegistryType? = nil,
                typeName: TypeName? = nil,
                versionId: TypeVersionId? = nil) {
        self.arn = arn
        self.type = type
        self.typeName = typeName
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
        case type = "Type"
        case typeName = "TypeName"
        case versionId = "VersionId"
    }

    public func validate() throws {
        try arn?.validateAsPrivateTypeArn()
        try typeName?.validateAsTypeName()
        try versionId?.validateAsTypeVersionId()
    }
}

public struct SetTypeDefaultVersionOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct SetTypeDefaultVersionOutputForSetTypeDefaultVersion: Codable, Equatable {
    public var setTypeDefaultVersionResult: SetTypeDefaultVersionOutput

    public init(setTypeDefaultVersionResult: SetTypeDefaultVersionOutput) {
        self.setTypeDefaultVersionResult = setTypeDefaultVersionResult
    }

    enum CodingKeys: String, CodingKey {
        case setTypeDefaultVersionResult = "SetTypeDefaultVersionResult"
    }

    public func validate() throws {
        try setTypeDefaultVersionResult.validate()
    }
}

public struct SignalResourceInput: Codable, Equatable {
    public var logicalResourceId: LogicalResourceId
    public var stackName: StackNameOrId
    public var status: ResourceSignalStatus
    public var uniqueId: ResourceSignalUniqueId

    public init(logicalResourceId: LogicalResourceId,
                stackName: StackNameOrId,
                status: ResourceSignalStatus,
                uniqueId: ResourceSignalUniqueId) {
        self.logicalResourceId = logicalResourceId
        self.stackName = stackName
        self.status = status
        self.uniqueId = uniqueId
    }

    enum CodingKeys: String, CodingKey {
        case logicalResourceId = "LogicalResourceId"
        case stackName = "StackName"
        case status = "Status"
        case uniqueId = "UniqueId"
    }

    public func validate() throws {
        try stackName.validateAsStackNameOrId()
        try uniqueId.validateAsResourceSignalUniqueId()
    }
}

public struct Stack: Codable, Equatable {
    public var capabilities: Capabilities?
    public var changeSetId: ChangeSetId?
    public var creationTime: CreationTime
    public var deletionTime: DeletionTime?
    public var description: Description?
    public var disableRollback: DisableRollback?
    public var driftInformation: StackDriftInformation?
    public var enableTerminationProtection: EnableTerminationProtection?
    public var lastUpdatedTime: LastUpdatedTime?
    public var notificationARNs: NotificationARNs?
    public var outputs: Outputs?
    public var parameters: Parameters?
    public var parentId: StackId?
    public var roleARN: RoleARN?
    public var rollbackConfiguration: RollbackConfiguration?
    public var rootId: StackId?
    public var stackId: StackId?
    public var stackName: StackName
    public var stackStatus: StackStatus
    public var stackStatusReason: StackStatusReason?
    public var tags: Tags?
    public var timeoutInMinutes: TimeoutMinutes?

    public init(capabilities: Capabilities? = nil,
                changeSetId: ChangeSetId? = nil,
                creationTime: CreationTime,
                deletionTime: DeletionTime? = nil,
                description: Description? = nil,
                disableRollback: DisableRollback? = nil,
                driftInformation: StackDriftInformation? = nil,
                enableTerminationProtection: EnableTerminationProtection? = nil,
                lastUpdatedTime: LastUpdatedTime? = nil,
                notificationARNs: NotificationARNs? = nil,
                outputs: Outputs? = nil,
                parameters: Parameters? = nil,
                parentId: StackId? = nil,
                roleARN: RoleARN? = nil,
                rollbackConfiguration: RollbackConfiguration? = nil,
                rootId: StackId? = nil,
                stackId: StackId? = nil,
                stackName: StackName,
                stackStatus: StackStatus,
                stackStatusReason: StackStatusReason? = nil,
                tags: Tags? = nil,
                timeoutInMinutes: TimeoutMinutes? = nil) {
        self.capabilities = capabilities
        self.changeSetId = changeSetId
        self.creationTime = creationTime
        self.deletionTime = deletionTime
        self.description = description
        self.disableRollback = disableRollback
        self.driftInformation = driftInformation
        self.enableTerminationProtection = enableTerminationProtection
        self.lastUpdatedTime = lastUpdatedTime
        self.notificationARNs = notificationARNs
        self.outputs = outputs
        self.parameters = parameters
        self.parentId = parentId
        self.roleARN = roleARN
        self.rollbackConfiguration = rollbackConfiguration
        self.rootId = rootId
        self.stackId = stackId
        self.stackName = stackName
        self.stackStatus = stackStatus
        self.stackStatusReason = stackStatusReason
        self.tags = tags
        self.timeoutInMinutes = timeoutInMinutes
    }

    enum CodingKeys: String, CodingKey {
        case capabilities = "Capabilities"
        case changeSetId = "ChangeSetId"
        case creationTime = "CreationTime"
        case deletionTime = "DeletionTime"
        case description = "Description"
        case disableRollback = "DisableRollback"
        case driftInformation = "DriftInformation"
        case enableTerminationProtection = "EnableTerminationProtection"
        case lastUpdatedTime = "LastUpdatedTime"
        case notificationARNs = "NotificationARNs"
        case outputs = "Outputs"
        case parameters = "Parameters"
        case parentId = "ParentId"
        case roleARN = "RoleARN"
        case rollbackConfiguration = "RollbackConfiguration"
        case rootId = "RootId"
        case stackId = "StackId"
        case stackName = "StackName"
        case stackStatus = "StackStatus"
        case stackStatusReason = "StackStatusReason"
        case tags = "Tags"
        case timeoutInMinutes = "TimeoutInMinutes"
    }

    public func validate() throws {
        try changeSetId?.validateAsChangeSetId()
        try description?.validateAsDescription()
        try driftInformation?.validate()
        try notificationARNs?.validateAsNotificationARNs()
        try roleARN?.validateAsRoleARN()
        try rollbackConfiguration?.validate()
        try tags?.validateAsTags()
        try timeoutInMinutes?.validateAsTimeoutMinutes()
    }
}

public struct StackDriftInformation: Codable, Equatable {
    public var lastCheckTimestamp: Timestamp?
    public var stackDriftStatus: StackDriftStatus

    public init(lastCheckTimestamp: Timestamp? = nil,
                stackDriftStatus: StackDriftStatus) {
        self.lastCheckTimestamp = lastCheckTimestamp
        self.stackDriftStatus = stackDriftStatus
    }

    enum CodingKeys: String, CodingKey {
        case lastCheckTimestamp = "LastCheckTimestamp"
        case stackDriftStatus = "StackDriftStatus"
    }

    public func validate() throws {
    }
}

public struct StackDriftInformationSummary: Codable, Equatable {
    public var lastCheckTimestamp: Timestamp?
    public var stackDriftStatus: StackDriftStatus

    public init(lastCheckTimestamp: Timestamp? = nil,
                stackDriftStatus: StackDriftStatus) {
        self.lastCheckTimestamp = lastCheckTimestamp
        self.stackDriftStatus = stackDriftStatus
    }

    enum CodingKeys: String, CodingKey {
        case lastCheckTimestamp = "LastCheckTimestamp"
        case stackDriftStatus = "StackDriftStatus"
    }

    public func validate() throws {
    }
}

public struct StackEvent: Codable, Equatable {
    public var clientRequestToken: ClientRequestToken?
    public var eventId: EventId
    public var hookFailureMode: HookFailureMode?
    public var hookInvocationPoint: HookInvocationPoint?
    public var hookStatus: HookStatus?
    public var hookStatusReason: HookStatusReason?
    public var hookType: HookType?
    public var logicalResourceId: LogicalResourceId?
    public var physicalResourceId: PhysicalResourceId?
    public var resourceProperties: ResourceProperties?
    public var resourceStatus: ResourceStatus?
    public var resourceStatusReason: ResourceStatusReason?
    public var resourceType: ResourceType?
    public var stackId: StackId
    public var stackName: StackName
    public var timestamp: Timestamp

    public init(clientRequestToken: ClientRequestToken? = nil,
                eventId: EventId,
                hookFailureMode: HookFailureMode? = nil,
                hookInvocationPoint: HookInvocationPoint? = nil,
                hookStatus: HookStatus? = nil,
                hookStatusReason: HookStatusReason? = nil,
                hookType: HookType? = nil,
                logicalResourceId: LogicalResourceId? = nil,
                physicalResourceId: PhysicalResourceId? = nil,
                resourceProperties: ResourceProperties? = nil,
                resourceStatus: ResourceStatus? = nil,
                resourceStatusReason: ResourceStatusReason? = nil,
                resourceType: ResourceType? = nil,
                stackId: StackId,
                stackName: StackName,
                timestamp: Timestamp) {
        self.clientRequestToken = clientRequestToken
        self.eventId = eventId
        self.hookFailureMode = hookFailureMode
        self.hookInvocationPoint = hookInvocationPoint
        self.hookStatus = hookStatus
        self.hookStatusReason = hookStatusReason
        self.hookType = hookType
        self.logicalResourceId = logicalResourceId
        self.physicalResourceId = physicalResourceId
        self.resourceProperties = resourceProperties
        self.resourceStatus = resourceStatus
        self.resourceStatusReason = resourceStatusReason
        self.resourceType = resourceType
        self.stackId = stackId
        self.stackName = stackName
        self.timestamp = timestamp
    }

    enum CodingKeys: String, CodingKey {
        case clientRequestToken = "ClientRequestToken"
        case eventId = "EventId"
        case hookFailureMode = "HookFailureMode"
        case hookInvocationPoint = "HookInvocationPoint"
        case hookStatus = "HookStatus"
        case hookStatusReason = "HookStatusReason"
        case hookType = "HookType"
        case logicalResourceId = "LogicalResourceId"
        case physicalResourceId = "PhysicalResourceId"
        case resourceProperties = "ResourceProperties"
        case resourceStatus = "ResourceStatus"
        case resourceStatusReason = "ResourceStatusReason"
        case resourceType = "ResourceType"
        case stackId = "StackId"
        case stackName = "StackName"
        case timestamp = "Timestamp"
    }

    public func validate() throws {
        try clientRequestToken?.validateAsClientRequestToken()
        try hookStatusReason?.validateAsHookStatusReason()
        try hookType?.validateAsHookType()
        try resourceType?.validateAsResourceType()
    }
}

public struct StackInstance: Codable, Equatable {
    public var account: Account?
    public var driftStatus: StackDriftStatus?
    public var lastDriftCheckTimestamp: Timestamp?
    public var organizationalUnitId: OrganizationalUnitId?
    public var parameterOverrides: Parameters?
    public var region: Region?
    public var stackId: StackId?
    public var stackInstanceStatus: StackInstanceComprehensiveStatus?
    public var stackSetId: StackSetId?
    public var status: StackInstanceStatus?
    public var statusReason: Reason?

    public init(account: Account? = nil,
                driftStatus: StackDriftStatus? = nil,
                lastDriftCheckTimestamp: Timestamp? = nil,
                organizationalUnitId: OrganizationalUnitId? = nil,
                parameterOverrides: Parameters? = nil,
                region: Region? = nil,
                stackId: StackId? = nil,
                stackInstanceStatus: StackInstanceComprehensiveStatus? = nil,
                stackSetId: StackSetId? = nil,
                status: StackInstanceStatus? = nil,
                statusReason: Reason? = nil) {
        self.account = account
        self.driftStatus = driftStatus
        self.lastDriftCheckTimestamp = lastDriftCheckTimestamp
        self.organizationalUnitId = organizationalUnitId
        self.parameterOverrides = parameterOverrides
        self.region = region
        self.stackId = stackId
        self.stackInstanceStatus = stackInstanceStatus
        self.stackSetId = stackSetId
        self.status = status
        self.statusReason = statusReason
    }

    enum CodingKeys: String, CodingKey {
        case account = "Account"
        case driftStatus = "DriftStatus"
        case lastDriftCheckTimestamp = "LastDriftCheckTimestamp"
        case organizationalUnitId = "OrganizationalUnitId"
        case parameterOverrides = "ParameterOverrides"
        case region = "Region"
        case stackId = "StackId"
        case stackInstanceStatus = "StackInstanceStatus"
        case stackSetId = "StackSetId"
        case status = "Status"
        case statusReason = "StatusReason"
    }

    public func validate() throws {
        try account?.validateAsAccount()
        try organizationalUnitId?.validateAsOrganizationalUnitId()
        try region?.validateAsRegion()
        try stackInstanceStatus?.validate()
    }
}

public struct StackInstanceComprehensiveStatus: Codable, Equatable {
    public var detailedStatus: StackInstanceDetailedStatus?

    public init(detailedStatus: StackInstanceDetailedStatus? = nil) {
        self.detailedStatus = detailedStatus
    }

    enum CodingKeys: String, CodingKey {
        case detailedStatus = "DetailedStatus"
    }

    public func validate() throws {
    }
}

public struct StackInstanceFilter: Codable, Equatable {
    public var name: StackInstanceFilterName?
    public var values: StackInstanceFilterValues?

    public init(name: StackInstanceFilterName? = nil,
                values: StackInstanceFilterValues? = nil) {
        self.name = name
        self.values = values
    }

    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case values = "Values"
    }

    public func validate() throws {
        try values?.validateAsStackInstanceFilterValues()
    }
}

public struct StackInstanceNotFoundException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct StackInstanceSummary: Codable, Equatable {
    public var account: Account?
    public var driftStatus: StackDriftStatus?
    public var lastDriftCheckTimestamp: Timestamp?
    public var organizationalUnitId: OrganizationalUnitId?
    public var region: Region?
    public var stackId: StackId?
    public var stackInstanceStatus: StackInstanceComprehensiveStatus?
    public var stackSetId: StackSetId?
    public var status: StackInstanceStatus?
    public var statusReason: Reason?

    public init(account: Account? = nil,
                driftStatus: StackDriftStatus? = nil,
                lastDriftCheckTimestamp: Timestamp? = nil,
                organizationalUnitId: OrganizationalUnitId? = nil,
                region: Region? = nil,
                stackId: StackId? = nil,
                stackInstanceStatus: StackInstanceComprehensiveStatus? = nil,
                stackSetId: StackSetId? = nil,
                status: StackInstanceStatus? = nil,
                statusReason: Reason? = nil) {
        self.account = account
        self.driftStatus = driftStatus
        self.lastDriftCheckTimestamp = lastDriftCheckTimestamp
        self.organizationalUnitId = organizationalUnitId
        self.region = region
        self.stackId = stackId
        self.stackInstanceStatus = stackInstanceStatus
        self.stackSetId = stackSetId
        self.status = status
        self.statusReason = statusReason
    }

    enum CodingKeys: String, CodingKey {
        case account = "Account"
        case driftStatus = "DriftStatus"
        case lastDriftCheckTimestamp = "LastDriftCheckTimestamp"
        case organizationalUnitId = "OrganizationalUnitId"
        case region = "Region"
        case stackId = "StackId"
        case stackInstanceStatus = "StackInstanceStatus"
        case stackSetId = "StackSetId"
        case status = "Status"
        case statusReason = "StatusReason"
    }

    public func validate() throws {
        try account?.validateAsAccount()
        try organizationalUnitId?.validateAsOrganizationalUnitId()
        try region?.validateAsRegion()
        try stackInstanceStatus?.validate()
    }
}

public struct StackNotFoundException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct StackResource: Codable, Equatable {
    public var description: Description?
    public var driftInformation: StackResourceDriftInformation?
    public var logicalResourceId: LogicalResourceId
    public var moduleInfo: ModuleInfo?
    public var physicalResourceId: PhysicalResourceId?
    public var resourceStatus: ResourceStatus
    public var resourceStatusReason: ResourceStatusReason?
    public var resourceType: ResourceType
    public var stackId: StackId?
    public var stackName: StackName?
    public var timestamp: Timestamp

    public init(description: Description? = nil,
                driftInformation: StackResourceDriftInformation? = nil,
                logicalResourceId: LogicalResourceId,
                moduleInfo: ModuleInfo? = nil,
                physicalResourceId: PhysicalResourceId? = nil,
                resourceStatus: ResourceStatus,
                resourceStatusReason: ResourceStatusReason? = nil,
                resourceType: ResourceType,
                stackId: StackId? = nil,
                stackName: StackName? = nil,
                timestamp: Timestamp) {
        self.description = description
        self.driftInformation = driftInformation
        self.logicalResourceId = logicalResourceId
        self.moduleInfo = moduleInfo
        self.physicalResourceId = physicalResourceId
        self.resourceStatus = resourceStatus
        self.resourceStatusReason = resourceStatusReason
        self.resourceType = resourceType
        self.stackId = stackId
        self.stackName = stackName
        self.timestamp = timestamp
    }

    enum CodingKeys: String, CodingKey {
        case description = "Description"
        case driftInformation = "DriftInformation"
        case logicalResourceId = "LogicalResourceId"
        case moduleInfo = "ModuleInfo"
        case physicalResourceId = "PhysicalResourceId"
        case resourceStatus = "ResourceStatus"
        case resourceStatusReason = "ResourceStatusReason"
        case resourceType = "ResourceType"
        case stackId = "StackId"
        case stackName = "StackName"
        case timestamp = "Timestamp"
    }

    public func validate() throws {
        try description?.validateAsDescription()
        try driftInformation?.validate()
        try moduleInfo?.validate()
        try resourceType.validateAsResourceType()
    }
}

public struct StackResourceDetail: Codable, Equatable {
    public var description: Description?
    public var driftInformation: StackResourceDriftInformation?
    public var lastUpdatedTimestamp: Timestamp
    public var logicalResourceId: LogicalResourceId
    public var metadata: Metadata?
    public var moduleInfo: ModuleInfo?
    public var physicalResourceId: PhysicalResourceId?
    public var resourceStatus: ResourceStatus
    public var resourceStatusReason: ResourceStatusReason?
    public var resourceType: ResourceType
    public var stackId: StackId?
    public var stackName: StackName?

    public init(description: Description? = nil,
                driftInformation: StackResourceDriftInformation? = nil,
                lastUpdatedTimestamp: Timestamp,
                logicalResourceId: LogicalResourceId,
                metadata: Metadata? = nil,
                moduleInfo: ModuleInfo? = nil,
                physicalResourceId: PhysicalResourceId? = nil,
                resourceStatus: ResourceStatus,
                resourceStatusReason: ResourceStatusReason? = nil,
                resourceType: ResourceType,
                stackId: StackId? = nil,
                stackName: StackName? = nil) {
        self.description = description
        self.driftInformation = driftInformation
        self.lastUpdatedTimestamp = lastUpdatedTimestamp
        self.logicalResourceId = logicalResourceId
        self.metadata = metadata
        self.moduleInfo = moduleInfo
        self.physicalResourceId = physicalResourceId
        self.resourceStatus = resourceStatus
        self.resourceStatusReason = resourceStatusReason
        self.resourceType = resourceType
        self.stackId = stackId
        self.stackName = stackName
    }

    enum CodingKeys: String, CodingKey {
        case description = "Description"
        case driftInformation = "DriftInformation"
        case lastUpdatedTimestamp = "LastUpdatedTimestamp"
        case logicalResourceId = "LogicalResourceId"
        case metadata = "Metadata"
        case moduleInfo = "ModuleInfo"
        case physicalResourceId = "PhysicalResourceId"
        case resourceStatus = "ResourceStatus"
        case resourceStatusReason = "ResourceStatusReason"
        case resourceType = "ResourceType"
        case stackId = "StackId"
        case stackName = "StackName"
    }

    public func validate() throws {
        try description?.validateAsDescription()
        try driftInformation?.validate()
        try moduleInfo?.validate()
        try resourceType.validateAsResourceType()
    }
}

public struct StackResourceDrift: Codable, Equatable {
    public var actualProperties: Properties?
    public var expectedProperties: Properties?
    public var logicalResourceId: LogicalResourceId
    public var moduleInfo: ModuleInfo?
    public var physicalResourceId: PhysicalResourceId?
    public var physicalResourceIdContext: PhysicalResourceIdContext?
    public var propertyDifferences: PropertyDifferences?
    public var resourceType: ResourceType
    public var stackId: StackId
    public var stackResourceDriftStatus: StackResourceDriftStatus
    public var timestamp: Timestamp

    public init(actualProperties: Properties? = nil,
                expectedProperties: Properties? = nil,
                logicalResourceId: LogicalResourceId,
                moduleInfo: ModuleInfo? = nil,
                physicalResourceId: PhysicalResourceId? = nil,
                physicalResourceIdContext: PhysicalResourceIdContext? = nil,
                propertyDifferences: PropertyDifferences? = nil,
                resourceType: ResourceType,
                stackId: StackId,
                stackResourceDriftStatus: StackResourceDriftStatus,
                timestamp: Timestamp) {
        self.actualProperties = actualProperties
        self.expectedProperties = expectedProperties
        self.logicalResourceId = logicalResourceId
        self.moduleInfo = moduleInfo
        self.physicalResourceId = physicalResourceId
        self.physicalResourceIdContext = physicalResourceIdContext
        self.propertyDifferences = propertyDifferences
        self.resourceType = resourceType
        self.stackId = stackId
        self.stackResourceDriftStatus = stackResourceDriftStatus
        self.timestamp = timestamp
    }

    enum CodingKeys: String, CodingKey {
        case actualProperties = "ActualProperties"
        case expectedProperties = "ExpectedProperties"
        case logicalResourceId = "LogicalResourceId"
        case moduleInfo = "ModuleInfo"
        case physicalResourceId = "PhysicalResourceId"
        case physicalResourceIdContext = "PhysicalResourceIdContext"
        case propertyDifferences = "PropertyDifferences"
        case resourceType = "ResourceType"
        case stackId = "StackId"
        case stackResourceDriftStatus = "StackResourceDriftStatus"
        case timestamp = "Timestamp"
    }

    public func validate() throws {
        try moduleInfo?.validate()
        try physicalResourceIdContext?.validateAsPhysicalResourceIdContext()
        try resourceType.validateAsResourceType()
    }
}

public struct StackResourceDriftInformation: Codable, Equatable {
    public var lastCheckTimestamp: Timestamp?
    public var stackResourceDriftStatus: StackResourceDriftStatus

    public init(lastCheckTimestamp: Timestamp? = nil,
                stackResourceDriftStatus: StackResourceDriftStatus) {
        self.lastCheckTimestamp = lastCheckTimestamp
        self.stackResourceDriftStatus = stackResourceDriftStatus
    }

    enum CodingKeys: String, CodingKey {
        case lastCheckTimestamp = "LastCheckTimestamp"
        case stackResourceDriftStatus = "StackResourceDriftStatus"
    }

    public func validate() throws {
    }
}

public struct StackResourceDriftInformationSummary: Codable, Equatable {
    public var lastCheckTimestamp: Timestamp?
    public var stackResourceDriftStatus: StackResourceDriftStatus

    public init(lastCheckTimestamp: Timestamp? = nil,
                stackResourceDriftStatus: StackResourceDriftStatus) {
        self.lastCheckTimestamp = lastCheckTimestamp
        self.stackResourceDriftStatus = stackResourceDriftStatus
    }

    enum CodingKeys: String, CodingKey {
        case lastCheckTimestamp = "LastCheckTimestamp"
        case stackResourceDriftStatus = "StackResourceDriftStatus"
    }

    public func validate() throws {
    }
}

public struct StackResourceSummary: Codable, Equatable {
    public var driftInformation: StackResourceDriftInformationSummary?
    public var lastUpdatedTimestamp: Timestamp
    public var logicalResourceId: LogicalResourceId
    public var moduleInfo: ModuleInfo?
    public var physicalResourceId: PhysicalResourceId?
    public var resourceStatus: ResourceStatus
    public var resourceStatusReason: ResourceStatusReason?
    public var resourceType: ResourceType

    public init(driftInformation: StackResourceDriftInformationSummary? = nil,
                lastUpdatedTimestamp: Timestamp,
                logicalResourceId: LogicalResourceId,
                moduleInfo: ModuleInfo? = nil,
                physicalResourceId: PhysicalResourceId? = nil,
                resourceStatus: ResourceStatus,
                resourceStatusReason: ResourceStatusReason? = nil,
                resourceType: ResourceType) {
        self.driftInformation = driftInformation
        self.lastUpdatedTimestamp = lastUpdatedTimestamp
        self.logicalResourceId = logicalResourceId
        self.moduleInfo = moduleInfo
        self.physicalResourceId = physicalResourceId
        self.resourceStatus = resourceStatus
        self.resourceStatusReason = resourceStatusReason
        self.resourceType = resourceType
    }

    enum CodingKeys: String, CodingKey {
        case driftInformation = "DriftInformation"
        case lastUpdatedTimestamp = "LastUpdatedTimestamp"
        case logicalResourceId = "LogicalResourceId"
        case moduleInfo = "ModuleInfo"
        case physicalResourceId = "PhysicalResourceId"
        case resourceStatus = "ResourceStatus"
        case resourceStatusReason = "ResourceStatusReason"
        case resourceType = "ResourceType"
    }

    public func validate() throws {
        try driftInformation?.validate()
        try moduleInfo?.validate()
        try resourceType.validateAsResourceType()
    }
}

public struct StackSet: Codable, Equatable {
    public var administrationRoleARN: RoleARN?
    public var autoDeployment: AutoDeployment?
    public var capabilities: Capabilities?
    public var description: Description?
    public var executionRoleName: ExecutionRoleName?
    public var managedExecution: ManagedExecution?
    public var organizationalUnitIds: OrganizationalUnitIdList?
    public var parameters: Parameters?
    public var permissionModel: PermissionModels?
    public var stackSetARN: StackSetARN?
    public var stackSetDriftDetectionDetails: StackSetDriftDetectionDetails?
    public var stackSetId: StackSetId?
    public var stackSetName: StackSetName?
    public var status: StackSetStatus?
    public var tags: Tags?
    public var templateBody: TemplateBody?

    public init(administrationRoleARN: RoleARN? = nil,
                autoDeployment: AutoDeployment? = nil,
                capabilities: Capabilities? = nil,
                description: Description? = nil,
                executionRoleName: ExecutionRoleName? = nil,
                managedExecution: ManagedExecution? = nil,
                organizationalUnitIds: OrganizationalUnitIdList? = nil,
                parameters: Parameters? = nil,
                permissionModel: PermissionModels? = nil,
                stackSetARN: StackSetARN? = nil,
                stackSetDriftDetectionDetails: StackSetDriftDetectionDetails? = nil,
                stackSetId: StackSetId? = nil,
                stackSetName: StackSetName? = nil,
                status: StackSetStatus? = nil,
                tags: Tags? = nil,
                templateBody: TemplateBody? = nil) {
        self.administrationRoleARN = administrationRoleARN
        self.autoDeployment = autoDeployment
        self.capabilities = capabilities
        self.description = description
        self.executionRoleName = executionRoleName
        self.managedExecution = managedExecution
        self.organizationalUnitIds = organizationalUnitIds
        self.parameters = parameters
        self.permissionModel = permissionModel
        self.stackSetARN = stackSetARN
        self.stackSetDriftDetectionDetails = stackSetDriftDetectionDetails
        self.stackSetId = stackSetId
        self.stackSetName = stackSetName
        self.status = status
        self.tags = tags
        self.templateBody = templateBody
    }

    enum CodingKeys: String, CodingKey {
        case administrationRoleARN = "AdministrationRoleARN"
        case autoDeployment = "AutoDeployment"
        case capabilities = "Capabilities"
        case description = "Description"
        case executionRoleName = "ExecutionRoleName"
        case managedExecution = "ManagedExecution"
        case organizationalUnitIds = "OrganizationalUnitIds"
        case parameters = "Parameters"
        case permissionModel = "PermissionModel"
        case stackSetARN = "StackSetARN"
        case stackSetDriftDetectionDetails = "StackSetDriftDetectionDetails"
        case stackSetId = "StackSetId"
        case stackSetName = "StackSetName"
        case status = "Status"
        case tags = "Tags"
        case templateBody = "TemplateBody"
    }

    public func validate() throws {
        try administrationRoleARN?.validateAsRoleARN()
        try autoDeployment?.validate()
        try description?.validateAsDescription()
        try executionRoleName?.validateAsExecutionRoleName()
        try managedExecution?.validate()
        try stackSetDriftDetectionDetails?.validate()
        try tags?.validateAsTags()
        try templateBody?.validateAsTemplateBody()
    }
}

public struct StackSetDriftDetectionDetails: Codable, Equatable {
    public var driftDetectionStatus: StackSetDriftDetectionStatus?
    public var driftStatus: StackSetDriftStatus?
    public var driftedStackInstancesCount: DriftedStackInstancesCount?
    public var failedStackInstancesCount: FailedStackInstancesCount?
    public var inProgressStackInstancesCount: InProgressStackInstancesCount?
    public var inSyncStackInstancesCount: InSyncStackInstancesCount?
    public var lastDriftCheckTimestamp: Timestamp?
    public var totalStackInstancesCount: TotalStackInstancesCount?

    public init(driftDetectionStatus: StackSetDriftDetectionStatus? = nil,
                driftStatus: StackSetDriftStatus? = nil,
                driftedStackInstancesCount: DriftedStackInstancesCount? = nil,
                failedStackInstancesCount: FailedStackInstancesCount? = nil,
                inProgressStackInstancesCount: InProgressStackInstancesCount? = nil,
                inSyncStackInstancesCount: InSyncStackInstancesCount? = nil,
                lastDriftCheckTimestamp: Timestamp? = nil,
                totalStackInstancesCount: TotalStackInstancesCount? = nil) {
        self.driftDetectionStatus = driftDetectionStatus
        self.driftStatus = driftStatus
        self.driftedStackInstancesCount = driftedStackInstancesCount
        self.failedStackInstancesCount = failedStackInstancesCount
        self.inProgressStackInstancesCount = inProgressStackInstancesCount
        self.inSyncStackInstancesCount = inSyncStackInstancesCount
        self.lastDriftCheckTimestamp = lastDriftCheckTimestamp
        self.totalStackInstancesCount = totalStackInstancesCount
    }

    enum CodingKeys: String, CodingKey {
        case driftDetectionStatus = "DriftDetectionStatus"
        case driftStatus = "DriftStatus"
        case driftedStackInstancesCount = "DriftedStackInstancesCount"
        case failedStackInstancesCount = "FailedStackInstancesCount"
        case inProgressStackInstancesCount = "InProgressStackInstancesCount"
        case inSyncStackInstancesCount = "InSyncStackInstancesCount"
        case lastDriftCheckTimestamp = "LastDriftCheckTimestamp"
        case totalStackInstancesCount = "TotalStackInstancesCount"
    }

    public func validate() throws {
        try driftedStackInstancesCount?.validateAsDriftedStackInstancesCount()
        try failedStackInstancesCount?.validateAsFailedStackInstancesCount()
        try inProgressStackInstancesCount?.validateAsInProgressStackInstancesCount()
        try inSyncStackInstancesCount?.validateAsInSyncStackInstancesCount()
        try totalStackInstancesCount?.validateAsTotalStackInstancesCount()
    }
}

public struct StackSetNotEmptyException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct StackSetNotFoundException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct StackSetOperation: Codable, Equatable {
    public var action: StackSetOperationAction?
    public var administrationRoleARN: RoleARN?
    public var creationTimestamp: Timestamp?
    public var deploymentTargets: DeploymentTargets?
    public var endTimestamp: Timestamp?
    public var executionRoleName: ExecutionRoleName?
    public var operationId: ClientRequestToken?
    public var operationPreferences: StackSetOperationPreferences?
    public var retainStacks: RetainStacksNullable?
    public var stackSetDriftDetectionDetails: StackSetDriftDetectionDetails?
    public var stackSetId: StackSetId?
    public var status: StackSetOperationStatus?
    public var statusReason: StackSetOperationStatusReason?

    public init(action: StackSetOperationAction? = nil,
                administrationRoleARN: RoleARN? = nil,
                creationTimestamp: Timestamp? = nil,
                deploymentTargets: DeploymentTargets? = nil,
                endTimestamp: Timestamp? = nil,
                executionRoleName: ExecutionRoleName? = nil,
                operationId: ClientRequestToken? = nil,
                operationPreferences: StackSetOperationPreferences? = nil,
                retainStacks: RetainStacksNullable? = nil,
                stackSetDriftDetectionDetails: StackSetDriftDetectionDetails? = nil,
                stackSetId: StackSetId? = nil,
                status: StackSetOperationStatus? = nil,
                statusReason: StackSetOperationStatusReason? = nil) {
        self.action = action
        self.administrationRoleARN = administrationRoleARN
        self.creationTimestamp = creationTimestamp
        self.deploymentTargets = deploymentTargets
        self.endTimestamp = endTimestamp
        self.executionRoleName = executionRoleName
        self.operationId = operationId
        self.operationPreferences = operationPreferences
        self.retainStacks = retainStacks
        self.stackSetDriftDetectionDetails = stackSetDriftDetectionDetails
        self.stackSetId = stackSetId
        self.status = status
        self.statusReason = statusReason
    }

    enum CodingKeys: String, CodingKey {
        case action = "Action"
        case administrationRoleARN = "AdministrationRoleARN"
        case creationTimestamp = "CreationTimestamp"
        case deploymentTargets = "DeploymentTargets"
        case endTimestamp = "EndTimestamp"
        case executionRoleName = "ExecutionRoleName"
        case operationId = "OperationId"
        case operationPreferences = "OperationPreferences"
        case retainStacks = "RetainStacks"
        case stackSetDriftDetectionDetails = "StackSetDriftDetectionDetails"
        case stackSetId = "StackSetId"
        case status = "Status"
        case statusReason = "StatusReason"
    }

    public func validate() throws {
        try administrationRoleARN?.validateAsRoleARN()
        try deploymentTargets?.validate()
        try executionRoleName?.validateAsExecutionRoleName()
        try operationId?.validateAsClientRequestToken()
        try operationPreferences?.validate()
        try stackSetDriftDetectionDetails?.validate()
    }
}

public struct StackSetOperationPreferences: Codable, Equatable {
    public var failureToleranceCount: FailureToleranceCount?
    public var failureTolerancePercentage: FailureTolerancePercentage?
    public var maxConcurrentCount: MaxConcurrentCount?
    public var maxConcurrentPercentage: MaxConcurrentPercentage?
    public var regionConcurrencyType: RegionConcurrencyType?
    public var regionOrder: RegionList?

    public init(failureToleranceCount: FailureToleranceCount? = nil,
                failureTolerancePercentage: FailureTolerancePercentage? = nil,
                maxConcurrentCount: MaxConcurrentCount? = nil,
                maxConcurrentPercentage: MaxConcurrentPercentage? = nil,
                regionConcurrencyType: RegionConcurrencyType? = nil,
                regionOrder: RegionList? = nil) {
        self.failureToleranceCount = failureToleranceCount
        self.failureTolerancePercentage = failureTolerancePercentage
        self.maxConcurrentCount = maxConcurrentCount
        self.maxConcurrentPercentage = maxConcurrentPercentage
        self.regionConcurrencyType = regionConcurrencyType
        self.regionOrder = regionOrder
    }

    enum CodingKeys: String, CodingKey {
        case failureToleranceCount = "FailureToleranceCount"
        case failureTolerancePercentage = "FailureTolerancePercentage"
        case maxConcurrentCount = "MaxConcurrentCount"
        case maxConcurrentPercentage = "MaxConcurrentPercentage"
        case regionConcurrencyType = "RegionConcurrencyType"
        case regionOrder = "RegionOrder"
    }

    public func validate() throws {
        try failureToleranceCount?.validateAsFailureToleranceCount()
        try failureTolerancePercentage?.validateAsFailureTolerancePercentage()
        try maxConcurrentCount?.validateAsMaxConcurrentCount()
        try maxConcurrentPercentage?.validateAsMaxConcurrentPercentage()
    }
}

public struct StackSetOperationResultSummary: Codable, Equatable {
    public var account: Account?
    public var accountGateResult: AccountGateResult?
    public var organizationalUnitId: OrganizationalUnitId?
    public var region: Region?
    public var status: StackSetOperationResultStatus?
    public var statusReason: Reason?

    public init(account: Account? = nil,
                accountGateResult: AccountGateResult? = nil,
                organizationalUnitId: OrganizationalUnitId? = nil,
                region: Region? = nil,
                status: StackSetOperationResultStatus? = nil,
                statusReason: Reason? = nil) {
        self.account = account
        self.accountGateResult = accountGateResult
        self.organizationalUnitId = organizationalUnitId
        self.region = region
        self.status = status
        self.statusReason = statusReason
    }

    enum CodingKeys: String, CodingKey {
        case account = "Account"
        case accountGateResult = "AccountGateResult"
        case organizationalUnitId = "OrganizationalUnitId"
        case region = "Region"
        case status = "Status"
        case statusReason = "StatusReason"
    }

    public func validate() throws {
        try account?.validateAsAccount()
        try accountGateResult?.validate()
        try organizationalUnitId?.validateAsOrganizationalUnitId()
        try region?.validateAsRegion()
    }
}

public struct StackSetOperationSummary: Codable, Equatable {
    public var action: StackSetOperationAction?
    public var creationTimestamp: Timestamp?
    public var endTimestamp: Timestamp?
    public var operationId: ClientRequestToken?
    public var status: StackSetOperationStatus?
    public var statusReason: StackSetOperationStatusReason?

    public init(action: StackSetOperationAction? = nil,
                creationTimestamp: Timestamp? = nil,
                endTimestamp: Timestamp? = nil,
                operationId: ClientRequestToken? = nil,
                status: StackSetOperationStatus? = nil,
                statusReason: StackSetOperationStatusReason? = nil) {
        self.action = action
        self.creationTimestamp = creationTimestamp
        self.endTimestamp = endTimestamp
        self.operationId = operationId
        self.status = status
        self.statusReason = statusReason
    }

    enum CodingKeys: String, CodingKey {
        case action = "Action"
        case creationTimestamp = "CreationTimestamp"
        case endTimestamp = "EndTimestamp"
        case operationId = "OperationId"
        case status = "Status"
        case statusReason = "StatusReason"
    }

    public func validate() throws {
        try operationId?.validateAsClientRequestToken()
    }
}

public struct StackSetSummary: Codable, Equatable {
    public var autoDeployment: AutoDeployment?
    public var description: Description?
    public var driftStatus: StackDriftStatus?
    public var lastDriftCheckTimestamp: Timestamp?
    public var managedExecution: ManagedExecution?
    public var permissionModel: PermissionModels?
    public var stackSetId: StackSetId?
    public var stackSetName: StackSetName?
    public var status: StackSetStatus?

    public init(autoDeployment: AutoDeployment? = nil,
                description: Description? = nil,
                driftStatus: StackDriftStatus? = nil,
                lastDriftCheckTimestamp: Timestamp? = nil,
                managedExecution: ManagedExecution? = nil,
                permissionModel: PermissionModels? = nil,
                stackSetId: StackSetId? = nil,
                stackSetName: StackSetName? = nil,
                status: StackSetStatus? = nil) {
        self.autoDeployment = autoDeployment
        self.description = description
        self.driftStatus = driftStatus
        self.lastDriftCheckTimestamp = lastDriftCheckTimestamp
        self.managedExecution = managedExecution
        self.permissionModel = permissionModel
        self.stackSetId = stackSetId
        self.stackSetName = stackSetName
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case autoDeployment = "AutoDeployment"
        case description = "Description"
        case driftStatus = "DriftStatus"
        case lastDriftCheckTimestamp = "LastDriftCheckTimestamp"
        case managedExecution = "ManagedExecution"
        case permissionModel = "PermissionModel"
        case stackSetId = "StackSetId"
        case stackSetName = "StackSetName"
        case status = "Status"
    }

    public func validate() throws {
        try autoDeployment?.validate()
        try description?.validateAsDescription()
        try managedExecution?.validate()
    }
}

public struct StackSummary: Codable, Equatable {
    public var creationTime: CreationTime
    public var deletionTime: DeletionTime?
    public var driftInformation: StackDriftInformationSummary?
    public var lastUpdatedTime: LastUpdatedTime?
    public var parentId: StackId?
    public var rootId: StackId?
    public var stackId: StackId?
    public var stackName: StackName
    public var stackStatus: StackStatus
    public var stackStatusReason: StackStatusReason?
    public var templateDescription: TemplateDescription?

    public init(creationTime: CreationTime,
                deletionTime: DeletionTime? = nil,
                driftInformation: StackDriftInformationSummary? = nil,
                lastUpdatedTime: LastUpdatedTime? = nil,
                parentId: StackId? = nil,
                rootId: StackId? = nil,
                stackId: StackId? = nil,
                stackName: StackName,
                stackStatus: StackStatus,
                stackStatusReason: StackStatusReason? = nil,
                templateDescription: TemplateDescription? = nil) {
        self.creationTime = creationTime
        self.deletionTime = deletionTime
        self.driftInformation = driftInformation
        self.lastUpdatedTime = lastUpdatedTime
        self.parentId = parentId
        self.rootId = rootId
        self.stackId = stackId
        self.stackName = stackName
        self.stackStatus = stackStatus
        self.stackStatusReason = stackStatusReason
        self.templateDescription = templateDescription
    }

    enum CodingKeys: String, CodingKey {
        case creationTime = "CreationTime"
        case deletionTime = "DeletionTime"
        case driftInformation = "DriftInformation"
        case lastUpdatedTime = "LastUpdatedTime"
        case parentId = "ParentId"
        case rootId = "RootId"
        case stackId = "StackId"
        case stackName = "StackName"
        case stackStatus = "StackStatus"
        case stackStatusReason = "StackStatusReason"
        case templateDescription = "TemplateDescription"
    }

    public func validate() throws {
        try driftInformation?.validate()
    }
}

public struct StaleRequestException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct StopStackSetOperationInput: Codable, Equatable {
    public var callAs: CallAs?
    public var operationId: ClientRequestToken
    public var stackSetName: StackSetName

    public init(callAs: CallAs? = nil,
                operationId: ClientRequestToken,
                stackSetName: StackSetName) {
        self.callAs = callAs
        self.operationId = operationId
        self.stackSetName = stackSetName
    }

    enum CodingKeys: String, CodingKey {
        case callAs = "CallAs"
        case operationId = "OperationId"
        case stackSetName = "StackSetName"
    }

    public func validate() throws {
        try operationId.validateAsClientRequestToken()
    }
}

public struct StopStackSetOperationOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct StopStackSetOperationOutputForStopStackSetOperation: Codable, Equatable {
    public var stopStackSetOperationResult: StopStackSetOperationOutput

    public init(stopStackSetOperationResult: StopStackSetOperationOutput) {
        self.stopStackSetOperationResult = stopStackSetOperationResult
    }

    enum CodingKeys: String, CodingKey {
        case stopStackSetOperationResult = "StopStackSetOperationResult"
    }

    public func validate() throws {
        try stopStackSetOperationResult.validate()
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

public struct TemplateParameter: Codable, Equatable {
    public var defaultValue: ParameterValue?
    public var description: Description?
    public var noEcho: NoEcho?
    public var parameterKey: ParameterKey?

    public init(defaultValue: ParameterValue? = nil,
                description: Description? = nil,
                noEcho: NoEcho? = nil,
                parameterKey: ParameterKey? = nil) {
        self.defaultValue = defaultValue
        self.description = description
        self.noEcho = noEcho
        self.parameterKey = parameterKey
    }

    enum CodingKeys: String, CodingKey {
        case defaultValue = "DefaultValue"
        case description = "Description"
        case noEcho = "NoEcho"
        case parameterKey = "ParameterKey"
    }

    public func validate() throws {
        try description?.validateAsDescription()
    }
}

public struct TestTypeInput: Codable, Equatable {
    public var arn: TypeArn?
    public var logDeliveryBucket: S3Bucket?
    public var type: ThirdPartyType?
    public var typeName: TypeName?
    public var versionId: TypeVersionId?

    public init(arn: TypeArn? = nil,
                logDeliveryBucket: S3Bucket? = nil,
                type: ThirdPartyType? = nil,
                typeName: TypeName? = nil,
                versionId: TypeVersionId? = nil) {
        self.arn = arn
        self.logDeliveryBucket = logDeliveryBucket
        self.type = type
        self.typeName = typeName
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
        case logDeliveryBucket = "LogDeliveryBucket"
        case type = "Type"
        case typeName = "TypeName"
        case versionId = "VersionId"
    }

    public func validate() throws {
        try arn?.validateAsTypeArn()
        try logDeliveryBucket?.validateAsS3Bucket()
        try typeName?.validateAsTypeName()
        try versionId?.validateAsTypeVersionId()
    }
}

public struct TestTypeOutput: Codable, Equatable {
    public var typeVersionArn: TypeArn?

    public init(typeVersionArn: TypeArn? = nil) {
        self.typeVersionArn = typeVersionArn
    }

    enum CodingKeys: String, CodingKey {
        case typeVersionArn = "TypeVersionArn"
    }

    public func validate() throws {
        try typeVersionArn?.validateAsTypeArn()
    }
}

public struct TestTypeOutputForTestType: Codable, Equatable {
    public var testTypeResult: TestTypeOutput

    public init(testTypeResult: TestTypeOutput) {
        self.testTypeResult = testTypeResult
    }

    enum CodingKeys: String, CodingKey {
        case testTypeResult = "TestTypeResult"
    }

    public func validate() throws {
        try testTypeResult.validate()
    }
}

public struct TokenAlreadyExistsException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct TypeConfigurationDetails: Codable, Equatable {
    public var alias: TypeConfigurationAlias?
    public var arn: TypeConfigurationArn?
    public var configuration: TypeConfiguration?
    public var isDefaultConfiguration: IsDefaultConfiguration?
    public var lastUpdated: Timestamp?
    public var typeArn: TypeArn?
    public var typeName: TypeName?

    public init(alias: TypeConfigurationAlias? = nil,
                arn: TypeConfigurationArn? = nil,
                configuration: TypeConfiguration? = nil,
                isDefaultConfiguration: IsDefaultConfiguration? = nil,
                lastUpdated: Timestamp? = nil,
                typeArn: TypeArn? = nil,
                typeName: TypeName? = nil) {
        self.alias = alias
        self.arn = arn
        self.configuration = configuration
        self.isDefaultConfiguration = isDefaultConfiguration
        self.lastUpdated = lastUpdated
        self.typeArn = typeArn
        self.typeName = typeName
    }

    enum CodingKeys: String, CodingKey {
        case alias = "Alias"
        case arn = "Arn"
        case configuration = "Configuration"
        case isDefaultConfiguration = "IsDefaultConfiguration"
        case lastUpdated = "LastUpdated"
        case typeArn = "TypeArn"
        case typeName = "TypeName"
    }

    public func validate() throws {
        try alias?.validateAsTypeConfigurationAlias()
        try arn?.validateAsTypeConfigurationArn()
        try configuration?.validateAsTypeConfiguration()
        try typeArn?.validateAsTypeArn()
        try typeName?.validateAsTypeName()
    }
}

public struct TypeConfigurationIdentifier: Codable, Equatable {
    public var type: ThirdPartyType?
    public var typeArn: TypeArn?
    public var typeConfigurationAlias: TypeConfigurationAlias?
    public var typeConfigurationArn: TypeConfigurationArn?
    public var typeName: TypeName?

    public init(type: ThirdPartyType? = nil,
                typeArn: TypeArn? = nil,
                typeConfigurationAlias: TypeConfigurationAlias? = nil,
                typeConfigurationArn: TypeConfigurationArn? = nil,
                typeName: TypeName? = nil) {
        self.type = type
        self.typeArn = typeArn
        self.typeConfigurationAlias = typeConfigurationAlias
        self.typeConfigurationArn = typeConfigurationArn
        self.typeName = typeName
    }

    enum CodingKeys: String, CodingKey {
        case type = "Type"
        case typeArn = "TypeArn"
        case typeConfigurationAlias = "TypeConfigurationAlias"
        case typeConfigurationArn = "TypeConfigurationArn"
        case typeName = "TypeName"
    }

    public func validate() throws {
        try typeArn?.validateAsTypeArn()
        try typeConfigurationAlias?.validateAsTypeConfigurationAlias()
        try typeConfigurationArn?.validateAsTypeConfigurationArn()
        try typeName?.validateAsTypeName()
    }
}

public struct TypeConfigurationNotFoundException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct TypeFilters: Codable, Equatable {
    public var category: Category?
    public var publisherId: PublisherId?
    public var typeNamePrefix: TypeNamePrefix?

    public init(category: Category? = nil,
                publisherId: PublisherId? = nil,
                typeNamePrefix: TypeNamePrefix? = nil) {
        self.category = category
        self.publisherId = publisherId
        self.typeNamePrefix = typeNamePrefix
    }

    enum CodingKeys: String, CodingKey {
        case category = "Category"
        case publisherId = "PublisherId"
        case typeNamePrefix = "TypeNamePrefix"
    }

    public func validate() throws {
        try publisherId?.validateAsPublisherId()
        try typeNamePrefix?.validateAsTypeNamePrefix()
    }
}

public struct TypeNotFoundException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct TypeSummary: Codable, Equatable {
    public var defaultVersionId: TypeVersionId?
    public var description: Description?
    public var isActivated: IsActivated?
    public var lastUpdated: Timestamp?
    public var latestPublicVersion: PublicVersionNumber?
    public var originalTypeName: TypeName?
    public var publicVersionNumber: PublicVersionNumber?
    public var publisherId: PublisherId?
    public var publisherIdentity: IdentityProvider?
    public var publisherName: PublisherName?
    public var type: RegistryType?
    public var typeArn: TypeArn?
    public var typeName: TypeName?

    public init(defaultVersionId: TypeVersionId? = nil,
                description: Description? = nil,
                isActivated: IsActivated? = nil,
                lastUpdated: Timestamp? = nil,
                latestPublicVersion: PublicVersionNumber? = nil,
                originalTypeName: TypeName? = nil,
                publicVersionNumber: PublicVersionNumber? = nil,
                publisherId: PublisherId? = nil,
                publisherIdentity: IdentityProvider? = nil,
                publisherName: PublisherName? = nil,
                type: RegistryType? = nil,
                typeArn: TypeArn? = nil,
                typeName: TypeName? = nil) {
        self.defaultVersionId = defaultVersionId
        self.description = description
        self.isActivated = isActivated
        self.lastUpdated = lastUpdated
        self.latestPublicVersion = latestPublicVersion
        self.originalTypeName = originalTypeName
        self.publicVersionNumber = publicVersionNumber
        self.publisherId = publisherId
        self.publisherIdentity = publisherIdentity
        self.publisherName = publisherName
        self.type = type
        self.typeArn = typeArn
        self.typeName = typeName
    }

    enum CodingKeys: String, CodingKey {
        case defaultVersionId = "DefaultVersionId"
        case description = "Description"
        case isActivated = "IsActivated"
        case lastUpdated = "LastUpdated"
        case latestPublicVersion = "LatestPublicVersion"
        case originalTypeName = "OriginalTypeName"
        case publicVersionNumber = "PublicVersionNumber"
        case publisherId = "PublisherId"
        case publisherIdentity = "PublisherIdentity"
        case publisherName = "PublisherName"
        case type = "Type"
        case typeArn = "TypeArn"
        case typeName = "TypeName"
    }

    public func validate() throws {
        try defaultVersionId?.validateAsTypeVersionId()
        try description?.validateAsDescription()
        try latestPublicVersion?.validateAsPublicVersionNumber()
        try originalTypeName?.validateAsTypeName()
        try publicVersionNumber?.validateAsPublicVersionNumber()
        try publisherId?.validateAsPublisherId()
        try publisherName?.validateAsPublisherName()
        try typeArn?.validateAsTypeArn()
        try typeName?.validateAsTypeName()
    }
}

public struct TypeVersionSummary: Codable, Equatable {
    public var arn: TypeArn?
    public var description: Description?
    public var isDefaultVersion: IsDefaultVersion?
    public var publicVersionNumber: PublicVersionNumber?
    public var timeCreated: Timestamp?
    public var type: RegistryType?
    public var typeName: TypeName?
    public var versionId: TypeVersionId?

    public init(arn: TypeArn? = nil,
                description: Description? = nil,
                isDefaultVersion: IsDefaultVersion? = nil,
                publicVersionNumber: PublicVersionNumber? = nil,
                timeCreated: Timestamp? = nil,
                type: RegistryType? = nil,
                typeName: TypeName? = nil,
                versionId: TypeVersionId? = nil) {
        self.arn = arn
        self.description = description
        self.isDefaultVersion = isDefaultVersion
        self.publicVersionNumber = publicVersionNumber
        self.timeCreated = timeCreated
        self.type = type
        self.typeName = typeName
        self.versionId = versionId
    }

    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
        case description = "Description"
        case isDefaultVersion = "IsDefaultVersion"
        case publicVersionNumber = "PublicVersionNumber"
        case timeCreated = "TimeCreated"
        case type = "Type"
        case typeName = "TypeName"
        case versionId = "VersionId"
    }

    public func validate() throws {
        try arn?.validateAsTypeArn()
        try description?.validateAsDescription()
        try publicVersionNumber?.validateAsPublicVersionNumber()
        try typeName?.validateAsTypeName()
        try versionId?.validateAsTypeVersionId()
    }
}

public struct UpdateStackInput: Codable, Equatable {
    public var capabilities: Capabilities?
    public var clientRequestToken: ClientRequestToken?
    public var disableRollback: DisableRollback?
    public var notificationARNs: NotificationARNs?
    public var parameters: Parameters?
    public var resourceTypes: ResourceTypes?
    public var roleARN: RoleARN?
    public var rollbackConfiguration: RollbackConfiguration?
    public var stackName: StackName
    public var stackPolicyBody: StackPolicyBody?
    public var stackPolicyDuringUpdateBody: StackPolicyDuringUpdateBody?
    public var stackPolicyDuringUpdateURL: StackPolicyDuringUpdateURL?
    public var stackPolicyURL: StackPolicyURL?
    public var tags: Tags?
    public var templateBody: TemplateBody?
    public var templateURL: TemplateURL?
    public var usePreviousTemplate: UsePreviousTemplate?

    public init(capabilities: Capabilities? = nil,
                clientRequestToken: ClientRequestToken? = nil,
                disableRollback: DisableRollback? = nil,
                notificationARNs: NotificationARNs? = nil,
                parameters: Parameters? = nil,
                resourceTypes: ResourceTypes? = nil,
                roleARN: RoleARN? = nil,
                rollbackConfiguration: RollbackConfiguration? = nil,
                stackName: StackName,
                stackPolicyBody: StackPolicyBody? = nil,
                stackPolicyDuringUpdateBody: StackPolicyDuringUpdateBody? = nil,
                stackPolicyDuringUpdateURL: StackPolicyDuringUpdateURL? = nil,
                stackPolicyURL: StackPolicyURL? = nil,
                tags: Tags? = nil,
                templateBody: TemplateBody? = nil,
                templateURL: TemplateURL? = nil,
                usePreviousTemplate: UsePreviousTemplate? = nil) {
        self.capabilities = capabilities
        self.clientRequestToken = clientRequestToken
        self.disableRollback = disableRollback
        self.notificationARNs = notificationARNs
        self.parameters = parameters
        self.resourceTypes = resourceTypes
        self.roleARN = roleARN
        self.rollbackConfiguration = rollbackConfiguration
        self.stackName = stackName
        self.stackPolicyBody = stackPolicyBody
        self.stackPolicyDuringUpdateBody = stackPolicyDuringUpdateBody
        self.stackPolicyDuringUpdateURL = stackPolicyDuringUpdateURL
        self.stackPolicyURL = stackPolicyURL
        self.tags = tags
        self.templateBody = templateBody
        self.templateURL = templateURL
        self.usePreviousTemplate = usePreviousTemplate
    }

    enum CodingKeys: String, CodingKey {
        case capabilities = "Capabilities"
        case clientRequestToken = "ClientRequestToken"
        case disableRollback = "DisableRollback"
        case notificationARNs = "NotificationARNs"
        case parameters = "Parameters"
        case resourceTypes = "ResourceTypes"
        case roleARN = "RoleARN"
        case rollbackConfiguration = "RollbackConfiguration"
        case stackName = "StackName"
        case stackPolicyBody = "StackPolicyBody"
        case stackPolicyDuringUpdateBody = "StackPolicyDuringUpdateBody"
        case stackPolicyDuringUpdateURL = "StackPolicyDuringUpdateURL"
        case stackPolicyURL = "StackPolicyURL"
        case tags = "Tags"
        case templateBody = "TemplateBody"
        case templateURL = "TemplateURL"
        case usePreviousTemplate = "UsePreviousTemplate"
    }

    public func validate() throws {
        try clientRequestToken?.validateAsClientRequestToken()
        try notificationARNs?.validateAsNotificationARNs()
        try roleARN?.validateAsRoleARN()
        try rollbackConfiguration?.validate()
        try stackPolicyBody?.validateAsStackPolicyBody()
        try stackPolicyDuringUpdateBody?.validateAsStackPolicyDuringUpdateBody()
        try stackPolicyDuringUpdateURL?.validateAsStackPolicyDuringUpdateURL()
        try stackPolicyURL?.validateAsStackPolicyURL()
        try tags?.validateAsTags()
        try templateBody?.validateAsTemplateBody()
        try templateURL?.validateAsTemplateURL()
    }
}

public struct UpdateStackInstancesInput: Codable, Equatable {
    public var accounts: AccountList?
    public var callAs: CallAs?
    public var deploymentTargets: DeploymentTargets?
    public var operationId: ClientRequestToken?
    public var operationPreferences: StackSetOperationPreferences?
    public var parameterOverrides: Parameters?
    public var regions: RegionList
    public var stackSetName: StackSetNameOrId

    public init(accounts: AccountList? = nil,
                callAs: CallAs? = nil,
                deploymentTargets: DeploymentTargets? = nil,
                operationId: ClientRequestToken? = nil,
                operationPreferences: StackSetOperationPreferences? = nil,
                parameterOverrides: Parameters? = nil,
                regions: RegionList,
                stackSetName: StackSetNameOrId) {
        self.accounts = accounts
        self.callAs = callAs
        self.deploymentTargets = deploymentTargets
        self.operationId = operationId
        self.operationPreferences = operationPreferences
        self.parameterOverrides = parameterOverrides
        self.regions = regions
        self.stackSetName = stackSetName
    }

    enum CodingKeys: String, CodingKey {
        case accounts = "Accounts"
        case callAs = "CallAs"
        case deploymentTargets = "DeploymentTargets"
        case operationId = "OperationId"
        case operationPreferences = "OperationPreferences"
        case parameterOverrides = "ParameterOverrides"
        case regions = "Regions"
        case stackSetName = "StackSetName"
    }

    public func validate() throws {
        try deploymentTargets?.validate()
        try operationId?.validateAsClientRequestToken()
        try operationPreferences?.validate()
        try stackSetName.validateAsStackSetNameOrId()
    }
}

public struct UpdateStackInstancesOutput: Codable, Equatable {
    public var operationId: ClientRequestToken?

    public init(operationId: ClientRequestToken? = nil) {
        self.operationId = operationId
    }

    enum CodingKeys: String, CodingKey {
        case operationId = "OperationId"
    }

    public func validate() throws {
        try operationId?.validateAsClientRequestToken()
    }
}

public struct UpdateStackInstancesOutputForUpdateStackInstances: Codable, Equatable {
    public var updateStackInstancesResult: UpdateStackInstancesOutput

    public init(updateStackInstancesResult: UpdateStackInstancesOutput) {
        self.updateStackInstancesResult = updateStackInstancesResult
    }

    enum CodingKeys: String, CodingKey {
        case updateStackInstancesResult = "UpdateStackInstancesResult"
    }

    public func validate() throws {
        try updateStackInstancesResult.validate()
    }
}

public struct UpdateStackOutput: Codable, Equatable {
    public var stackId: StackId?

    public init(stackId: StackId? = nil) {
        self.stackId = stackId
    }

    enum CodingKeys: String, CodingKey {
        case stackId = "StackId"
    }

    public func validate() throws {
    }
}

public struct UpdateStackOutputForUpdateStack: Codable, Equatable {
    public var updateStackResult: UpdateStackOutput

    public init(updateStackResult: UpdateStackOutput) {
        self.updateStackResult = updateStackResult
    }

    enum CodingKeys: String, CodingKey {
        case updateStackResult = "UpdateStackResult"
    }

    public func validate() throws {
        try updateStackResult.validate()
    }
}

public struct UpdateStackSetInput: Codable, Equatable {
    public var accounts: AccountList?
    public var administrationRoleARN: RoleARN?
    public var autoDeployment: AutoDeployment?
    public var callAs: CallAs?
    public var capabilities: Capabilities?
    public var deploymentTargets: DeploymentTargets?
    public var description: Description?
    public var executionRoleName: ExecutionRoleName?
    public var managedExecution: ManagedExecution?
    public var operationId: ClientRequestToken?
    public var operationPreferences: StackSetOperationPreferences?
    public var parameters: Parameters?
    public var permissionModel: PermissionModels?
    public var regions: RegionList?
    public var stackSetName: StackSetName
    public var tags: Tags?
    public var templateBody: TemplateBody?
    public var templateURL: TemplateURL?
    public var usePreviousTemplate: UsePreviousTemplate?

    public init(accounts: AccountList? = nil,
                administrationRoleARN: RoleARN? = nil,
                autoDeployment: AutoDeployment? = nil,
                callAs: CallAs? = nil,
                capabilities: Capabilities? = nil,
                deploymentTargets: DeploymentTargets? = nil,
                description: Description? = nil,
                executionRoleName: ExecutionRoleName? = nil,
                managedExecution: ManagedExecution? = nil,
                operationId: ClientRequestToken? = nil,
                operationPreferences: StackSetOperationPreferences? = nil,
                parameters: Parameters? = nil,
                permissionModel: PermissionModels? = nil,
                regions: RegionList? = nil,
                stackSetName: StackSetName,
                tags: Tags? = nil,
                templateBody: TemplateBody? = nil,
                templateURL: TemplateURL? = nil,
                usePreviousTemplate: UsePreviousTemplate? = nil) {
        self.accounts = accounts
        self.administrationRoleARN = administrationRoleARN
        self.autoDeployment = autoDeployment
        self.callAs = callAs
        self.capabilities = capabilities
        self.deploymentTargets = deploymentTargets
        self.description = description
        self.executionRoleName = executionRoleName
        self.managedExecution = managedExecution
        self.operationId = operationId
        self.operationPreferences = operationPreferences
        self.parameters = parameters
        self.permissionModel = permissionModel
        self.regions = regions
        self.stackSetName = stackSetName
        self.tags = tags
        self.templateBody = templateBody
        self.templateURL = templateURL
        self.usePreviousTemplate = usePreviousTemplate
    }

    enum CodingKeys: String, CodingKey {
        case accounts = "Accounts"
        case administrationRoleARN = "AdministrationRoleARN"
        case autoDeployment = "AutoDeployment"
        case callAs = "CallAs"
        case capabilities = "Capabilities"
        case deploymentTargets = "DeploymentTargets"
        case description = "Description"
        case executionRoleName = "ExecutionRoleName"
        case managedExecution = "ManagedExecution"
        case operationId = "OperationId"
        case operationPreferences = "OperationPreferences"
        case parameters = "Parameters"
        case permissionModel = "PermissionModel"
        case regions = "Regions"
        case stackSetName = "StackSetName"
        case tags = "Tags"
        case templateBody = "TemplateBody"
        case templateURL = "TemplateURL"
        case usePreviousTemplate = "UsePreviousTemplate"
    }

    public func validate() throws {
        try administrationRoleARN?.validateAsRoleARN()
        try autoDeployment?.validate()
        try deploymentTargets?.validate()
        try description?.validateAsDescription()
        try executionRoleName?.validateAsExecutionRoleName()
        try managedExecution?.validate()
        try operationId?.validateAsClientRequestToken()
        try operationPreferences?.validate()
        try tags?.validateAsTags()
        try templateBody?.validateAsTemplateBody()
        try templateURL?.validateAsTemplateURL()
    }
}

public struct UpdateStackSetOutput: Codable, Equatable {
    public var operationId: ClientRequestToken?

    public init(operationId: ClientRequestToken? = nil) {
        self.operationId = operationId
    }

    enum CodingKeys: String, CodingKey {
        case operationId = "OperationId"
    }

    public func validate() throws {
        try operationId?.validateAsClientRequestToken()
    }
}

public struct UpdateStackSetOutputForUpdateStackSet: Codable, Equatable {
    public var updateStackSetResult: UpdateStackSetOutput

    public init(updateStackSetResult: UpdateStackSetOutput) {
        self.updateStackSetResult = updateStackSetResult
    }

    enum CodingKeys: String, CodingKey {
        case updateStackSetResult = "UpdateStackSetResult"
    }

    public func validate() throws {
        try updateStackSetResult.validate()
    }
}

public struct UpdateTerminationProtectionInput: Codable, Equatable {
    public var enableTerminationProtection: EnableTerminationProtection
    public var stackName: StackNameOrId

    public init(enableTerminationProtection: EnableTerminationProtection,
                stackName: StackNameOrId) {
        self.enableTerminationProtection = enableTerminationProtection
        self.stackName = stackName
    }

    enum CodingKeys: String, CodingKey {
        case enableTerminationProtection = "EnableTerminationProtection"
        case stackName = "StackName"
    }

    public func validate() throws {
        try stackName.validateAsStackNameOrId()
    }
}

public struct UpdateTerminationProtectionOutput: Codable, Equatable {
    public var stackId: StackId?

    public init(stackId: StackId? = nil) {
        self.stackId = stackId
    }

    enum CodingKeys: String, CodingKey {
        case stackId = "StackId"
    }

    public func validate() throws {
    }
}

public struct UpdateTerminationProtectionOutputForUpdateTerminationProtection: Codable, Equatable {
    public var updateTerminationProtectionResult: UpdateTerminationProtectionOutput

    public init(updateTerminationProtectionResult: UpdateTerminationProtectionOutput) {
        self.updateTerminationProtectionResult = updateTerminationProtectionResult
    }

    enum CodingKeys: String, CodingKey {
        case updateTerminationProtectionResult = "UpdateTerminationProtectionResult"
    }

    public func validate() throws {
        try updateTerminationProtectionResult.validate()
    }
}

public struct ValidateTemplateInput: Codable, Equatable {
    public var templateBody: TemplateBody?
    public var templateURL: TemplateURL?

    public init(templateBody: TemplateBody? = nil,
                templateURL: TemplateURL? = nil) {
        self.templateBody = templateBody
        self.templateURL = templateURL
    }

    enum CodingKeys: String, CodingKey {
        case templateBody = "TemplateBody"
        case templateURL = "TemplateURL"
    }

    public func validate() throws {
        try templateBody?.validateAsTemplateBody()
        try templateURL?.validateAsTemplateURL()
    }
}

public struct ValidateTemplateOutput: Codable, Equatable {
    public var capabilities: Capabilities?
    public var capabilitiesReason: CapabilitiesReason?
    public var declaredTransforms: TransformsList?
    public var description: Description?
    public var parameters: TemplateParameters?

    public init(capabilities: Capabilities? = nil,
                capabilitiesReason: CapabilitiesReason? = nil,
                declaredTransforms: TransformsList? = nil,
                description: Description? = nil,
                parameters: TemplateParameters? = nil) {
        self.capabilities = capabilities
        self.capabilitiesReason = capabilitiesReason
        self.declaredTransforms = declaredTransforms
        self.description = description
        self.parameters = parameters
    }

    enum CodingKeys: String, CodingKey {
        case capabilities = "Capabilities"
        case capabilitiesReason = "CapabilitiesReason"
        case declaredTransforms = "DeclaredTransforms"
        case description = "Description"
        case parameters = "Parameters"
    }

    public func validate() throws {
        try description?.validateAsDescription()
    }
}

public struct ValidateTemplateOutputForValidateTemplate: Codable, Equatable {
    public var validateTemplateResult: ValidateTemplateOutput

    public init(validateTemplateResult: ValidateTemplateOutput) {
        self.validateTemplateResult = validateTemplateResult
    }

    enum CodingKeys: String, CodingKey {
        case validateTemplateResult = "ValidateTemplateResult"
    }

    public func validate() throws {
        try validateTemplateResult.validate()
    }
}
