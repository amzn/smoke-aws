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
// CodePipelineModelTypes.swift
// CodePipelineModel
//

import Foundation

/**
 Type definition for the AWSRegionName field.
 */
public typealias AWSRegionName = String

/**
 Type definition for the AccessKeyId field.
 */
public typealias AccessKeyId = String

/**
 Type definition for the AccountId field.
 */
public typealias AccountId = String

/**
 Enumeration restricting the values of the ActionCategory field.
 */
public enum ActionCategory: String, Codable, CustomStringConvertible {
    case approval = "Approval"
    case build = "Build"
    case deploy = "Deploy"
    case invoke = "Invoke"
    case source = "Source"
    case test = "Test"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ActionCategory = .approval
}

/**
 Type definition for the ActionConfigurationKey field.
 */
public typealias ActionConfigurationKey = String

/**
 Type definition for the ActionConfigurationMap field.
 */
public typealias ActionConfigurationMap = [ActionConfigurationKey: ActionConfigurationValue]

/**
 Type definition for the ActionConfigurationPropertyList field.
 */
public typealias ActionConfigurationPropertyList = [ActionConfigurationProperty]

/**
 Enumeration restricting the values of the ActionConfigurationPropertyType field.
 */
public enum ActionConfigurationPropertyType: String, Codable, CustomStringConvertible {
    case boolean = "Boolean"
    case number = "Number"
    case string = "String"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ActionConfigurationPropertyType = .boolean
}

/**
 Type definition for the ActionConfigurationQueryableValue field.
 */
public typealias ActionConfigurationQueryableValue = String

/**
 Type definition for the ActionConfigurationValue field.
 */
public typealias ActionConfigurationValue = String

/**
 Type definition for the ActionExecutionDetailList field.
 */
public typealias ActionExecutionDetailList = [ActionExecutionDetail]

/**
 Type definition for the ActionExecutionId field.
 */
public typealias ActionExecutionId = String

/**
 Enumeration restricting the values of the ActionExecutionStatus field.
 */
public enum ActionExecutionStatus: String, Codable, CustomStringConvertible {
    case abandoned = "Abandoned"
    case failed = "Failed"
    case inProgress = "InProgress"
    case succeeded = "Succeeded"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ActionExecutionStatus = .abandoned
}

/**
 Type definition for the ActionExecutionToken field.
 */
public typealias ActionExecutionToken = String

/**
 Type definition for the ActionName field.
 */
public typealias ActionName = String

/**
 Type definition for the ActionNamespace field.
 */
public typealias ActionNamespace = String

/**
 Enumeration restricting the values of the ActionOwner field.
 */
public enum ActionOwner: String, Codable, CustomStringConvertible {
    case aws = "AWS"
    case custom = "Custom"
    case thirdParty = "ThirdParty"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ActionOwner = .aws
}

/**
 Type definition for the ActionProvider field.
 */
public typealias ActionProvider = String

/**
 Type definition for the ActionRunOrder field.
 */
public typealias ActionRunOrder = Int

/**
 Type definition for the ActionStateList field.
 */
public typealias ActionStateList = [ActionState]

/**
 Type definition for the ActionTypeDescription field.
 */
public typealias ActionTypeDescription = String

/**
 Type definition for the ActionTypeList field.
 */
public typealias ActionTypeList = [ActionType]

/**
 Type definition for the ActionTypeOwner field.
 */
public typealias ActionTypeOwner = String

/**
 Type definition for the ActionTypeProperties field.
 */
public typealias ActionTypeProperties = [ActionTypeProperty]

/**
 Type definition for the AllowedAccount field.
 */
public typealias AllowedAccount = String

/**
 Type definition for the AllowedAccounts field.
 */
public typealias AllowedAccounts = [AllowedAccount]

/**
 Enumeration restricting the values of the ApprovalStatus field.
 */
public enum ApprovalStatus: String, Codable, CustomStringConvertible {
    case approved = "Approved"
    case rejected = "Rejected"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ApprovalStatus = .approved
}

/**
 Type definition for the ApprovalSummary field.
 */
public typealias ApprovalSummary = String

/**
 Type definition for the ApprovalToken field.
 */
public typealias ApprovalToken = String

/**
 Type definition for the ArtifactDetailList field.
 */
public typealias ArtifactDetailList = [ArtifactDetail]

/**
 Type definition for the ArtifactList field.
 */
public typealias ArtifactList = [Artifact]

/**
 Enumeration restricting the values of the ArtifactLocationType field.
 */
public enum ArtifactLocationType: String, Codable, CustomStringConvertible {
    case s3 = "S3"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ArtifactLocationType = .s3
}

/**
 Type definition for the ArtifactName field.
 */
public typealias ArtifactName = String

/**
 Type definition for the ArtifactRevisionList field.
 */
public typealias ArtifactRevisionList = [ArtifactRevision]

/**
 Type definition for the ArtifactStoreLocation field.
 */
public typealias ArtifactStoreLocation = String

/**
 Type definition for the ArtifactStoreMap field.
 */
public typealias ArtifactStoreMap = [AWSRegionName: ArtifactStore]

/**
 Enumeration restricting the values of the ArtifactStoreType field.
 */
public enum ArtifactStoreType: String, Codable, CustomStringConvertible {
    case s3 = "S3"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ArtifactStoreType = .s3
}

/**
 Type definition for the BlockerName field.
 */
public typealias BlockerName = String

/**
 Enumeration restricting the values of the BlockerType field.
 */
public enum BlockerType: String, Codable, CustomStringConvertible {
    case schedule = "Schedule"

    public var description: String {
        return rawValue
    }
    
    public static let __default: BlockerType = .schedule
}

/**
 Type definition for the Boolean field.
 */
public typealias Boolean = Bool

/**
 Type definition for the ClientId field.
 */
public typealias ClientId = String

/**
 Type definition for the ClientRequestToken field.
 */
public typealias ClientRequestToken = String

/**
 Type definition for the ClientToken field.
 */
public typealias ClientToken = String

/**
 Type definition for the Code field.
 */
public typealias Code = String

/**
 Type definition for the ContinuationToken field.
 */
public typealias ContinuationToken = String

/**
 Type definition for the Description field.
 */
public typealias Description = String

/**
 Type definition for the DisabledReason field.
 */
public typealias DisabledReason = String

/**
 Type definition for the Enabled field.
 */
public typealias Enabled = Bool

/**
 Type definition for the EncryptionKeyId field.
 */
public typealias EncryptionKeyId = String

/**
 Enumeration restricting the values of the EncryptionKeyType field.
 */
public enum EncryptionKeyType: String, Codable, CustomStringConvertible {
    case kms = "KMS"

    public var description: String {
        return rawValue
    }
    
    public static let __default: EncryptionKeyType = .kms
}

/**
 Type definition for the ExecutionId field.
 */
public typealias ExecutionId = String

/**
 Type definition for the ExecutionSummary field.
 */
public typealias ExecutionSummary = String

/**
 Enumeration restricting the values of the ExecutorType field.
 */
public enum ExecutorType: String, Codable, CustomStringConvertible {
    case jobWorker = "JobWorker"
    case lambda = "Lambda"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ExecutorType = .jobWorker
}

/**
 Type definition for the ExternalExecutionId field.
 */
public typealias ExternalExecutionId = String

/**
 Type definition for the ExternalExecutionSummary field.
 */
public typealias ExternalExecutionSummary = String

/**
 Enumeration restricting the values of the FailureType field.
 */
public enum FailureType: String, Codable, CustomStringConvertible {
    case configurationError = "ConfigurationError"
    case jobFailed = "JobFailed"
    case permissionError = "PermissionError"
    case revisionOutOfSync = "RevisionOutOfSync"
    case revisionUnavailable = "RevisionUnavailable"
    case systemUnavailable = "SystemUnavailable"

    public var description: String {
        return rawValue
    }
    
    public static let __default: FailureType = .configurationError
}

/**
 Type definition for the GitPushFilterList field.
 */
public typealias GitPushFilterList = [GitPushFilter]

/**
 Type definition for the GitTagNamePattern field.
 */
public typealias GitTagNamePattern = String

/**
 Type definition for the GitTagPatternList field.
 */
public typealias GitTagPatternList = [GitTagNamePattern]

/**
 Type definition for the InputArtifactList field.
 */
public typealias InputArtifactList = [InputArtifact]

/**
 Type definition for the JobId field.
 */
public typealias JobId = String

/**
 Type definition for the JobList field.
 */
public typealias JobList = [Job]

/**
 Enumeration restricting the values of the JobStatus field.
 */
public enum JobStatus: String, Codable, CustomStringConvertible {
    case created = "Created"
    case dispatched = "Dispatched"
    case failed = "Failed"
    case inProgress = "InProgress"
    case queued = "Queued"
    case succeeded = "Succeeded"
    case timedOut = "TimedOut"

    public var description: String {
        return rawValue
    }
    
    public static let __default: JobStatus = .created
}

/**
 Type definition for the JobTimeout field.
 */
public typealias JobTimeout = Int

/**
 Type definition for the JsonPath field.
 */
public typealias JsonPath = String

/**
 Type definition for the LambdaFunctionArn field.
 */
public typealias LambdaFunctionArn = String

/**
 Type definition for the LastChangedAt field.
 */
public typealias LastChangedAt = Double

/**
 Type definition for the LastChangedBy field.
 */
public typealias LastChangedBy = String

/**
 Type definition for the LastUpdatedBy field.
 */
public typealias LastUpdatedBy = String

/**
 Type definition for the MatchEquals field.
 */
public typealias MatchEquals = String

/**
 Type definition for the MaxBatchSize field.
 */
public typealias MaxBatchSize = Int

/**
 Type definition for the MaxPipelines field.
 */
public typealias MaxPipelines = Int

/**
 Type definition for the MaxResults field.
 */
public typealias MaxResults = Int

/**
 Type definition for the MaximumActionTypeArtifactCount field.
 */
public typealias MaximumActionTypeArtifactCount = Int

/**
 Type definition for the MaximumArtifactCount field.
 */
public typealias MaximumArtifactCount = Int

/**
 Type definition for the Message field.
 */
public typealias Message = String

/**
 Type definition for the MinimumActionTypeArtifactCount field.
 */
public typealias MinimumActionTypeArtifactCount = Int

/**
 Type definition for the MinimumArtifactCount field.
 */
public typealias MinimumArtifactCount = Int

/**
 Type definition for the NextToken field.
 */
public typealias NextToken = String

/**
 Type definition for the Nonce field.
 */
public typealias Nonce = String

/**
 Type definition for the OutputArtifactList field.
 */
public typealias OutputArtifactList = [OutputArtifact]

/**
 Type definition for the OutputVariablesKey field.
 */
public typealias OutputVariablesKey = String

/**
 Type definition for the OutputVariablesMap field.
 */
public typealias OutputVariablesMap = [OutputVariablesKey: OutputVariablesValue]

/**
 Type definition for the OutputVariablesValue field.
 */
public typealias OutputVariablesValue = String

/**
 Type definition for the Percentage field.
 */
public typealias Percentage = Int

/**
 Type definition for the PipelineArn field.
 */
public typealias PipelineArn = String

/**
 Type definition for the PipelineExecutionId field.
 */
public typealias PipelineExecutionId = String

/**
 Enumeration restricting the values of the PipelineExecutionStatus field.
 */
public enum PipelineExecutionStatus: String, Codable, CustomStringConvertible {
    case cancelled = "Cancelled"
    case failed = "Failed"
    case inProgress = "InProgress"
    case stopped = "Stopped"
    case stopping = "Stopping"
    case succeeded = "Succeeded"
    case superseded = "Superseded"

    public var description: String {
        return rawValue
    }
    
    public static let __default: PipelineExecutionStatus = .cancelled
}

/**
 Type definition for the PipelineExecutionStatusSummary field.
 */
public typealias PipelineExecutionStatusSummary = String

/**
 Type definition for the PipelineExecutionSummaryList field.
 */
public typealias PipelineExecutionSummaryList = [PipelineExecutionSummary]

/**
 Type definition for the PipelineList field.
 */
public typealias PipelineList = [PipelineSummary]

/**
 Type definition for the PipelineName field.
 */
public typealias PipelineName = String

/**
 Type definition for the PipelineStageDeclarationList field.
 */
public typealias PipelineStageDeclarationList = [StageDeclaration]

/**
 Type definition for the PipelineTriggerDeclarationList field.
 */
public typealias PipelineTriggerDeclarationList = [PipelineTriggerDeclaration]

/**
 Enumeration restricting the values of the PipelineTriggerProviderType field.
 */
public enum PipelineTriggerProviderType: String, Codable, CustomStringConvertible {
    case codestarsourceconnection = "CodeStarSourceConnection"

    public var description: String {
        return rawValue
    }
    
    public static let __default: PipelineTriggerProviderType = .codestarsourceconnection
}

/**
 Enumeration restricting the values of the PipelineType field.
 */
public enum PipelineType: String, Codable, CustomStringConvertible {
    case v1 = "V1"
    case v2 = "V2"

    public var description: String {
        return rawValue
    }
    
    public static let __default: PipelineType = .v1
}

/**
 Type definition for the PipelineVariableDeclarationList field.
 */
public typealias PipelineVariableDeclarationList = [PipelineVariableDeclaration]

/**
 Type definition for the PipelineVariableDescription field.
 */
public typealias PipelineVariableDescription = String

/**
 Type definition for the PipelineVariableList field.
 */
public typealias PipelineVariableList = [PipelineVariable]

/**
 Type definition for the PipelineVariableName field.
 */
public typealias PipelineVariableName = String

/**
 Type definition for the PipelineVariableValue field.
 */
public typealias PipelineVariableValue = String

/**
 Type definition for the PipelineVersion field.
 */
public typealias PipelineVersion = Int

/**
 Type definition for the PolicyStatementsTemplate field.
 */
public typealias PolicyStatementsTemplate = String

/**
 Type definition for the PollingAccountList field.
 */
public typealias PollingAccountList = [AccountId]

/**
 Type definition for the PollingServicePrincipalList field.
 */
public typealias PollingServicePrincipalList = [ServicePrincipal]

/**
 Type definition for the PropertyDescription field.
 */
public typealias PropertyDescription = String

/**
 Type definition for the QueryParamMap field.
 */
public typealias QueryParamMap = [ActionConfigurationKey: ActionConfigurationQueryableValue]

/**
 Type definition for the ResolvedActionConfigurationMap field.
 */
public typealias ResolvedActionConfigurationMap = [String: String]

/**
 Type definition for the ResolvedPipelineVariableList field.
 */
public typealias ResolvedPipelineVariableList = [ResolvedPipelineVariable]

/**
 Type definition for the ResourceArn field.
 */
public typealias ResourceArn = String

/**
 Type definition for the Revision field.
 */
public typealias Revision = String

/**
 Type definition for the RevisionChangeIdentifier field.
 */
public typealias RevisionChangeIdentifier = String

/**
 Type definition for the RevisionSummary field.
 */
public typealias RevisionSummary = String

/**
 Type definition for the RoleArn field.
 */
public typealias RoleArn = String

/**
 Type definition for the S3Bucket field.
 */
public typealias S3Bucket = String

/**
 Type definition for the S3BucketName field.
 */
public typealias S3BucketName = String

/**
 Type definition for the S3Key field.
 */
public typealias S3Key = String

/**
 Type definition for the S3ObjectKey field.
 */
public typealias S3ObjectKey = String

/**
 Type definition for the SecretAccessKey field.
 */
public typealias SecretAccessKey = String

/**
 Type definition for the ServicePrincipal field.
 */
public typealias ServicePrincipal = String

/**
 Type definition for the SessionToken field.
 */
public typealias SessionToken = String

/**
 Type definition for the SourceRevisionList field.
 */
public typealias SourceRevisionList = [SourceRevision]

/**
 Type definition for the StageActionDeclarationList field.
 */
public typealias StageActionDeclarationList = [ActionDeclaration]

/**
 Type definition for the StageBlockerDeclarationList field.
 */
public typealias StageBlockerDeclarationList = [BlockerDeclaration]

/**
 Enumeration restricting the values of the StageExecutionStatus field.
 */
public enum StageExecutionStatus: String, Codable, CustomStringConvertible {
    case cancelled = "Cancelled"
    case failed = "Failed"
    case inProgress = "InProgress"
    case stopped = "Stopped"
    case stopping = "Stopping"
    case succeeded = "Succeeded"

    public var description: String {
        return rawValue
    }
    
    public static let __default: StageExecutionStatus = .cancelled
}

/**
 Type definition for the StageName field.
 */
public typealias StageName = String

/**
 Enumeration restricting the values of the StageRetryMode field.
 */
public enum StageRetryMode: String, Codable, CustomStringConvertible {
    case allActions = "ALL_ACTIONS"
    case failedActions = "FAILED_ACTIONS"

    public var description: String {
        return rawValue
    }
    
    public static let __default: StageRetryMode = .allActions
}

/**
 Type definition for the StageStateList field.
 */
public typealias StageStateList = [StageState]

/**
 Enumeration restricting the values of the StageTransitionType field.
 */
public enum StageTransitionType: String, Codable, CustomStringConvertible {
    case inbound = "Inbound"
    case outbound = "Outbound"

    public var description: String {
        return rawValue
    }
    
    public static let __default: StageTransitionType = .inbound
}

/**
 Type definition for the StopPipelineExecutionReason field.
 */
public typealias StopPipelineExecutionReason = String

/**
 Type definition for the TagKey field.
 */
public typealias TagKey = String

/**
 Type definition for the TagKeyList field.
 */
public typealias TagKeyList = [TagKey]

/**
 Type definition for the TagList field.
 */
public typealias TagList = [Tag]

/**
 Type definition for the TagValue field.
 */
public typealias TagValue = String

/**
 Type definition for the ThirdPartyJobId field.
 */
public typealias ThirdPartyJobId = String

/**
 Type definition for the ThirdPartyJobList field.
 */
public typealias ThirdPartyJobList = [ThirdPartyJob]

/**
 Type definition for the Time field.
 */
public typealias Time = Double

/**
 Type definition for the Timestamp field.
 */
public typealias Timestamp = Double

/**
 Type definition for the TriggerDetail field.
 */
public typealias TriggerDetail = String

/**
 Enumeration restricting the values of the TriggerType field.
 */
public enum TriggerType: String, Codable, CustomStringConvertible {
    case cloudWatchEvent = "CloudWatchEvent"
    case createPipeline = "CreatePipeline"
    case pollForSourceChanges = "PollForSourceChanges"
    case putActionRevision = "PutActionRevision"
    case startPipelineExecution = "StartPipelineExecution"
    case webhook = "Webhook"
    case webhookV2 = "WebhookV2"

    public var description: String {
        return rawValue
    }
    
    public static let __default: TriggerType = .cloudWatchEvent
}

/**
 Type definition for the Url field.
 */
public typealias Url = String

/**
 Type definition for the UrlTemplate field.
 */
public typealias UrlTemplate = String

/**
 Type definition for the Version field.
 */
public typealias Version = String

/**
 Type definition for the WebhookArn field.
 */
public typealias WebhookArn = String

/**
 Type definition for the WebhookAuthConfigurationAllowedIPRange field.
 */
public typealias WebhookAuthConfigurationAllowedIPRange = String

/**
 Type definition for the WebhookAuthConfigurationSecretToken field.
 */
public typealias WebhookAuthConfigurationSecretToken = String

/**
 Enumeration restricting the values of the WebhookAuthenticationType field.
 */
public enum WebhookAuthenticationType: String, Codable, CustomStringConvertible {
    case githubHmac = "GITHUB_HMAC"
    case ip = "IP"
    case unauthenticated = "UNAUTHENTICATED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: WebhookAuthenticationType = .githubHmac
}

/**
 Type definition for the WebhookErrorCode field.
 */
public typealias WebhookErrorCode = String

/**
 Type definition for the WebhookErrorMessage field.
 */
public typealias WebhookErrorMessage = String

/**
 Type definition for the WebhookFilters field.
 */
public typealias WebhookFilters = [WebhookFilterRule]

/**
 Type definition for the WebhookLastTriggered field.
 */
public typealias WebhookLastTriggered = Double

/**
 Type definition for the WebhookList field.
 */
public typealias WebhookList = [ListWebhookItem]

/**
 Type definition for the WebhookName field.
 */
public typealias WebhookName = String

/**
 Type definition for the WebhookUrl field.
 */
public typealias WebhookUrl = String

/**
 Validation for the AWSRegionName field.
*/
extension CodePipelineModel.AWSRegionName {
    public func validateAsAWSRegionName() throws {
        if self.count < 4 {
            throw CodePipelineError.validationError(reason: "The provided value to AWSRegionName violated the minimum length constraint.")
        }

        if self.count > 30 {
            throw CodePipelineError.validationError(reason: "The provided value to AWSRegionName violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the AccountId field.
*/
extension CodePipelineModel.AccountId {
    public func validateAsAccountId() throws {
        guard let matchingRange = self.range(of: "[0-9]{12}", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CodePipelineError.validationError(
                    reason: "The provided value to AccountId violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the ActionConfigurationKey field.
*/
extension CodePipelineModel.ActionConfigurationKey {
    public func validateAsActionConfigurationKey() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to ActionConfigurationKey violated the minimum length constraint.")
        }

        if self.count > 50 {
            throw CodePipelineError.validationError(reason: "The provided value to ActionConfigurationKey violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ActionConfigurationPropertyList field.
*/
extension Array where Element == CodePipelineModel.ActionConfigurationProperty {
    public func validateAsActionConfigurationPropertyList() throws {

        if self.count > 10 {
            throw CodePipelineError.validationError(reason: "The provided value to ActionConfigurationPropertyList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ActionConfigurationQueryableValue field.
*/
extension CodePipelineModel.ActionConfigurationQueryableValue {
    public func validateAsActionConfigurationQueryableValue() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to ActionConfigurationQueryableValue violated the minimum length constraint.")
        }

        if self.count > 50 {
            throw CodePipelineError.validationError(reason: "The provided value to ActionConfigurationQueryableValue violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9_-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CodePipelineError.validationError(
                    reason: "The provided value to ActionConfigurationQueryableValue violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the ActionConfigurationValue field.
*/
extension CodePipelineModel.ActionConfigurationValue {
    public func validateAsActionConfigurationValue() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to ActionConfigurationValue violated the minimum length constraint.")
        }

        if self.count > 1000 {
            throw CodePipelineError.validationError(reason: "The provided value to ActionConfigurationValue violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ActionName field.
*/
extension CodePipelineModel.ActionName {
    public func validateAsActionName() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to ActionName violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw CodePipelineError.validationError(reason: "The provided value to ActionName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[A-Za-z0-9.@\\-_]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CodePipelineError.validationError(
                    reason: "The provided value to ActionName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the ActionNamespace field.
*/
extension CodePipelineModel.ActionNamespace {
    public func validateAsActionNamespace() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to ActionNamespace violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw CodePipelineError.validationError(reason: "The provided value to ActionNamespace violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[A-Za-z0-9@\\-_]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CodePipelineError.validationError(
                    reason: "The provided value to ActionNamespace violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the ActionProvider field.
*/
extension CodePipelineModel.ActionProvider {
    public func validateAsActionProvider() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to ActionProvider violated the minimum length constraint.")
        }

        if self.count > 35 {
            throw CodePipelineError.validationError(reason: "The provided value to ActionProvider violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[0-9A-Za-z_-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CodePipelineError.validationError(
                    reason: "The provided value to ActionProvider violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the ActionRunOrder field.
*/
extension CodePipelineModel.ActionRunOrder {
    public func validateAsActionRunOrder() throws {
        if self < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to ActionRunOrder violated the minimum range constraint.")
        }

        if self > 999 {
            throw CodePipelineError.validationError(reason: "The provided value to ActionRunOrder violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the ActionTypeDescription field.
*/
extension CodePipelineModel.ActionTypeDescription {
    public func validateAsActionTypeDescription() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to ActionTypeDescription violated the minimum length constraint.")
        }

        if self.count > 1024 {
            throw CodePipelineError.validationError(reason: "The provided value to ActionTypeDescription violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ActionTypeOwner field.
*/
extension CodePipelineModel.ActionTypeOwner {
    public func validateAsActionTypeOwner() throws {
        guard let matchingRange = self.range(of: "AWS|ThirdParty", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CodePipelineError.validationError(
                    reason: "The provided value to ActionTypeOwner violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the ActionTypeProperties field.
*/
extension Array where Element == CodePipelineModel.ActionTypeProperty {
    public func validateAsActionTypeProperties() throws {

        if self.count > 10 {
            throw CodePipelineError.validationError(reason: "The provided value to ActionTypeProperties violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the AllowedAccount field.
*/
extension CodePipelineModel.AllowedAccount {
    public func validateAsAllowedAccount() throws {
        guard let matchingRange = self.range(of: "[0-9]{12}|\\*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CodePipelineError.validationError(
                    reason: "The provided value to AllowedAccount violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the AllowedAccounts field.
*/
extension Array where Element == CodePipelineModel.AllowedAccount {
    public func validateAsAllowedAccounts() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to AllowedAccounts violated the minimum length constraint.")
        }

        if self.count > 1000 {
            throw CodePipelineError.validationError(reason: "The provided value to AllowedAccounts violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ApprovalSummary field.
*/
extension CodePipelineModel.ApprovalSummary {
    public func validateAsApprovalSummary() throws {
        if self.count < 0 {
            throw CodePipelineError.validationError(reason: "The provided value to ApprovalSummary violated the minimum length constraint.")
        }

        if self.count > 512 {
            throw CodePipelineError.validationError(reason: "The provided value to ApprovalSummary violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ApprovalToken field.
*/
extension CodePipelineModel.ApprovalToken {
    public func validateAsApprovalToken() throws {
        guard let matchingRange = self.range(of: "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CodePipelineError.validationError(
                    reason: "The provided value to ApprovalToken violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the ArtifactName field.
*/
extension CodePipelineModel.ArtifactName {
    public func validateAsArtifactName() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to ArtifactName violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw CodePipelineError.validationError(reason: "The provided value to ArtifactName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9_\\-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CodePipelineError.validationError(
                    reason: "The provided value to ArtifactName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the ArtifactStoreLocation field.
*/
extension CodePipelineModel.ArtifactStoreLocation {
    public func validateAsArtifactStoreLocation() throws {
        if self.count < 3 {
            throw CodePipelineError.validationError(reason: "The provided value to ArtifactStoreLocation violated the minimum length constraint.")
        }

        if self.count > 63 {
            throw CodePipelineError.validationError(reason: "The provided value to ArtifactStoreLocation violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9\\-\\.]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CodePipelineError.validationError(
                    reason: "The provided value to ArtifactStoreLocation violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the BlockerName field.
*/
extension CodePipelineModel.BlockerName {
    public func validateAsBlockerName() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to BlockerName violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw CodePipelineError.validationError(reason: "The provided value to BlockerName violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ClientId field.
*/
extension CodePipelineModel.ClientId {
    public func validateAsClientId() throws {
        guard let matchingRange = self.range(of: "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CodePipelineError.validationError(
                    reason: "The provided value to ClientId violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the ClientRequestToken field.
*/
extension CodePipelineModel.ClientRequestToken {
    public func validateAsClientRequestToken() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to ClientRequestToken violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw CodePipelineError.validationError(reason: "The provided value to ClientRequestToken violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "^[a-zA-Z0-9-]+$", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CodePipelineError.validationError(
                    reason: "The provided value to ClientRequestToken violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the ClientToken field.
*/
extension CodePipelineModel.ClientToken {
    public func validateAsClientToken() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to ClientToken violated the minimum length constraint.")
        }

        if self.count > 256 {
            throw CodePipelineError.validationError(reason: "The provided value to ClientToken violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ContinuationToken field.
*/
extension CodePipelineModel.ContinuationToken {
    public func validateAsContinuationToken() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to ContinuationToken violated the minimum length constraint.")
        }

        if self.count > 2048 {
            throw CodePipelineError.validationError(reason: "The provided value to ContinuationToken violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the Description field.
*/
extension CodePipelineModel.Description {
    public func validateAsDescription() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to Description violated the minimum length constraint.")
        }

        if self.count > 160 {
            throw CodePipelineError.validationError(reason: "The provided value to Description violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the DisabledReason field.
*/
extension CodePipelineModel.DisabledReason {
    public func validateAsDisabledReason() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to DisabledReason violated the minimum length constraint.")
        }

        if self.count > 300 {
            throw CodePipelineError.validationError(reason: "The provided value to DisabledReason violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[a-zA-Z0-9!@ \\(\\)\\.\\*\\?\\-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CodePipelineError.validationError(
                    reason: "The provided value to DisabledReason violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the EncryptionKeyId field.
*/
extension CodePipelineModel.EncryptionKeyId {
    public func validateAsEncryptionKeyId() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to EncryptionKeyId violated the minimum length constraint.")
        }

        if self.count > 400 {
            throw CodePipelineError.validationError(reason: "The provided value to EncryptionKeyId violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ExecutionId field.
*/
extension CodePipelineModel.ExecutionId {
    public func validateAsExecutionId() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to ExecutionId violated the minimum length constraint.")
        }

        if self.count > 1500 {
            throw CodePipelineError.validationError(reason: "The provided value to ExecutionId violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ExecutionSummary field.
*/
extension CodePipelineModel.ExecutionSummary {
    public func validateAsExecutionSummary() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to ExecutionSummary violated the minimum length constraint.")
        }

        if self.count > 2048 {
            throw CodePipelineError.validationError(reason: "The provided value to ExecutionSummary violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the GitPushFilterList field.
*/
extension Array where Element == CodePipelineModel.GitPushFilter {
    public func validateAsGitPushFilterList() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to GitPushFilterList violated the minimum length constraint.")
        }

        if self.count > 1 {
            throw CodePipelineError.validationError(reason: "The provided value to GitPushFilterList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the GitTagNamePattern field.
*/
extension CodePipelineModel.GitTagNamePattern {
    public func validateAsGitTagNamePattern() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to GitTagNamePattern violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw CodePipelineError.validationError(reason: "The provided value to GitTagNamePattern violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the GitTagPatternList field.
*/
extension Array where Element == CodePipelineModel.GitTagNamePattern {
    public func validateAsGitTagPatternList() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to GitTagPatternList violated the minimum length constraint.")
        }

        if self.count > 8 {
            throw CodePipelineError.validationError(reason: "The provided value to GitTagPatternList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the JobId field.
*/
extension CodePipelineModel.JobId {
    public func validateAsJobId() throws {
        guard let matchingRange = self.range(of: "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CodePipelineError.validationError(
                    reason: "The provided value to JobId violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the JobTimeout field.
*/
extension CodePipelineModel.JobTimeout {
    public func validateAsJobTimeout() throws {
        if self < 60 {
            throw CodePipelineError.validationError(reason: "The provided value to JobTimeout violated the minimum range constraint.")
        }

        if self > 43200 {
            throw CodePipelineError.validationError(reason: "The provided value to JobTimeout violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the JsonPath field.
*/
extension CodePipelineModel.JsonPath {
    public func validateAsJsonPath() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to JsonPath violated the minimum length constraint.")
        }

        if self.count > 150 {
            throw CodePipelineError.validationError(reason: "The provided value to JsonPath violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the LambdaFunctionArn field.
*/
extension CodePipelineModel.LambdaFunctionArn {
    public func validateAsLambdaFunctionArn() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to LambdaFunctionArn violated the minimum length constraint.")
        }

        if self.count > 140 {
            throw CodePipelineError.validationError(reason: "The provided value to LambdaFunctionArn violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "arn:aws(-[\\w]+)*:lambda:.+:[0-9]{12}:function:.+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CodePipelineError.validationError(
                    reason: "The provided value to LambdaFunctionArn violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the MatchEquals field.
*/
extension CodePipelineModel.MatchEquals {
    public func validateAsMatchEquals() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to MatchEquals violated the minimum length constraint.")
        }

        if self.count > 150 {
            throw CodePipelineError.validationError(reason: "The provided value to MatchEquals violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the MaxBatchSize field.
*/
extension CodePipelineModel.MaxBatchSize {
    public func validateAsMaxBatchSize() throws {
        if self < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to MaxBatchSize violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the MaxPipelines field.
*/
extension CodePipelineModel.MaxPipelines {
    public func validateAsMaxPipelines() throws {
        if self < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to MaxPipelines violated the minimum range constraint.")
        }

        if self > 1000 {
            throw CodePipelineError.validationError(reason: "The provided value to MaxPipelines violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the MaxResults field.
*/
extension CodePipelineModel.MaxResults {
    public func validateAsMaxResults() throws {
        if self < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to MaxResults violated the minimum range constraint.")
        }

        if self > 100 {
            throw CodePipelineError.validationError(reason: "The provided value to MaxResults violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the MaximumActionTypeArtifactCount field.
*/
extension CodePipelineModel.MaximumActionTypeArtifactCount {
    public func validateAsMaximumActionTypeArtifactCount() throws {
        if self < 0 {
            throw CodePipelineError.validationError(reason: "The provided value to MaximumActionTypeArtifactCount violated the minimum range constraint.")
        }

        if self > 10 {
            throw CodePipelineError.validationError(reason: "The provided value to MaximumActionTypeArtifactCount violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the MaximumArtifactCount field.
*/
extension CodePipelineModel.MaximumArtifactCount {
    public func validateAsMaximumArtifactCount() throws {
        if self < 0 {
            throw CodePipelineError.validationError(reason: "The provided value to MaximumArtifactCount violated the minimum range constraint.")
        }

        if self > 5 {
            throw CodePipelineError.validationError(reason: "The provided value to MaximumArtifactCount violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the Message field.
*/
extension CodePipelineModel.Message {
    public func validateAsMessage() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to Message violated the minimum length constraint.")
        }

        if self.count > 5000 {
            throw CodePipelineError.validationError(reason: "The provided value to Message violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the MinimumActionTypeArtifactCount field.
*/
extension CodePipelineModel.MinimumActionTypeArtifactCount {
    public func validateAsMinimumActionTypeArtifactCount() throws {
        if self < 0 {
            throw CodePipelineError.validationError(reason: "The provided value to MinimumActionTypeArtifactCount violated the minimum range constraint.")
        }

        if self > 10 {
            throw CodePipelineError.validationError(reason: "The provided value to MinimumActionTypeArtifactCount violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the MinimumArtifactCount field.
*/
extension CodePipelineModel.MinimumArtifactCount {
    public func validateAsMinimumArtifactCount() throws {
        if self < 0 {
            throw CodePipelineError.validationError(reason: "The provided value to MinimumArtifactCount violated the minimum range constraint.")
        }

        if self > 5 {
            throw CodePipelineError.validationError(reason: "The provided value to MinimumArtifactCount violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the NextToken field.
*/
extension CodePipelineModel.NextToken {
    public func validateAsNextToken() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to NextToken violated the minimum length constraint.")
        }

        if self.count > 2048 {
            throw CodePipelineError.validationError(reason: "The provided value to NextToken violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the Nonce field.
*/
extension CodePipelineModel.Nonce {
    public func validateAsNonce() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to Nonce violated the minimum length constraint.")
        }

        if self.count > 50 {
            throw CodePipelineError.validationError(reason: "The provided value to Nonce violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the OutputVariablesKey field.
*/
extension CodePipelineModel.OutputVariablesKey {
    public func validateAsOutputVariablesKey() throws {
        guard let matchingRange = self.range(of: "[A-Za-z0-9@\\-_]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CodePipelineError.validationError(
                    reason: "The provided value to OutputVariablesKey violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the Percentage field.
*/
extension CodePipelineModel.Percentage {
    public func validateAsPercentage() throws {
        if self < 0 {
            throw CodePipelineError.validationError(reason: "The provided value to Percentage violated the minimum range constraint.")
        }

        if self > 100 {
            throw CodePipelineError.validationError(reason: "The provided value to Percentage violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the PipelineArn field.
*/
extension CodePipelineModel.PipelineArn {
    public func validateAsPipelineArn() throws {
        guard let matchingRange = self.range(of: "arn:aws(-[\\w]+)*:codepipeline:.+:[0-9]{12}:.+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CodePipelineError.validationError(
                    reason: "The provided value to PipelineArn violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the PipelineExecutionId field.
*/
extension CodePipelineModel.PipelineExecutionId {
    public func validateAsPipelineExecutionId() throws {
        guard let matchingRange = self.range(of: "[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CodePipelineError.validationError(
                    reason: "The provided value to PipelineExecutionId violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the PipelineName field.
*/
extension CodePipelineModel.PipelineName {
    public func validateAsPipelineName() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to PipelineName violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw CodePipelineError.validationError(reason: "The provided value to PipelineName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[A-Za-z0-9.@\\-_]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CodePipelineError.validationError(
                    reason: "The provided value to PipelineName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the PipelineTriggerDeclarationList field.
*/
extension Array where Element == CodePipelineModel.PipelineTriggerDeclaration {
    public func validateAsPipelineTriggerDeclarationList() throws {

        if self.count > 20 {
            throw CodePipelineError.validationError(reason: "The provided value to PipelineTriggerDeclarationList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the PipelineVariableDeclarationList field.
*/
extension Array where Element == CodePipelineModel.PipelineVariableDeclaration {
    public func validateAsPipelineVariableDeclarationList() throws {

        if self.count > 50 {
            throw CodePipelineError.validationError(reason: "The provided value to PipelineVariableDeclarationList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the PipelineVariableDescription field.
*/
extension CodePipelineModel.PipelineVariableDescription {
    public func validateAsPipelineVariableDescription() throws {
        if self.count < 0 {
            throw CodePipelineError.validationError(reason: "The provided value to PipelineVariableDescription violated the minimum length constraint.")
        }

        if self.count > 200 {
            throw CodePipelineError.validationError(reason: "The provided value to PipelineVariableDescription violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: ".*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CodePipelineError.validationError(
                    reason: "The provided value to PipelineVariableDescription violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the PipelineVariableList field.
*/
extension Array where Element == CodePipelineModel.PipelineVariable {
    public func validateAsPipelineVariableList() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to PipelineVariableList violated the minimum length constraint.")
        }

        if self.count > 50 {
            throw CodePipelineError.validationError(reason: "The provided value to PipelineVariableList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the PipelineVariableName field.
*/
extension CodePipelineModel.PipelineVariableName {
    public func validateAsPipelineVariableName() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to PipelineVariableName violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw CodePipelineError.validationError(reason: "The provided value to PipelineVariableName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[A-Za-z0-9@\\-_]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CodePipelineError.validationError(
                    reason: "The provided value to PipelineVariableName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the PipelineVariableValue field.
*/
extension CodePipelineModel.PipelineVariableValue {
    public func validateAsPipelineVariableValue() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to PipelineVariableValue violated the minimum length constraint.")
        }

        if self.count > 1000 {
            throw CodePipelineError.validationError(reason: "The provided value to PipelineVariableValue violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: ".*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CodePipelineError.validationError(
                    reason: "The provided value to PipelineVariableValue violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the PipelineVersion field.
*/
extension CodePipelineModel.PipelineVersion {
    public func validateAsPipelineVersion() throws {
        if self < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to PipelineVersion violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the PolicyStatementsTemplate field.
*/
extension CodePipelineModel.PolicyStatementsTemplate {
    public func validateAsPolicyStatementsTemplate() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to PolicyStatementsTemplate violated the minimum length constraint.")
        }

        if self.count > 2048 {
            throw CodePipelineError.validationError(reason: "The provided value to PolicyStatementsTemplate violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the PollingAccountList field.
*/
extension Array where Element == CodePipelineModel.AccountId {
    public func validateAsPollingAccountList() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to PollingAccountList violated the minimum length constraint.")
        }

        if self.count > 1000 {
            throw CodePipelineError.validationError(reason: "The provided value to PollingAccountList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the PollingServicePrincipalList field.
*/
extension Array where Element == CodePipelineModel.ServicePrincipal {
    public func validateAsPollingServicePrincipalList() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to PollingServicePrincipalList violated the minimum length constraint.")
        }

        if self.count > 10 {
            throw CodePipelineError.validationError(reason: "The provided value to PollingServicePrincipalList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the PropertyDescription field.
*/
extension CodePipelineModel.PropertyDescription {
    public func validateAsPropertyDescription() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to PropertyDescription violated the minimum length constraint.")
        }

        if self.count > 250 {
            throw CodePipelineError.validationError(reason: "The provided value to PropertyDescription violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ResourceArn field.
*/
extension CodePipelineModel.ResourceArn {
    public func validateAsResourceArn() throws {
        guard let matchingRange = self.range(of: "arn:aws(-[\\w]+)*:codepipeline:.+:[0-9]{12}:.+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CodePipelineError.validationError(
                    reason: "The provided value to ResourceArn violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the Revision field.
*/
extension CodePipelineModel.Revision {
    public func validateAsRevision() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to Revision violated the minimum length constraint.")
        }

        if self.count > 1500 {
            throw CodePipelineError.validationError(reason: "The provided value to Revision violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the RevisionChangeIdentifier field.
*/
extension CodePipelineModel.RevisionChangeIdentifier {
    public func validateAsRevisionChangeIdentifier() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to RevisionChangeIdentifier violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw CodePipelineError.validationError(reason: "The provided value to RevisionChangeIdentifier violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the RevisionSummary field.
*/
extension CodePipelineModel.RevisionSummary {
    public func validateAsRevisionSummary() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to RevisionSummary violated the minimum length constraint.")
        }

        if self.count > 2048 {
            throw CodePipelineError.validationError(reason: "The provided value to RevisionSummary violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the RoleArn field.
*/
extension CodePipelineModel.RoleArn {
    public func validateAsRoleArn() throws {

        if self.count > 1024 {
            throw CodePipelineError.validationError(reason: "The provided value to RoleArn violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "arn:aws(-[\\w]+)*:iam::[0-9]{12}:role/.*", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CodePipelineError.validationError(
                    reason: "The provided value to RoleArn violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the S3Bucket field.
*/
extension CodePipelineModel.S3Bucket {
    public func validateAsS3Bucket() throws {
        if self.count < 3 {
            throw CodePipelineError.validationError(reason: "The provided value to S3Bucket violated the minimum length constraint.")
        }

        if self.count > 63 {
            throw CodePipelineError.validationError(reason: "The provided value to S3Bucket violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the S3Key field.
*/
extension CodePipelineModel.S3Key {
    public func validateAsS3Key() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to S3Key violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw CodePipelineError.validationError(reason: "The provided value to S3Key violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ServicePrincipal field.
*/
extension CodePipelineModel.ServicePrincipal {
    public func validateAsServicePrincipal() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to ServicePrincipal violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw CodePipelineError.validationError(reason: "The provided value to ServicePrincipal violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the StageName field.
*/
extension CodePipelineModel.StageName {
    public func validateAsStageName() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to StageName violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw CodePipelineError.validationError(reason: "The provided value to StageName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[A-Za-z0-9.@\\-_]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CodePipelineError.validationError(
                    reason: "The provided value to StageName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the StopPipelineExecutionReason field.
*/
extension CodePipelineModel.StopPipelineExecutionReason {
    public func validateAsStopPipelineExecutionReason() throws {

        if self.count > 200 {
            throw CodePipelineError.validationError(reason: "The provided value to StopPipelineExecutionReason violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TagKey field.
*/
extension CodePipelineModel.TagKey {
    public func validateAsTagKey() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to TagKey violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw CodePipelineError.validationError(reason: "The provided value to TagKey violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TagValue field.
*/
extension CodePipelineModel.TagValue {
    public func validateAsTagValue() throws {
        if self.count < 0 {
            throw CodePipelineError.validationError(reason: "The provided value to TagValue violated the minimum length constraint.")
        }

        if self.count > 256 {
            throw CodePipelineError.validationError(reason: "The provided value to TagValue violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ThirdPartyJobId field.
*/
extension CodePipelineModel.ThirdPartyJobId {
    public func validateAsThirdPartyJobId() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to ThirdPartyJobId violated the minimum length constraint.")
        }

        if self.count > 512 {
            throw CodePipelineError.validationError(reason: "The provided value to ThirdPartyJobId violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TriggerDetail field.
*/
extension CodePipelineModel.TriggerDetail {
    public func validateAsTriggerDetail() throws {
        if self.count < 0 {
            throw CodePipelineError.validationError(reason: "The provided value to TriggerDetail violated the minimum length constraint.")
        }

        if self.count > 1024 {
            throw CodePipelineError.validationError(reason: "The provided value to TriggerDetail violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the Url field.
*/
extension CodePipelineModel.Url {
    public func validateAsUrl() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to Url violated the minimum length constraint.")
        }

        if self.count > 2048 {
            throw CodePipelineError.validationError(reason: "The provided value to Url violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the UrlTemplate field.
*/
extension CodePipelineModel.UrlTemplate {
    public func validateAsUrlTemplate() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to UrlTemplate violated the minimum length constraint.")
        }

        if self.count > 2048 {
            throw CodePipelineError.validationError(reason: "The provided value to UrlTemplate violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the Version field.
*/
extension CodePipelineModel.Version {
    public func validateAsVersion() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to Version violated the minimum length constraint.")
        }

        if self.count > 9 {
            throw CodePipelineError.validationError(reason: "The provided value to Version violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[0-9A-Za-z_-]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CodePipelineError.validationError(
                    reason: "The provided value to Version violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the WebhookAuthConfigurationAllowedIPRange field.
*/
extension CodePipelineModel.WebhookAuthConfigurationAllowedIPRange {
    public func validateAsWebhookAuthConfigurationAllowedIPRange() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to WebhookAuthConfigurationAllowedIPRange violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw CodePipelineError.validationError(reason: "The provided value to WebhookAuthConfigurationAllowedIPRange violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the WebhookAuthConfigurationSecretToken field.
*/
extension CodePipelineModel.WebhookAuthConfigurationSecretToken {
    public func validateAsWebhookAuthConfigurationSecretToken() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to WebhookAuthConfigurationSecretToken violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw CodePipelineError.validationError(reason: "The provided value to WebhookAuthConfigurationSecretToken violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the WebhookFilters field.
*/
extension Array where Element == CodePipelineModel.WebhookFilterRule {
    public func validateAsWebhookFilters() throws {

        if self.count > 5 {
            throw CodePipelineError.validationError(reason: "The provided value to WebhookFilters violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the WebhookName field.
*/
extension CodePipelineModel.WebhookName {
    public func validateAsWebhookName() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to WebhookName violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw CodePipelineError.validationError(reason: "The provided value to WebhookName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[A-Za-z0-9.@\\-_]+", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CodePipelineError.validationError(
                    reason: "The provided value to WebhookName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the WebhookUrl field.
*/
extension CodePipelineModel.WebhookUrl {
    public func validateAsWebhookUrl() throws {
        if self.count < 1 {
            throw CodePipelineError.validationError(reason: "The provided value to WebhookUrl violated the minimum length constraint.")
        }

        if self.count > 1000 {
            throw CodePipelineError.validationError(reason: "The provided value to WebhookUrl violated the maximum length constraint.")
        }
    }
}
