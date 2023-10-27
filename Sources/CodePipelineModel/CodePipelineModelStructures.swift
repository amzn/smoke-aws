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
// CodePipelineModelStructures.swift
// CodePipelineModel
//

import Foundation

public struct AWSSessionCredentials: Codable, Equatable {
    public var accessKeyId: AccessKeyId
    public var secretAccessKey: SecretAccessKey
    public var sessionToken: SessionToken

    public init(accessKeyId: AccessKeyId,
                secretAccessKey: SecretAccessKey,
                sessionToken: SessionToken) {
        self.accessKeyId = accessKeyId
        self.secretAccessKey = secretAccessKey
        self.sessionToken = sessionToken
    }

    enum CodingKeys: String, CodingKey {
        case accessKeyId
        case secretAccessKey
        case sessionToken
    }

    public func validate() throws {
    }
}

public struct AcknowledgeJobInput: Codable, Equatable {
    public var jobId: JobId
    public var nonce: Nonce

    public init(jobId: JobId,
                nonce: Nonce) {
        self.jobId = jobId
        self.nonce = nonce
    }

    enum CodingKeys: String, CodingKey {
        case jobId
        case nonce
    }

    public func validate() throws {
        try jobId.validateAsJobId()
        try nonce.validateAsNonce()
    }
}

public struct AcknowledgeJobOutput: Codable, Equatable {
    public var status: JobStatus?

    public init(status: JobStatus? = nil) {
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case status
    }

    public func validate() throws {
    }
}

public struct AcknowledgeThirdPartyJobInput: Codable, Equatable {
    public var clientToken: ClientToken
    public var jobId: ThirdPartyJobId
    public var nonce: Nonce

    public init(clientToken: ClientToken,
                jobId: ThirdPartyJobId,
                nonce: Nonce) {
        self.clientToken = clientToken
        self.jobId = jobId
        self.nonce = nonce
    }

    enum CodingKeys: String, CodingKey {
        case clientToken
        case jobId
        case nonce
    }

    public func validate() throws {
        try clientToken.validateAsClientToken()
        try jobId.validateAsThirdPartyJobId()
        try nonce.validateAsNonce()
    }
}

public struct AcknowledgeThirdPartyJobOutput: Codable, Equatable {
    public var status: JobStatus?

    public init(status: JobStatus? = nil) {
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case status
    }

    public func validate() throws {
    }
}

public struct ActionConfiguration: Codable, Equatable {
    public var configuration: ActionConfigurationMap?

    public init(configuration: ActionConfigurationMap? = nil) {
        self.configuration = configuration
    }

    enum CodingKeys: String, CodingKey {
        case configuration
    }

    public func validate() throws {
    }
}

public struct ActionConfigurationProperty: Codable, Equatable {
    public var description: Description?
    public var key: Boolean
    public var name: ActionConfigurationKey
    public var queryable: Boolean?
    public var required: Boolean
    public var secret: Boolean
    public var type: ActionConfigurationPropertyType?

    public init(description: Description? = nil,
                key: Boolean,
                name: ActionConfigurationKey,
                queryable: Boolean? = nil,
                required: Boolean,
                secret: Boolean,
                type: ActionConfigurationPropertyType? = nil) {
        self.description = description
        self.key = key
        self.name = name
        self.queryable = queryable
        self.required = required
        self.secret = secret
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case description
        case key
        case name
        case queryable
        case required
        case secret
        case type
    }

    public func validate() throws {
        try description?.validateAsDescription()
        try name.validateAsActionConfigurationKey()
    }
}

public struct ActionContext: Codable, Equatable {
    public var actionExecutionId: ActionExecutionId?
    public var name: ActionName?

    public init(actionExecutionId: ActionExecutionId? = nil,
                name: ActionName? = nil) {
        self.actionExecutionId = actionExecutionId
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case actionExecutionId
        case name
    }

    public func validate() throws {
        try name?.validateAsActionName()
    }
}

public struct ActionDeclaration: Codable, Equatable {
    public var actionTypeId: ActionTypeId
    public var configuration: ActionConfigurationMap?
    public var inputArtifacts: InputArtifactList?
    public var name: ActionName
    public var namespace: ActionNamespace?
    public var outputArtifacts: OutputArtifactList?
    public var region: AWSRegionName?
    public var roleArn: RoleArn?
    public var runOrder: ActionRunOrder?

    public init(actionTypeId: ActionTypeId,
                configuration: ActionConfigurationMap? = nil,
                inputArtifacts: InputArtifactList? = nil,
                name: ActionName,
                namespace: ActionNamespace? = nil,
                outputArtifacts: OutputArtifactList? = nil,
                region: AWSRegionName? = nil,
                roleArn: RoleArn? = nil,
                runOrder: ActionRunOrder? = nil) {
        self.actionTypeId = actionTypeId
        self.configuration = configuration
        self.inputArtifacts = inputArtifacts
        self.name = name
        self.namespace = namespace
        self.outputArtifacts = outputArtifacts
        self.region = region
        self.roleArn = roleArn
        self.runOrder = runOrder
    }

    enum CodingKeys: String, CodingKey {
        case actionTypeId
        case configuration
        case inputArtifacts
        case name
        case namespace
        case outputArtifacts
        case region
        case roleArn
        case runOrder
    }

    public func validate() throws {
        try actionTypeId.validate()
        try name.validateAsActionName()
        try namespace?.validateAsActionNamespace()
        try region?.validateAsAWSRegionName()
        try roleArn?.validateAsRoleArn()
        try runOrder?.validateAsActionRunOrder()
    }
}

public struct ActionExecution: Codable, Equatable {
    public var actionExecutionId: ActionExecutionId?
    public var errorDetails: ErrorDetails?
    public var externalExecutionId: ExecutionId?
    public var externalExecutionUrl: Url?
    public var lastStatusChange: Timestamp?
    public var lastUpdatedBy: LastUpdatedBy?
    public var percentComplete: Percentage?
    public var status: ActionExecutionStatus?
    public var summary: ExecutionSummary?
    public var token: ActionExecutionToken?

    public init(actionExecutionId: ActionExecutionId? = nil,
                errorDetails: ErrorDetails? = nil,
                externalExecutionId: ExecutionId? = nil,
                externalExecutionUrl: Url? = nil,
                lastStatusChange: Timestamp? = nil,
                lastUpdatedBy: LastUpdatedBy? = nil,
                percentComplete: Percentage? = nil,
                status: ActionExecutionStatus? = nil,
                summary: ExecutionSummary? = nil,
                token: ActionExecutionToken? = nil) {
        self.actionExecutionId = actionExecutionId
        self.errorDetails = errorDetails
        self.externalExecutionId = externalExecutionId
        self.externalExecutionUrl = externalExecutionUrl
        self.lastStatusChange = lastStatusChange
        self.lastUpdatedBy = lastUpdatedBy
        self.percentComplete = percentComplete
        self.status = status
        self.summary = summary
        self.token = token
    }

    enum CodingKeys: String, CodingKey {
        case actionExecutionId
        case errorDetails
        case externalExecutionId
        case externalExecutionUrl
        case lastStatusChange
        case lastUpdatedBy
        case percentComplete
        case status
        case summary
        case token
    }

    public func validate() throws {
        try errorDetails?.validate()
        try externalExecutionId?.validateAsExecutionId()
        try externalExecutionUrl?.validateAsUrl()
        try percentComplete?.validateAsPercentage()
        try summary?.validateAsExecutionSummary()
    }
}

public struct ActionExecutionDetail: Codable, Equatable {
    public var actionExecutionId: ActionExecutionId?
    public var actionName: ActionName?
    public var input: ActionExecutionInput?
    public var lastUpdateTime: Timestamp?
    public var output: ActionExecutionOutput?
    public var pipelineExecutionId: PipelineExecutionId?
    public var pipelineVersion: PipelineVersion?
    public var stageName: StageName?
    public var startTime: Timestamp?
    public var status: ActionExecutionStatus?

    public init(actionExecutionId: ActionExecutionId? = nil,
                actionName: ActionName? = nil,
                input: ActionExecutionInput? = nil,
                lastUpdateTime: Timestamp? = nil,
                output: ActionExecutionOutput? = nil,
                pipelineExecutionId: PipelineExecutionId? = nil,
                pipelineVersion: PipelineVersion? = nil,
                stageName: StageName? = nil,
                startTime: Timestamp? = nil,
                status: ActionExecutionStatus? = nil) {
        self.actionExecutionId = actionExecutionId
        self.actionName = actionName
        self.input = input
        self.lastUpdateTime = lastUpdateTime
        self.output = output
        self.pipelineExecutionId = pipelineExecutionId
        self.pipelineVersion = pipelineVersion
        self.stageName = stageName
        self.startTime = startTime
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case actionExecutionId
        case actionName
        case input
        case lastUpdateTime
        case output
        case pipelineExecutionId
        case pipelineVersion
        case stageName
        case startTime
        case status
    }

    public func validate() throws {
        try actionName?.validateAsActionName()
        try input?.validate()
        try output?.validate()
        try pipelineExecutionId?.validateAsPipelineExecutionId()
        try pipelineVersion?.validateAsPipelineVersion()
        try stageName?.validateAsStageName()
    }
}

public struct ActionExecutionFilter: Codable, Equatable {
    public var pipelineExecutionId: PipelineExecutionId?

    public init(pipelineExecutionId: PipelineExecutionId? = nil) {
        self.pipelineExecutionId = pipelineExecutionId
    }

    enum CodingKeys: String, CodingKey {
        case pipelineExecutionId
    }

    public func validate() throws {
        try pipelineExecutionId?.validateAsPipelineExecutionId()
    }
}

public struct ActionExecutionInput: Codable, Equatable {
    public var actionTypeId: ActionTypeId?
    public var configuration: ActionConfigurationMap?
    public var inputArtifacts: ArtifactDetailList?
    public var namespace: ActionNamespace?
    public var region: AWSRegionName?
    public var resolvedConfiguration: ResolvedActionConfigurationMap?
    public var roleArn: RoleArn?

    public init(actionTypeId: ActionTypeId? = nil,
                configuration: ActionConfigurationMap? = nil,
                inputArtifacts: ArtifactDetailList? = nil,
                namespace: ActionNamespace? = nil,
                region: AWSRegionName? = nil,
                resolvedConfiguration: ResolvedActionConfigurationMap? = nil,
                roleArn: RoleArn? = nil) {
        self.actionTypeId = actionTypeId
        self.configuration = configuration
        self.inputArtifacts = inputArtifacts
        self.namespace = namespace
        self.region = region
        self.resolvedConfiguration = resolvedConfiguration
        self.roleArn = roleArn
    }

    enum CodingKeys: String, CodingKey {
        case actionTypeId
        case configuration
        case inputArtifacts
        case namespace
        case region
        case resolvedConfiguration
        case roleArn
    }

    public func validate() throws {
        try actionTypeId?.validate()
        try namespace?.validateAsActionNamespace()
        try region?.validateAsAWSRegionName()
        try roleArn?.validateAsRoleArn()
    }
}

public struct ActionExecutionOutput: Codable, Equatable {
    public var executionResult: ActionExecutionResult?
    public var outputArtifacts: ArtifactDetailList?
    public var outputVariables: OutputVariablesMap?

    public init(executionResult: ActionExecutionResult? = nil,
                outputArtifacts: ArtifactDetailList? = nil,
                outputVariables: OutputVariablesMap? = nil) {
        self.executionResult = executionResult
        self.outputArtifacts = outputArtifacts
        self.outputVariables = outputVariables
    }

    enum CodingKeys: String, CodingKey {
        case executionResult
        case outputArtifacts
        case outputVariables
    }

    public func validate() throws {
        try executionResult?.validate()
    }
}

public struct ActionExecutionResult: Codable, Equatable {
    public var externalExecutionId: ExternalExecutionId?
    public var externalExecutionSummary: ExternalExecutionSummary?
    public var externalExecutionUrl: Url?

    public init(externalExecutionId: ExternalExecutionId? = nil,
                externalExecutionSummary: ExternalExecutionSummary? = nil,
                externalExecutionUrl: Url? = nil) {
        self.externalExecutionId = externalExecutionId
        self.externalExecutionSummary = externalExecutionSummary
        self.externalExecutionUrl = externalExecutionUrl
    }

    enum CodingKeys: String, CodingKey {
        case externalExecutionId
        case externalExecutionSummary
        case externalExecutionUrl
    }

    public func validate() throws {
        try externalExecutionUrl?.validateAsUrl()
    }
}

public struct ActionNotFoundException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ActionRevision: Codable, Equatable {
    public var created: Timestamp
    public var revisionChangeId: RevisionChangeIdentifier
    public var revisionId: Revision

    public init(created: Timestamp,
                revisionChangeId: RevisionChangeIdentifier,
                revisionId: Revision) {
        self.created = created
        self.revisionChangeId = revisionChangeId
        self.revisionId = revisionId
    }

    enum CodingKeys: String, CodingKey {
        case created
        case revisionChangeId
        case revisionId
    }

    public func validate() throws {
        try revisionChangeId.validateAsRevisionChangeIdentifier()
        try revisionId.validateAsRevision()
    }
}

public struct ActionState: Codable, Equatable {
    public var actionName: ActionName?
    public var currentRevision: ActionRevision?
    public var entityUrl: Url?
    public var latestExecution: ActionExecution?
    public var revisionUrl: Url?

    public init(actionName: ActionName? = nil,
                currentRevision: ActionRevision? = nil,
                entityUrl: Url? = nil,
                latestExecution: ActionExecution? = nil,
                revisionUrl: Url? = nil) {
        self.actionName = actionName
        self.currentRevision = currentRevision
        self.entityUrl = entityUrl
        self.latestExecution = latestExecution
        self.revisionUrl = revisionUrl
    }

    enum CodingKeys: String, CodingKey {
        case actionName
        case currentRevision
        case entityUrl
        case latestExecution
        case revisionUrl
    }

    public func validate() throws {
        try actionName?.validateAsActionName()
        try currentRevision?.validate()
        try entityUrl?.validateAsUrl()
        try latestExecution?.validate()
        try revisionUrl?.validateAsUrl()
    }
}

public struct ActionType: Codable, Equatable {
    public var actionConfigurationProperties: ActionConfigurationPropertyList?
    public var id: ActionTypeId
    public var inputArtifactDetails: ArtifactDetails
    public var outputArtifactDetails: ArtifactDetails
    public var settings: ActionTypeSettings?

    public init(actionConfigurationProperties: ActionConfigurationPropertyList? = nil,
                id: ActionTypeId,
                inputArtifactDetails: ArtifactDetails,
                outputArtifactDetails: ArtifactDetails,
                settings: ActionTypeSettings? = nil) {
        self.actionConfigurationProperties = actionConfigurationProperties
        self.id = id
        self.inputArtifactDetails = inputArtifactDetails
        self.outputArtifactDetails = outputArtifactDetails
        self.settings = settings
    }

    enum CodingKeys: String, CodingKey {
        case actionConfigurationProperties
        case id
        case inputArtifactDetails
        case outputArtifactDetails
        case settings
    }

    public func validate() throws {
        try actionConfigurationProperties?.validateAsActionConfigurationPropertyList()
        try id.validate()
        try inputArtifactDetails.validate()
        try outputArtifactDetails.validate()
        try settings?.validate()
    }
}

public struct ActionTypeAlreadyExistsException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ActionTypeArtifactDetails: Codable, Equatable {
    public var maximumCount: MaximumActionTypeArtifactCount
    public var minimumCount: MinimumActionTypeArtifactCount

    public init(maximumCount: MaximumActionTypeArtifactCount,
                minimumCount: MinimumActionTypeArtifactCount) {
        self.maximumCount = maximumCount
        self.minimumCount = minimumCount
    }

    enum CodingKeys: String, CodingKey {
        case maximumCount
        case minimumCount
    }

    public func validate() throws {
        try maximumCount.validateAsMaximumActionTypeArtifactCount()
        try minimumCount.validateAsMinimumActionTypeArtifactCount()
    }
}

public struct ActionTypeDeclaration: Codable, Equatable {
    public var description: ActionTypeDescription?
    public var executor: ActionTypeExecutor
    public var id: ActionTypeIdentifier
    public var inputArtifactDetails: ActionTypeArtifactDetails
    public var outputArtifactDetails: ActionTypeArtifactDetails
    public var permissions: ActionTypePermissions?
    public var properties: ActionTypeProperties?
    public var urls: ActionTypeUrls?

    public init(description: ActionTypeDescription? = nil,
                executor: ActionTypeExecutor,
                id: ActionTypeIdentifier,
                inputArtifactDetails: ActionTypeArtifactDetails,
                outputArtifactDetails: ActionTypeArtifactDetails,
                permissions: ActionTypePermissions? = nil,
                properties: ActionTypeProperties? = nil,
                urls: ActionTypeUrls? = nil) {
        self.description = description
        self.executor = executor
        self.id = id
        self.inputArtifactDetails = inputArtifactDetails
        self.outputArtifactDetails = outputArtifactDetails
        self.permissions = permissions
        self.properties = properties
        self.urls = urls
    }

    enum CodingKeys: String, CodingKey {
        case description
        case executor
        case id
        case inputArtifactDetails
        case outputArtifactDetails
        case permissions
        case properties
        case urls
    }

    public func validate() throws {
        try description?.validateAsActionTypeDescription()
        try executor.validate()
        try id.validate()
        try inputArtifactDetails.validate()
        try outputArtifactDetails.validate()
        try permissions?.validate()
        try properties?.validateAsActionTypeProperties()
        try urls?.validate()
    }
}

public struct ActionTypeExecutor: Codable, Equatable {
    public var configuration: ExecutorConfiguration
    public var jobTimeout: JobTimeout?
    public var policyStatementsTemplate: PolicyStatementsTemplate?
    public var type: ExecutorType

    public init(configuration: ExecutorConfiguration,
                jobTimeout: JobTimeout? = nil,
                policyStatementsTemplate: PolicyStatementsTemplate? = nil,
                type: ExecutorType) {
        self.configuration = configuration
        self.jobTimeout = jobTimeout
        self.policyStatementsTemplate = policyStatementsTemplate
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case configuration
        case jobTimeout
        case policyStatementsTemplate
        case type
    }

    public func validate() throws {
        try configuration.validate()
        try jobTimeout?.validateAsJobTimeout()
        try policyStatementsTemplate?.validateAsPolicyStatementsTemplate()
    }
}

public struct ActionTypeId: Codable, Equatable {
    public var category: ActionCategory
    public var owner: ActionOwner
    public var provider: ActionProvider
    public var version: Version

    public init(category: ActionCategory,
                owner: ActionOwner,
                provider: ActionProvider,
                version: Version) {
        self.category = category
        self.owner = owner
        self.provider = provider
        self.version = version
    }

    enum CodingKeys: String, CodingKey {
        case category
        case owner
        case provider
        case version
    }

    public func validate() throws {
        try provider.validateAsActionProvider()
        try version.validateAsVersion()
    }
}

public struct ActionTypeIdentifier: Codable, Equatable {
    public var category: ActionCategory
    public var owner: ActionTypeOwner
    public var provider: ActionProvider
    public var version: Version

    public init(category: ActionCategory,
                owner: ActionTypeOwner,
                provider: ActionProvider,
                version: Version) {
        self.category = category
        self.owner = owner
        self.provider = provider
        self.version = version
    }

    enum CodingKeys: String, CodingKey {
        case category
        case owner
        case provider
        case version
    }

    public func validate() throws {
        try owner.validateAsActionTypeOwner()
        try provider.validateAsActionProvider()
        try version.validateAsVersion()
    }
}

public struct ActionTypeNotFoundException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ActionTypePermissions: Codable, Equatable {
    public var allowedAccounts: AllowedAccounts

    public init(allowedAccounts: AllowedAccounts) {
        self.allowedAccounts = allowedAccounts
    }

    enum CodingKeys: String, CodingKey {
        case allowedAccounts
    }

    public func validate() throws {
        try allowedAccounts.validateAsAllowedAccounts()
    }
}

public struct ActionTypeProperty: Codable, Equatable {
    public var description: PropertyDescription?
    public var key: Boolean
    public var name: ActionConfigurationKey
    public var noEcho: Boolean
    public var optional: Boolean
    public var queryable: Boolean?

    public init(description: PropertyDescription? = nil,
                key: Boolean,
                name: ActionConfigurationKey,
                noEcho: Boolean,
                optional: Boolean,
                queryable: Boolean? = nil) {
        self.description = description
        self.key = key
        self.name = name
        self.noEcho = noEcho
        self.optional = optional
        self.queryable = queryable
    }

    enum CodingKeys: String, CodingKey {
        case description
        case key
        case name
        case noEcho
        case optional
        case queryable
    }

    public func validate() throws {
        try description?.validateAsPropertyDescription()
        try name.validateAsActionConfigurationKey()
    }
}

public struct ActionTypeSettings: Codable, Equatable {
    public var entityUrlTemplate: UrlTemplate?
    public var executionUrlTemplate: UrlTemplate?
    public var revisionUrlTemplate: UrlTemplate?
    public var thirdPartyConfigurationUrl: Url?

    public init(entityUrlTemplate: UrlTemplate? = nil,
                executionUrlTemplate: UrlTemplate? = nil,
                revisionUrlTemplate: UrlTemplate? = nil,
                thirdPartyConfigurationUrl: Url? = nil) {
        self.entityUrlTemplate = entityUrlTemplate
        self.executionUrlTemplate = executionUrlTemplate
        self.revisionUrlTemplate = revisionUrlTemplate
        self.thirdPartyConfigurationUrl = thirdPartyConfigurationUrl
    }

    enum CodingKeys: String, CodingKey {
        case entityUrlTemplate
        case executionUrlTemplate
        case revisionUrlTemplate
        case thirdPartyConfigurationUrl
    }

    public func validate() throws {
        try entityUrlTemplate?.validateAsUrlTemplate()
        try executionUrlTemplate?.validateAsUrlTemplate()
        try revisionUrlTemplate?.validateAsUrlTemplate()
        try thirdPartyConfigurationUrl?.validateAsUrl()
    }
}

public struct ActionTypeUrls: Codable, Equatable {
    public var configurationUrl: Url?
    public var entityUrlTemplate: UrlTemplate?
    public var executionUrlTemplate: UrlTemplate?
    public var revisionUrlTemplate: UrlTemplate?

    public init(configurationUrl: Url? = nil,
                entityUrlTemplate: UrlTemplate? = nil,
                executionUrlTemplate: UrlTemplate? = nil,
                revisionUrlTemplate: UrlTemplate? = nil) {
        self.configurationUrl = configurationUrl
        self.entityUrlTemplate = entityUrlTemplate
        self.executionUrlTemplate = executionUrlTemplate
        self.revisionUrlTemplate = revisionUrlTemplate
    }

    enum CodingKeys: String, CodingKey {
        case configurationUrl
        case entityUrlTemplate
        case executionUrlTemplate
        case revisionUrlTemplate
    }

    public func validate() throws {
        try configurationUrl?.validateAsUrl()
        try entityUrlTemplate?.validateAsUrlTemplate()
        try executionUrlTemplate?.validateAsUrlTemplate()
        try revisionUrlTemplate?.validateAsUrlTemplate()
    }
}

public struct ApprovalAlreadyCompletedException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ApprovalResult: Codable, Equatable {
    public var status: ApprovalStatus
    public var summary: ApprovalSummary

    public init(status: ApprovalStatus,
                summary: ApprovalSummary) {
        self.status = status
        self.summary = summary
    }

    enum CodingKeys: String, CodingKey {
        case status
        case summary
    }

    public func validate() throws {
        try summary.validateAsApprovalSummary()
    }
}

public struct Artifact: Codable, Equatable {
    public var location: ArtifactLocation?
    public var name: ArtifactName?
    public var revision: Revision?

    public init(location: ArtifactLocation? = nil,
                name: ArtifactName? = nil,
                revision: Revision? = nil) {
        self.location = location
        self.name = name
        self.revision = revision
    }

    enum CodingKeys: String, CodingKey {
        case location
        case name
        case revision
    }

    public func validate() throws {
        try location?.validate()
        try name?.validateAsArtifactName()
        try revision?.validateAsRevision()
    }
}

public struct ArtifactDetail: Codable, Equatable {
    public var name: ArtifactName?
    public var s3location: S3Location?

    public init(name: ArtifactName? = nil,
                s3location: S3Location? = nil) {
        self.name = name
        self.s3location = s3location
    }

    enum CodingKeys: String, CodingKey {
        case name
        case s3location
    }

    public func validate() throws {
        try name?.validateAsArtifactName()
        try s3location?.validate()
    }
}

public struct ArtifactDetails: Codable, Equatable {
    public var maximumCount: MaximumArtifactCount
    public var minimumCount: MinimumArtifactCount

    public init(maximumCount: MaximumArtifactCount,
                minimumCount: MinimumArtifactCount) {
        self.maximumCount = maximumCount
        self.minimumCount = minimumCount
    }

    enum CodingKeys: String, CodingKey {
        case maximumCount
        case minimumCount
    }

    public func validate() throws {
        try maximumCount.validateAsMaximumArtifactCount()
        try minimumCount.validateAsMinimumArtifactCount()
    }
}

public struct ArtifactLocation: Codable, Equatable {
    public var s3Location: S3ArtifactLocation?
    public var type: ArtifactLocationType?

    public init(s3Location: S3ArtifactLocation? = nil,
                type: ArtifactLocationType? = nil) {
        self.s3Location = s3Location
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case s3Location
        case type
    }

    public func validate() throws {
        try s3Location?.validate()
    }
}

public struct ArtifactRevision: Codable, Equatable {
    public var created: Timestamp?
    public var name: ArtifactName?
    public var revisionChangeIdentifier: RevisionChangeIdentifier?
    public var revisionId: Revision?
    public var revisionSummary: RevisionSummary?
    public var revisionUrl: Url?

    public init(created: Timestamp? = nil,
                name: ArtifactName? = nil,
                revisionChangeIdentifier: RevisionChangeIdentifier? = nil,
                revisionId: Revision? = nil,
                revisionSummary: RevisionSummary? = nil,
                revisionUrl: Url? = nil) {
        self.created = created
        self.name = name
        self.revisionChangeIdentifier = revisionChangeIdentifier
        self.revisionId = revisionId
        self.revisionSummary = revisionSummary
        self.revisionUrl = revisionUrl
    }

    enum CodingKeys: String, CodingKey {
        case created
        case name
        case revisionChangeIdentifier
        case revisionId
        case revisionSummary
        case revisionUrl
    }

    public func validate() throws {
        try name?.validateAsArtifactName()
        try revisionChangeIdentifier?.validateAsRevisionChangeIdentifier()
        try revisionId?.validateAsRevision()
        try revisionSummary?.validateAsRevisionSummary()
        try revisionUrl?.validateAsUrl()
    }
}

public struct ArtifactStore: Codable, Equatable {
    public var encryptionKey: EncryptionKey?
    public var location: ArtifactStoreLocation
    public var type: ArtifactStoreType

    public init(encryptionKey: EncryptionKey? = nil,
                location: ArtifactStoreLocation,
                type: ArtifactStoreType) {
        self.encryptionKey = encryptionKey
        self.location = location
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case encryptionKey
        case location
        case type
    }

    public func validate() throws {
        try encryptionKey?.validate()
        try location.validateAsArtifactStoreLocation()
    }
}

public struct BlockerDeclaration: Codable, Equatable {
    public var name: BlockerName
    public var type: BlockerType

    public init(name: BlockerName,
                type: BlockerType) {
        self.name = name
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case name
        case type
    }

    public func validate() throws {
        try name.validateAsBlockerName()
    }
}

public struct ConcurrentModificationException: Codable, Equatable {
    public var message: Message?

    public init(message: Message? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
        try message?.validateAsMessage()
    }
}

public struct ConflictException: Codable, Equatable {
    public var message: Message?

    public init(message: Message? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
        try message?.validateAsMessage()
    }
}

public struct CreateCustomActionTypeInput: Codable, Equatable {
    public var category: ActionCategory
    public var configurationProperties: ActionConfigurationPropertyList?
    public var inputArtifactDetails: ArtifactDetails
    public var outputArtifactDetails: ArtifactDetails
    public var provider: ActionProvider
    public var settings: ActionTypeSettings?
    public var tags: TagList?
    public var version: Version

    public init(category: ActionCategory,
                configurationProperties: ActionConfigurationPropertyList? = nil,
                inputArtifactDetails: ArtifactDetails,
                outputArtifactDetails: ArtifactDetails,
                provider: ActionProvider,
                settings: ActionTypeSettings? = nil,
                tags: TagList? = nil,
                version: Version) {
        self.category = category
        self.configurationProperties = configurationProperties
        self.inputArtifactDetails = inputArtifactDetails
        self.outputArtifactDetails = outputArtifactDetails
        self.provider = provider
        self.settings = settings
        self.tags = tags
        self.version = version
    }

    enum CodingKeys: String, CodingKey {
        case category
        case configurationProperties
        case inputArtifactDetails
        case outputArtifactDetails
        case provider
        case settings
        case tags
        case version
    }

    public func validate() throws {
        try configurationProperties?.validateAsActionConfigurationPropertyList()
        try inputArtifactDetails.validate()
        try outputArtifactDetails.validate()
        try provider.validateAsActionProvider()
        try settings?.validate()
        try version.validateAsVersion()
    }
}

public struct CreateCustomActionTypeOutput: Codable, Equatable {
    public var actionType: ActionType
    public var tags: TagList?

    public init(actionType: ActionType,
                tags: TagList? = nil) {
        self.actionType = actionType
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case actionType
        case tags
    }

    public func validate() throws {
        try actionType.validate()
    }
}

public struct CreatePipelineInput: Codable, Equatable {
    public var pipeline: PipelineDeclaration
    public var tags: TagList?

    public init(pipeline: PipelineDeclaration,
                tags: TagList? = nil) {
        self.pipeline = pipeline
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case pipeline
        case tags
    }

    public func validate() throws {
        try pipeline.validate()
    }
}

public struct CreatePipelineOutput: Codable, Equatable {
    public var pipeline: PipelineDeclaration?
    public var tags: TagList?

    public init(pipeline: PipelineDeclaration? = nil,
                tags: TagList? = nil) {
        self.pipeline = pipeline
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case pipeline
        case tags
    }

    public func validate() throws {
        try pipeline?.validate()
    }
}

public struct CurrentRevision: Codable, Equatable {
    public var changeIdentifier: RevisionChangeIdentifier
    public var created: Time?
    public var revision: Revision
    public var revisionSummary: RevisionSummary?

    public init(changeIdentifier: RevisionChangeIdentifier,
                created: Time? = nil,
                revision: Revision,
                revisionSummary: RevisionSummary? = nil) {
        self.changeIdentifier = changeIdentifier
        self.created = created
        self.revision = revision
        self.revisionSummary = revisionSummary
    }

    enum CodingKeys: String, CodingKey {
        case changeIdentifier
        case created
        case revision
        case revisionSummary
    }

    public func validate() throws {
        try changeIdentifier.validateAsRevisionChangeIdentifier()
        try revision.validateAsRevision()
        try revisionSummary?.validateAsRevisionSummary()
    }
}

public struct DeleteCustomActionTypeInput: Codable, Equatable {
    public var category: ActionCategory
    public var provider: ActionProvider
    public var version: Version

    public init(category: ActionCategory,
                provider: ActionProvider,
                version: Version) {
        self.category = category
        self.provider = provider
        self.version = version
    }

    enum CodingKeys: String, CodingKey {
        case category
        case provider
        case version
    }

    public func validate() throws {
        try provider.validateAsActionProvider()
        try version.validateAsVersion()
    }
}

public struct DeletePipelineInput: Codable, Equatable {
    public var name: PipelineName

    public init(name: PipelineName) {
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case name
    }

    public func validate() throws {
        try name.validateAsPipelineName()
    }
}

public struct DeleteWebhookInput: Codable, Equatable {
    public var name: WebhookName

    public init(name: WebhookName) {
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case name
    }

    public func validate() throws {
        try name.validateAsWebhookName()
    }
}

public struct DeleteWebhookOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DeregisterWebhookWithThirdPartyInput: Codable, Equatable {
    public var webhookName: WebhookName?

    public init(webhookName: WebhookName? = nil) {
        self.webhookName = webhookName
    }

    enum CodingKeys: String, CodingKey {
        case webhookName
    }

    public func validate() throws {
        try webhookName?.validateAsWebhookName()
    }
}

public struct DeregisterWebhookWithThirdPartyOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DisableStageTransitionInput: Codable, Equatable {
    public var pipelineName: PipelineName
    public var reason: DisabledReason
    public var stageName: StageName
    public var transitionType: StageTransitionType

    public init(pipelineName: PipelineName,
                reason: DisabledReason,
                stageName: StageName,
                transitionType: StageTransitionType) {
        self.pipelineName = pipelineName
        self.reason = reason
        self.stageName = stageName
        self.transitionType = transitionType
    }

    enum CodingKeys: String, CodingKey {
        case pipelineName
        case reason
        case stageName
        case transitionType
    }

    public func validate() throws {
        try pipelineName.validateAsPipelineName()
        try reason.validateAsDisabledReason()
        try stageName.validateAsStageName()
    }
}

public struct DuplicatedStopRequestException: Codable, Equatable {
    public var message: Message?

    public init(message: Message? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
        try message?.validateAsMessage()
    }
}

public struct EnableStageTransitionInput: Codable, Equatable {
    public var pipelineName: PipelineName
    public var stageName: StageName
    public var transitionType: StageTransitionType

    public init(pipelineName: PipelineName,
                stageName: StageName,
                transitionType: StageTransitionType) {
        self.pipelineName = pipelineName
        self.stageName = stageName
        self.transitionType = transitionType
    }

    enum CodingKeys: String, CodingKey {
        case pipelineName
        case stageName
        case transitionType
    }

    public func validate() throws {
        try pipelineName.validateAsPipelineName()
        try stageName.validateAsStageName()
    }
}

public struct EncryptionKey: Codable, Equatable {
    public var id: EncryptionKeyId
    public var type: EncryptionKeyType

    public init(id: EncryptionKeyId,
                type: EncryptionKeyType) {
        self.id = id
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case id
        case type
    }

    public func validate() throws {
        try id.validateAsEncryptionKeyId()
    }
}

public struct ErrorDetails: Codable, Equatable {
    public var code: Code?
    public var message: Message?

    public init(code: Code? = nil,
                message: Message? = nil) {
        self.code = code
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case code
        case message
    }

    public func validate() throws {
        try message?.validateAsMessage()
    }
}

public struct ExecutionDetails: Codable, Equatable {
    public var externalExecutionId: ExecutionId?
    public var percentComplete: Percentage?
    public var summary: ExecutionSummary?

    public init(externalExecutionId: ExecutionId? = nil,
                percentComplete: Percentage? = nil,
                summary: ExecutionSummary? = nil) {
        self.externalExecutionId = externalExecutionId
        self.percentComplete = percentComplete
        self.summary = summary
    }

    enum CodingKeys: String, CodingKey {
        case externalExecutionId
        case percentComplete
        case summary
    }

    public func validate() throws {
        try externalExecutionId?.validateAsExecutionId()
        try percentComplete?.validateAsPercentage()
        try summary?.validateAsExecutionSummary()
    }
}

public struct ExecutionTrigger: Codable, Equatable {
    public var triggerDetail: TriggerDetail?
    public var triggerType: TriggerType?

    public init(triggerDetail: TriggerDetail? = nil,
                triggerType: TriggerType? = nil) {
        self.triggerDetail = triggerDetail
        self.triggerType = triggerType
    }

    enum CodingKeys: String, CodingKey {
        case triggerDetail
        case triggerType
    }

    public func validate() throws {
        try triggerDetail?.validateAsTriggerDetail()
    }
}

public struct ExecutorConfiguration: Codable, Equatable {
    public var jobWorkerExecutorConfiguration: JobWorkerExecutorConfiguration?
    public var lambdaExecutorConfiguration: LambdaExecutorConfiguration?

    public init(jobWorkerExecutorConfiguration: JobWorkerExecutorConfiguration? = nil,
                lambdaExecutorConfiguration: LambdaExecutorConfiguration? = nil) {
        self.jobWorkerExecutorConfiguration = jobWorkerExecutorConfiguration
        self.lambdaExecutorConfiguration = lambdaExecutorConfiguration
    }

    enum CodingKeys: String, CodingKey {
        case jobWorkerExecutorConfiguration
        case lambdaExecutorConfiguration
    }

    public func validate() throws {
        try jobWorkerExecutorConfiguration?.validate()
        try lambdaExecutorConfiguration?.validate()
    }
}

public struct FailureDetails: Codable, Equatable {
    public var externalExecutionId: ExecutionId?
    public var message: Message
    public var type: FailureType

    public init(externalExecutionId: ExecutionId? = nil,
                message: Message,
                type: FailureType) {
        self.externalExecutionId = externalExecutionId
        self.message = message
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case externalExecutionId
        case message
        case type
    }

    public func validate() throws {
        try externalExecutionId?.validateAsExecutionId()
        try message.validateAsMessage()
    }
}

public struct GetActionTypeInput: Codable, Equatable {
    public var category: ActionCategory
    public var owner: ActionTypeOwner
    public var provider: ActionProvider
    public var version: Version

    public init(category: ActionCategory,
                owner: ActionTypeOwner,
                provider: ActionProvider,
                version: Version) {
        self.category = category
        self.owner = owner
        self.provider = provider
        self.version = version
    }

    enum CodingKeys: String, CodingKey {
        case category
        case owner
        case provider
        case version
    }

    public func validate() throws {
        try owner.validateAsActionTypeOwner()
        try provider.validateAsActionProvider()
        try version.validateAsVersion()
    }
}

public struct GetActionTypeOutput: Codable, Equatable {
    public var actionType: ActionTypeDeclaration?

    public init(actionType: ActionTypeDeclaration? = nil) {
        self.actionType = actionType
    }

    enum CodingKeys: String, CodingKey {
        case actionType
    }

    public func validate() throws {
        try actionType?.validate()
    }
}

public struct GetJobDetailsInput: Codable, Equatable {
    public var jobId: JobId

    public init(jobId: JobId) {
        self.jobId = jobId
    }

    enum CodingKeys: String, CodingKey {
        case jobId
    }

    public func validate() throws {
        try jobId.validateAsJobId()
    }
}

public struct GetJobDetailsOutput: Codable, Equatable {
    public var jobDetails: JobDetails?

    public init(jobDetails: JobDetails? = nil) {
        self.jobDetails = jobDetails
    }

    enum CodingKeys: String, CodingKey {
        case jobDetails
    }

    public func validate() throws {
        try jobDetails?.validate()
    }
}

public struct GetPipelineExecutionInput: Codable, Equatable {
    public var pipelineExecutionId: PipelineExecutionId
    public var pipelineName: PipelineName

    public init(pipelineExecutionId: PipelineExecutionId,
                pipelineName: PipelineName) {
        self.pipelineExecutionId = pipelineExecutionId
        self.pipelineName = pipelineName
    }

    enum CodingKeys: String, CodingKey {
        case pipelineExecutionId
        case pipelineName
    }

    public func validate() throws {
        try pipelineExecutionId.validateAsPipelineExecutionId()
        try pipelineName.validateAsPipelineName()
    }
}

public struct GetPipelineExecutionOutput: Codable, Equatable {
    public var pipelineExecution: PipelineExecution?

    public init(pipelineExecution: PipelineExecution? = nil) {
        self.pipelineExecution = pipelineExecution
    }

    enum CodingKeys: String, CodingKey {
        case pipelineExecution
    }

    public func validate() throws {
        try pipelineExecution?.validate()
    }
}

public struct GetPipelineInput: Codable, Equatable {
    public var name: PipelineName
    public var version: PipelineVersion?

    public init(name: PipelineName,
                version: PipelineVersion? = nil) {
        self.name = name
        self.version = version
    }

    enum CodingKeys: String, CodingKey {
        case name
        case version
    }

    public func validate() throws {
        try name.validateAsPipelineName()
        try version?.validateAsPipelineVersion()
    }
}

public struct GetPipelineOutput: Codable, Equatable {
    public var metadata: PipelineMetadata?
    public var pipeline: PipelineDeclaration?

    public init(metadata: PipelineMetadata? = nil,
                pipeline: PipelineDeclaration? = nil) {
        self.metadata = metadata
        self.pipeline = pipeline
    }

    enum CodingKeys: String, CodingKey {
        case metadata
        case pipeline
    }

    public func validate() throws {
        try metadata?.validate()
        try pipeline?.validate()
    }
}

public struct GetPipelineStateInput: Codable, Equatable {
    public var name: PipelineName

    public init(name: PipelineName) {
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case name
    }

    public func validate() throws {
        try name.validateAsPipelineName()
    }
}

public struct GetPipelineStateOutput: Codable, Equatable {
    public var created: Timestamp?
    public var pipelineName: PipelineName?
    public var pipelineVersion: PipelineVersion?
    public var stageStates: StageStateList?
    public var updated: Timestamp?

    public init(created: Timestamp? = nil,
                pipelineName: PipelineName? = nil,
                pipelineVersion: PipelineVersion? = nil,
                stageStates: StageStateList? = nil,
                updated: Timestamp? = nil) {
        self.created = created
        self.pipelineName = pipelineName
        self.pipelineVersion = pipelineVersion
        self.stageStates = stageStates
        self.updated = updated
    }

    enum CodingKeys: String, CodingKey {
        case created
        case pipelineName
        case pipelineVersion
        case stageStates
        case updated
    }

    public func validate() throws {
        try pipelineName?.validateAsPipelineName()
        try pipelineVersion?.validateAsPipelineVersion()
    }
}

public struct GetThirdPartyJobDetailsInput: Codable, Equatable {
    public var clientToken: ClientToken
    public var jobId: ThirdPartyJobId

    public init(clientToken: ClientToken,
                jobId: ThirdPartyJobId) {
        self.clientToken = clientToken
        self.jobId = jobId
    }

    enum CodingKeys: String, CodingKey {
        case clientToken
        case jobId
    }

    public func validate() throws {
        try clientToken.validateAsClientToken()
        try jobId.validateAsThirdPartyJobId()
    }
}

public struct GetThirdPartyJobDetailsOutput: Codable, Equatable {
    public var jobDetails: ThirdPartyJobDetails?

    public init(jobDetails: ThirdPartyJobDetails? = nil) {
        self.jobDetails = jobDetails
    }

    enum CodingKeys: String, CodingKey {
        case jobDetails
    }

    public func validate() throws {
        try jobDetails?.validate()
    }
}

public struct GitConfiguration: Codable, Equatable {
    public var push: GitPushFilterList?
    public var sourceActionName: ActionName

    public init(push: GitPushFilterList? = nil,
                sourceActionName: ActionName) {
        self.push = push
        self.sourceActionName = sourceActionName
    }

    enum CodingKeys: String, CodingKey {
        case push
        case sourceActionName
    }

    public func validate() throws {
        try push?.validateAsGitPushFilterList()
        try sourceActionName.validateAsActionName()
    }
}

public struct GitPushFilter: Codable, Equatable {
    public var tags: GitTagFilterCriteria?

    public init(tags: GitTagFilterCriteria? = nil) {
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case tags
    }

    public func validate() throws {
        try tags?.validate()
    }
}

public struct GitTagFilterCriteria: Codable, Equatable {
    public var excludes: GitTagPatternList?
    public var includes: GitTagPatternList?

    public init(excludes: GitTagPatternList? = nil,
                includes: GitTagPatternList? = nil) {
        self.excludes = excludes
        self.includes = includes
    }

    enum CodingKeys: String, CodingKey {
        case excludes
        case includes
    }

    public func validate() throws {
        try excludes?.validateAsGitTagPatternList()
        try includes?.validateAsGitTagPatternList()
    }
}

public struct InputArtifact: Codable, Equatable {
    public var name: ArtifactName

    public init(name: ArtifactName) {
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case name
    }

    public func validate() throws {
        try name.validateAsArtifactName()
    }
}

public struct InvalidActionDeclarationException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InvalidApprovalTokenException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InvalidArnException: Codable, Equatable {
    public var message: Message?

    public init(message: Message? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
        try message?.validateAsMessage()
    }
}

public struct InvalidBlockerDeclarationException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InvalidClientTokenException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InvalidJobException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InvalidJobStateException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InvalidNextTokenException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InvalidNonceException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InvalidStageDeclarationException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InvalidStructureException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InvalidTagsException: Codable, Equatable {
    public var message: Message?

    public init(message: Message? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
        try message?.validateAsMessage()
    }
}

public struct InvalidWebhookAuthenticationParametersException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InvalidWebhookFilterPatternException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct Job: Codable, Equatable {
    public var accountId: AccountId?
    public var data: JobData?
    public var id: JobId?
    public var nonce: Nonce?

    public init(accountId: AccountId? = nil,
                data: JobData? = nil,
                id: JobId? = nil,
                nonce: Nonce? = nil) {
        self.accountId = accountId
        self.data = data
        self.id = id
        self.nonce = nonce
    }

    enum CodingKeys: String, CodingKey {
        case accountId
        case data
        case id
        case nonce
    }

    public func validate() throws {
        try accountId?.validateAsAccountId()
        try data?.validate()
        try id?.validateAsJobId()
        try nonce?.validateAsNonce()
    }
}

public struct JobData: Codable, Equatable {
    public var actionConfiguration: ActionConfiguration?
    public var actionTypeId: ActionTypeId?
    public var artifactCredentials: AWSSessionCredentials?
    public var continuationToken: ContinuationToken?
    public var encryptionKey: EncryptionKey?
    public var inputArtifacts: ArtifactList?
    public var outputArtifacts: ArtifactList?
    public var pipelineContext: PipelineContext?

    public init(actionConfiguration: ActionConfiguration? = nil,
                actionTypeId: ActionTypeId? = nil,
                artifactCredentials: AWSSessionCredentials? = nil,
                continuationToken: ContinuationToken? = nil,
                encryptionKey: EncryptionKey? = nil,
                inputArtifacts: ArtifactList? = nil,
                outputArtifacts: ArtifactList? = nil,
                pipelineContext: PipelineContext? = nil) {
        self.actionConfiguration = actionConfiguration
        self.actionTypeId = actionTypeId
        self.artifactCredentials = artifactCredentials
        self.continuationToken = continuationToken
        self.encryptionKey = encryptionKey
        self.inputArtifacts = inputArtifacts
        self.outputArtifacts = outputArtifacts
        self.pipelineContext = pipelineContext
    }

    enum CodingKeys: String, CodingKey {
        case actionConfiguration
        case actionTypeId
        case artifactCredentials
        case continuationToken
        case encryptionKey
        case inputArtifacts
        case outputArtifacts
        case pipelineContext
    }

    public func validate() throws {
        try actionConfiguration?.validate()
        try actionTypeId?.validate()
        try artifactCredentials?.validate()
        try continuationToken?.validateAsContinuationToken()
        try encryptionKey?.validate()
        try pipelineContext?.validate()
    }
}

public struct JobDetails: Codable, Equatable {
    public var accountId: AccountId?
    public var data: JobData?
    public var id: JobId?

    public init(accountId: AccountId? = nil,
                data: JobData? = nil,
                id: JobId? = nil) {
        self.accountId = accountId
        self.data = data
        self.id = id
    }

    enum CodingKeys: String, CodingKey {
        case accountId
        case data
        case id
    }

    public func validate() throws {
        try accountId?.validateAsAccountId()
        try data?.validate()
        try id?.validateAsJobId()
    }
}

public struct JobNotFoundException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct JobWorkerExecutorConfiguration: Codable, Equatable {
    public var pollingAccounts: PollingAccountList?
    public var pollingServicePrincipals: PollingServicePrincipalList?

    public init(pollingAccounts: PollingAccountList? = nil,
                pollingServicePrincipals: PollingServicePrincipalList? = nil) {
        self.pollingAccounts = pollingAccounts
        self.pollingServicePrincipals = pollingServicePrincipals
    }

    enum CodingKeys: String, CodingKey {
        case pollingAccounts
        case pollingServicePrincipals
    }

    public func validate() throws {
        try pollingAccounts?.validateAsPollingAccountList()
        try pollingServicePrincipals?.validateAsPollingServicePrincipalList()
    }
}

public struct LambdaExecutorConfiguration: Codable, Equatable {
    public var lambdaFunctionArn: LambdaFunctionArn

    public init(lambdaFunctionArn: LambdaFunctionArn) {
        self.lambdaFunctionArn = lambdaFunctionArn
    }

    enum CodingKeys: String, CodingKey {
        case lambdaFunctionArn
    }

    public func validate() throws {
        try lambdaFunctionArn.validateAsLambdaFunctionArn()
    }
}

public struct LimitExceededException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ListActionExecutionsInput: Codable, Equatable {
    public var filter: ActionExecutionFilter?
    public var maxResults: MaxResults?
    public var nextToken: NextToken?
    public var pipelineName: PipelineName

    public init(filter: ActionExecutionFilter? = nil,
                maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil,
                pipelineName: PipelineName) {
        self.filter = filter
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.pipelineName = pipelineName
    }

    enum CodingKeys: String, CodingKey {
        case filter
        case maxResults
        case nextToken
        case pipelineName
    }

    public func validate() throws {
        try filter?.validate()
        try maxResults?.validateAsMaxResults()
        try nextToken?.validateAsNextToken()
        try pipelineName.validateAsPipelineName()
    }
}

public struct ListActionExecutionsOutput: Codable, Equatable {
    public var actionExecutionDetails: ActionExecutionDetailList?
    public var nextToken: NextToken?

    public init(actionExecutionDetails: ActionExecutionDetailList? = nil,
                nextToken: NextToken? = nil) {
        self.actionExecutionDetails = actionExecutionDetails
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case actionExecutionDetails
        case nextToken
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct ListActionTypesInput: Codable, Equatable {
    public var actionOwnerFilter: ActionOwner?
    public var nextToken: NextToken?
    public var regionFilter: AWSRegionName?

    public init(actionOwnerFilter: ActionOwner? = nil,
                nextToken: NextToken? = nil,
                regionFilter: AWSRegionName? = nil) {
        self.actionOwnerFilter = actionOwnerFilter
        self.nextToken = nextToken
        self.regionFilter = regionFilter
    }

    enum CodingKeys: String, CodingKey {
        case actionOwnerFilter
        case nextToken
        case regionFilter
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
        try regionFilter?.validateAsAWSRegionName()
    }
}

public struct ListActionTypesOutput: Codable, Equatable {
    public var actionTypes: ActionTypeList
    public var nextToken: NextToken?

    public init(actionTypes: ActionTypeList,
                nextToken: NextToken? = nil) {
        self.actionTypes = actionTypes
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case actionTypes
        case nextToken
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct ListPipelineExecutionsInput: Codable, Equatable {
    public var maxResults: MaxResults?
    public var nextToken: NextToken?
    public var pipelineName: PipelineName

    public init(maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil,
                pipelineName: PipelineName) {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.pipelineName = pipelineName
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
        case pipelineName
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
        try nextToken?.validateAsNextToken()
        try pipelineName.validateAsPipelineName()
    }
}

public struct ListPipelineExecutionsOutput: Codable, Equatable {
    public var nextToken: NextToken?
    public var pipelineExecutionSummaries: PipelineExecutionSummaryList?

    public init(nextToken: NextToken? = nil,
                pipelineExecutionSummaries: PipelineExecutionSummaryList? = nil) {
        self.nextToken = nextToken
        self.pipelineExecutionSummaries = pipelineExecutionSummaries
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case pipelineExecutionSummaries
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct ListPipelinesInput: Codable, Equatable {
    public var maxResults: MaxPipelines?
    public var nextToken: NextToken?

    public init(maxResults: MaxPipelines? = nil,
                nextToken: NextToken? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
    }

    public func validate() throws {
        try maxResults?.validateAsMaxPipelines()
        try nextToken?.validateAsNextToken()
    }
}

public struct ListPipelinesOutput: Codable, Equatable {
    public var nextToken: NextToken?
    public var pipelines: PipelineList?

    public init(nextToken: NextToken? = nil,
                pipelines: PipelineList? = nil) {
        self.nextToken = nextToken
        self.pipelines = pipelines
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case pipelines
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct ListTagsForResourceInput: Codable, Equatable {
    public var maxResults: MaxResults?
    public var nextToken: NextToken?
    public var resourceArn: ResourceArn

    public init(maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil,
                resourceArn: ResourceArn) {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.resourceArn = resourceArn
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
        case resourceArn
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
        try nextToken?.validateAsNextToken()
        try resourceArn.validateAsResourceArn()
    }
}

public struct ListTagsForResourceOutput: Codable, Equatable {
    public var nextToken: NextToken?
    public var tags: TagList?

    public init(nextToken: NextToken? = nil,
                tags: TagList? = nil) {
        self.nextToken = nextToken
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case tags
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct ListWebhookItem: Codable, Equatable {
    public var arn: WebhookArn?
    public var definition: WebhookDefinition
    public var errorCode: WebhookErrorCode?
    public var errorMessage: WebhookErrorMessage?
    public var lastTriggered: WebhookLastTriggered?
    public var tags: TagList?
    public var url: WebhookUrl

    public init(arn: WebhookArn? = nil,
                definition: WebhookDefinition,
                errorCode: WebhookErrorCode? = nil,
                errorMessage: WebhookErrorMessage? = nil,
                lastTriggered: WebhookLastTriggered? = nil,
                tags: TagList? = nil,
                url: WebhookUrl) {
        self.arn = arn
        self.definition = definition
        self.errorCode = errorCode
        self.errorMessage = errorMessage
        self.lastTriggered = lastTriggered
        self.tags = tags
        self.url = url
    }

    enum CodingKeys: String, CodingKey {
        case arn
        case definition
        case errorCode
        case errorMessage
        case lastTriggered
        case tags
        case url
    }

    public func validate() throws {
        try definition.validate()
        try url.validateAsWebhookUrl()
    }
}

public struct ListWebhooksInput: Codable, Equatable {
    public var maxResults: MaxResults?
    public var nextToken: NextToken?

    public init(maxResults: MaxResults? = nil,
                nextToken: NextToken? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public func validate() throws {
        try maxResults?.validateAsMaxResults()
        try nextToken?.validateAsNextToken()
    }
}

public struct ListWebhooksOutput: Codable, Equatable {
    public var nextToken: NextToken?
    public var webhooks: WebhookList?

    public init(nextToken: NextToken? = nil,
                webhooks: WebhookList? = nil) {
        self.nextToken = nextToken
        self.webhooks = webhooks
    }

    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case webhooks
    }

    public func validate() throws {
        try nextToken?.validateAsNextToken()
    }
}

public struct NotLatestPipelineExecutionException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct OutputArtifact: Codable, Equatable {
    public var name: ArtifactName

    public init(name: ArtifactName) {
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case name
    }

    public func validate() throws {
        try name.validateAsArtifactName()
    }
}

public struct OutputVariablesSizeExceededException: Codable, Equatable {
    public var message: Message?

    public init(message: Message? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
        try message?.validateAsMessage()
    }
}

public struct PipelineContext: Codable, Equatable {
    public var action: ActionContext?
    public var pipelineArn: PipelineArn?
    public var pipelineExecutionId: PipelineExecutionId?
    public var pipelineName: PipelineName?
    public var stage: StageContext?

    public init(action: ActionContext? = nil,
                pipelineArn: PipelineArn? = nil,
                pipelineExecutionId: PipelineExecutionId? = nil,
                pipelineName: PipelineName? = nil,
                stage: StageContext? = nil) {
        self.action = action
        self.pipelineArn = pipelineArn
        self.pipelineExecutionId = pipelineExecutionId
        self.pipelineName = pipelineName
        self.stage = stage
    }

    enum CodingKeys: String, CodingKey {
        case action
        case pipelineArn
        case pipelineExecutionId
        case pipelineName
        case stage
    }

    public func validate() throws {
        try action?.validate()
        try pipelineArn?.validateAsPipelineArn()
        try pipelineExecutionId?.validateAsPipelineExecutionId()
        try pipelineName?.validateAsPipelineName()
        try stage?.validate()
    }
}

public struct PipelineDeclaration: Codable, Equatable {
    public var artifactStore: ArtifactStore?
    public var artifactStores: ArtifactStoreMap?
    public var name: PipelineName
    public var pipelineType: PipelineType?
    public var roleArn: RoleArn
    public var stages: PipelineStageDeclarationList
    public var triggers: PipelineTriggerDeclarationList?
    public var variables: PipelineVariableDeclarationList?
    public var version: PipelineVersion?

    public init(artifactStore: ArtifactStore? = nil,
                artifactStores: ArtifactStoreMap? = nil,
                name: PipelineName,
                pipelineType: PipelineType? = nil,
                roleArn: RoleArn,
                stages: PipelineStageDeclarationList,
                triggers: PipelineTriggerDeclarationList? = nil,
                variables: PipelineVariableDeclarationList? = nil,
                version: PipelineVersion? = nil) {
        self.artifactStore = artifactStore
        self.artifactStores = artifactStores
        self.name = name
        self.pipelineType = pipelineType
        self.roleArn = roleArn
        self.stages = stages
        self.triggers = triggers
        self.variables = variables
        self.version = version
    }

    enum CodingKeys: String, CodingKey {
        case artifactStore
        case artifactStores
        case name
        case pipelineType
        case roleArn
        case stages
        case triggers
        case variables
        case version
    }

    public func validate() throws {
        try artifactStore?.validate()
        try name.validateAsPipelineName()
        try roleArn.validateAsRoleArn()
        try triggers?.validateAsPipelineTriggerDeclarationList()
        try variables?.validateAsPipelineVariableDeclarationList()
        try version?.validateAsPipelineVersion()
    }
}

public struct PipelineExecution: Codable, Equatable {
    public var artifactRevisions: ArtifactRevisionList?
    public var pipelineExecutionId: PipelineExecutionId?
    public var pipelineName: PipelineName?
    public var pipelineVersion: PipelineVersion?
    public var status: PipelineExecutionStatus?
    public var statusSummary: PipelineExecutionStatusSummary?
    public var trigger: ExecutionTrigger?
    public var variables: ResolvedPipelineVariableList?

    public init(artifactRevisions: ArtifactRevisionList? = nil,
                pipelineExecutionId: PipelineExecutionId? = nil,
                pipelineName: PipelineName? = nil,
                pipelineVersion: PipelineVersion? = nil,
                status: PipelineExecutionStatus? = nil,
                statusSummary: PipelineExecutionStatusSummary? = nil,
                trigger: ExecutionTrigger? = nil,
                variables: ResolvedPipelineVariableList? = nil) {
        self.artifactRevisions = artifactRevisions
        self.pipelineExecutionId = pipelineExecutionId
        self.pipelineName = pipelineName
        self.pipelineVersion = pipelineVersion
        self.status = status
        self.statusSummary = statusSummary
        self.trigger = trigger
        self.variables = variables
    }

    enum CodingKeys: String, CodingKey {
        case artifactRevisions
        case pipelineExecutionId
        case pipelineName
        case pipelineVersion
        case status
        case statusSummary
        case trigger
        case variables
    }

    public func validate() throws {
        try pipelineExecutionId?.validateAsPipelineExecutionId()
        try pipelineName?.validateAsPipelineName()
        try pipelineVersion?.validateAsPipelineVersion()
        try trigger?.validate()
    }
}

public struct PipelineExecutionNotFoundException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct PipelineExecutionNotStoppableException: Codable, Equatable {
    public var message: Message?

    public init(message: Message? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
        try message?.validateAsMessage()
    }
}

public struct PipelineExecutionSummary: Codable, Equatable {
    public var lastUpdateTime: Timestamp?
    public var pipelineExecutionId: PipelineExecutionId?
    public var sourceRevisions: SourceRevisionList?
    public var startTime: Timestamp?
    public var status: PipelineExecutionStatus?
    public var stopTrigger: StopExecutionTrigger?
    public var trigger: ExecutionTrigger?

    public init(lastUpdateTime: Timestamp? = nil,
                pipelineExecutionId: PipelineExecutionId? = nil,
                sourceRevisions: SourceRevisionList? = nil,
                startTime: Timestamp? = nil,
                status: PipelineExecutionStatus? = nil,
                stopTrigger: StopExecutionTrigger? = nil,
                trigger: ExecutionTrigger? = nil) {
        self.lastUpdateTime = lastUpdateTime
        self.pipelineExecutionId = pipelineExecutionId
        self.sourceRevisions = sourceRevisions
        self.startTime = startTime
        self.status = status
        self.stopTrigger = stopTrigger
        self.trigger = trigger
    }

    enum CodingKeys: String, CodingKey {
        case lastUpdateTime
        case pipelineExecutionId
        case sourceRevisions
        case startTime
        case status
        case stopTrigger
        case trigger
    }

    public func validate() throws {
        try pipelineExecutionId?.validateAsPipelineExecutionId()
        try stopTrigger?.validate()
        try trigger?.validate()
    }
}

public struct PipelineMetadata: Codable, Equatable {
    public var created: Timestamp?
    public var pipelineArn: PipelineArn?
    public var pollingDisabledAt: Timestamp?
    public var updated: Timestamp?

    public init(created: Timestamp? = nil,
                pipelineArn: PipelineArn? = nil,
                pollingDisabledAt: Timestamp? = nil,
                updated: Timestamp? = nil) {
        self.created = created
        self.pipelineArn = pipelineArn
        self.pollingDisabledAt = pollingDisabledAt
        self.updated = updated
    }

    enum CodingKeys: String, CodingKey {
        case created
        case pipelineArn
        case pollingDisabledAt
        case updated
    }

    public func validate() throws {
        try pipelineArn?.validateAsPipelineArn()
    }
}

public struct PipelineNameInUseException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct PipelineNotFoundException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct PipelineSummary: Codable, Equatable {
    public var created: Timestamp?
    public var name: PipelineName?
    public var pipelineType: PipelineType?
    public var updated: Timestamp?
    public var version: PipelineVersion?

    public init(created: Timestamp? = nil,
                name: PipelineName? = nil,
                pipelineType: PipelineType? = nil,
                updated: Timestamp? = nil,
                version: PipelineVersion? = nil) {
        self.created = created
        self.name = name
        self.pipelineType = pipelineType
        self.updated = updated
        self.version = version
    }

    enum CodingKeys: String, CodingKey {
        case created
        case name
        case pipelineType
        case updated
        case version
    }

    public func validate() throws {
        try name?.validateAsPipelineName()
        try version?.validateAsPipelineVersion()
    }
}

public struct PipelineTriggerDeclaration: Codable, Equatable {
    public var gitConfiguration: GitConfiguration
    public var providerType: PipelineTriggerProviderType

    public init(gitConfiguration: GitConfiguration,
                providerType: PipelineTriggerProviderType) {
        self.gitConfiguration = gitConfiguration
        self.providerType = providerType
    }

    enum CodingKeys: String, CodingKey {
        case gitConfiguration
        case providerType
    }

    public func validate() throws {
        try gitConfiguration.validate()
    }
}

public struct PipelineVariable: Codable, Equatable {
    public var name: PipelineVariableName
    public var value: PipelineVariableValue

    public init(name: PipelineVariableName,
                value: PipelineVariableValue) {
        self.name = name
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case name
        case value
    }

    public func validate() throws {
        try name.validateAsPipelineVariableName()
        try value.validateAsPipelineVariableValue()
    }
}

public struct PipelineVariableDeclaration: Codable, Equatable {
    public var defaultValue: PipelineVariableValue?
    public var description: PipelineVariableDescription?
    public var name: PipelineVariableName

    public init(defaultValue: PipelineVariableValue? = nil,
                description: PipelineVariableDescription? = nil,
                name: PipelineVariableName) {
        self.defaultValue = defaultValue
        self.description = description
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case defaultValue
        case description
        case name
    }

    public func validate() throws {
        try defaultValue?.validateAsPipelineVariableValue()
        try description?.validateAsPipelineVariableDescription()
        try name.validateAsPipelineVariableName()
    }
}

public struct PipelineVersionNotFoundException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct PollForJobsInput: Codable, Equatable {
    public var actionTypeId: ActionTypeId
    public var maxBatchSize: MaxBatchSize?
    public var queryParam: QueryParamMap?

    public init(actionTypeId: ActionTypeId,
                maxBatchSize: MaxBatchSize? = nil,
                queryParam: QueryParamMap? = nil) {
        self.actionTypeId = actionTypeId
        self.maxBatchSize = maxBatchSize
        self.queryParam = queryParam
    }

    enum CodingKeys: String, CodingKey {
        case actionTypeId
        case maxBatchSize
        case queryParam
    }

    public func validate() throws {
        try actionTypeId.validate()
        try maxBatchSize?.validateAsMaxBatchSize()
    }
}

public struct PollForJobsOutput: Codable, Equatable {
    public var jobs: JobList?

    public init(jobs: JobList? = nil) {
        self.jobs = jobs
    }

    enum CodingKeys: String, CodingKey {
        case jobs
    }

    public func validate() throws {
    }
}

public struct PollForThirdPartyJobsInput: Codable, Equatable {
    public var actionTypeId: ActionTypeId
    public var maxBatchSize: MaxBatchSize?

    public init(actionTypeId: ActionTypeId,
                maxBatchSize: MaxBatchSize? = nil) {
        self.actionTypeId = actionTypeId
        self.maxBatchSize = maxBatchSize
    }

    enum CodingKeys: String, CodingKey {
        case actionTypeId
        case maxBatchSize
    }

    public func validate() throws {
        try actionTypeId.validate()
        try maxBatchSize?.validateAsMaxBatchSize()
    }
}

public struct PollForThirdPartyJobsOutput: Codable, Equatable {
    public var jobs: ThirdPartyJobList?

    public init(jobs: ThirdPartyJobList? = nil) {
        self.jobs = jobs
    }

    enum CodingKeys: String, CodingKey {
        case jobs
    }

    public func validate() throws {
    }
}

public struct PutActionRevisionInput: Codable, Equatable {
    public var actionName: ActionName
    public var actionRevision: ActionRevision
    public var pipelineName: PipelineName
    public var stageName: StageName

    public init(actionName: ActionName,
                actionRevision: ActionRevision,
                pipelineName: PipelineName,
                stageName: StageName) {
        self.actionName = actionName
        self.actionRevision = actionRevision
        self.pipelineName = pipelineName
        self.stageName = stageName
    }

    enum CodingKeys: String, CodingKey {
        case actionName
        case actionRevision
        case pipelineName
        case stageName
    }

    public func validate() throws {
        try actionName.validateAsActionName()
        try actionRevision.validate()
        try pipelineName.validateAsPipelineName()
        try stageName.validateAsStageName()
    }
}

public struct PutActionRevisionOutput: Codable, Equatable {
    public var newRevision: Boolean?
    public var pipelineExecutionId: PipelineExecutionId?

    public init(newRevision: Boolean? = nil,
                pipelineExecutionId: PipelineExecutionId? = nil) {
        self.newRevision = newRevision
        self.pipelineExecutionId = pipelineExecutionId
    }

    enum CodingKeys: String, CodingKey {
        case newRevision
        case pipelineExecutionId
    }

    public func validate() throws {
        try pipelineExecutionId?.validateAsPipelineExecutionId()
    }
}

public struct PutApprovalResultInput: Codable, Equatable {
    public var actionName: ActionName
    public var pipelineName: PipelineName
    public var result: ApprovalResult
    public var stageName: StageName
    public var token: ApprovalToken

    public init(actionName: ActionName,
                pipelineName: PipelineName,
                result: ApprovalResult,
                stageName: StageName,
                token: ApprovalToken) {
        self.actionName = actionName
        self.pipelineName = pipelineName
        self.result = result
        self.stageName = stageName
        self.token = token
    }

    enum CodingKeys: String, CodingKey {
        case actionName
        case pipelineName
        case result
        case stageName
        case token
    }

    public func validate() throws {
        try actionName.validateAsActionName()
        try pipelineName.validateAsPipelineName()
        try result.validate()
        try stageName.validateAsStageName()
        try token.validateAsApprovalToken()
    }
}

public struct PutApprovalResultOutput: Codable, Equatable {
    public var approvedAt: Timestamp?

    public init(approvedAt: Timestamp? = nil) {
        self.approvedAt = approvedAt
    }

    enum CodingKeys: String, CodingKey {
        case approvedAt
    }

    public func validate() throws {
    }
}

public struct PutJobFailureResultInput: Codable, Equatable {
    public var failureDetails: FailureDetails
    public var jobId: JobId

    public init(failureDetails: FailureDetails,
                jobId: JobId) {
        self.failureDetails = failureDetails
        self.jobId = jobId
    }

    enum CodingKeys: String, CodingKey {
        case failureDetails
        case jobId
    }

    public func validate() throws {
        try failureDetails.validate()
        try jobId.validateAsJobId()
    }
}

public struct PutJobSuccessResultInput: Codable, Equatable {
    public var continuationToken: ContinuationToken?
    public var currentRevision: CurrentRevision?
    public var executionDetails: ExecutionDetails?
    public var jobId: JobId
    public var outputVariables: OutputVariablesMap?

    public init(continuationToken: ContinuationToken? = nil,
                currentRevision: CurrentRevision? = nil,
                executionDetails: ExecutionDetails? = nil,
                jobId: JobId,
                outputVariables: OutputVariablesMap? = nil) {
        self.continuationToken = continuationToken
        self.currentRevision = currentRevision
        self.executionDetails = executionDetails
        self.jobId = jobId
        self.outputVariables = outputVariables
    }

    enum CodingKeys: String, CodingKey {
        case continuationToken
        case currentRevision
        case executionDetails
        case jobId
        case outputVariables
    }

    public func validate() throws {
        try continuationToken?.validateAsContinuationToken()
        try currentRevision?.validate()
        try executionDetails?.validate()
        try jobId.validateAsJobId()
    }
}

public struct PutThirdPartyJobFailureResultInput: Codable, Equatable {
    public var clientToken: ClientToken
    public var failureDetails: FailureDetails
    public var jobId: ThirdPartyJobId

    public init(clientToken: ClientToken,
                failureDetails: FailureDetails,
                jobId: ThirdPartyJobId) {
        self.clientToken = clientToken
        self.failureDetails = failureDetails
        self.jobId = jobId
    }

    enum CodingKeys: String, CodingKey {
        case clientToken
        case failureDetails
        case jobId
    }

    public func validate() throws {
        try clientToken.validateAsClientToken()
        try failureDetails.validate()
        try jobId.validateAsThirdPartyJobId()
    }
}

public struct PutThirdPartyJobSuccessResultInput: Codable, Equatable {
    public var clientToken: ClientToken
    public var continuationToken: ContinuationToken?
    public var currentRevision: CurrentRevision?
    public var executionDetails: ExecutionDetails?
    public var jobId: ThirdPartyJobId

    public init(clientToken: ClientToken,
                continuationToken: ContinuationToken? = nil,
                currentRevision: CurrentRevision? = nil,
                executionDetails: ExecutionDetails? = nil,
                jobId: ThirdPartyJobId) {
        self.clientToken = clientToken
        self.continuationToken = continuationToken
        self.currentRevision = currentRevision
        self.executionDetails = executionDetails
        self.jobId = jobId
    }

    enum CodingKeys: String, CodingKey {
        case clientToken
        case continuationToken
        case currentRevision
        case executionDetails
        case jobId
    }

    public func validate() throws {
        try clientToken.validateAsClientToken()
        try continuationToken?.validateAsContinuationToken()
        try currentRevision?.validate()
        try executionDetails?.validate()
        try jobId.validateAsThirdPartyJobId()
    }
}

public struct PutWebhookInput: Codable, Equatable {
    public var tags: TagList?
    public var webhook: WebhookDefinition

    public init(tags: TagList? = nil,
                webhook: WebhookDefinition) {
        self.tags = tags
        self.webhook = webhook
    }

    enum CodingKeys: String, CodingKey {
        case tags
        case webhook
    }

    public func validate() throws {
        try webhook.validate()
    }
}

public struct PutWebhookOutput: Codable, Equatable {
    public var webhook: ListWebhookItem?

    public init(webhook: ListWebhookItem? = nil) {
        self.webhook = webhook
    }

    enum CodingKeys: String, CodingKey {
        case webhook
    }

    public func validate() throws {
        try webhook?.validate()
    }
}

public struct RegisterWebhookWithThirdPartyInput: Codable, Equatable {
    public var webhookName: WebhookName?

    public init(webhookName: WebhookName? = nil) {
        self.webhookName = webhookName
    }

    enum CodingKeys: String, CodingKey {
        case webhookName
    }

    public func validate() throws {
        try webhookName?.validateAsWebhookName()
    }
}

public struct RegisterWebhookWithThirdPartyOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct RequestFailedException: Codable, Equatable {
    public var message: Message?

    public init(message: Message? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
        try message?.validateAsMessage()
    }
}

public struct ResolvedPipelineVariable: Codable, Equatable {
    public var name: String?
    public var resolvedValue: String?

    public init(name: String? = nil,
                resolvedValue: String? = nil) {
        self.name = name
        self.resolvedValue = resolvedValue
    }

    enum CodingKeys: String, CodingKey {
        case name
        case resolvedValue
    }

    public func validate() throws {
    }
}

public struct ResourceNotFoundException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct RetryStageExecutionInput: Codable, Equatable {
    public var pipelineExecutionId: PipelineExecutionId
    public var pipelineName: PipelineName
    public var retryMode: StageRetryMode
    public var stageName: StageName

    public init(pipelineExecutionId: PipelineExecutionId,
                pipelineName: PipelineName,
                retryMode: StageRetryMode,
                stageName: StageName) {
        self.pipelineExecutionId = pipelineExecutionId
        self.pipelineName = pipelineName
        self.retryMode = retryMode
        self.stageName = stageName
    }

    enum CodingKeys: String, CodingKey {
        case pipelineExecutionId
        case pipelineName
        case retryMode
        case stageName
    }

    public func validate() throws {
        try pipelineExecutionId.validateAsPipelineExecutionId()
        try pipelineName.validateAsPipelineName()
        try stageName.validateAsStageName()
    }
}

public struct RetryStageExecutionOutput: Codable, Equatable {
    public var pipelineExecutionId: PipelineExecutionId?

    public init(pipelineExecutionId: PipelineExecutionId? = nil) {
        self.pipelineExecutionId = pipelineExecutionId
    }

    enum CodingKeys: String, CodingKey {
        case pipelineExecutionId
    }

    public func validate() throws {
        try pipelineExecutionId?.validateAsPipelineExecutionId()
    }
}

public struct S3ArtifactLocation: Codable, Equatable {
    public var bucketName: S3BucketName
    public var objectKey: S3ObjectKey

    public init(bucketName: S3BucketName,
                objectKey: S3ObjectKey) {
        self.bucketName = bucketName
        self.objectKey = objectKey
    }

    enum CodingKeys: String, CodingKey {
        case bucketName
        case objectKey
    }

    public func validate() throws {
    }
}

public struct S3Location: Codable, Equatable {
    public var bucket: S3Bucket?
    public var key: S3Key?

    public init(bucket: S3Bucket? = nil,
                key: S3Key? = nil) {
        self.bucket = bucket
        self.key = key
    }

    enum CodingKeys: String, CodingKey {
        case bucket
        case key
    }

    public func validate() throws {
        try bucket?.validateAsS3Bucket()
        try key?.validateAsS3Key()
    }
}

public struct SourceRevision: Codable, Equatable {
    public var actionName: ActionName
    public var revisionId: Revision?
    public var revisionSummary: RevisionSummary?
    public var revisionUrl: Url?

    public init(actionName: ActionName,
                revisionId: Revision? = nil,
                revisionSummary: RevisionSummary? = nil,
                revisionUrl: Url? = nil) {
        self.actionName = actionName
        self.revisionId = revisionId
        self.revisionSummary = revisionSummary
        self.revisionUrl = revisionUrl
    }

    enum CodingKeys: String, CodingKey {
        case actionName
        case revisionId
        case revisionSummary
        case revisionUrl
    }

    public func validate() throws {
        try actionName.validateAsActionName()
        try revisionId?.validateAsRevision()
        try revisionSummary?.validateAsRevisionSummary()
        try revisionUrl?.validateAsUrl()
    }
}

public struct StageContext: Codable, Equatable {
    public var name: StageName?

    public init(name: StageName? = nil) {
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case name
    }

    public func validate() throws {
        try name?.validateAsStageName()
    }
}

public struct StageDeclaration: Codable, Equatable {
    public var actions: StageActionDeclarationList
    public var blockers: StageBlockerDeclarationList?
    public var name: StageName

    public init(actions: StageActionDeclarationList,
                blockers: StageBlockerDeclarationList? = nil,
                name: StageName) {
        self.actions = actions
        self.blockers = blockers
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case actions
        case blockers
        case name
    }

    public func validate() throws {
        try name.validateAsStageName()
    }
}

public struct StageExecution: Codable, Equatable {
    public var pipelineExecutionId: PipelineExecutionId
    public var status: StageExecutionStatus

    public init(pipelineExecutionId: PipelineExecutionId,
                status: StageExecutionStatus) {
        self.pipelineExecutionId = pipelineExecutionId
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case pipelineExecutionId
        case status
    }

    public func validate() throws {
        try pipelineExecutionId.validateAsPipelineExecutionId()
    }
}

public struct StageNotFoundException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct StageNotRetryableException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct StageState: Codable, Equatable {
    public var actionStates: ActionStateList?
    public var inboundExecution: StageExecution?
    public var inboundTransitionState: TransitionState?
    public var latestExecution: StageExecution?
    public var stageName: StageName?

    public init(actionStates: ActionStateList? = nil,
                inboundExecution: StageExecution? = nil,
                inboundTransitionState: TransitionState? = nil,
                latestExecution: StageExecution? = nil,
                stageName: StageName? = nil) {
        self.actionStates = actionStates
        self.inboundExecution = inboundExecution
        self.inboundTransitionState = inboundTransitionState
        self.latestExecution = latestExecution
        self.stageName = stageName
    }

    enum CodingKeys: String, CodingKey {
        case actionStates
        case inboundExecution
        case inboundTransitionState
        case latestExecution
        case stageName
    }

    public func validate() throws {
        try inboundExecution?.validate()
        try inboundTransitionState?.validate()
        try latestExecution?.validate()
        try stageName?.validateAsStageName()
    }
}

public struct StartPipelineExecutionInput: Codable, Equatable {
    public var clientRequestToken: ClientRequestToken?
    public var name: PipelineName
    public var variables: PipelineVariableList?

    public init(clientRequestToken: ClientRequestToken? = nil,
                name: PipelineName,
                variables: PipelineVariableList? = nil) {
        self.clientRequestToken = clientRequestToken
        self.name = name
        self.variables = variables
    }

    enum CodingKeys: String, CodingKey {
        case clientRequestToken
        case name
        case variables
    }

    public func validate() throws {
        try clientRequestToken?.validateAsClientRequestToken()
        try name.validateAsPipelineName()
        try variables?.validateAsPipelineVariableList()
    }
}

public struct StartPipelineExecutionOutput: Codable, Equatable {
    public var pipelineExecutionId: PipelineExecutionId?

    public init(pipelineExecutionId: PipelineExecutionId? = nil) {
        self.pipelineExecutionId = pipelineExecutionId
    }

    enum CodingKeys: String, CodingKey {
        case pipelineExecutionId
    }

    public func validate() throws {
        try pipelineExecutionId?.validateAsPipelineExecutionId()
    }
}

public struct StopExecutionTrigger: Codable, Equatable {
    public var reason: StopPipelineExecutionReason?

    public init(reason: StopPipelineExecutionReason? = nil) {
        self.reason = reason
    }

    enum CodingKeys: String, CodingKey {
        case reason
    }

    public func validate() throws {
        try reason?.validateAsStopPipelineExecutionReason()
    }
}

public struct StopPipelineExecutionInput: Codable, Equatable {
    public var abandon: Boolean?
    public var pipelineExecutionId: PipelineExecutionId
    public var pipelineName: PipelineName
    public var reason: StopPipelineExecutionReason?

    public init(abandon: Boolean? = nil,
                pipelineExecutionId: PipelineExecutionId,
                pipelineName: PipelineName,
                reason: StopPipelineExecutionReason? = nil) {
        self.abandon = abandon
        self.pipelineExecutionId = pipelineExecutionId
        self.pipelineName = pipelineName
        self.reason = reason
    }

    enum CodingKeys: String, CodingKey {
        case abandon
        case pipelineExecutionId
        case pipelineName
        case reason
    }

    public func validate() throws {
        try pipelineExecutionId.validateAsPipelineExecutionId()
        try pipelineName.validateAsPipelineName()
        try reason?.validateAsStopPipelineExecutionReason()
    }
}

public struct StopPipelineExecutionOutput: Codable, Equatable {
    public var pipelineExecutionId: PipelineExecutionId?

    public init(pipelineExecutionId: PipelineExecutionId? = nil) {
        self.pipelineExecutionId = pipelineExecutionId
    }

    enum CodingKeys: String, CodingKey {
        case pipelineExecutionId
    }

    public func validate() throws {
        try pipelineExecutionId?.validateAsPipelineExecutionId()
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
        case key
        case value
    }

    public func validate() throws {
        try key.validateAsTagKey()
        try value.validateAsTagValue()
    }
}

public struct TagResourceInput: Codable, Equatable {
    public var resourceArn: ResourceArn
    public var tags: TagList

    public init(resourceArn: ResourceArn,
                tags: TagList) {
        self.resourceArn = resourceArn
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case resourceArn
        case tags
    }

    public func validate() throws {
        try resourceArn.validateAsResourceArn()
    }
}

public struct TagResourceOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ThirdPartyJob: Codable, Equatable {
    public var clientId: ClientId?
    public var jobId: JobId?

    public init(clientId: ClientId? = nil,
                jobId: JobId? = nil) {
        self.clientId = clientId
        self.jobId = jobId
    }

    enum CodingKeys: String, CodingKey {
        case clientId
        case jobId
    }

    public func validate() throws {
        try clientId?.validateAsClientId()
        try jobId?.validateAsJobId()
    }
}

public struct ThirdPartyJobData: Codable, Equatable {
    public var actionConfiguration: ActionConfiguration?
    public var actionTypeId: ActionTypeId?
    public var artifactCredentials: AWSSessionCredentials?
    public var continuationToken: ContinuationToken?
    public var encryptionKey: EncryptionKey?
    public var inputArtifacts: ArtifactList?
    public var outputArtifacts: ArtifactList?
    public var pipelineContext: PipelineContext?

    public init(actionConfiguration: ActionConfiguration? = nil,
                actionTypeId: ActionTypeId? = nil,
                artifactCredentials: AWSSessionCredentials? = nil,
                continuationToken: ContinuationToken? = nil,
                encryptionKey: EncryptionKey? = nil,
                inputArtifacts: ArtifactList? = nil,
                outputArtifacts: ArtifactList? = nil,
                pipelineContext: PipelineContext? = nil) {
        self.actionConfiguration = actionConfiguration
        self.actionTypeId = actionTypeId
        self.artifactCredentials = artifactCredentials
        self.continuationToken = continuationToken
        self.encryptionKey = encryptionKey
        self.inputArtifacts = inputArtifacts
        self.outputArtifacts = outputArtifacts
        self.pipelineContext = pipelineContext
    }

    enum CodingKeys: String, CodingKey {
        case actionConfiguration
        case actionTypeId
        case artifactCredentials
        case continuationToken
        case encryptionKey
        case inputArtifacts
        case outputArtifacts
        case pipelineContext
    }

    public func validate() throws {
        try actionConfiguration?.validate()
        try actionTypeId?.validate()
        try artifactCredentials?.validate()
        try continuationToken?.validateAsContinuationToken()
        try encryptionKey?.validate()
        try pipelineContext?.validate()
    }
}

public struct ThirdPartyJobDetails: Codable, Equatable {
    public var data: ThirdPartyJobData?
    public var id: ThirdPartyJobId?
    public var nonce: Nonce?

    public init(data: ThirdPartyJobData? = nil,
                id: ThirdPartyJobId? = nil,
                nonce: Nonce? = nil) {
        self.data = data
        self.id = id
        self.nonce = nonce
    }

    enum CodingKeys: String, CodingKey {
        case data
        case id
        case nonce
    }

    public func validate() throws {
        try data?.validate()
        try id?.validateAsThirdPartyJobId()
        try nonce?.validateAsNonce()
    }
}

public struct TooManyTagsException: Codable, Equatable {
    public var message: Message?

    public init(message: Message? = nil) {
        self.message = message
    }

    enum CodingKeys: String, CodingKey {
        case message
    }

    public func validate() throws {
        try message?.validateAsMessage()
    }
}

public struct TransitionState: Codable, Equatable {
    public var disabledReason: DisabledReason?
    public var enabled: Enabled?
    public var lastChangedAt: LastChangedAt?
    public var lastChangedBy: LastChangedBy?

    public init(disabledReason: DisabledReason? = nil,
                enabled: Enabled? = nil,
                lastChangedAt: LastChangedAt? = nil,
                lastChangedBy: LastChangedBy? = nil) {
        self.disabledReason = disabledReason
        self.enabled = enabled
        self.lastChangedAt = lastChangedAt
        self.lastChangedBy = lastChangedBy
    }

    enum CodingKeys: String, CodingKey {
        case disabledReason
        case enabled
        case lastChangedAt
        case lastChangedBy
    }

    public func validate() throws {
        try disabledReason?.validateAsDisabledReason()
    }
}

public struct UntagResourceInput: Codable, Equatable {
    public var resourceArn: ResourceArn
    public var tagKeys: TagKeyList

    public init(resourceArn: ResourceArn,
                tagKeys: TagKeyList) {
        self.resourceArn = resourceArn
        self.tagKeys = tagKeys
    }

    enum CodingKeys: String, CodingKey {
        case resourceArn
        case tagKeys
    }

    public func validate() throws {
        try resourceArn.validateAsResourceArn()
    }
}

public struct UntagResourceOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct UpdateActionTypeInput: Codable, Equatable {
    public var actionType: ActionTypeDeclaration

    public init(actionType: ActionTypeDeclaration) {
        self.actionType = actionType
    }

    enum CodingKeys: String, CodingKey {
        case actionType
    }

    public func validate() throws {
        try actionType.validate()
    }
}

public struct UpdatePipelineInput: Codable, Equatable {
    public var pipeline: PipelineDeclaration

    public init(pipeline: PipelineDeclaration) {
        self.pipeline = pipeline
    }

    enum CodingKeys: String, CodingKey {
        case pipeline
    }

    public func validate() throws {
        try pipeline.validate()
    }
}

public struct UpdatePipelineOutput: Codable, Equatable {
    public var pipeline: PipelineDeclaration?

    public init(pipeline: PipelineDeclaration? = nil) {
        self.pipeline = pipeline
    }

    enum CodingKeys: String, CodingKey {
        case pipeline
    }

    public func validate() throws {
        try pipeline?.validate()
    }
}

public struct ValidationException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct WebhookAuthConfiguration: Codable, Equatable {
    public var allowedIPRange: WebhookAuthConfigurationAllowedIPRange?
    public var secretToken: WebhookAuthConfigurationSecretToken?

    public init(allowedIPRange: WebhookAuthConfigurationAllowedIPRange? = nil,
                secretToken: WebhookAuthConfigurationSecretToken? = nil) {
        self.allowedIPRange = allowedIPRange
        self.secretToken = secretToken
    }

    enum CodingKeys: String, CodingKey {
        case allowedIPRange = "AllowedIPRange"
        case secretToken = "SecretToken"
    }

    public func validate() throws {
        try allowedIPRange?.validateAsWebhookAuthConfigurationAllowedIPRange()
        try secretToken?.validateAsWebhookAuthConfigurationSecretToken()
    }
}

public struct WebhookDefinition: Codable, Equatable {
    public var authentication: WebhookAuthenticationType
    public var authenticationConfiguration: WebhookAuthConfiguration
    public var filters: WebhookFilters
    public var name: WebhookName
    public var targetAction: ActionName
    public var targetPipeline: PipelineName

    public init(authentication: WebhookAuthenticationType,
                authenticationConfiguration: WebhookAuthConfiguration,
                filters: WebhookFilters,
                name: WebhookName,
                targetAction: ActionName,
                targetPipeline: PipelineName) {
        self.authentication = authentication
        self.authenticationConfiguration = authenticationConfiguration
        self.filters = filters
        self.name = name
        self.targetAction = targetAction
        self.targetPipeline = targetPipeline
    }

    enum CodingKeys: String, CodingKey {
        case authentication
        case authenticationConfiguration
        case filters
        case name
        case targetAction
        case targetPipeline
    }

    public func validate() throws {
        try authenticationConfiguration.validate()
        try filters.validateAsWebhookFilters()
        try name.validateAsWebhookName()
        try targetAction.validateAsActionName()
        try targetPipeline.validateAsPipelineName()
    }
}

public struct WebhookFilterRule: Codable, Equatable {
    public var jsonPath: JsonPath
    public var matchEquals: MatchEquals?

    public init(jsonPath: JsonPath,
                matchEquals: MatchEquals? = nil) {
        self.jsonPath = jsonPath
        self.matchEquals = matchEquals
    }

    enum CodingKeys: String, CodingKey {
        case jsonPath
        case matchEquals
    }

    public func validate() throws {
        try jsonPath.validateAsJsonPath()
        try matchEquals?.validateAsMatchEquals()
    }
}

public struct WebhookNotFoundException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}
