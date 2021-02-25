// Copyright 2018-2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
// CodeBuildModelTypes.swift
// CodeBuildModel
//

import Foundation

/**
 Enumeration restricting the values of the ArtifactNamespace field.
 */
public enum ArtifactNamespace: String, Codable, CustomStringConvertible {
    case buildId = "BUILD_ID"
    case none = "NONE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ArtifactNamespace = .buildId
}

/**
 Enumeration restricting the values of the ArtifactPackaging field.
 */
public enum ArtifactPackaging: String, Codable, CustomStringConvertible {
    case none = "NONE"
    case zip = "ZIP"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ArtifactPackaging = .none
}

/**
 Enumeration restricting the values of the ArtifactsType field.
 */
public enum ArtifactsType: String, Codable, CustomStringConvertible {
    case codepipeline = "CODEPIPELINE"
    case noArtifacts = "NO_ARTIFACTS"
    case s3 = "S3"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ArtifactsType = .codepipeline
}

/**
 Enumeration restricting the values of the AuthType field.
 */
public enum AuthType: String, Codable, CustomStringConvertible {
    case basicAuth = "BASIC_AUTH"
    case oauth = "OAUTH"
    case personalAccessToken = "PERSONAL_ACCESS_TOKEN"

    public var description: String {
        return rawValue
    }
    
    public static let __default: AuthType = .basicAuth
}

/**
 Type definition for the Boolean field.
 */
public typealias Boolean = Bool

/**
 Type definition for the BuildArtifactsList field.
 */
public typealias BuildArtifactsList = [BuildArtifacts]

/**
 Type definition for the BuildBatchIds field.
 */
public typealias BuildBatchIds = [NonEmptyString]

/**
 Enumeration restricting the values of the BuildBatchPhaseType field.
 */
public enum BuildBatchPhaseType: String, Codable, CustomStringConvertible {
    case combineArtifacts = "COMBINE_ARTIFACTS"
    case downloadBatchspec = "DOWNLOAD_BATCHSPEC"
    case failed = "FAILED"
    case inProgress = "IN_PROGRESS"
    case stopped = "STOPPED"
    case submitted = "SUBMITTED"
    case succeeded = "SUCCEEDED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: BuildBatchPhaseType = .combineArtifacts
}

/**
 Type definition for the BuildBatchPhases field.
 */
public typealias BuildBatchPhases = [BuildBatchPhase]

/**
 Type definition for the BuildBatches field.
 */
public typealias BuildBatches = [BuildBatch]

/**
 Type definition for the BuildGroups field.
 */
public typealias BuildGroups = [BuildGroup]

/**
 Type definition for the BuildIds field.
 */
public typealias BuildIds = [NonEmptyString]

/**
 Enumeration restricting the values of the BuildPhaseType field.
 */
public enum BuildPhaseType: String, Codable, CustomStringConvertible {
    case build = "BUILD"
    case completed = "COMPLETED"
    case downloadSource = "DOWNLOAD_SOURCE"
    case finalizing = "FINALIZING"
    case install = "INSTALL"
    case postBuild = "POST_BUILD"
    case preBuild = "PRE_BUILD"
    case provisioning = "PROVISIONING"
    case queued = "QUEUED"
    case submitted = "SUBMITTED"
    case uploadArtifacts = "UPLOAD_ARTIFACTS"

    public var description: String {
        return rawValue
    }
    
    public static let __default: BuildPhaseType = .build
}

/**
 Type definition for the BuildPhases field.
 */
public typealias BuildPhases = [BuildPhase]

/**
 Type definition for the BuildReportArns field.
 */
public typealias BuildReportArns = [String]

/**
 Type definition for the BuildSummaries field.
 */
public typealias BuildSummaries = [BuildSummary]

/**
 Type definition for the Builds field.
 */
public typealias Builds = [Build]

/**
 Type definition for the BuildsNotDeleted field.
 */
public typealias BuildsNotDeleted = [BuildNotDeleted]

/**
 Enumeration restricting the values of the CacheMode field.
 */
public enum CacheMode: String, Codable, CustomStringConvertible {
    case localCustomCache = "LOCAL_CUSTOM_CACHE"
    case localDockerLayerCache = "LOCAL_DOCKER_LAYER_CACHE"
    case localSourceCache = "LOCAL_SOURCE_CACHE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: CacheMode = .localCustomCache
}

/**
 Enumeration restricting the values of the CacheType field.
 */
public enum CacheType: String, Codable, CustomStringConvertible {
    case local = "LOCAL"
    case noCache = "NO_CACHE"
    case s3 = "S3"

    public var description: String {
        return rawValue
    }
    
    public static let __default: CacheType = .local
}

/**
 Type definition for the CodeCoverages field.
 */
public typealias CodeCoverages = [CodeCoverage]

/**
 Enumeration restricting the values of the ComputeType field.
 */
public enum ComputeType: String, Codable, CustomStringConvertible {
    case buildGeneral12xlarge = "BUILD_GENERAL1_2XLARGE"
    case buildGeneral1Large = "BUILD_GENERAL1_LARGE"
    case buildGeneral1Medium = "BUILD_GENERAL1_MEDIUM"
    case buildGeneral1Small = "BUILD_GENERAL1_SMALL"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ComputeType = .buildGeneral12xlarge
}

/**
 Type definition for the ComputeTypesAllowed field.
 */
public typealias ComputeTypesAllowed = [NonEmptyString]

/**
 Enumeration restricting the values of the CredentialProviderType field.
 */
public enum CredentialProviderType: String, Codable, CustomStringConvertible {
    case secretsManager = "SECRETS_MANAGER"

    public var description: String {
        return rawValue
    }
    
    public static let __default: CredentialProviderType = .secretsManager
}

/**
 Type definition for the EnvironmentImages field.
 */
public typealias EnvironmentImages = [EnvironmentImage]

/**
 Type definition for the EnvironmentLanguages field.
 */
public typealias EnvironmentLanguages = [EnvironmentLanguage]

/**
 Type definition for the EnvironmentPlatforms field.
 */
public typealias EnvironmentPlatforms = [EnvironmentPlatform]

/**
 Enumeration restricting the values of the EnvironmentType field.
 */
public enum EnvironmentType: String, Codable, CustomStringConvertible {
    case armContainer = "ARM_CONTAINER"
    case linuxContainer = "LINUX_CONTAINER"
    case linuxGpuContainer = "LINUX_GPU_CONTAINER"
    case windowsContainer = "WINDOWS_CONTAINER"
    case windowsServer2019Container = "WINDOWS_SERVER_2019_CONTAINER"

    public var description: String {
        return rawValue
    }
    
    public static let __default: EnvironmentType = .armContainer
}

/**
 Enumeration restricting the values of the EnvironmentVariableType field.
 */
public enum EnvironmentVariableType: String, Codable, CustomStringConvertible {
    case parameterStore = "PARAMETER_STORE"
    case plaintext = "PLAINTEXT"
    case secretsManager = "SECRETS_MANAGER"

    public var description: String {
        return rawValue
    }
    
    public static let __default: EnvironmentVariableType = .parameterStore
}

/**
 Type definition for the EnvironmentVariables field.
 */
public typealias EnvironmentVariables = [EnvironmentVariable]

/**
 Type definition for the ExportedEnvironmentVariables field.
 */
public typealias ExportedEnvironmentVariables = [ExportedEnvironmentVariable]

/**
 Enumeration restricting the values of the FileSystemType field.
 */
public enum FileSystemType: String, Codable, CustomStringConvertible {
    case efs = "EFS"

    public var description: String {
        return rawValue
    }
    
    public static let __default: FileSystemType = .efs
}

/**
 Type definition for the FilterGroup field.
 */
public typealias FilterGroup = [WebhookFilter]

/**
 Type definition for the FilterGroups field.
 */
public typealias FilterGroups = [FilterGroup]

/**
 Type definition for the GitCloneDepth field.
 */
public typealias GitCloneDepth = Int

/**
 Type definition for the Identifiers field.
 */
public typealias Identifiers = [NonEmptyString]

/**
 Enumeration restricting the values of the ImagePullCredentialsType field.
 */
public enum ImagePullCredentialsType: String, Codable, CustomStringConvertible {
    case codebuild = "CODEBUILD"
    case serviceRole = "SERVICE_ROLE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ImagePullCredentialsType = .codebuild
}

/**
 Type definition for the ImageVersions field.
 */
public typealias ImageVersions = [String]

/**
 Type definition for the KeyInput field.
 */
public typealias KeyInput = String

/**
 Enumeration restricting the values of the LanguageType field.
 */
public enum LanguageType: String, Codable, CustomStringConvertible {
    case android = "ANDROID"
    case base = "BASE"
    case docker = "DOCKER"
    case dotnet = "DOTNET"
    case golang = "GOLANG"
    case java = "JAVA"
    case nodeJs = "NODE_JS"
    case php = "PHP"
    case python = "PYTHON"
    case ruby = "RUBY"

    public var description: String {
        return rawValue
    }
    
    public static let __default: LanguageType = .android
}

/**
 Enumeration restricting the values of the LogsConfigStatusType field.
 */
public enum LogsConfigStatusType: String, Codable, CustomStringConvertible {
    case disabled = "DISABLED"
    case enabled = "ENABLED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: LogsConfigStatusType = .disabled
}

/**
 Type definition for the NonEmptyString field.
 */
public typealias NonEmptyString = String

/**
 Type definition for the NonNegativeInt field.
 */
public typealias NonNegativeInt = Int

/**
 Type definition for the PageSize field.
 */
public typealias PageSize = Int

/**
 Type definition for the Percentage field.
 */
public typealias Percentage = Double

/**
 Type definition for the PhaseContexts field.
 */
public typealias PhaseContexts = [PhaseContext]

/**
 Enumeration restricting the values of the PlatformType field.
 */
public enum PlatformType: String, Codable, CustomStringConvertible {
    case amazonLinux = "AMAZON_LINUX"
    case debian = "DEBIAN"
    case ubuntu = "UBUNTU"
    case windowsServer = "WINDOWS_SERVER"

    public var description: String {
        return rawValue
    }
    
    public static let __default: PlatformType = .amazonLinux
}

/**
 Type definition for the ProjectArns field.
 */
public typealias ProjectArns = [NonEmptyString]

/**
 Type definition for the ProjectArtifactsList field.
 */
public typealias ProjectArtifactsList = [ProjectArtifacts]

/**
 Type definition for the ProjectCacheModes field.
 */
public typealias ProjectCacheModes = [CacheMode]

/**
 Type definition for the ProjectDescription field.
 */
public typealias ProjectDescription = String

/**
 Type definition for the ProjectFileSystemLocations field.
 */
public typealias ProjectFileSystemLocations = [ProjectFileSystemLocation]

/**
 Type definition for the ProjectName field.
 */
public typealias ProjectName = String

/**
 Type definition for the ProjectNames field.
 */
public typealias ProjectNames = [NonEmptyString]

/**
 Type definition for the ProjectSecondarySourceVersions field.
 */
public typealias ProjectSecondarySourceVersions = [ProjectSourceVersion]

/**
 Enumeration restricting the values of the ProjectSortByType field.
 */
public enum ProjectSortByType: String, Codable, CustomStringConvertible {
    case createdTime = "CREATED_TIME"
    case lastModifiedTime = "LAST_MODIFIED_TIME"
    case name = "NAME"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ProjectSortByType = .createdTime
}

/**
 Type definition for the ProjectSources field.
 */
public typealias ProjectSources = [ProjectSource]

/**
 Type definition for the Projects field.
 */
public typealias Projects = [Project]

/**
 Type definition for the ReportArns field.
 */
public typealias ReportArns = [NonEmptyString]

/**
 Enumeration restricting the values of the ReportCodeCoverageSortByType field.
 */
public enum ReportCodeCoverageSortByType: String, Codable, CustomStringConvertible {
    case filePath = "FILE_PATH"
    case lineCoveragePercentage = "LINE_COVERAGE_PERCENTAGE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ReportCodeCoverageSortByType = .filePath
}

/**
 Enumeration restricting the values of the ReportExportConfigType field.
 */
public enum ReportExportConfigType: String, Codable, CustomStringConvertible {
    case noExport = "NO_EXPORT"
    case s3 = "S3"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ReportExportConfigType = .noExport
}

/**
 Type definition for the ReportGroupArns field.
 */
public typealias ReportGroupArns = [NonEmptyString]

/**
 Type definition for the ReportGroupName field.
 */
public typealias ReportGroupName = String

/**
 Enumeration restricting the values of the ReportGroupSortByType field.
 */
public enum ReportGroupSortByType: String, Codable, CustomStringConvertible {
    case createdTime = "CREATED_TIME"
    case lastModifiedTime = "LAST_MODIFIED_TIME"
    case name = "NAME"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ReportGroupSortByType = .createdTime
}

/**
 Enumeration restricting the values of the ReportGroupStatusType field.
 */
public enum ReportGroupStatusType: String, Codable, CustomStringConvertible {
    case active = "ACTIVE"
    case deleting = "DELETING"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ReportGroupStatusType = .active
}

/**
 Enumeration restricting the values of the ReportGroupTrendFieldType field.
 */
public enum ReportGroupTrendFieldType: String, Codable, CustomStringConvertible {
    case branchesCovered = "BRANCHES_COVERED"
    case branchesMissed = "BRANCHES_MISSED"
    case branchCoverage = "BRANCH_COVERAGE"
    case duration = "DURATION"
    case linesCovered = "LINES_COVERED"
    case linesMissed = "LINES_MISSED"
    case lineCoverage = "LINE_COVERAGE"
    case passRate = "PASS_RATE"
    case total = "TOTAL"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ReportGroupTrendFieldType = .branchesCovered
}

/**
 Type definition for the ReportGroupTrendRawDataList field.
 */
public typealias ReportGroupTrendRawDataList = [ReportWithRawData]

/**
 Type definition for the ReportGroups field.
 */
public typealias ReportGroups = [ReportGroup]

/**
 Enumeration restricting the values of the ReportPackagingType field.
 */
public enum ReportPackagingType: String, Codable, CustomStringConvertible {
    case none = "NONE"
    case zip = "ZIP"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ReportPackagingType = .none
}

/**
 Type definition for the ReportStatusCounts field.
 */
public typealias ReportStatusCounts = [String: WrapperInt]

/**
 Enumeration restricting the values of the ReportStatusType field.
 */
public enum ReportStatusType: String, Codable, CustomStringConvertible {
    case deleting = "DELETING"
    case failed = "FAILED"
    case generating = "GENERATING"
    case incomplete = "INCOMPLETE"
    case succeeded = "SUCCEEDED"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ReportStatusType = .deleting
}

/**
 Enumeration restricting the values of the ReportType field.
 */
public enum ReportType: String, Codable, CustomStringConvertible {
    case codeCoverage = "CODE_COVERAGE"
    case test = "TEST"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ReportType = .codeCoverage
}

/**
 Type definition for the Reports field.
 */
public typealias Reports = [Report]

/**
 Type definition for the ResolvedSecondaryArtifacts field.
 */
public typealias ResolvedSecondaryArtifacts = [ResolvedArtifact]

/**
 Enumeration restricting the values of the RetryBuildBatchType field.
 */
public enum RetryBuildBatchType: String, Codable, CustomStringConvertible {
    case retryAllBuilds = "RETRY_ALL_BUILDS"
    case retryFailedBuilds = "RETRY_FAILED_BUILDS"

    public var description: String {
        return rawValue
    }
    
    public static let __default: RetryBuildBatchType = .retryAllBuilds
}

/**
 Type definition for the SecurityGroupIds field.
 */
public typealias SecurityGroupIds = [NonEmptyString]

/**
 Type definition for the SensitiveNonEmptyString field.
 */
public typealias SensitiveNonEmptyString = String

/**
 Enumeration restricting the values of the ServerType field.
 */
public enum ServerType: String, Codable, CustomStringConvertible {
    case bitbucket = "BITBUCKET"
    case github = "GITHUB"
    case githubEnterprise = "GITHUB_ENTERPRISE"

    public var description: String {
        return rawValue
    }
    
    public static let __default: ServerType = .bitbucket
}

/**
 Enumeration restricting the values of the SharedResourceSortByType field.
 */
public enum SharedResourceSortByType: String, Codable, CustomStringConvertible {
    case arn = "ARN"
    case modifiedTime = "MODIFIED_TIME"

    public var description: String {
        return rawValue
    }
    
    public static let __default: SharedResourceSortByType = .arn
}

/**
 Enumeration restricting the values of the SortOrderType field.
 */
public enum SortOrderType: String, Codable, CustomStringConvertible {
    case ascending = "ASCENDING"
    case descending = "DESCENDING"

    public var description: String {
        return rawValue
    }
    
    public static let __default: SortOrderType = .ascending
}

/**
 Enumeration restricting the values of the SourceAuthType field.
 */
public enum SourceAuthType: String, Codable, CustomStringConvertible {
    case oauth = "OAUTH"

    public var description: String {
        return rawValue
    }
    
    public static let __default: SourceAuthType = .oauth
}

/**
 Type definition for the SourceCredentialsInfos field.
 */
public typealias SourceCredentialsInfos = [SourceCredentialsInfo]

/**
 Enumeration restricting the values of the SourceType field.
 */
public enum SourceType: String, Codable, CustomStringConvertible {
    case bitbucket = "BITBUCKET"
    case codecommit = "CODECOMMIT"
    case codepipeline = "CODEPIPELINE"
    case github = "GITHUB"
    case githubEnterprise = "GITHUB_ENTERPRISE"
    case noSource = "NO_SOURCE"
    case s3 = "S3"

    public var description: String {
        return rawValue
    }
    
    public static let __default: SourceType = .bitbucket
}

/**
 Enumeration restricting the values of the StatusType field.
 */
public enum StatusType: String, Codable, CustomStringConvertible {
    case failed = "FAILED"
    case fault = "FAULT"
    case inProgress = "IN_PROGRESS"
    case stopped = "STOPPED"
    case succeeded = "SUCCEEDED"
    case timedOut = "TIMED_OUT"

    public var description: String {
        return rawValue
    }
    
    public static let __default: StatusType = .failed
}

/**
 Type definition for the Subnets field.
 */
public typealias Subnets = [NonEmptyString]

/**
 Type definition for the TagList field.
 */
public typealias TagList = [Tag]

/**
 Type definition for the TestCases field.
 */
public typealias TestCases = [TestCase]

/**
 Type definition for the TimeOut field.
 */
public typealias TimeOut = Int

/**
 Type definition for the Timestamp field.
 */
public typealias Timestamp = String

/**
 Type definition for the ValueInput field.
 */
public typealias ValueInput = String

/**
 Enumeration restricting the values of the WebhookBuildType field.
 */
public enum WebhookBuildType: String, Codable, CustomStringConvertible {
    case build = "BUILD"
    case buildBatch = "BUILD_BATCH"

    public var description: String {
        return rawValue
    }
    
    public static let __default: WebhookBuildType = .build
}

/**
 Enumeration restricting the values of the WebhookFilterType field.
 */
public enum WebhookFilterType: String, Codable, CustomStringConvertible {
    case actorAccountId = "ACTOR_ACCOUNT_ID"
    case baseRef = "BASE_REF"
    case commitMessage = "COMMIT_MESSAGE"
    case event = "EVENT"
    case filePath = "FILE_PATH"
    case headRef = "HEAD_REF"

    public var description: String {
        return rawValue
    }
    
    public static let __default: WebhookFilterType = .actorAccountId
}

/**
 Type definition for the WrapperBoolean field.
 */
public typealias WrapperBoolean = Bool

/**
 Type definition for the WrapperInt field.
 */
public typealias WrapperInt = Int

/**
 Type definition for the WrapperLong field.
 */
public typealias WrapperLong = Int64

/**
 Validation for the BuildArtifactsList field.
*/
extension Array where Element == CodeBuildModel.BuildArtifacts {
    public func validateAsBuildArtifactsList() throws {
        if self.count < 0 {
            throw CodeBuildError.validationError(reason: "The provided value to BuildArtifactsList violated the minimum length constraint.")
        }

        if self.count > 12 {
            throw CodeBuildError.validationError(reason: "The provided value to BuildArtifactsList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the BuildBatchIds field.
*/
extension Array where Element == CodeBuildModel.NonEmptyString {
    public func validateAsBuildBatchIds() throws {
        if self.count < 0 {
            throw CodeBuildError.validationError(reason: "The provided value to BuildBatchIds violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw CodeBuildError.validationError(reason: "The provided value to BuildBatchIds violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the BuildBatches field.
*/
extension Array where Element == CodeBuildModel.BuildBatch {
    public func validateAsBuildBatches() throws {
        if self.count < 0 {
            throw CodeBuildError.validationError(reason: "The provided value to BuildBatches violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw CodeBuildError.validationError(reason: "The provided value to BuildBatches violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the BuildIds field.
*/
extension Array where Element == CodeBuildModel.NonEmptyString {
    public func validateAsBuildIds() throws {
        if self.count < 1 {
            throw CodeBuildError.validationError(reason: "The provided value to BuildIds violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw CodeBuildError.validationError(reason: "The provided value to BuildIds violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the GitCloneDepth field.
*/
extension CodeBuildModel.GitCloneDepth {
    public func validateAsGitCloneDepth() throws {
        if self < 0 {
            throw CodeBuildError.validationError(reason: "The provided value to GitCloneDepth violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the KeyInput field.
*/
extension CodeBuildModel.KeyInput {
    public func validateAsKeyInput() throws {
        if self.count < 1 {
            throw CodeBuildError.validationError(reason: "The provided value to KeyInput violated the minimum length constraint.")
        }

        if self.count > 127 {
            throw CodeBuildError.validationError(reason: "The provided value to KeyInput violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "^([\\p{L}\\p{Z}\\p{N}_.:/=@+\\-]*)$", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CodeBuildError.validationError(
                    reason: "The provided value to KeyInput violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the NonEmptyString field.
*/
extension CodeBuildModel.NonEmptyString {
    public func validateAsNonEmptyString() throws {
        if self.count < 1 {
            throw CodeBuildError.validationError(reason: "The provided value to NonEmptyString violated the minimum length constraint.")
        }

    }
}

/**
 Validation for the NonNegativeInt field.
*/
extension CodeBuildModel.NonNegativeInt {
    public func validateAsNonNegativeInt() throws {
        if self < 0 {
            throw CodeBuildError.validationError(reason: "The provided value to NonNegativeInt violated the minimum range constraint.")
        }

    }
}

/**
 Validation for the PageSize field.
*/
extension CodeBuildModel.PageSize {
    public func validateAsPageSize() throws {
        if self < 1 {
            throw CodeBuildError.validationError(reason: "The provided value to PageSize violated the minimum range constraint.")
        }

        if self > 100 {
            throw CodeBuildError.validationError(reason: "The provided value to PageSize violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the Percentage field.
*/
extension CodeBuildModel.Percentage {
    public func validateAsPercentage() throws {
        if self < 0.0 {
            throw CodeBuildError.validationError(reason: "The provided value to Percentage violated the minimum range constraint.")
        }

        if self > 100.0 {
            throw CodeBuildError.validationError(reason: "The provided value to Percentage violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the ProjectArns field.
*/
extension Array where Element == CodeBuildModel.NonEmptyString {
    public func validateAsProjectArns() throws {
        if self.count < 1 {
            throw CodeBuildError.validationError(reason: "The provided value to ProjectArns violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw CodeBuildError.validationError(reason: "The provided value to ProjectArns violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ProjectArtifactsList field.
*/
extension Array where Element == CodeBuildModel.ProjectArtifacts {
    public func validateAsProjectArtifactsList() throws {
        if self.count < 0 {
            throw CodeBuildError.validationError(reason: "The provided value to ProjectArtifactsList violated the minimum length constraint.")
        }

        if self.count > 12 {
            throw CodeBuildError.validationError(reason: "The provided value to ProjectArtifactsList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ProjectDescription field.
*/
extension CodeBuildModel.ProjectDescription {
    public func validateAsProjectDescription() throws {
        if self.count < 0 {
            throw CodeBuildError.validationError(reason: "The provided value to ProjectDescription violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw CodeBuildError.validationError(reason: "The provided value to ProjectDescription violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ProjectName field.
*/
extension CodeBuildModel.ProjectName {
    public func validateAsProjectName() throws {
        if self.count < 2 {
            throw CodeBuildError.validationError(reason: "The provided value to ProjectName violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw CodeBuildError.validationError(reason: "The provided value to ProjectName violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "[A-Za-z0-9][A-Za-z0-9\\-_]{1,254}", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CodeBuildError.validationError(
                    reason: "The provided value to ProjectName violated the regular expression constraint.")
        }
    }
}

/**
 Validation for the ProjectNames field.
*/
extension Array where Element == CodeBuildModel.NonEmptyString {
    public func validateAsProjectNames() throws {
        if self.count < 1 {
            throw CodeBuildError.validationError(reason: "The provided value to ProjectNames violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw CodeBuildError.validationError(reason: "The provided value to ProjectNames violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ProjectSecondarySourceVersions field.
*/
extension Array where Element == CodeBuildModel.ProjectSourceVersion {
    public func validateAsProjectSecondarySourceVersions() throws {
        if self.count < 0 {
            throw CodeBuildError.validationError(reason: "The provided value to ProjectSecondarySourceVersions violated the minimum length constraint.")
        }

        if self.count > 12 {
            throw CodeBuildError.validationError(reason: "The provided value to ProjectSecondarySourceVersions violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ProjectSources field.
*/
extension Array where Element == CodeBuildModel.ProjectSource {
    public func validateAsProjectSources() throws {
        if self.count < 0 {
            throw CodeBuildError.validationError(reason: "The provided value to ProjectSources violated the minimum length constraint.")
        }

        if self.count > 12 {
            throw CodeBuildError.validationError(reason: "The provided value to ProjectSources violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ReportArns field.
*/
extension Array where Element == CodeBuildModel.NonEmptyString {
    public func validateAsReportArns() throws {
        if self.count < 1 {
            throw CodeBuildError.validationError(reason: "The provided value to ReportArns violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw CodeBuildError.validationError(reason: "The provided value to ReportArns violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ReportGroupArns field.
*/
extension Array where Element == CodeBuildModel.NonEmptyString {
    public func validateAsReportGroupArns() throws {
        if self.count < 1 {
            throw CodeBuildError.validationError(reason: "The provided value to ReportGroupArns violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw CodeBuildError.validationError(reason: "The provided value to ReportGroupArns violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ReportGroupName field.
*/
extension CodeBuildModel.ReportGroupName {
    public func validateAsReportGroupName() throws {
        if self.count < 2 {
            throw CodeBuildError.validationError(reason: "The provided value to ReportGroupName violated the minimum length constraint.")
        }

        if self.count > 128 {
            throw CodeBuildError.validationError(reason: "The provided value to ReportGroupName violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the ReportGroups field.
*/
extension Array where Element == CodeBuildModel.ReportGroup {
    public func validateAsReportGroups() throws {
        if self.count < 1 {
            throw CodeBuildError.validationError(reason: "The provided value to ReportGroups violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw CodeBuildError.validationError(reason: "The provided value to ReportGroups violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the Reports field.
*/
extension Array where Element == CodeBuildModel.Report {
    public func validateAsReports() throws {
        if self.count < 1 {
            throw CodeBuildError.validationError(reason: "The provided value to Reports violated the minimum length constraint.")
        }

        if self.count > 100 {
            throw CodeBuildError.validationError(reason: "The provided value to Reports violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the SecurityGroupIds field.
*/
extension Array where Element == CodeBuildModel.NonEmptyString {
    public func validateAsSecurityGroupIds() throws {

        if self.count > 5 {
            throw CodeBuildError.validationError(reason: "The provided value to SecurityGroupIds violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the SensitiveNonEmptyString field.
*/
extension CodeBuildModel.SensitiveNonEmptyString {
    public func validateAsSensitiveNonEmptyString() throws {
        if self.count < 1 {
            throw CodeBuildError.validationError(reason: "The provided value to SensitiveNonEmptyString violated the minimum length constraint.")
        }

    }
}

/**
 Validation for the Subnets field.
*/
extension Array where Element == CodeBuildModel.NonEmptyString {
    public func validateAsSubnets() throws {

        if self.count > 16 {
            throw CodeBuildError.validationError(reason: "The provided value to Subnets violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TagList field.
*/
extension Array where Element == CodeBuildModel.Tag {
    public func validateAsTagList() throws {
        if self.count < 0 {
            throw CodeBuildError.validationError(reason: "The provided value to TagList violated the minimum length constraint.")
        }

        if self.count > 50 {
            throw CodeBuildError.validationError(reason: "The provided value to TagList violated the maximum length constraint.")
        }
    }
}

/**
 Validation for the TimeOut field.
*/
extension CodeBuildModel.TimeOut {
    public func validateAsTimeOut() throws {
        if self < 5 {
            throw CodeBuildError.validationError(reason: "The provided value to TimeOut violated the minimum range constraint.")
        }

        if self > 480 {
            throw CodeBuildError.validationError(reason: "The provided value to TimeOut violated the maximum range constraint.")
        }
    }
}

/**
 Validation for the ValueInput field.
*/
extension CodeBuildModel.ValueInput {
    public func validateAsValueInput() throws {
        if self.count < 0 {
            throw CodeBuildError.validationError(reason: "The provided value to ValueInput violated the minimum length constraint.")
        }

        if self.count > 255 {
            throw CodeBuildError.validationError(reason: "The provided value to ValueInput violated the maximum length constraint.")
        }

        guard let matchingRange = self.range(of: "^([\\p{L}\\p{Z}\\p{N}_.:/=@+\\-]*)$", options: .regularExpression),
            matchingRange == startIndex..<endIndex else {
                throw CodeBuildError.validationError(
                    reason: "The provided value to ValueInput violated the regular expression constraint.")
        }
    }
}
