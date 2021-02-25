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
// CodeBuildModelStructures.swift
// CodeBuildModel
//

import Foundation

public struct AccountLimitExceededException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct BatchDeleteBuildsInput: Codable, Equatable {
    public var ids: BuildIds

    public init(ids: BuildIds) {
        self.ids = ids
    }

    enum CodingKeys: String, CodingKey {
        case ids
    }

    public func validate() throws {
        try ids.validateAsBuildIds()
    }
}

public struct BatchDeleteBuildsOutput: Codable, Equatable {
    public var buildsDeleted: BuildIds?
    public var buildsNotDeleted: BuildsNotDeleted?

    public init(buildsDeleted: BuildIds? = nil,
                buildsNotDeleted: BuildsNotDeleted? = nil) {
        self.buildsDeleted = buildsDeleted
        self.buildsNotDeleted = buildsNotDeleted
    }

    enum CodingKeys: String, CodingKey {
        case buildsDeleted
        case buildsNotDeleted
    }

    public func validate() throws {
        try buildsDeleted?.validateAsBuildIds()
    }
}

public struct BatchGetBuildBatchesInput: Codable, Equatable {
    public var ids: BuildBatchIds

    public init(ids: BuildBatchIds) {
        self.ids = ids
    }

    enum CodingKeys: String, CodingKey {
        case ids
    }

    public func validate() throws {
        try ids.validateAsBuildBatchIds()
    }
}

public struct BatchGetBuildBatchesOutput: Codable, Equatable {
    public var buildBatches: BuildBatches?
    public var buildBatchesNotFound: BuildBatchIds?

    public init(buildBatches: BuildBatches? = nil,
                buildBatchesNotFound: BuildBatchIds? = nil) {
        self.buildBatches = buildBatches
        self.buildBatchesNotFound = buildBatchesNotFound
    }

    enum CodingKeys: String, CodingKey {
        case buildBatches
        case buildBatchesNotFound
    }

    public func validate() throws {
        try buildBatches?.validateAsBuildBatches()
        try buildBatchesNotFound?.validateAsBuildBatchIds()
    }
}

public struct BatchGetBuildsInput: Codable, Equatable {
    public var ids: BuildIds

    public init(ids: BuildIds) {
        self.ids = ids
    }

    enum CodingKeys: String, CodingKey {
        case ids
    }

    public func validate() throws {
        try ids.validateAsBuildIds()
    }
}

public struct BatchGetBuildsOutput: Codable, Equatable {
    public var builds: Builds?
    public var buildsNotFound: BuildIds?

    public init(builds: Builds? = nil,
                buildsNotFound: BuildIds? = nil) {
        self.builds = builds
        self.buildsNotFound = buildsNotFound
    }

    enum CodingKeys: String, CodingKey {
        case builds
        case buildsNotFound
    }

    public func validate() throws {
        try buildsNotFound?.validateAsBuildIds()
    }
}

public struct BatchGetProjectsInput: Codable, Equatable {
    public var names: ProjectNames

    public init(names: ProjectNames) {
        self.names = names
    }

    enum CodingKeys: String, CodingKey {
        case names
    }

    public func validate() throws {
        try names.validateAsProjectNames()
    }
}

public struct BatchGetProjectsOutput: Codable, Equatable {
    public var projects: Projects?
    public var projectsNotFound: ProjectNames?

    public init(projects: Projects? = nil,
                projectsNotFound: ProjectNames? = nil) {
        self.projects = projects
        self.projectsNotFound = projectsNotFound
    }

    enum CodingKeys: String, CodingKey {
        case projects
        case projectsNotFound
    }

    public func validate() throws {
        try projectsNotFound?.validateAsProjectNames()
    }
}

public struct BatchGetReportGroupsInput: Codable, Equatable {
    public var reportGroupArns: ReportGroupArns

    public init(reportGroupArns: ReportGroupArns) {
        self.reportGroupArns = reportGroupArns
    }

    enum CodingKeys: String, CodingKey {
        case reportGroupArns
    }

    public func validate() throws {
        try reportGroupArns.validateAsReportGroupArns()
    }
}

public struct BatchGetReportGroupsOutput: Codable, Equatable {
    public var reportGroups: ReportGroups?
    public var reportGroupsNotFound: ReportGroupArns?

    public init(reportGroups: ReportGroups? = nil,
                reportGroupsNotFound: ReportGroupArns? = nil) {
        self.reportGroups = reportGroups
        self.reportGroupsNotFound = reportGroupsNotFound
    }

    enum CodingKeys: String, CodingKey {
        case reportGroups
        case reportGroupsNotFound
    }

    public func validate() throws {
        try reportGroups?.validateAsReportGroups()
        try reportGroupsNotFound?.validateAsReportGroupArns()
    }
}

public struct BatchGetReportsInput: Codable, Equatable {
    public var reportArns: ReportArns

    public init(reportArns: ReportArns) {
        self.reportArns = reportArns
    }

    enum CodingKeys: String, CodingKey {
        case reportArns
    }

    public func validate() throws {
        try reportArns.validateAsReportArns()
    }
}

public struct BatchGetReportsOutput: Codable, Equatable {
    public var reports: Reports?
    public var reportsNotFound: ReportArns?

    public init(reports: Reports? = nil,
                reportsNotFound: ReportArns? = nil) {
        self.reports = reports
        self.reportsNotFound = reportsNotFound
    }

    enum CodingKeys: String, CodingKey {
        case reports
        case reportsNotFound
    }

    public func validate() throws {
        try reports?.validateAsReports()
        try reportsNotFound?.validateAsReportArns()
    }
}

public struct BatchRestrictions: Codable, Equatable {
    public var computeTypesAllowed: ComputeTypesAllowed?
    public var maximumBuildsAllowed: WrapperInt?

    public init(computeTypesAllowed: ComputeTypesAllowed? = nil,
                maximumBuildsAllowed: WrapperInt? = nil) {
        self.computeTypesAllowed = computeTypesAllowed
        self.maximumBuildsAllowed = maximumBuildsAllowed
    }

    enum CodingKeys: String, CodingKey {
        case computeTypesAllowed
        case maximumBuildsAllowed
    }

    public func validate() throws {
    }
}

public struct Build: Codable, Equatable {
    public var arn: NonEmptyString?
    public var artifacts: BuildArtifacts?
    public var buildBatchArn: String?
    public var buildComplete: Boolean?
    public var buildNumber: WrapperLong?
    public var buildStatus: StatusType?
    public var cache: ProjectCache?
    public var currentPhase: String?
    public var debugSession: DebugSession?
    public var encryptionKey: NonEmptyString?
    public var endTime: Timestamp?
    public var environment: ProjectEnvironment?
    public var exportedEnvironmentVariables: ExportedEnvironmentVariables?
    public var fileSystemLocations: ProjectFileSystemLocations?
    public var id: NonEmptyString?
    public var initiator: String?
    public var logs: LogsLocation?
    public var networkInterface: NetworkInterface?
    public var phases: BuildPhases?
    public var projectName: NonEmptyString?
    public var queuedTimeoutInMinutes: WrapperInt?
    public var reportArns: BuildReportArns?
    public var resolvedSourceVersion: NonEmptyString?
    public var secondaryArtifacts: BuildArtifactsList?
    public var secondarySourceVersions: ProjectSecondarySourceVersions?
    public var secondarySources: ProjectSources?
    public var serviceRole: NonEmptyString?
    public var source: ProjectSource?
    public var sourceVersion: NonEmptyString?
    public var startTime: Timestamp?
    public var timeoutInMinutes: WrapperInt?
    public var vpcConfig: VpcConfig?

    public init(arn: NonEmptyString? = nil,
                artifacts: BuildArtifacts? = nil,
                buildBatchArn: String? = nil,
                buildComplete: Boolean? = nil,
                buildNumber: WrapperLong? = nil,
                buildStatus: StatusType? = nil,
                cache: ProjectCache? = nil,
                currentPhase: String? = nil,
                debugSession: DebugSession? = nil,
                encryptionKey: NonEmptyString? = nil,
                endTime: Timestamp? = nil,
                environment: ProjectEnvironment? = nil,
                exportedEnvironmentVariables: ExportedEnvironmentVariables? = nil,
                fileSystemLocations: ProjectFileSystemLocations? = nil,
                id: NonEmptyString? = nil,
                initiator: String? = nil,
                logs: LogsLocation? = nil,
                networkInterface: NetworkInterface? = nil,
                phases: BuildPhases? = nil,
                projectName: NonEmptyString? = nil,
                queuedTimeoutInMinutes: WrapperInt? = nil,
                reportArns: BuildReportArns? = nil,
                resolvedSourceVersion: NonEmptyString? = nil,
                secondaryArtifacts: BuildArtifactsList? = nil,
                secondarySourceVersions: ProjectSecondarySourceVersions? = nil,
                secondarySources: ProjectSources? = nil,
                serviceRole: NonEmptyString? = nil,
                source: ProjectSource? = nil,
                sourceVersion: NonEmptyString? = nil,
                startTime: Timestamp? = nil,
                timeoutInMinutes: WrapperInt? = nil,
                vpcConfig: VpcConfig? = nil) {
        self.arn = arn
        self.artifacts = artifacts
        self.buildBatchArn = buildBatchArn
        self.buildComplete = buildComplete
        self.buildNumber = buildNumber
        self.buildStatus = buildStatus
        self.cache = cache
        self.currentPhase = currentPhase
        self.debugSession = debugSession
        self.encryptionKey = encryptionKey
        self.endTime = endTime
        self.environment = environment
        self.exportedEnvironmentVariables = exportedEnvironmentVariables
        self.fileSystemLocations = fileSystemLocations
        self.id = id
        self.initiator = initiator
        self.logs = logs
        self.networkInterface = networkInterface
        self.phases = phases
        self.projectName = projectName
        self.queuedTimeoutInMinutes = queuedTimeoutInMinutes
        self.reportArns = reportArns
        self.resolvedSourceVersion = resolvedSourceVersion
        self.secondaryArtifacts = secondaryArtifacts
        self.secondarySourceVersions = secondarySourceVersions
        self.secondarySources = secondarySources
        self.serviceRole = serviceRole
        self.source = source
        self.sourceVersion = sourceVersion
        self.startTime = startTime
        self.timeoutInMinutes = timeoutInMinutes
        self.vpcConfig = vpcConfig
    }

    enum CodingKeys: String, CodingKey {
        case arn
        case artifacts
        case buildBatchArn
        case buildComplete
        case buildNumber
        case buildStatus
        case cache
        case currentPhase
        case debugSession
        case encryptionKey
        case endTime
        case environment
        case exportedEnvironmentVariables
        case fileSystemLocations
        case id
        case initiator
        case logs
        case networkInterface
        case phases
        case projectName
        case queuedTimeoutInMinutes
        case reportArns
        case resolvedSourceVersion
        case secondaryArtifacts
        case secondarySourceVersions
        case secondarySources
        case serviceRole
        case source
        case sourceVersion
        case startTime
        case timeoutInMinutes
        case vpcConfig
    }

    public func validate() throws {
        try arn?.validateAsNonEmptyString()
        try artifacts?.validate()
        try cache?.validate()
        try debugSession?.validate()
        try encryptionKey?.validateAsNonEmptyString()
        try environment?.validate()
        try id?.validateAsNonEmptyString()
        try logs?.validate()
        try networkInterface?.validate()
        try projectName?.validateAsNonEmptyString()
        try resolvedSourceVersion?.validateAsNonEmptyString()
        try secondaryArtifacts?.validateAsBuildArtifactsList()
        try secondarySourceVersions?.validateAsProjectSecondarySourceVersions()
        try secondarySources?.validateAsProjectSources()
        try serviceRole?.validateAsNonEmptyString()
        try source?.validate()
        try sourceVersion?.validateAsNonEmptyString()
        try vpcConfig?.validate()
    }
}

public struct BuildArtifacts: Codable, Equatable {
    public var artifactIdentifier: String?
    public var encryptionDisabled: WrapperBoolean?
    public var location: String?
    public var md5sum: String?
    public var overrideArtifactName: WrapperBoolean?
    public var sha256sum: String?

    public init(artifactIdentifier: String? = nil,
                encryptionDisabled: WrapperBoolean? = nil,
                location: String? = nil,
                md5sum: String? = nil,
                overrideArtifactName: WrapperBoolean? = nil,
                sha256sum: String? = nil) {
        self.artifactIdentifier = artifactIdentifier
        self.encryptionDisabled = encryptionDisabled
        self.location = location
        self.md5sum = md5sum
        self.overrideArtifactName = overrideArtifactName
        self.sha256sum = sha256sum
    }

    enum CodingKeys: String, CodingKey {
        case artifactIdentifier
        case encryptionDisabled
        case location
        case md5sum
        case overrideArtifactName
        case sha256sum
    }

    public func validate() throws {
    }
}

public struct BuildBatch: Codable, Equatable {
    public var arn: NonEmptyString?
    public var artifacts: BuildArtifacts?
    public var buildBatchConfig: ProjectBuildBatchConfig?
    public var buildBatchNumber: WrapperLong?
    public var buildBatchStatus: StatusType?
    public var buildGroups: BuildGroups?
    public var buildTimeoutInMinutes: WrapperInt?
    public var cache: ProjectCache?
    public var complete: Boolean?
    public var currentPhase: String?
    public var encryptionKey: NonEmptyString?
    public var endTime: Timestamp?
    public var environment: ProjectEnvironment?
    public var fileSystemLocations: ProjectFileSystemLocations?
    public var id: NonEmptyString?
    public var initiator: String?
    public var logConfig: LogsConfig?
    public var phases: BuildBatchPhases?
    public var projectName: NonEmptyString?
    public var queuedTimeoutInMinutes: WrapperInt?
    public var resolvedSourceVersion: NonEmptyString?
    public var secondaryArtifacts: BuildArtifactsList?
    public var secondarySourceVersions: ProjectSecondarySourceVersions?
    public var secondarySources: ProjectSources?
    public var serviceRole: NonEmptyString?
    public var source: ProjectSource?
    public var sourceVersion: NonEmptyString?
    public var startTime: Timestamp?
    public var vpcConfig: VpcConfig?

    public init(arn: NonEmptyString? = nil,
                artifacts: BuildArtifacts? = nil,
                buildBatchConfig: ProjectBuildBatchConfig? = nil,
                buildBatchNumber: WrapperLong? = nil,
                buildBatchStatus: StatusType? = nil,
                buildGroups: BuildGroups? = nil,
                buildTimeoutInMinutes: WrapperInt? = nil,
                cache: ProjectCache? = nil,
                complete: Boolean? = nil,
                currentPhase: String? = nil,
                encryptionKey: NonEmptyString? = nil,
                endTime: Timestamp? = nil,
                environment: ProjectEnvironment? = nil,
                fileSystemLocations: ProjectFileSystemLocations? = nil,
                id: NonEmptyString? = nil,
                initiator: String? = nil,
                logConfig: LogsConfig? = nil,
                phases: BuildBatchPhases? = nil,
                projectName: NonEmptyString? = nil,
                queuedTimeoutInMinutes: WrapperInt? = nil,
                resolvedSourceVersion: NonEmptyString? = nil,
                secondaryArtifacts: BuildArtifactsList? = nil,
                secondarySourceVersions: ProjectSecondarySourceVersions? = nil,
                secondarySources: ProjectSources? = nil,
                serviceRole: NonEmptyString? = nil,
                source: ProjectSource? = nil,
                sourceVersion: NonEmptyString? = nil,
                startTime: Timestamp? = nil,
                vpcConfig: VpcConfig? = nil) {
        self.arn = arn
        self.artifacts = artifacts
        self.buildBatchConfig = buildBatchConfig
        self.buildBatchNumber = buildBatchNumber
        self.buildBatchStatus = buildBatchStatus
        self.buildGroups = buildGroups
        self.buildTimeoutInMinutes = buildTimeoutInMinutes
        self.cache = cache
        self.complete = complete
        self.currentPhase = currentPhase
        self.encryptionKey = encryptionKey
        self.endTime = endTime
        self.environment = environment
        self.fileSystemLocations = fileSystemLocations
        self.id = id
        self.initiator = initiator
        self.logConfig = logConfig
        self.phases = phases
        self.projectName = projectName
        self.queuedTimeoutInMinutes = queuedTimeoutInMinutes
        self.resolvedSourceVersion = resolvedSourceVersion
        self.secondaryArtifacts = secondaryArtifacts
        self.secondarySourceVersions = secondarySourceVersions
        self.secondarySources = secondarySources
        self.serviceRole = serviceRole
        self.source = source
        self.sourceVersion = sourceVersion
        self.startTime = startTime
        self.vpcConfig = vpcConfig
    }

    enum CodingKeys: String, CodingKey {
        case arn
        case artifacts
        case buildBatchConfig
        case buildBatchNumber
        case buildBatchStatus
        case buildGroups
        case buildTimeoutInMinutes
        case cache
        case complete
        case currentPhase
        case encryptionKey
        case endTime
        case environment
        case fileSystemLocations
        case id
        case initiator
        case logConfig
        case phases
        case projectName
        case queuedTimeoutInMinutes
        case resolvedSourceVersion
        case secondaryArtifacts
        case secondarySourceVersions
        case secondarySources
        case serviceRole
        case source
        case sourceVersion
        case startTime
        case vpcConfig
    }

    public func validate() throws {
        try arn?.validateAsNonEmptyString()
        try artifacts?.validate()
        try buildBatchConfig?.validate()
        try cache?.validate()
        try encryptionKey?.validateAsNonEmptyString()
        try environment?.validate()
        try id?.validateAsNonEmptyString()
        try logConfig?.validate()
        try projectName?.validateAsNonEmptyString()
        try resolvedSourceVersion?.validateAsNonEmptyString()
        try secondaryArtifacts?.validateAsBuildArtifactsList()
        try secondarySourceVersions?.validateAsProjectSecondarySourceVersions()
        try secondarySources?.validateAsProjectSources()
        try serviceRole?.validateAsNonEmptyString()
        try source?.validate()
        try sourceVersion?.validateAsNonEmptyString()
        try vpcConfig?.validate()
    }
}

public struct BuildBatchFilter: Codable, Equatable {
    public var status: StatusType?

    public init(status: StatusType? = nil) {
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case status
    }

    public func validate() throws {
    }
}

public struct BuildBatchPhase: Codable, Equatable {
    public var contexts: PhaseContexts?
    public var durationInSeconds: WrapperLong?
    public var endTime: Timestamp?
    public var phaseStatus: StatusType?
    public var phaseType: BuildBatchPhaseType?
    public var startTime: Timestamp?

    public init(contexts: PhaseContexts? = nil,
                durationInSeconds: WrapperLong? = nil,
                endTime: Timestamp? = nil,
                phaseStatus: StatusType? = nil,
                phaseType: BuildBatchPhaseType? = nil,
                startTime: Timestamp? = nil) {
        self.contexts = contexts
        self.durationInSeconds = durationInSeconds
        self.endTime = endTime
        self.phaseStatus = phaseStatus
        self.phaseType = phaseType
        self.startTime = startTime
    }

    enum CodingKeys: String, CodingKey {
        case contexts
        case durationInSeconds
        case endTime
        case phaseStatus
        case phaseType
        case startTime
    }

    public func validate() throws {
    }
}

public struct BuildGroup: Codable, Equatable {
    public var currentBuildSummary: BuildSummary?
    public var dependsOn: Identifiers?
    public var identifier: String?
    public var ignoreFailure: Boolean?
    public var priorBuildSummaryList: BuildSummaries?

    public init(currentBuildSummary: BuildSummary? = nil,
                dependsOn: Identifiers? = nil,
                identifier: String? = nil,
                ignoreFailure: Boolean? = nil,
                priorBuildSummaryList: BuildSummaries? = nil) {
        self.currentBuildSummary = currentBuildSummary
        self.dependsOn = dependsOn
        self.identifier = identifier
        self.ignoreFailure = ignoreFailure
        self.priorBuildSummaryList = priorBuildSummaryList
    }

    enum CodingKeys: String, CodingKey {
        case currentBuildSummary
        case dependsOn
        case identifier
        case ignoreFailure
        case priorBuildSummaryList
    }

    public func validate() throws {
        try currentBuildSummary?.validate()
    }
}

public struct BuildNotDeleted: Codable, Equatable {
    public var id: NonEmptyString?
    public var statusCode: String?

    public init(id: NonEmptyString? = nil,
                statusCode: String? = nil) {
        self.id = id
        self.statusCode = statusCode
    }

    enum CodingKeys: String, CodingKey {
        case id
        case statusCode
    }

    public func validate() throws {
        try id?.validateAsNonEmptyString()
    }
}

public struct BuildPhase: Codable, Equatable {
    public var contexts: PhaseContexts?
    public var durationInSeconds: WrapperLong?
    public var endTime: Timestamp?
    public var phaseStatus: StatusType?
    public var phaseType: BuildPhaseType?
    public var startTime: Timestamp?

    public init(contexts: PhaseContexts? = nil,
                durationInSeconds: WrapperLong? = nil,
                endTime: Timestamp? = nil,
                phaseStatus: StatusType? = nil,
                phaseType: BuildPhaseType? = nil,
                startTime: Timestamp? = nil) {
        self.contexts = contexts
        self.durationInSeconds = durationInSeconds
        self.endTime = endTime
        self.phaseStatus = phaseStatus
        self.phaseType = phaseType
        self.startTime = startTime
    }

    enum CodingKeys: String, CodingKey {
        case contexts
        case durationInSeconds
        case endTime
        case phaseStatus
        case phaseType
        case startTime
    }

    public func validate() throws {
    }
}

public struct BuildStatusConfig: Codable, Equatable {
    public var context: String?
    public var targetUrl: String?

    public init(context: String? = nil,
                targetUrl: String? = nil) {
        self.context = context
        self.targetUrl = targetUrl
    }

    enum CodingKeys: String, CodingKey {
        case context
        case targetUrl
    }

    public func validate() throws {
    }
}

public struct BuildSummary: Codable, Equatable {
    public var arn: String?
    public var buildStatus: StatusType?
    public var primaryArtifact: ResolvedArtifact?
    public var requestedOn: Timestamp?
    public var secondaryArtifacts: ResolvedSecondaryArtifacts?

    public init(arn: String? = nil,
                buildStatus: StatusType? = nil,
                primaryArtifact: ResolvedArtifact? = nil,
                requestedOn: Timestamp? = nil,
                secondaryArtifacts: ResolvedSecondaryArtifacts? = nil) {
        self.arn = arn
        self.buildStatus = buildStatus
        self.primaryArtifact = primaryArtifact
        self.requestedOn = requestedOn
        self.secondaryArtifacts = secondaryArtifacts
    }

    enum CodingKeys: String, CodingKey {
        case arn
        case buildStatus
        case primaryArtifact
        case requestedOn
        case secondaryArtifacts
    }

    public func validate() throws {
        try primaryArtifact?.validate()
    }
}

public struct CloudWatchLogsConfig: Codable, Equatable {
    public var groupName: String?
    public var status: LogsConfigStatusType
    public var streamName: String?

    public init(groupName: String? = nil,
                status: LogsConfigStatusType,
                streamName: String? = nil) {
        self.groupName = groupName
        self.status = status
        self.streamName = streamName
    }

    enum CodingKeys: String, CodingKey {
        case groupName
        case status
        case streamName
    }

    public func validate() throws {
    }
}

public struct CodeCoverage: Codable, Equatable {
    public var branchCoveragePercentage: Percentage?
    public var branchesCovered: NonNegativeInt?
    public var branchesMissed: NonNegativeInt?
    public var expired: Timestamp?
    public var filePath: NonEmptyString?
    public var id: NonEmptyString?
    public var lineCoveragePercentage: Percentage?
    public var linesCovered: NonNegativeInt?
    public var linesMissed: NonNegativeInt?
    public var reportARN: NonEmptyString?

    public init(branchCoveragePercentage: Percentage? = nil,
                branchesCovered: NonNegativeInt? = nil,
                branchesMissed: NonNegativeInt? = nil,
                expired: Timestamp? = nil,
                filePath: NonEmptyString? = nil,
                id: NonEmptyString? = nil,
                lineCoveragePercentage: Percentage? = nil,
                linesCovered: NonNegativeInt? = nil,
                linesMissed: NonNegativeInt? = nil,
                reportARN: NonEmptyString? = nil) {
        self.branchCoveragePercentage = branchCoveragePercentage
        self.branchesCovered = branchesCovered
        self.branchesMissed = branchesMissed
        self.expired = expired
        self.filePath = filePath
        self.id = id
        self.lineCoveragePercentage = lineCoveragePercentage
        self.linesCovered = linesCovered
        self.linesMissed = linesMissed
        self.reportARN = reportARN
    }

    enum CodingKeys: String, CodingKey {
        case branchCoveragePercentage
        case branchesCovered
        case branchesMissed
        case expired
        case filePath
        case id
        case lineCoveragePercentage
        case linesCovered
        case linesMissed
        case reportARN
    }

    public func validate() throws {
        try branchCoveragePercentage?.validateAsPercentage()
        try branchesCovered?.validateAsNonNegativeInt()
        try branchesMissed?.validateAsNonNegativeInt()
        try filePath?.validateAsNonEmptyString()
        try id?.validateAsNonEmptyString()
        try lineCoveragePercentage?.validateAsPercentage()
        try linesCovered?.validateAsNonNegativeInt()
        try linesMissed?.validateAsNonNegativeInt()
        try reportARN?.validateAsNonEmptyString()
    }
}

public struct CodeCoverageReportSummary: Codable, Equatable {
    public var branchCoveragePercentage: Percentage?
    public var branchesCovered: NonNegativeInt?
    public var branchesMissed: NonNegativeInt?
    public var lineCoveragePercentage: Percentage?
    public var linesCovered: NonNegativeInt?
    public var linesMissed: NonNegativeInt?

    public init(branchCoveragePercentage: Percentage? = nil,
                branchesCovered: NonNegativeInt? = nil,
                branchesMissed: NonNegativeInt? = nil,
                lineCoveragePercentage: Percentage? = nil,
                linesCovered: NonNegativeInt? = nil,
                linesMissed: NonNegativeInt? = nil) {
        self.branchCoveragePercentage = branchCoveragePercentage
        self.branchesCovered = branchesCovered
        self.branchesMissed = branchesMissed
        self.lineCoveragePercentage = lineCoveragePercentage
        self.linesCovered = linesCovered
        self.linesMissed = linesMissed
    }

    enum CodingKeys: String, CodingKey {
        case branchCoveragePercentage
        case branchesCovered
        case branchesMissed
        case lineCoveragePercentage
        case linesCovered
        case linesMissed
    }

    public func validate() throws {
        try branchCoveragePercentage?.validateAsPercentage()
        try branchesCovered?.validateAsNonNegativeInt()
        try branchesMissed?.validateAsNonNegativeInt()
        try lineCoveragePercentage?.validateAsPercentage()
        try linesCovered?.validateAsNonNegativeInt()
        try linesMissed?.validateAsNonNegativeInt()
    }
}

public struct CreateProjectInput: Codable, Equatable {
    public var artifacts: ProjectArtifacts
    public var badgeEnabled: WrapperBoolean?
    public var buildBatchConfig: ProjectBuildBatchConfig?
    public var cache: ProjectCache?
    public var concurrentBuildLimit: WrapperInt?
    public var description: ProjectDescription?
    public var encryptionKey: NonEmptyString?
    public var environment: ProjectEnvironment
    public var fileSystemLocations: ProjectFileSystemLocations?
    public var logsConfig: LogsConfig?
    public var name: ProjectName
    public var queuedTimeoutInMinutes: TimeOut?
    public var secondaryArtifacts: ProjectArtifactsList?
    public var secondarySourceVersions: ProjectSecondarySourceVersions?
    public var secondarySources: ProjectSources?
    public var serviceRole: NonEmptyString
    public var source: ProjectSource
    public var sourceVersion: String?
    public var tags: TagList?
    public var timeoutInMinutes: TimeOut?
    public var vpcConfig: VpcConfig?

    public init(artifacts: ProjectArtifacts,
                badgeEnabled: WrapperBoolean? = nil,
                buildBatchConfig: ProjectBuildBatchConfig? = nil,
                cache: ProjectCache? = nil,
                concurrentBuildLimit: WrapperInt? = nil,
                description: ProjectDescription? = nil,
                encryptionKey: NonEmptyString? = nil,
                environment: ProjectEnvironment,
                fileSystemLocations: ProjectFileSystemLocations? = nil,
                logsConfig: LogsConfig? = nil,
                name: ProjectName,
                queuedTimeoutInMinutes: TimeOut? = nil,
                secondaryArtifacts: ProjectArtifactsList? = nil,
                secondarySourceVersions: ProjectSecondarySourceVersions? = nil,
                secondarySources: ProjectSources? = nil,
                serviceRole: NonEmptyString,
                source: ProjectSource,
                sourceVersion: String? = nil,
                tags: TagList? = nil,
                timeoutInMinutes: TimeOut? = nil,
                vpcConfig: VpcConfig? = nil) {
        self.artifacts = artifacts
        self.badgeEnabled = badgeEnabled
        self.buildBatchConfig = buildBatchConfig
        self.cache = cache
        self.concurrentBuildLimit = concurrentBuildLimit
        self.description = description
        self.encryptionKey = encryptionKey
        self.environment = environment
        self.fileSystemLocations = fileSystemLocations
        self.logsConfig = logsConfig
        self.name = name
        self.queuedTimeoutInMinutes = queuedTimeoutInMinutes
        self.secondaryArtifacts = secondaryArtifacts
        self.secondarySourceVersions = secondarySourceVersions
        self.secondarySources = secondarySources
        self.serviceRole = serviceRole
        self.source = source
        self.sourceVersion = sourceVersion
        self.tags = tags
        self.timeoutInMinutes = timeoutInMinutes
        self.vpcConfig = vpcConfig
    }

    enum CodingKeys: String, CodingKey {
        case artifacts
        case badgeEnabled
        case buildBatchConfig
        case cache
        case concurrentBuildLimit
        case description
        case encryptionKey
        case environment
        case fileSystemLocations
        case logsConfig
        case name
        case queuedTimeoutInMinutes
        case secondaryArtifacts
        case secondarySourceVersions
        case secondarySources
        case serviceRole
        case source
        case sourceVersion
        case tags
        case timeoutInMinutes
        case vpcConfig
    }

    public func validate() throws {
        try artifacts.validate()
        try buildBatchConfig?.validate()
        try cache?.validate()
        try description?.validateAsProjectDescription()
        try encryptionKey?.validateAsNonEmptyString()
        try environment.validate()
        try logsConfig?.validate()
        try name.validateAsProjectName()
        try queuedTimeoutInMinutes?.validateAsTimeOut()
        try secondaryArtifacts?.validateAsProjectArtifactsList()
        try secondarySourceVersions?.validateAsProjectSecondarySourceVersions()
        try secondarySources?.validateAsProjectSources()
        try serviceRole.validateAsNonEmptyString()
        try source.validate()
        try tags?.validateAsTagList()
        try timeoutInMinutes?.validateAsTimeOut()
        try vpcConfig?.validate()
    }
}

public struct CreateProjectOutput: Codable, Equatable {
    public var project: Project?

    public init(project: Project? = nil) {
        self.project = project
    }

    enum CodingKeys: String, CodingKey {
        case project
    }

    public func validate() throws {
        try project?.validate()
    }
}

public struct CreateReportGroupInput: Codable, Equatable {
    public var exportConfig: ReportExportConfig
    public var name: ReportGroupName
    public var tags: TagList?
    public var type: ReportType

    public init(exportConfig: ReportExportConfig,
                name: ReportGroupName,
                tags: TagList? = nil,
                type: ReportType) {
        self.exportConfig = exportConfig
        self.name = name
        self.tags = tags
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case exportConfig
        case name
        case tags
        case type
    }

    public func validate() throws {
        try exportConfig.validate()
        try name.validateAsReportGroupName()
        try tags?.validateAsTagList()
    }
}

public struct CreateReportGroupOutput: Codable, Equatable {
    public var reportGroup: ReportGroup?

    public init(reportGroup: ReportGroup? = nil) {
        self.reportGroup = reportGroup
    }

    enum CodingKeys: String, CodingKey {
        case reportGroup
    }

    public func validate() throws {
        try reportGroup?.validate()
    }
}

public struct CreateWebhookInput: Codable, Equatable {
    public var branchFilter: String?
    public var buildType: WebhookBuildType?
    public var filterGroups: FilterGroups?
    public var projectName: ProjectName

    public init(branchFilter: String? = nil,
                buildType: WebhookBuildType? = nil,
                filterGroups: FilterGroups? = nil,
                projectName: ProjectName) {
        self.branchFilter = branchFilter
        self.buildType = buildType
        self.filterGroups = filterGroups
        self.projectName = projectName
    }

    enum CodingKeys: String, CodingKey {
        case branchFilter
        case buildType
        case filterGroups
        case projectName
    }

    public func validate() throws {
        try projectName.validateAsProjectName()
    }
}

public struct CreateWebhookOutput: Codable, Equatable {
    public var webhook: Webhook?

    public init(webhook: Webhook? = nil) {
        self.webhook = webhook
    }

    enum CodingKeys: String, CodingKey {
        case webhook
    }

    public func validate() throws {
        try webhook?.validate()
    }
}

public struct DebugSession: Codable, Equatable {
    public var sessionEnabled: WrapperBoolean?
    public var sessionTarget: NonEmptyString?

    public init(sessionEnabled: WrapperBoolean? = nil,
                sessionTarget: NonEmptyString? = nil) {
        self.sessionEnabled = sessionEnabled
        self.sessionTarget = sessionTarget
    }

    enum CodingKeys: String, CodingKey {
        case sessionEnabled
        case sessionTarget
    }

    public func validate() throws {
        try sessionTarget?.validateAsNonEmptyString()
    }
}

public struct DeleteBuildBatchInput: Codable, Equatable {
    public var id: NonEmptyString

    public init(id: NonEmptyString) {
        self.id = id
    }

    enum CodingKeys: String, CodingKey {
        case id
    }

    public func validate() throws {
        try id.validateAsNonEmptyString()
    }
}

public struct DeleteBuildBatchOutput: Codable, Equatable {
    public var buildsDeleted: BuildIds?
    public var buildsNotDeleted: BuildsNotDeleted?
    public var statusCode: String?

    public init(buildsDeleted: BuildIds? = nil,
                buildsNotDeleted: BuildsNotDeleted? = nil,
                statusCode: String? = nil) {
        self.buildsDeleted = buildsDeleted
        self.buildsNotDeleted = buildsNotDeleted
        self.statusCode = statusCode
    }

    enum CodingKeys: String, CodingKey {
        case buildsDeleted
        case buildsNotDeleted
        case statusCode
    }

    public func validate() throws {
        try buildsDeleted?.validateAsBuildIds()
    }
}

public struct DeleteProjectInput: Codable, Equatable {
    public var name: NonEmptyString

    public init(name: NonEmptyString) {
        self.name = name
    }

    enum CodingKeys: String, CodingKey {
        case name
    }

    public func validate() throws {
        try name.validateAsNonEmptyString()
    }
}

public struct DeleteProjectOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DeleteReportGroupInput: Codable, Equatable {
    public var arn: NonEmptyString
    public var deleteReports: Boolean?

    public init(arn: NonEmptyString,
                deleteReports: Boolean? = nil) {
        self.arn = arn
        self.deleteReports = deleteReports
    }

    enum CodingKeys: String, CodingKey {
        case arn
        case deleteReports
    }

    public func validate() throws {
        try arn.validateAsNonEmptyString()
    }
}

public struct DeleteReportGroupOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DeleteReportInput: Codable, Equatable {
    public var arn: NonEmptyString

    public init(arn: NonEmptyString) {
        self.arn = arn
    }

    enum CodingKeys: String, CodingKey {
        case arn
    }

    public func validate() throws {
        try arn.validateAsNonEmptyString()
    }
}

public struct DeleteReportOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DeleteResourcePolicyInput: Codable, Equatable {
    public var resourceArn: NonEmptyString

    public init(resourceArn: NonEmptyString) {
        self.resourceArn = resourceArn
    }

    enum CodingKeys: String, CodingKey {
        case resourceArn
    }

    public func validate() throws {
        try resourceArn.validateAsNonEmptyString()
    }
}

public struct DeleteResourcePolicyOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DeleteSourceCredentialsInput: Codable, Equatable {
    public var arn: NonEmptyString

    public init(arn: NonEmptyString) {
        self.arn = arn
    }

    enum CodingKeys: String, CodingKey {
        case arn
    }

    public func validate() throws {
        try arn.validateAsNonEmptyString()
    }
}

public struct DeleteSourceCredentialsOutput: Codable, Equatable {
    public var arn: NonEmptyString?

    public init(arn: NonEmptyString? = nil) {
        self.arn = arn
    }

    enum CodingKeys: String, CodingKey {
        case arn
    }

    public func validate() throws {
        try arn?.validateAsNonEmptyString()
    }
}

public struct DeleteWebhookInput: Codable, Equatable {
    public var projectName: ProjectName

    public init(projectName: ProjectName) {
        self.projectName = projectName
    }

    enum CodingKeys: String, CodingKey {
        case projectName
    }

    public func validate() throws {
        try projectName.validateAsProjectName()
    }
}

public struct DeleteWebhookOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct DescribeCodeCoveragesInput: Codable, Equatable {
    public var maxLineCoveragePercentage: Percentage?
    public var maxResults: PageSize?
    public var minLineCoveragePercentage: Percentage?
    public var nextToken: String?
    public var reportArn: NonEmptyString
    public var sortBy: ReportCodeCoverageSortByType?
    public var sortOrder: SortOrderType?

    public init(maxLineCoveragePercentage: Percentage? = nil,
                maxResults: PageSize? = nil,
                minLineCoveragePercentage: Percentage? = nil,
                nextToken: String? = nil,
                reportArn: NonEmptyString,
                sortBy: ReportCodeCoverageSortByType? = nil,
                sortOrder: SortOrderType? = nil) {
        self.maxLineCoveragePercentage = maxLineCoveragePercentage
        self.maxResults = maxResults
        self.minLineCoveragePercentage = minLineCoveragePercentage
        self.nextToken = nextToken
        self.reportArn = reportArn
        self.sortBy = sortBy
        self.sortOrder = sortOrder
    }

    enum CodingKeys: String, CodingKey {
        case maxLineCoveragePercentage
        case maxResults
        case minLineCoveragePercentage
        case nextToken
        case reportArn
        case sortBy
        case sortOrder
    }

    public func validate() throws {
        try maxLineCoveragePercentage?.validateAsPercentage()
        try maxResults?.validateAsPageSize()
        try minLineCoveragePercentage?.validateAsPercentage()
        try reportArn.validateAsNonEmptyString()
    }
}

public struct DescribeCodeCoveragesOutput: Codable, Equatable {
    public var codeCoverages: CodeCoverages?
    public var nextToken: String?

    public init(codeCoverages: CodeCoverages? = nil,
                nextToken: String? = nil) {
        self.codeCoverages = codeCoverages
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case codeCoverages
        case nextToken
    }

    public func validate() throws {
    }
}

public struct DescribeTestCasesInput: Codable, Equatable {
    public var filter: TestCaseFilter?
    public var maxResults: PageSize?
    public var nextToken: String?
    public var reportArn: String

    public init(filter: TestCaseFilter? = nil,
                maxResults: PageSize? = nil,
                nextToken: String? = nil,
                reportArn: String) {
        self.filter = filter
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.reportArn = reportArn
    }

    enum CodingKeys: String, CodingKey {
        case filter
        case maxResults
        case nextToken
        case reportArn
    }

    public func validate() throws {
        try filter?.validate()
        try maxResults?.validateAsPageSize()
    }
}

public struct DescribeTestCasesOutput: Codable, Equatable {
    public var nextToken: String?
    public var testCases: TestCases?

    public init(nextToken: String? = nil,
                testCases: TestCases? = nil) {
        self.nextToken = nextToken
        self.testCases = testCases
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case testCases
    }

    public func validate() throws {
    }
}

public struct EnvironmentImage: Codable, Equatable {
    public var description: String?
    public var name: String?
    public var versions: ImageVersions?

    public init(description: String? = nil,
                name: String? = nil,
                versions: ImageVersions? = nil) {
        self.description = description
        self.name = name
        self.versions = versions
    }

    enum CodingKeys: String, CodingKey {
        case description
        case name
        case versions
    }

    public func validate() throws {
    }
}

public struct EnvironmentLanguage: Codable, Equatable {
    public var images: EnvironmentImages?
    public var language: LanguageType?

    public init(images: EnvironmentImages? = nil,
                language: LanguageType? = nil) {
        self.images = images
        self.language = language
    }

    enum CodingKeys: String, CodingKey {
        case images
        case language
    }

    public func validate() throws {
    }
}

public struct EnvironmentPlatform: Codable, Equatable {
    public var languages: EnvironmentLanguages?
    public var platform: PlatformType?

    public init(languages: EnvironmentLanguages? = nil,
                platform: PlatformType? = nil) {
        self.languages = languages
        self.platform = platform
    }

    enum CodingKeys: String, CodingKey {
        case languages
        case platform
    }

    public func validate() throws {
    }
}

public struct EnvironmentVariable: Codable, Equatable {
    public var name: NonEmptyString
    public var type: EnvironmentVariableType?
    public var value: String

    public init(name: NonEmptyString,
                type: EnvironmentVariableType? = nil,
                value: String) {
        self.name = name
        self.type = type
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case name
        case type
        case value
    }

    public func validate() throws {
        try name.validateAsNonEmptyString()
    }
}

public struct ExportedEnvironmentVariable: Codable, Equatable {
    public var name: NonEmptyString?
    public var value: String?

    public init(name: NonEmptyString? = nil,
                value: String? = nil) {
        self.name = name
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case name
        case value
    }

    public func validate() throws {
        try name?.validateAsNonEmptyString()
    }
}

public struct GetReportGroupTrendInput: Codable, Equatable {
    public var numOfReports: PageSize?
    public var reportGroupArn: NonEmptyString
    public var trendField: ReportGroupTrendFieldType

    public init(numOfReports: PageSize? = nil,
                reportGroupArn: NonEmptyString,
                trendField: ReportGroupTrendFieldType) {
        self.numOfReports = numOfReports
        self.reportGroupArn = reportGroupArn
        self.trendField = trendField
    }

    enum CodingKeys: String, CodingKey {
        case numOfReports
        case reportGroupArn
        case trendField
    }

    public func validate() throws {
        try numOfReports?.validateAsPageSize()
        try reportGroupArn.validateAsNonEmptyString()
    }
}

public struct GetReportGroupTrendOutput: Codable, Equatable {
    public var rawData: ReportGroupTrendRawDataList?
    public var stats: ReportGroupTrendStats?

    public init(rawData: ReportGroupTrendRawDataList? = nil,
                stats: ReportGroupTrendStats? = nil) {
        self.rawData = rawData
        self.stats = stats
    }

    enum CodingKeys: String, CodingKey {
        case rawData
        case stats
    }

    public func validate() throws {
        try stats?.validate()
    }
}

public struct GetResourcePolicyInput: Codable, Equatable {
    public var resourceArn: NonEmptyString

    public init(resourceArn: NonEmptyString) {
        self.resourceArn = resourceArn
    }

    enum CodingKeys: String, CodingKey {
        case resourceArn
    }

    public func validate() throws {
        try resourceArn.validateAsNonEmptyString()
    }
}

public struct GetResourcePolicyOutput: Codable, Equatable {
    public var policy: NonEmptyString?

    public init(policy: NonEmptyString? = nil) {
        self.policy = policy
    }

    enum CodingKeys: String, CodingKey {
        case policy
    }

    public func validate() throws {
        try policy?.validateAsNonEmptyString()
    }
}

public struct GitSubmodulesConfig: Codable, Equatable {
    public var fetchSubmodules: WrapperBoolean

    public init(fetchSubmodules: WrapperBoolean) {
        self.fetchSubmodules = fetchSubmodules
    }

    enum CodingKeys: String, CodingKey {
        case fetchSubmodules
    }

    public func validate() throws {
    }
}

public struct ImportSourceCredentialsInput: Codable, Equatable {
    public var authType: AuthType
    public var serverType: ServerType
    public var shouldOverwrite: WrapperBoolean?
    public var token: SensitiveNonEmptyString
    public var username: NonEmptyString?

    public init(authType: AuthType,
                serverType: ServerType,
                shouldOverwrite: WrapperBoolean? = nil,
                token: SensitiveNonEmptyString,
                username: NonEmptyString? = nil) {
        self.authType = authType
        self.serverType = serverType
        self.shouldOverwrite = shouldOverwrite
        self.token = token
        self.username = username
    }

    enum CodingKeys: String, CodingKey {
        case authType
        case serverType
        case shouldOverwrite
        case token
        case username
    }

    public func validate() throws {
        try token.validateAsSensitiveNonEmptyString()
        try username?.validateAsNonEmptyString()
    }
}

public struct ImportSourceCredentialsOutput: Codable, Equatable {
    public var arn: NonEmptyString?

    public init(arn: NonEmptyString? = nil) {
        self.arn = arn
    }

    enum CodingKeys: String, CodingKey {
        case arn
    }

    public func validate() throws {
        try arn?.validateAsNonEmptyString()
    }
}

public struct InvalidInputException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct InvalidateProjectCacheInput: Codable, Equatable {
    public var projectName: NonEmptyString

    public init(projectName: NonEmptyString) {
        self.projectName = projectName
    }

    enum CodingKeys: String, CodingKey {
        case projectName
    }

    public func validate() throws {
        try projectName.validateAsNonEmptyString()
    }
}

public struct InvalidateProjectCacheOutput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ListBuildBatchesForProjectInput: Codable, Equatable {
    public var filter: BuildBatchFilter?
    public var maxResults: PageSize?
    public var nextToken: String?
    public var projectName: NonEmptyString?
    public var sortOrder: SortOrderType?

    public init(filter: BuildBatchFilter? = nil,
                maxResults: PageSize? = nil,
                nextToken: String? = nil,
                projectName: NonEmptyString? = nil,
                sortOrder: SortOrderType? = nil) {
        self.filter = filter
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.projectName = projectName
        self.sortOrder = sortOrder
    }

    enum CodingKeys: String, CodingKey {
        case filter
        case maxResults
        case nextToken
        case projectName
        case sortOrder
    }

    public func validate() throws {
        try filter?.validate()
        try maxResults?.validateAsPageSize()
        try projectName?.validateAsNonEmptyString()
    }
}

public struct ListBuildBatchesForProjectOutput: Codable, Equatable {
    public var ids: BuildBatchIds?
    public var nextToken: String?

    public init(ids: BuildBatchIds? = nil,
                nextToken: String? = nil) {
        self.ids = ids
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case ids
        case nextToken
    }

    public func validate() throws {
        try ids?.validateAsBuildBatchIds()
    }
}

public struct ListBuildBatchesInput: Codable, Equatable {
    public var filter: BuildBatchFilter?
    public var maxResults: PageSize?
    public var nextToken: String?
    public var sortOrder: SortOrderType?

    public init(filter: BuildBatchFilter? = nil,
                maxResults: PageSize? = nil,
                nextToken: String? = nil,
                sortOrder: SortOrderType? = nil) {
        self.filter = filter
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.sortOrder = sortOrder
    }

    enum CodingKeys: String, CodingKey {
        case filter
        case maxResults
        case nextToken
        case sortOrder
    }

    public func validate() throws {
        try filter?.validate()
        try maxResults?.validateAsPageSize()
    }
}

public struct ListBuildBatchesOutput: Codable, Equatable {
    public var ids: BuildBatchIds?
    public var nextToken: String?

    public init(ids: BuildBatchIds? = nil,
                nextToken: String? = nil) {
        self.ids = ids
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case ids
        case nextToken
    }

    public func validate() throws {
        try ids?.validateAsBuildBatchIds()
    }
}

public struct ListBuildsForProjectInput: Codable, Equatable {
    public var nextToken: String?
    public var projectName: NonEmptyString
    public var sortOrder: SortOrderType?

    public init(nextToken: String? = nil,
                projectName: NonEmptyString,
                sortOrder: SortOrderType? = nil) {
        self.nextToken = nextToken
        self.projectName = projectName
        self.sortOrder = sortOrder
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case projectName
        case sortOrder
    }

    public func validate() throws {
        try projectName.validateAsNonEmptyString()
    }
}

public struct ListBuildsForProjectOutput: Codable, Equatable {
    public var ids: BuildIds?
    public var nextToken: String?

    public init(ids: BuildIds? = nil,
                nextToken: String? = nil) {
        self.ids = ids
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case ids
        case nextToken
    }

    public func validate() throws {
        try ids?.validateAsBuildIds()
    }
}

public struct ListBuildsInput: Codable, Equatable {
    public var nextToken: String?
    public var sortOrder: SortOrderType?

    public init(nextToken: String? = nil,
                sortOrder: SortOrderType? = nil) {
        self.nextToken = nextToken
        self.sortOrder = sortOrder
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case sortOrder
    }

    public func validate() throws {
    }
}

public struct ListBuildsOutput: Codable, Equatable {
    public var ids: BuildIds?
    public var nextToken: String?

    public init(ids: BuildIds? = nil,
                nextToken: String? = nil) {
        self.ids = ids
        self.nextToken = nextToken
    }

    enum CodingKeys: String, CodingKey {
        case ids
        case nextToken
    }

    public func validate() throws {
        try ids?.validateAsBuildIds()
    }
}

public struct ListCuratedEnvironmentImagesInput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ListCuratedEnvironmentImagesOutput: Codable, Equatable {
    public var platforms: EnvironmentPlatforms?

    public init(platforms: EnvironmentPlatforms? = nil) {
        self.platforms = platforms
    }

    enum CodingKeys: String, CodingKey {
        case platforms
    }

    public func validate() throws {
    }
}

public struct ListProjectsInput: Codable, Equatable {
    public var nextToken: NonEmptyString?
    public var sortBy: ProjectSortByType?
    public var sortOrder: SortOrderType?

    public init(nextToken: NonEmptyString? = nil,
                sortBy: ProjectSortByType? = nil,
                sortOrder: SortOrderType? = nil) {
        self.nextToken = nextToken
        self.sortBy = sortBy
        self.sortOrder = sortOrder
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case sortBy
        case sortOrder
    }

    public func validate() throws {
        try nextToken?.validateAsNonEmptyString()
    }
}

public struct ListProjectsOutput: Codable, Equatable {
    public var nextToken: String?
    public var projects: ProjectNames?

    public init(nextToken: String? = nil,
                projects: ProjectNames? = nil) {
        self.nextToken = nextToken
        self.projects = projects
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case projects
    }

    public func validate() throws {
        try projects?.validateAsProjectNames()
    }
}

public struct ListReportGroupsInput: Codable, Equatable {
    public var maxResults: PageSize?
    public var nextToken: String?
    public var sortBy: ReportGroupSortByType?
    public var sortOrder: SortOrderType?

    public init(maxResults: PageSize? = nil,
                nextToken: String? = nil,
                sortBy: ReportGroupSortByType? = nil,
                sortOrder: SortOrderType? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.sortBy = sortBy
        self.sortOrder = sortOrder
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
        case sortBy
        case sortOrder
    }

    public func validate() throws {
        try maxResults?.validateAsPageSize()
    }
}

public struct ListReportGroupsOutput: Codable, Equatable {
    public var nextToken: String?
    public var reportGroups: ReportGroupArns?

    public init(nextToken: String? = nil,
                reportGroups: ReportGroupArns? = nil) {
        self.nextToken = nextToken
        self.reportGroups = reportGroups
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case reportGroups
    }

    public func validate() throws {
        try reportGroups?.validateAsReportGroupArns()
    }
}

public struct ListReportsForReportGroupInput: Codable, Equatable {
    public var filter: ReportFilter?
    public var maxResults: PageSize?
    public var nextToken: String?
    public var reportGroupArn: String
    public var sortOrder: SortOrderType?

    public init(filter: ReportFilter? = nil,
                maxResults: PageSize? = nil,
                nextToken: String? = nil,
                reportGroupArn: String,
                sortOrder: SortOrderType? = nil) {
        self.filter = filter
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.reportGroupArn = reportGroupArn
        self.sortOrder = sortOrder
    }

    enum CodingKeys: String, CodingKey {
        case filter
        case maxResults
        case nextToken
        case reportGroupArn
        case sortOrder
    }

    public func validate() throws {
        try filter?.validate()
        try maxResults?.validateAsPageSize()
    }
}

public struct ListReportsForReportGroupOutput: Codable, Equatable {
    public var nextToken: String?
    public var reports: ReportArns?

    public init(nextToken: String? = nil,
                reports: ReportArns? = nil) {
        self.nextToken = nextToken
        self.reports = reports
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case reports
    }

    public func validate() throws {
        try reports?.validateAsReportArns()
    }
}

public struct ListReportsInput: Codable, Equatable {
    public var filter: ReportFilter?
    public var maxResults: PageSize?
    public var nextToken: String?
    public var sortOrder: SortOrderType?

    public init(filter: ReportFilter? = nil,
                maxResults: PageSize? = nil,
                nextToken: String? = nil,
                sortOrder: SortOrderType? = nil) {
        self.filter = filter
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.sortOrder = sortOrder
    }

    enum CodingKeys: String, CodingKey {
        case filter
        case maxResults
        case nextToken
        case sortOrder
    }

    public func validate() throws {
        try filter?.validate()
        try maxResults?.validateAsPageSize()
    }
}

public struct ListReportsOutput: Codable, Equatable {
    public var nextToken: String?
    public var reports: ReportArns?

    public init(nextToken: String? = nil,
                reports: ReportArns? = nil) {
        self.nextToken = nextToken
        self.reports = reports
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case reports
    }

    public func validate() throws {
        try reports?.validateAsReportArns()
    }
}

public struct ListSharedProjectsInput: Codable, Equatable {
    public var maxResults: PageSize?
    public var nextToken: NonEmptyString?
    public var sortBy: SharedResourceSortByType?
    public var sortOrder: SortOrderType?

    public init(maxResults: PageSize? = nil,
                nextToken: NonEmptyString? = nil,
                sortBy: SharedResourceSortByType? = nil,
                sortOrder: SortOrderType? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.sortBy = sortBy
        self.sortOrder = sortOrder
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
        case sortBy
        case sortOrder
    }

    public func validate() throws {
        try maxResults?.validateAsPageSize()
        try nextToken?.validateAsNonEmptyString()
    }
}

public struct ListSharedProjectsOutput: Codable, Equatable {
    public var nextToken: String?
    public var projects: ProjectArns?

    public init(nextToken: String? = nil,
                projects: ProjectArns? = nil) {
        self.nextToken = nextToken
        self.projects = projects
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case projects
    }

    public func validate() throws {
        try projects?.validateAsProjectArns()
    }
}

public struct ListSharedReportGroupsInput: Codable, Equatable {
    public var maxResults: PageSize?
    public var nextToken: String?
    public var sortBy: SharedResourceSortByType?
    public var sortOrder: SortOrderType?

    public init(maxResults: PageSize? = nil,
                nextToken: String? = nil,
                sortBy: SharedResourceSortByType? = nil,
                sortOrder: SortOrderType? = nil) {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.sortBy = sortBy
        self.sortOrder = sortOrder
    }

    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
        case sortBy
        case sortOrder
    }

    public func validate() throws {
        try maxResults?.validateAsPageSize()
    }
}

public struct ListSharedReportGroupsOutput: Codable, Equatable {
    public var nextToken: String?
    public var reportGroups: ReportGroupArns?

    public init(nextToken: String? = nil,
                reportGroups: ReportGroupArns? = nil) {
        self.nextToken = nextToken
        self.reportGroups = reportGroups
    }

    enum CodingKeys: String, CodingKey {
        case nextToken
        case reportGroups
    }

    public func validate() throws {
        try reportGroups?.validateAsReportGroupArns()
    }
}

public struct ListSourceCredentialsInput: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct ListSourceCredentialsOutput: Codable, Equatable {
    public var sourceCredentialsInfos: SourceCredentialsInfos?

    public init(sourceCredentialsInfos: SourceCredentialsInfos? = nil) {
        self.sourceCredentialsInfos = sourceCredentialsInfos
    }

    enum CodingKeys: String, CodingKey {
        case sourceCredentialsInfos
    }

    public func validate() throws {
    }
}

public struct LogsConfig: Codable, Equatable {
    public var cloudWatchLogs: CloudWatchLogsConfig?
    public var s3Logs: S3LogsConfig?

    public init(cloudWatchLogs: CloudWatchLogsConfig? = nil,
                s3Logs: S3LogsConfig? = nil) {
        self.cloudWatchLogs = cloudWatchLogs
        self.s3Logs = s3Logs
    }

    enum CodingKeys: String, CodingKey {
        case cloudWatchLogs
        case s3Logs
    }

    public func validate() throws {
        try cloudWatchLogs?.validate()
        try s3Logs?.validate()
    }
}

public struct LogsLocation: Codable, Equatable {
    public var cloudWatchLogs: CloudWatchLogsConfig?
    public var cloudWatchLogsArn: String?
    public var deepLink: String?
    public var groupName: String?
    public var s3DeepLink: String?
    public var s3Logs: S3LogsConfig?
    public var s3LogsArn: String?
    public var streamName: String?

    public init(cloudWatchLogs: CloudWatchLogsConfig? = nil,
                cloudWatchLogsArn: String? = nil,
                deepLink: String? = nil,
                groupName: String? = nil,
                s3DeepLink: String? = nil,
                s3Logs: S3LogsConfig? = nil,
                s3LogsArn: String? = nil,
                streamName: String? = nil) {
        self.cloudWatchLogs = cloudWatchLogs
        self.cloudWatchLogsArn = cloudWatchLogsArn
        self.deepLink = deepLink
        self.groupName = groupName
        self.s3DeepLink = s3DeepLink
        self.s3Logs = s3Logs
        self.s3LogsArn = s3LogsArn
        self.streamName = streamName
    }

    enum CodingKeys: String, CodingKey {
        case cloudWatchLogs
        case cloudWatchLogsArn
        case deepLink
        case groupName
        case s3DeepLink
        case s3Logs
        case s3LogsArn
        case streamName
    }

    public func validate() throws {
        try cloudWatchLogs?.validate()
        try s3Logs?.validate()
    }
}

public struct NetworkInterface: Codable, Equatable {
    public var networkInterfaceId: NonEmptyString?
    public var subnetId: NonEmptyString?

    public init(networkInterfaceId: NonEmptyString? = nil,
                subnetId: NonEmptyString? = nil) {
        self.networkInterfaceId = networkInterfaceId
        self.subnetId = subnetId
    }

    enum CodingKeys: String, CodingKey {
        case networkInterfaceId
        case subnetId
    }

    public func validate() throws {
        try networkInterfaceId?.validateAsNonEmptyString()
        try subnetId?.validateAsNonEmptyString()
    }
}

public struct OAuthProviderException: Codable, Equatable {

    public init() {
    }

    public func validate() throws {
    }
}

public struct PhaseContext: Codable, Equatable {
    public var message: String?
    public var statusCode: String?

    public init(message: String? = nil,
                statusCode: String? = nil) {
        self.message = message
        self.statusCode = statusCode
    }

    enum CodingKeys: String, CodingKey {
        case message
        case statusCode
    }

    public func validate() throws {
    }
}

public struct Project: Codable, Equatable {
    public var arn: String?
    public var artifacts: ProjectArtifacts?
    public var badge: ProjectBadge?
    public var buildBatchConfig: ProjectBuildBatchConfig?
    public var cache: ProjectCache?
    public var concurrentBuildLimit: WrapperInt?
    public var created: Timestamp?
    public var description: ProjectDescription?
    public var encryptionKey: NonEmptyString?
    public var environment: ProjectEnvironment?
    public var fileSystemLocations: ProjectFileSystemLocations?
    public var lastModified: Timestamp?
    public var logsConfig: LogsConfig?
    public var name: ProjectName?
    public var queuedTimeoutInMinutes: TimeOut?
    public var secondaryArtifacts: ProjectArtifactsList?
    public var secondarySourceVersions: ProjectSecondarySourceVersions?
    public var secondarySources: ProjectSources?
    public var serviceRole: NonEmptyString?
    public var source: ProjectSource?
    public var sourceVersion: String?
    public var tags: TagList?
    public var timeoutInMinutes: TimeOut?
    public var vpcConfig: VpcConfig?
    public var webhook: Webhook?

    public init(arn: String? = nil,
                artifacts: ProjectArtifacts? = nil,
                badge: ProjectBadge? = nil,
                buildBatchConfig: ProjectBuildBatchConfig? = nil,
                cache: ProjectCache? = nil,
                concurrentBuildLimit: WrapperInt? = nil,
                created: Timestamp? = nil,
                description: ProjectDescription? = nil,
                encryptionKey: NonEmptyString? = nil,
                environment: ProjectEnvironment? = nil,
                fileSystemLocations: ProjectFileSystemLocations? = nil,
                lastModified: Timestamp? = nil,
                logsConfig: LogsConfig? = nil,
                name: ProjectName? = nil,
                queuedTimeoutInMinutes: TimeOut? = nil,
                secondaryArtifacts: ProjectArtifactsList? = nil,
                secondarySourceVersions: ProjectSecondarySourceVersions? = nil,
                secondarySources: ProjectSources? = nil,
                serviceRole: NonEmptyString? = nil,
                source: ProjectSource? = nil,
                sourceVersion: String? = nil,
                tags: TagList? = nil,
                timeoutInMinutes: TimeOut? = nil,
                vpcConfig: VpcConfig? = nil,
                webhook: Webhook? = nil) {
        self.arn = arn
        self.artifacts = artifacts
        self.badge = badge
        self.buildBatchConfig = buildBatchConfig
        self.cache = cache
        self.concurrentBuildLimit = concurrentBuildLimit
        self.created = created
        self.description = description
        self.encryptionKey = encryptionKey
        self.environment = environment
        self.fileSystemLocations = fileSystemLocations
        self.lastModified = lastModified
        self.logsConfig = logsConfig
        self.name = name
        self.queuedTimeoutInMinutes = queuedTimeoutInMinutes
        self.secondaryArtifacts = secondaryArtifacts
        self.secondarySourceVersions = secondarySourceVersions
        self.secondarySources = secondarySources
        self.serviceRole = serviceRole
        self.source = source
        self.sourceVersion = sourceVersion
        self.tags = tags
        self.timeoutInMinutes = timeoutInMinutes
        self.vpcConfig = vpcConfig
        self.webhook = webhook
    }

    enum CodingKeys: String, CodingKey {
        case arn
        case artifacts
        case badge
        case buildBatchConfig
        case cache
        case concurrentBuildLimit
        case created
        case description
        case encryptionKey
        case environment
        case fileSystemLocations
        case lastModified
        case logsConfig
        case name
        case queuedTimeoutInMinutes
        case secondaryArtifacts
        case secondarySourceVersions
        case secondarySources
        case serviceRole
        case source
        case sourceVersion
        case tags
        case timeoutInMinutes
        case vpcConfig
        case webhook
    }

    public func validate() throws {
        try artifacts?.validate()
        try badge?.validate()
        try buildBatchConfig?.validate()
        try cache?.validate()
        try description?.validateAsProjectDescription()
        try encryptionKey?.validateAsNonEmptyString()
        try environment?.validate()
        try logsConfig?.validate()
        try name?.validateAsProjectName()
        try queuedTimeoutInMinutes?.validateAsTimeOut()
        try secondaryArtifacts?.validateAsProjectArtifactsList()
        try secondarySourceVersions?.validateAsProjectSecondarySourceVersions()
        try secondarySources?.validateAsProjectSources()
        try serviceRole?.validateAsNonEmptyString()
        try source?.validate()
        try tags?.validateAsTagList()
        try timeoutInMinutes?.validateAsTimeOut()
        try vpcConfig?.validate()
        try webhook?.validate()
    }
}

public struct ProjectArtifacts: Codable, Equatable {
    public var artifactIdentifier: String?
    public var encryptionDisabled: WrapperBoolean?
    public var location: String?
    public var name: String?
    public var namespaceType: ArtifactNamespace?
    public var overrideArtifactName: WrapperBoolean?
    public var packaging: ArtifactPackaging?
    public var path: String?
    public var type: ArtifactsType

    public init(artifactIdentifier: String? = nil,
                encryptionDisabled: WrapperBoolean? = nil,
                location: String? = nil,
                name: String? = nil,
                namespaceType: ArtifactNamespace? = nil,
                overrideArtifactName: WrapperBoolean? = nil,
                packaging: ArtifactPackaging? = nil,
                path: String? = nil,
                type: ArtifactsType) {
        self.artifactIdentifier = artifactIdentifier
        self.encryptionDisabled = encryptionDisabled
        self.location = location
        self.name = name
        self.namespaceType = namespaceType
        self.overrideArtifactName = overrideArtifactName
        self.packaging = packaging
        self.path = path
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case artifactIdentifier
        case encryptionDisabled
        case location
        case name
        case namespaceType
        case overrideArtifactName
        case packaging
        case path
        case type
    }

    public func validate() throws {
    }
}

public struct ProjectBadge: Codable, Equatable {
    public var badgeEnabled: Boolean?
    public var badgeRequestUrl: String?

    public init(badgeEnabled: Boolean? = nil,
                badgeRequestUrl: String? = nil) {
        self.badgeEnabled = badgeEnabled
        self.badgeRequestUrl = badgeRequestUrl
    }

    enum CodingKeys: String, CodingKey {
        case badgeEnabled
        case badgeRequestUrl
    }

    public func validate() throws {
    }
}

public struct ProjectBuildBatchConfig: Codable, Equatable {
    public var combineArtifacts: WrapperBoolean?
    public var restrictions: BatchRestrictions?
    public var serviceRole: NonEmptyString?
    public var timeoutInMins: WrapperInt?

    public init(combineArtifacts: WrapperBoolean? = nil,
                restrictions: BatchRestrictions? = nil,
                serviceRole: NonEmptyString? = nil,
                timeoutInMins: WrapperInt? = nil) {
        self.combineArtifacts = combineArtifacts
        self.restrictions = restrictions
        self.serviceRole = serviceRole
        self.timeoutInMins = timeoutInMins
    }

    enum CodingKeys: String, CodingKey {
        case combineArtifacts
        case restrictions
        case serviceRole
        case timeoutInMins
    }

    public func validate() throws {
        try restrictions?.validate()
        try serviceRole?.validateAsNonEmptyString()
    }
}

public struct ProjectCache: Codable, Equatable {
    public var location: String?
    public var modes: ProjectCacheModes?
    public var type: CacheType

    public init(location: String? = nil,
                modes: ProjectCacheModes? = nil,
                type: CacheType) {
        self.location = location
        self.modes = modes
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case location
        case modes
        case type
    }

    public func validate() throws {
    }
}

public struct ProjectEnvironment: Codable, Equatable {
    public var certificate: String?
    public var computeType: ComputeType
    public var environmentVariables: EnvironmentVariables?
    public var image: NonEmptyString
    public var imagePullCredentialsType: ImagePullCredentialsType?
    public var privilegedMode: WrapperBoolean?
    public var registryCredential: RegistryCredential?
    public var type: EnvironmentType

    public init(certificate: String? = nil,
                computeType: ComputeType,
                environmentVariables: EnvironmentVariables? = nil,
                image: NonEmptyString,
                imagePullCredentialsType: ImagePullCredentialsType? = nil,
                privilegedMode: WrapperBoolean? = nil,
                registryCredential: RegistryCredential? = nil,
                type: EnvironmentType) {
        self.certificate = certificate
        self.computeType = computeType
        self.environmentVariables = environmentVariables
        self.image = image
        self.imagePullCredentialsType = imagePullCredentialsType
        self.privilegedMode = privilegedMode
        self.registryCredential = registryCredential
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case certificate
        case computeType
        case environmentVariables
        case image
        case imagePullCredentialsType
        case privilegedMode
        case registryCredential
        case type
    }

    public func validate() throws {
        try image.validateAsNonEmptyString()
        try registryCredential?.validate()
    }
}

public struct ProjectFileSystemLocation: Codable, Equatable {
    public var identifier: String?
    public var location: String?
    public var mountOptions: String?
    public var mountPoint: String?
    public var type: FileSystemType?

    public init(identifier: String? = nil,
                location: String? = nil,
                mountOptions: String? = nil,
                mountPoint: String? = nil,
                type: FileSystemType? = nil) {
        self.identifier = identifier
        self.location = location
        self.mountOptions = mountOptions
        self.mountPoint = mountPoint
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case identifier
        case location
        case mountOptions
        case mountPoint
        case type
    }

    public func validate() throws {
    }
}

public struct ProjectSource: Codable, Equatable {
    public var auth: SourceAuth?
    public var buildStatusConfig: BuildStatusConfig?
    public var buildspec: String?
    public var gitCloneDepth: GitCloneDepth?
    public var gitSubmodulesConfig: GitSubmodulesConfig?
    public var insecureSsl: WrapperBoolean?
    public var location: String?
    public var reportBuildStatus: WrapperBoolean?
    public var sourceIdentifier: String?
    public var type: SourceType

    public init(auth: SourceAuth? = nil,
                buildStatusConfig: BuildStatusConfig? = nil,
                buildspec: String? = nil,
                gitCloneDepth: GitCloneDepth? = nil,
                gitSubmodulesConfig: GitSubmodulesConfig? = nil,
                insecureSsl: WrapperBoolean? = nil,
                location: String? = nil,
                reportBuildStatus: WrapperBoolean? = nil,
                sourceIdentifier: String? = nil,
                type: SourceType) {
        self.auth = auth
        self.buildStatusConfig = buildStatusConfig
        self.buildspec = buildspec
        self.gitCloneDepth = gitCloneDepth
        self.gitSubmodulesConfig = gitSubmodulesConfig
        self.insecureSsl = insecureSsl
        self.location = location
        self.reportBuildStatus = reportBuildStatus
        self.sourceIdentifier = sourceIdentifier
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case auth
        case buildStatusConfig
        case buildspec
        case gitCloneDepth
        case gitSubmodulesConfig
        case insecureSsl
        case location
        case reportBuildStatus
        case sourceIdentifier
        case type
    }

    public func validate() throws {
        try auth?.validate()
        try buildStatusConfig?.validate()
        try gitCloneDepth?.validateAsGitCloneDepth()
        try gitSubmodulesConfig?.validate()
    }
}

public struct ProjectSourceVersion: Codable, Equatable {
    public var sourceIdentifier: String
    public var sourceVersion: String

    public init(sourceIdentifier: String,
                sourceVersion: String) {
        self.sourceIdentifier = sourceIdentifier
        self.sourceVersion = sourceVersion
    }

    enum CodingKeys: String, CodingKey {
        case sourceIdentifier
        case sourceVersion
    }

    public func validate() throws {
    }
}

public struct PutResourcePolicyInput: Codable, Equatable {
    public var policy: NonEmptyString
    public var resourceArn: NonEmptyString

    public init(policy: NonEmptyString,
                resourceArn: NonEmptyString) {
        self.policy = policy
        self.resourceArn = resourceArn
    }

    enum CodingKeys: String, CodingKey {
        case policy
        case resourceArn
    }

    public func validate() throws {
        try policy.validateAsNonEmptyString()
        try resourceArn.validateAsNonEmptyString()
    }
}

public struct PutResourcePolicyOutput: Codable, Equatable {
    public var resourceArn: NonEmptyString?

    public init(resourceArn: NonEmptyString? = nil) {
        self.resourceArn = resourceArn
    }

    enum CodingKeys: String, CodingKey {
        case resourceArn
    }

    public func validate() throws {
        try resourceArn?.validateAsNonEmptyString()
    }
}

public struct RegistryCredential: Codable, Equatable {
    public var credential: NonEmptyString
    public var credentialProvider: CredentialProviderType

    public init(credential: NonEmptyString,
                credentialProvider: CredentialProviderType) {
        self.credential = credential
        self.credentialProvider = credentialProvider
    }

    enum CodingKeys: String, CodingKey {
        case credential
        case credentialProvider
    }

    public func validate() throws {
        try credential.validateAsNonEmptyString()
    }
}

public struct Report: Codable, Equatable {
    public var arn: NonEmptyString?
    public var codeCoverageSummary: CodeCoverageReportSummary?
    public var created: Timestamp?
    public var executionId: String?
    public var expired: Timestamp?
    public var exportConfig: ReportExportConfig?
    public var name: String?
    public var reportGroupArn: NonEmptyString?
    public var status: ReportStatusType?
    public var testSummary: TestReportSummary?
    public var truncated: WrapperBoolean?
    public var type: ReportType?

    public init(arn: NonEmptyString? = nil,
                codeCoverageSummary: CodeCoverageReportSummary? = nil,
                created: Timestamp? = nil,
                executionId: String? = nil,
                expired: Timestamp? = nil,
                exportConfig: ReportExportConfig? = nil,
                name: String? = nil,
                reportGroupArn: NonEmptyString? = nil,
                status: ReportStatusType? = nil,
                testSummary: TestReportSummary? = nil,
                truncated: WrapperBoolean? = nil,
                type: ReportType? = nil) {
        self.arn = arn
        self.codeCoverageSummary = codeCoverageSummary
        self.created = created
        self.executionId = executionId
        self.expired = expired
        self.exportConfig = exportConfig
        self.name = name
        self.reportGroupArn = reportGroupArn
        self.status = status
        self.testSummary = testSummary
        self.truncated = truncated
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case arn
        case codeCoverageSummary
        case created
        case executionId
        case expired
        case exportConfig
        case name
        case reportGroupArn
        case status
        case testSummary
        case truncated
        case type
    }

    public func validate() throws {
        try arn?.validateAsNonEmptyString()
        try codeCoverageSummary?.validate()
        try exportConfig?.validate()
        try reportGroupArn?.validateAsNonEmptyString()
        try testSummary?.validate()
    }
}

public struct ReportExportConfig: Codable, Equatable {
    public var exportConfigType: ReportExportConfigType?
    public var s3Destination: S3ReportExportConfig?

    public init(exportConfigType: ReportExportConfigType? = nil,
                s3Destination: S3ReportExportConfig? = nil) {
        self.exportConfigType = exportConfigType
        self.s3Destination = s3Destination
    }

    enum CodingKeys: String, CodingKey {
        case exportConfigType
        case s3Destination
    }

    public func validate() throws {
        try s3Destination?.validate()
    }
}

public struct ReportFilter: Codable, Equatable {
    public var status: ReportStatusType?

    public init(status: ReportStatusType? = nil) {
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case status
    }

    public func validate() throws {
    }
}

public struct ReportGroup: Codable, Equatable {
    public var arn: NonEmptyString?
    public var created: Timestamp?
    public var exportConfig: ReportExportConfig?
    public var lastModified: Timestamp?
    public var name: ReportGroupName?
    public var status: ReportGroupStatusType?
    public var tags: TagList?
    public var type: ReportType?

    public init(arn: NonEmptyString? = nil,
                created: Timestamp? = nil,
                exportConfig: ReportExportConfig? = nil,
                lastModified: Timestamp? = nil,
                name: ReportGroupName? = nil,
                status: ReportGroupStatusType? = nil,
                tags: TagList? = nil,
                type: ReportType? = nil) {
        self.arn = arn
        self.created = created
        self.exportConfig = exportConfig
        self.lastModified = lastModified
        self.name = name
        self.status = status
        self.tags = tags
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case arn
        case created
        case exportConfig
        case lastModified
        case name
        case status
        case tags
        case type
    }

    public func validate() throws {
        try arn?.validateAsNonEmptyString()
        try exportConfig?.validate()
        try name?.validateAsReportGroupName()
        try tags?.validateAsTagList()
    }
}

public struct ReportGroupTrendStats: Codable, Equatable {
    public var average: String?
    public var max: String?
    public var min: String?

    public init(average: String? = nil,
                max: String? = nil,
                min: String? = nil) {
        self.average = average
        self.max = max
        self.min = min
    }

    enum CodingKeys: String, CodingKey {
        case average
        case max
        case min
    }

    public func validate() throws {
    }
}

public struct ReportWithRawData: Codable, Equatable {
    public var data: String?
    public var reportArn: NonEmptyString?

    public init(data: String? = nil,
                reportArn: NonEmptyString? = nil) {
        self.data = data
        self.reportArn = reportArn
    }

    enum CodingKeys: String, CodingKey {
        case data
        case reportArn
    }

    public func validate() throws {
        try reportArn?.validateAsNonEmptyString()
    }
}

public struct ResolvedArtifact: Codable, Equatable {
    public var identifier: String?
    public var location: String?
    public var type: ArtifactsType?

    public init(identifier: String? = nil,
                location: String? = nil,
                type: ArtifactsType? = nil) {
        self.identifier = identifier
        self.location = location
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case identifier
        case location
        case type
    }

    public func validate() throws {
    }
}

public struct ResourceAlreadyExistsException: Codable, Equatable {

    public init() {
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

public struct RetryBuildBatchInput: Codable, Equatable {
    public var id: NonEmptyString?
    public var idempotencyToken: String?
    public var retryType: RetryBuildBatchType?

    public init(id: NonEmptyString? = nil,
                idempotencyToken: String? = nil,
                retryType: RetryBuildBatchType? = nil) {
        self.id = id
        self.idempotencyToken = idempotencyToken
        self.retryType = retryType
    }

    enum CodingKeys: String, CodingKey {
        case id
        case idempotencyToken
        case retryType
    }

    public func validate() throws {
        try id?.validateAsNonEmptyString()
    }
}

public struct RetryBuildBatchOutput: Codable, Equatable {
    public var buildBatch: BuildBatch?

    public init(buildBatch: BuildBatch? = nil) {
        self.buildBatch = buildBatch
    }

    enum CodingKeys: String, CodingKey {
        case buildBatch
    }

    public func validate() throws {
        try buildBatch?.validate()
    }
}

public struct RetryBuildInput: Codable, Equatable {
    public var id: NonEmptyString?
    public var idempotencyToken: String?

    public init(id: NonEmptyString? = nil,
                idempotencyToken: String? = nil) {
        self.id = id
        self.idempotencyToken = idempotencyToken
    }

    enum CodingKeys: String, CodingKey {
        case id
        case idempotencyToken
    }

    public func validate() throws {
        try id?.validateAsNonEmptyString()
    }
}

public struct RetryBuildOutput: Codable, Equatable {
    public var build: Build?

    public init(build: Build? = nil) {
        self.build = build
    }

    enum CodingKeys: String, CodingKey {
        case build
    }

    public func validate() throws {
        try build?.validate()
    }
}

public struct S3LogsConfig: Codable, Equatable {
    public var encryptionDisabled: WrapperBoolean?
    public var location: String?
    public var status: LogsConfigStatusType

    public init(encryptionDisabled: WrapperBoolean? = nil,
                location: String? = nil,
                status: LogsConfigStatusType) {
        self.encryptionDisabled = encryptionDisabled
        self.location = location
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case encryptionDisabled
        case location
        case status
    }

    public func validate() throws {
    }
}

public struct S3ReportExportConfig: Codable, Equatable {
    public var bucket: NonEmptyString?
    public var bucketOwner: String?
    public var encryptionDisabled: WrapperBoolean?
    public var encryptionKey: NonEmptyString?
    public var packaging: ReportPackagingType?
    public var path: String?

    public init(bucket: NonEmptyString? = nil,
                bucketOwner: String? = nil,
                encryptionDisabled: WrapperBoolean? = nil,
                encryptionKey: NonEmptyString? = nil,
                packaging: ReportPackagingType? = nil,
                path: String? = nil) {
        self.bucket = bucket
        self.bucketOwner = bucketOwner
        self.encryptionDisabled = encryptionDisabled
        self.encryptionKey = encryptionKey
        self.packaging = packaging
        self.path = path
    }

    enum CodingKeys: String, CodingKey {
        case bucket
        case bucketOwner
        case encryptionDisabled
        case encryptionKey
        case packaging
        case path
    }

    public func validate() throws {
        try bucket?.validateAsNonEmptyString()
        try encryptionKey?.validateAsNonEmptyString()
    }
}

public struct SourceAuth: Codable, Equatable {
    public var resource: String?
    public var type: SourceAuthType

    public init(resource: String? = nil,
                type: SourceAuthType) {
        self.resource = resource
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case resource
        case type
    }

    public func validate() throws {
    }
}

public struct SourceCredentialsInfo: Codable, Equatable {
    public var arn: NonEmptyString?
    public var authType: AuthType?
    public var serverType: ServerType?

    public init(arn: NonEmptyString? = nil,
                authType: AuthType? = nil,
                serverType: ServerType? = nil) {
        self.arn = arn
        self.authType = authType
        self.serverType = serverType
    }

    enum CodingKeys: String, CodingKey {
        case arn
        case authType
        case serverType
    }

    public func validate() throws {
        try arn?.validateAsNonEmptyString()
    }
}

public struct StartBuildBatchInput: Codable, Equatable {
    public var artifactsOverride: ProjectArtifacts?
    public var buildBatchConfigOverride: ProjectBuildBatchConfig?
    public var buildTimeoutInMinutesOverride: TimeOut?
    public var buildspecOverride: String?
    public var cacheOverride: ProjectCache?
    public var certificateOverride: String?
    public var computeTypeOverride: ComputeType?
    public var encryptionKeyOverride: NonEmptyString?
    public var environmentTypeOverride: EnvironmentType?
    public var environmentVariablesOverride: EnvironmentVariables?
    public var gitCloneDepthOverride: GitCloneDepth?
    public var gitSubmodulesConfigOverride: GitSubmodulesConfig?
    public var idempotencyToken: String?
    public var imageOverride: NonEmptyString?
    public var imagePullCredentialsTypeOverride: ImagePullCredentialsType?
    public var insecureSslOverride: WrapperBoolean?
    public var logsConfigOverride: LogsConfig?
    public var privilegedModeOverride: WrapperBoolean?
    public var projectName: NonEmptyString
    public var queuedTimeoutInMinutesOverride: TimeOut?
    public var registryCredentialOverride: RegistryCredential?
    public var reportBuildBatchStatusOverride: WrapperBoolean?
    public var secondaryArtifactsOverride: ProjectArtifactsList?
    public var secondarySourcesOverride: ProjectSources?
    public var secondarySourcesVersionOverride: ProjectSecondarySourceVersions?
    public var serviceRoleOverride: NonEmptyString?
    public var sourceAuthOverride: SourceAuth?
    public var sourceLocationOverride: String?
    public var sourceTypeOverride: SourceType?
    public var sourceVersion: String?

    public init(artifactsOverride: ProjectArtifacts? = nil,
                buildBatchConfigOverride: ProjectBuildBatchConfig? = nil,
                buildTimeoutInMinutesOverride: TimeOut? = nil,
                buildspecOverride: String? = nil,
                cacheOverride: ProjectCache? = nil,
                certificateOverride: String? = nil,
                computeTypeOverride: ComputeType? = nil,
                encryptionKeyOverride: NonEmptyString? = nil,
                environmentTypeOverride: EnvironmentType? = nil,
                environmentVariablesOverride: EnvironmentVariables? = nil,
                gitCloneDepthOverride: GitCloneDepth? = nil,
                gitSubmodulesConfigOverride: GitSubmodulesConfig? = nil,
                idempotencyToken: String? = nil,
                imageOverride: NonEmptyString? = nil,
                imagePullCredentialsTypeOverride: ImagePullCredentialsType? = nil,
                insecureSslOverride: WrapperBoolean? = nil,
                logsConfigOverride: LogsConfig? = nil,
                privilegedModeOverride: WrapperBoolean? = nil,
                projectName: NonEmptyString,
                queuedTimeoutInMinutesOverride: TimeOut? = nil,
                registryCredentialOverride: RegistryCredential? = nil,
                reportBuildBatchStatusOverride: WrapperBoolean? = nil,
                secondaryArtifactsOverride: ProjectArtifactsList? = nil,
                secondarySourcesOverride: ProjectSources? = nil,
                secondarySourcesVersionOverride: ProjectSecondarySourceVersions? = nil,
                serviceRoleOverride: NonEmptyString? = nil,
                sourceAuthOverride: SourceAuth? = nil,
                sourceLocationOverride: String? = nil,
                sourceTypeOverride: SourceType? = nil,
                sourceVersion: String? = nil) {
        self.artifactsOverride = artifactsOverride
        self.buildBatchConfigOverride = buildBatchConfigOverride
        self.buildTimeoutInMinutesOverride = buildTimeoutInMinutesOverride
        self.buildspecOverride = buildspecOverride
        self.cacheOverride = cacheOverride
        self.certificateOverride = certificateOverride
        self.computeTypeOverride = computeTypeOverride
        self.encryptionKeyOverride = encryptionKeyOverride
        self.environmentTypeOverride = environmentTypeOverride
        self.environmentVariablesOverride = environmentVariablesOverride
        self.gitCloneDepthOverride = gitCloneDepthOverride
        self.gitSubmodulesConfigOverride = gitSubmodulesConfigOverride
        self.idempotencyToken = idempotencyToken
        self.imageOverride = imageOverride
        self.imagePullCredentialsTypeOverride = imagePullCredentialsTypeOverride
        self.insecureSslOverride = insecureSslOverride
        self.logsConfigOverride = logsConfigOverride
        self.privilegedModeOverride = privilegedModeOverride
        self.projectName = projectName
        self.queuedTimeoutInMinutesOverride = queuedTimeoutInMinutesOverride
        self.registryCredentialOverride = registryCredentialOverride
        self.reportBuildBatchStatusOverride = reportBuildBatchStatusOverride
        self.secondaryArtifactsOverride = secondaryArtifactsOverride
        self.secondarySourcesOverride = secondarySourcesOverride
        self.secondarySourcesVersionOverride = secondarySourcesVersionOverride
        self.serviceRoleOverride = serviceRoleOverride
        self.sourceAuthOverride = sourceAuthOverride
        self.sourceLocationOverride = sourceLocationOverride
        self.sourceTypeOverride = sourceTypeOverride
        self.sourceVersion = sourceVersion
    }

    enum CodingKeys: String, CodingKey {
        case artifactsOverride
        case buildBatchConfigOverride
        case buildTimeoutInMinutesOverride
        case buildspecOverride
        case cacheOverride
        case certificateOverride
        case computeTypeOverride
        case encryptionKeyOverride
        case environmentTypeOverride
        case environmentVariablesOverride
        case gitCloneDepthOverride
        case gitSubmodulesConfigOverride
        case idempotencyToken
        case imageOverride
        case imagePullCredentialsTypeOverride
        case insecureSslOverride
        case logsConfigOverride
        case privilegedModeOverride
        case projectName
        case queuedTimeoutInMinutesOverride
        case registryCredentialOverride
        case reportBuildBatchStatusOverride
        case secondaryArtifactsOverride
        case secondarySourcesOverride
        case secondarySourcesVersionOverride
        case serviceRoleOverride
        case sourceAuthOverride
        case sourceLocationOverride
        case sourceTypeOverride
        case sourceVersion
    }

    public func validate() throws {
        try artifactsOverride?.validate()
        try buildBatchConfigOverride?.validate()
        try buildTimeoutInMinutesOverride?.validateAsTimeOut()
        try cacheOverride?.validate()
        try encryptionKeyOverride?.validateAsNonEmptyString()
        try gitCloneDepthOverride?.validateAsGitCloneDepth()
        try gitSubmodulesConfigOverride?.validate()
        try imageOverride?.validateAsNonEmptyString()
        try logsConfigOverride?.validate()
        try projectName.validateAsNonEmptyString()
        try queuedTimeoutInMinutesOverride?.validateAsTimeOut()
        try registryCredentialOverride?.validate()
        try secondaryArtifactsOverride?.validateAsProjectArtifactsList()
        try secondarySourcesOverride?.validateAsProjectSources()
        try secondarySourcesVersionOverride?.validateAsProjectSecondarySourceVersions()
        try serviceRoleOverride?.validateAsNonEmptyString()
        try sourceAuthOverride?.validate()
    }
}

public struct StartBuildBatchOutput: Codable, Equatable {
    public var buildBatch: BuildBatch?

    public init(buildBatch: BuildBatch? = nil) {
        self.buildBatch = buildBatch
    }

    enum CodingKeys: String, CodingKey {
        case buildBatch
    }

    public func validate() throws {
        try buildBatch?.validate()
    }
}

public struct StartBuildInput: Codable, Equatable {
    public var artifactsOverride: ProjectArtifacts?
    public var buildStatusConfigOverride: BuildStatusConfig?
    public var buildspecOverride: String?
    public var cacheOverride: ProjectCache?
    public var certificateOverride: String?
    public var computeTypeOverride: ComputeType?
    public var debugSessionEnabled: WrapperBoolean?
    public var encryptionKeyOverride: NonEmptyString?
    public var environmentTypeOverride: EnvironmentType?
    public var environmentVariablesOverride: EnvironmentVariables?
    public var gitCloneDepthOverride: GitCloneDepth?
    public var gitSubmodulesConfigOverride: GitSubmodulesConfig?
    public var idempotencyToken: String?
    public var imageOverride: NonEmptyString?
    public var imagePullCredentialsTypeOverride: ImagePullCredentialsType?
    public var insecureSslOverride: WrapperBoolean?
    public var logsConfigOverride: LogsConfig?
    public var privilegedModeOverride: WrapperBoolean?
    public var projectName: NonEmptyString
    public var queuedTimeoutInMinutesOverride: TimeOut?
    public var registryCredentialOverride: RegistryCredential?
    public var reportBuildStatusOverride: WrapperBoolean?
    public var secondaryArtifactsOverride: ProjectArtifactsList?
    public var secondarySourcesOverride: ProjectSources?
    public var secondarySourcesVersionOverride: ProjectSecondarySourceVersions?
    public var serviceRoleOverride: NonEmptyString?
    public var sourceAuthOverride: SourceAuth?
    public var sourceLocationOverride: String?
    public var sourceTypeOverride: SourceType?
    public var sourceVersion: String?
    public var timeoutInMinutesOverride: TimeOut?

    public init(artifactsOverride: ProjectArtifacts? = nil,
                buildStatusConfigOverride: BuildStatusConfig? = nil,
                buildspecOverride: String? = nil,
                cacheOverride: ProjectCache? = nil,
                certificateOverride: String? = nil,
                computeTypeOverride: ComputeType? = nil,
                debugSessionEnabled: WrapperBoolean? = nil,
                encryptionKeyOverride: NonEmptyString? = nil,
                environmentTypeOverride: EnvironmentType? = nil,
                environmentVariablesOverride: EnvironmentVariables? = nil,
                gitCloneDepthOverride: GitCloneDepth? = nil,
                gitSubmodulesConfigOverride: GitSubmodulesConfig? = nil,
                idempotencyToken: String? = nil,
                imageOverride: NonEmptyString? = nil,
                imagePullCredentialsTypeOverride: ImagePullCredentialsType? = nil,
                insecureSslOverride: WrapperBoolean? = nil,
                logsConfigOverride: LogsConfig? = nil,
                privilegedModeOverride: WrapperBoolean? = nil,
                projectName: NonEmptyString,
                queuedTimeoutInMinutesOverride: TimeOut? = nil,
                registryCredentialOverride: RegistryCredential? = nil,
                reportBuildStatusOverride: WrapperBoolean? = nil,
                secondaryArtifactsOverride: ProjectArtifactsList? = nil,
                secondarySourcesOverride: ProjectSources? = nil,
                secondarySourcesVersionOverride: ProjectSecondarySourceVersions? = nil,
                serviceRoleOverride: NonEmptyString? = nil,
                sourceAuthOverride: SourceAuth? = nil,
                sourceLocationOverride: String? = nil,
                sourceTypeOverride: SourceType? = nil,
                sourceVersion: String? = nil,
                timeoutInMinutesOverride: TimeOut? = nil) {
        self.artifactsOverride = artifactsOverride
        self.buildStatusConfigOverride = buildStatusConfigOverride
        self.buildspecOverride = buildspecOverride
        self.cacheOverride = cacheOverride
        self.certificateOverride = certificateOverride
        self.computeTypeOverride = computeTypeOverride
        self.debugSessionEnabled = debugSessionEnabled
        self.encryptionKeyOverride = encryptionKeyOverride
        self.environmentTypeOverride = environmentTypeOverride
        self.environmentVariablesOverride = environmentVariablesOverride
        self.gitCloneDepthOverride = gitCloneDepthOverride
        self.gitSubmodulesConfigOverride = gitSubmodulesConfigOverride
        self.idempotencyToken = idempotencyToken
        self.imageOverride = imageOverride
        self.imagePullCredentialsTypeOverride = imagePullCredentialsTypeOverride
        self.insecureSslOverride = insecureSslOverride
        self.logsConfigOverride = logsConfigOverride
        self.privilegedModeOverride = privilegedModeOverride
        self.projectName = projectName
        self.queuedTimeoutInMinutesOverride = queuedTimeoutInMinutesOverride
        self.registryCredentialOverride = registryCredentialOverride
        self.reportBuildStatusOverride = reportBuildStatusOverride
        self.secondaryArtifactsOverride = secondaryArtifactsOverride
        self.secondarySourcesOverride = secondarySourcesOverride
        self.secondarySourcesVersionOverride = secondarySourcesVersionOverride
        self.serviceRoleOverride = serviceRoleOverride
        self.sourceAuthOverride = sourceAuthOverride
        self.sourceLocationOverride = sourceLocationOverride
        self.sourceTypeOverride = sourceTypeOverride
        self.sourceVersion = sourceVersion
        self.timeoutInMinutesOverride = timeoutInMinutesOverride
    }

    enum CodingKeys: String, CodingKey {
        case artifactsOverride
        case buildStatusConfigOverride
        case buildspecOverride
        case cacheOverride
        case certificateOverride
        case computeTypeOverride
        case debugSessionEnabled
        case encryptionKeyOverride
        case environmentTypeOverride
        case environmentVariablesOverride
        case gitCloneDepthOverride
        case gitSubmodulesConfigOverride
        case idempotencyToken
        case imageOverride
        case imagePullCredentialsTypeOverride
        case insecureSslOverride
        case logsConfigOverride
        case privilegedModeOverride
        case projectName
        case queuedTimeoutInMinutesOverride
        case registryCredentialOverride
        case reportBuildStatusOverride
        case secondaryArtifactsOverride
        case secondarySourcesOverride
        case secondarySourcesVersionOverride
        case serviceRoleOverride
        case sourceAuthOverride
        case sourceLocationOverride
        case sourceTypeOverride
        case sourceVersion
        case timeoutInMinutesOverride
    }

    public func validate() throws {
        try artifactsOverride?.validate()
        try buildStatusConfigOverride?.validate()
        try cacheOverride?.validate()
        try encryptionKeyOverride?.validateAsNonEmptyString()
        try gitCloneDepthOverride?.validateAsGitCloneDepth()
        try gitSubmodulesConfigOverride?.validate()
        try imageOverride?.validateAsNonEmptyString()
        try logsConfigOverride?.validate()
        try projectName.validateAsNonEmptyString()
        try queuedTimeoutInMinutesOverride?.validateAsTimeOut()
        try registryCredentialOverride?.validate()
        try secondaryArtifactsOverride?.validateAsProjectArtifactsList()
        try secondarySourcesOverride?.validateAsProjectSources()
        try secondarySourcesVersionOverride?.validateAsProjectSecondarySourceVersions()
        try serviceRoleOverride?.validateAsNonEmptyString()
        try sourceAuthOverride?.validate()
        try timeoutInMinutesOverride?.validateAsTimeOut()
    }
}

public struct StartBuildOutput: Codable, Equatable {
    public var build: Build?

    public init(build: Build? = nil) {
        self.build = build
    }

    enum CodingKeys: String, CodingKey {
        case build
    }

    public func validate() throws {
        try build?.validate()
    }
}

public struct StopBuildBatchInput: Codable, Equatable {
    public var id: NonEmptyString

    public init(id: NonEmptyString) {
        self.id = id
    }

    enum CodingKeys: String, CodingKey {
        case id
    }

    public func validate() throws {
        try id.validateAsNonEmptyString()
    }
}

public struct StopBuildBatchOutput: Codable, Equatable {
    public var buildBatch: BuildBatch?

    public init(buildBatch: BuildBatch? = nil) {
        self.buildBatch = buildBatch
    }

    enum CodingKeys: String, CodingKey {
        case buildBatch
    }

    public func validate() throws {
        try buildBatch?.validate()
    }
}

public struct StopBuildInput: Codable, Equatable {
    public var id: NonEmptyString

    public init(id: NonEmptyString) {
        self.id = id
    }

    enum CodingKeys: String, CodingKey {
        case id
    }

    public func validate() throws {
        try id.validateAsNonEmptyString()
    }
}

public struct StopBuildOutput: Codable, Equatable {
    public var build: Build?

    public init(build: Build? = nil) {
        self.build = build
    }

    enum CodingKeys: String, CodingKey {
        case build
    }

    public func validate() throws {
        try build?.validate()
    }
}

public struct Tag: Codable, Equatable {
    public var key: KeyInput?
    public var value: ValueInput?

    public init(key: KeyInput? = nil,
                value: ValueInput? = nil) {
        self.key = key
        self.value = value
    }

    enum CodingKeys: String, CodingKey {
        case key
        case value
    }

    public func validate() throws {
        try key?.validateAsKeyInput()
        try value?.validateAsValueInput()
    }
}

public struct TestCase: Codable, Equatable {
    public var durationInNanoSeconds: WrapperLong?
    public var expired: Timestamp?
    public var message: String?
    public var name: String?
    public var prefix: String?
    public var reportArn: NonEmptyString?
    public var status: String?
    public var testRawDataPath: String?

    public init(durationInNanoSeconds: WrapperLong? = nil,
                expired: Timestamp? = nil,
                message: String? = nil,
                name: String? = nil,
                prefix: String? = nil,
                reportArn: NonEmptyString? = nil,
                status: String? = nil,
                testRawDataPath: String? = nil) {
        self.durationInNanoSeconds = durationInNanoSeconds
        self.expired = expired
        self.message = message
        self.name = name
        self.prefix = prefix
        self.reportArn = reportArn
        self.status = status
        self.testRawDataPath = testRawDataPath
    }

    enum CodingKeys: String, CodingKey {
        case durationInNanoSeconds
        case expired
        case message
        case name
        case prefix
        case reportArn
        case status
        case testRawDataPath
    }

    public func validate() throws {
        try reportArn?.validateAsNonEmptyString()
    }
}

public struct TestCaseFilter: Codable, Equatable {
    public var keyword: String?
    public var status: String?

    public init(keyword: String? = nil,
                status: String? = nil) {
        self.keyword = keyword
        self.status = status
    }

    enum CodingKeys: String, CodingKey {
        case keyword
        case status
    }

    public func validate() throws {
    }
}

public struct TestReportSummary: Codable, Equatable {
    public var durationInNanoSeconds: WrapperLong
    public var statusCounts: ReportStatusCounts
    public var total: WrapperInt

    public init(durationInNanoSeconds: WrapperLong,
                statusCounts: ReportStatusCounts,
                total: WrapperInt) {
        self.durationInNanoSeconds = durationInNanoSeconds
        self.statusCounts = statusCounts
        self.total = total
    }

    enum CodingKeys: String, CodingKey {
        case durationInNanoSeconds
        case statusCounts
        case total
    }

    public func validate() throws {
    }
}

public struct UpdateProjectInput: Codable, Equatable {
    public var artifacts: ProjectArtifacts?
    public var badgeEnabled: WrapperBoolean?
    public var buildBatchConfig: ProjectBuildBatchConfig?
    public var cache: ProjectCache?
    public var concurrentBuildLimit: WrapperInt?
    public var description: ProjectDescription?
    public var encryptionKey: NonEmptyString?
    public var environment: ProjectEnvironment?
    public var fileSystemLocations: ProjectFileSystemLocations?
    public var logsConfig: LogsConfig?
    public var name: NonEmptyString
    public var queuedTimeoutInMinutes: TimeOut?
    public var secondaryArtifacts: ProjectArtifactsList?
    public var secondarySourceVersions: ProjectSecondarySourceVersions?
    public var secondarySources: ProjectSources?
    public var serviceRole: NonEmptyString?
    public var source: ProjectSource?
    public var sourceVersion: String?
    public var tags: TagList?
    public var timeoutInMinutes: TimeOut?
    public var vpcConfig: VpcConfig?

    public init(artifacts: ProjectArtifacts? = nil,
                badgeEnabled: WrapperBoolean? = nil,
                buildBatchConfig: ProjectBuildBatchConfig? = nil,
                cache: ProjectCache? = nil,
                concurrentBuildLimit: WrapperInt? = nil,
                description: ProjectDescription? = nil,
                encryptionKey: NonEmptyString? = nil,
                environment: ProjectEnvironment? = nil,
                fileSystemLocations: ProjectFileSystemLocations? = nil,
                logsConfig: LogsConfig? = nil,
                name: NonEmptyString,
                queuedTimeoutInMinutes: TimeOut? = nil,
                secondaryArtifacts: ProjectArtifactsList? = nil,
                secondarySourceVersions: ProjectSecondarySourceVersions? = nil,
                secondarySources: ProjectSources? = nil,
                serviceRole: NonEmptyString? = nil,
                source: ProjectSource? = nil,
                sourceVersion: String? = nil,
                tags: TagList? = nil,
                timeoutInMinutes: TimeOut? = nil,
                vpcConfig: VpcConfig? = nil) {
        self.artifacts = artifacts
        self.badgeEnabled = badgeEnabled
        self.buildBatchConfig = buildBatchConfig
        self.cache = cache
        self.concurrentBuildLimit = concurrentBuildLimit
        self.description = description
        self.encryptionKey = encryptionKey
        self.environment = environment
        self.fileSystemLocations = fileSystemLocations
        self.logsConfig = logsConfig
        self.name = name
        self.queuedTimeoutInMinutes = queuedTimeoutInMinutes
        self.secondaryArtifacts = secondaryArtifacts
        self.secondarySourceVersions = secondarySourceVersions
        self.secondarySources = secondarySources
        self.serviceRole = serviceRole
        self.source = source
        self.sourceVersion = sourceVersion
        self.tags = tags
        self.timeoutInMinutes = timeoutInMinutes
        self.vpcConfig = vpcConfig
    }

    enum CodingKeys: String, CodingKey {
        case artifacts
        case badgeEnabled
        case buildBatchConfig
        case cache
        case concurrentBuildLimit
        case description
        case encryptionKey
        case environment
        case fileSystemLocations
        case logsConfig
        case name
        case queuedTimeoutInMinutes
        case secondaryArtifacts
        case secondarySourceVersions
        case secondarySources
        case serviceRole
        case source
        case sourceVersion
        case tags
        case timeoutInMinutes
        case vpcConfig
    }

    public func validate() throws {
        try artifacts?.validate()
        try buildBatchConfig?.validate()
        try cache?.validate()
        try description?.validateAsProjectDescription()
        try encryptionKey?.validateAsNonEmptyString()
        try environment?.validate()
        try logsConfig?.validate()
        try name.validateAsNonEmptyString()
        try queuedTimeoutInMinutes?.validateAsTimeOut()
        try secondaryArtifacts?.validateAsProjectArtifactsList()
        try secondarySourceVersions?.validateAsProjectSecondarySourceVersions()
        try secondarySources?.validateAsProjectSources()
        try serviceRole?.validateAsNonEmptyString()
        try source?.validate()
        try tags?.validateAsTagList()
        try timeoutInMinutes?.validateAsTimeOut()
        try vpcConfig?.validate()
    }
}

public struct UpdateProjectOutput: Codable, Equatable {
    public var project: Project?

    public init(project: Project? = nil) {
        self.project = project
    }

    enum CodingKeys: String, CodingKey {
        case project
    }

    public func validate() throws {
        try project?.validate()
    }
}

public struct UpdateReportGroupInput: Codable, Equatable {
    public var arn: NonEmptyString
    public var exportConfig: ReportExportConfig?
    public var tags: TagList?

    public init(arn: NonEmptyString,
                exportConfig: ReportExportConfig? = nil,
                tags: TagList? = nil) {
        self.arn = arn
        self.exportConfig = exportConfig
        self.tags = tags
    }

    enum CodingKeys: String, CodingKey {
        case arn
        case exportConfig
        case tags
    }

    public func validate() throws {
        try arn.validateAsNonEmptyString()
        try exportConfig?.validate()
        try tags?.validateAsTagList()
    }
}

public struct UpdateReportGroupOutput: Codable, Equatable {
    public var reportGroup: ReportGroup?

    public init(reportGroup: ReportGroup? = nil) {
        self.reportGroup = reportGroup
    }

    enum CodingKeys: String, CodingKey {
        case reportGroup
    }

    public func validate() throws {
        try reportGroup?.validate()
    }
}

public struct UpdateWebhookInput: Codable, Equatable {
    public var branchFilter: String?
    public var buildType: WebhookBuildType?
    public var filterGroups: FilterGroups?
    public var projectName: ProjectName
    public var rotateSecret: Boolean?

    public init(branchFilter: String? = nil,
                buildType: WebhookBuildType? = nil,
                filterGroups: FilterGroups? = nil,
                projectName: ProjectName,
                rotateSecret: Boolean? = nil) {
        self.branchFilter = branchFilter
        self.buildType = buildType
        self.filterGroups = filterGroups
        self.projectName = projectName
        self.rotateSecret = rotateSecret
    }

    enum CodingKeys: String, CodingKey {
        case branchFilter
        case buildType
        case filterGroups
        case projectName
        case rotateSecret
    }

    public func validate() throws {
        try projectName.validateAsProjectName()
    }
}

public struct UpdateWebhookOutput: Codable, Equatable {
    public var webhook: Webhook?

    public init(webhook: Webhook? = nil) {
        self.webhook = webhook
    }

    enum CodingKeys: String, CodingKey {
        case webhook
    }

    public func validate() throws {
        try webhook?.validate()
    }
}

public struct VpcConfig: Codable, Equatable {
    public var securityGroupIds: SecurityGroupIds?
    public var subnets: Subnets?
    public var vpcId: NonEmptyString?

    public init(securityGroupIds: SecurityGroupIds? = nil,
                subnets: Subnets? = nil,
                vpcId: NonEmptyString? = nil) {
        self.securityGroupIds = securityGroupIds
        self.subnets = subnets
        self.vpcId = vpcId
    }

    enum CodingKeys: String, CodingKey {
        case securityGroupIds
        case subnets
        case vpcId
    }

    public func validate() throws {
        try securityGroupIds?.validateAsSecurityGroupIds()
        try subnets?.validateAsSubnets()
        try vpcId?.validateAsNonEmptyString()
    }
}

public struct Webhook: Codable, Equatable {
    public var branchFilter: String?
    public var buildType: WebhookBuildType?
    public var filterGroups: FilterGroups?
    public var lastModifiedSecret: Timestamp?
    public var payloadUrl: NonEmptyString?
    public var secret: NonEmptyString?
    public var url: NonEmptyString?

    public init(branchFilter: String? = nil,
                buildType: WebhookBuildType? = nil,
                filterGroups: FilterGroups? = nil,
                lastModifiedSecret: Timestamp? = nil,
                payloadUrl: NonEmptyString? = nil,
                secret: NonEmptyString? = nil,
                url: NonEmptyString? = nil) {
        self.branchFilter = branchFilter
        self.buildType = buildType
        self.filterGroups = filterGroups
        self.lastModifiedSecret = lastModifiedSecret
        self.payloadUrl = payloadUrl
        self.secret = secret
        self.url = url
    }

    enum CodingKeys: String, CodingKey {
        case branchFilter
        case buildType
        case filterGroups
        case lastModifiedSecret
        case payloadUrl
        case secret
        case url
    }

    public func validate() throws {
        try payloadUrl?.validateAsNonEmptyString()
        try secret?.validateAsNonEmptyString()
        try url?.validateAsNonEmptyString()
    }
}

public struct WebhookFilter: Codable, Equatable {
    public var excludeMatchedPattern: WrapperBoolean?
    public var pattern: String
    public var type: WebhookFilterType

    public init(excludeMatchedPattern: WrapperBoolean? = nil,
                pattern: String,
                type: WebhookFilterType) {
        self.excludeMatchedPattern = excludeMatchedPattern
        self.pattern = pattern
        self.type = type
    }

    enum CodingKeys: String, CodingKey {
        case excludeMatchedPattern
        case pattern
        case type
    }

    public func validate() throws {
    }
}
