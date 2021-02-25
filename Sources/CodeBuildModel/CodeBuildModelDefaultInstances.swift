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
// CodeBuildModelDefaultInstances.swift
// CodeBuildModel
//

import Foundation

public extension AccountLimitExceededException {
    /**
     Default instance of the AccountLimitExceededException structure.
     */
    static let __default: CodeBuildModel.AccountLimitExceededException = {
        let defaultInstance = CodeBuildModel.AccountLimitExceededException()

        return defaultInstance
    }()
}

public extension BatchDeleteBuildsInput {
    /**
     Default instance of the BatchDeleteBuildsInput structure.
     */
    static let __default: CodeBuildModel.BatchDeleteBuildsInput = {
        let defaultInstance = CodeBuildModel.BatchDeleteBuildsInput(
            ids: ["0"])

        return defaultInstance
    }()
}

public extension BatchDeleteBuildsOutput {
    /**
     Default instance of the BatchDeleteBuildsOutput structure.
     */
    static let __default: CodeBuildModel.BatchDeleteBuildsOutput = {
        let defaultInstance = CodeBuildModel.BatchDeleteBuildsOutput(
            buildsDeleted: nil,
            buildsNotDeleted: nil)

        return defaultInstance
    }()
}

public extension BatchGetBuildBatchesInput {
    /**
     Default instance of the BatchGetBuildBatchesInput structure.
     */
    static let __default: CodeBuildModel.BatchGetBuildBatchesInput = {
        let defaultInstance = CodeBuildModel.BatchGetBuildBatchesInput(
            ids: [])

        return defaultInstance
    }()
}

public extension BatchGetBuildBatchesOutput {
    /**
     Default instance of the BatchGetBuildBatchesOutput structure.
     */
    static let __default: CodeBuildModel.BatchGetBuildBatchesOutput = {
        let defaultInstance = CodeBuildModel.BatchGetBuildBatchesOutput(
            buildBatches: nil,
            buildBatchesNotFound: nil)

        return defaultInstance
    }()
}

public extension BatchGetBuildsInput {
    /**
     Default instance of the BatchGetBuildsInput structure.
     */
    static let __default: CodeBuildModel.BatchGetBuildsInput = {
        let defaultInstance = CodeBuildModel.BatchGetBuildsInput(
            ids: ["0"])

        return defaultInstance
    }()
}

public extension BatchGetBuildsOutput {
    /**
     Default instance of the BatchGetBuildsOutput structure.
     */
    static let __default: CodeBuildModel.BatchGetBuildsOutput = {
        let defaultInstance = CodeBuildModel.BatchGetBuildsOutput(
            builds: nil,
            buildsNotFound: nil)

        return defaultInstance
    }()
}

public extension BatchGetProjectsInput {
    /**
     Default instance of the BatchGetProjectsInput structure.
     */
    static let __default: CodeBuildModel.BatchGetProjectsInput = {
        let defaultInstance = CodeBuildModel.BatchGetProjectsInput(
            names: ["0"])

        return defaultInstance
    }()
}

public extension BatchGetProjectsOutput {
    /**
     Default instance of the BatchGetProjectsOutput structure.
     */
    static let __default: CodeBuildModel.BatchGetProjectsOutput = {
        let defaultInstance = CodeBuildModel.BatchGetProjectsOutput(
            projects: nil,
            projectsNotFound: nil)

        return defaultInstance
    }()
}

public extension BatchGetReportGroupsInput {
    /**
     Default instance of the BatchGetReportGroupsInput structure.
     */
    static let __default: CodeBuildModel.BatchGetReportGroupsInput = {
        let defaultInstance = CodeBuildModel.BatchGetReportGroupsInput(
            reportGroupArns: ["0"])

        return defaultInstance
    }()
}

public extension BatchGetReportGroupsOutput {
    /**
     Default instance of the BatchGetReportGroupsOutput structure.
     */
    static let __default: CodeBuildModel.BatchGetReportGroupsOutput = {
        let defaultInstance = CodeBuildModel.BatchGetReportGroupsOutput(
            reportGroups: nil,
            reportGroupsNotFound: nil)

        return defaultInstance
    }()
}

public extension BatchGetReportsInput {
    /**
     Default instance of the BatchGetReportsInput structure.
     */
    static let __default: CodeBuildModel.BatchGetReportsInput = {
        let defaultInstance = CodeBuildModel.BatchGetReportsInput(
            reportArns: ["0"])

        return defaultInstance
    }()
}

public extension BatchGetReportsOutput {
    /**
     Default instance of the BatchGetReportsOutput structure.
     */
    static let __default: CodeBuildModel.BatchGetReportsOutput = {
        let defaultInstance = CodeBuildModel.BatchGetReportsOutput(
            reports: nil,
            reportsNotFound: nil)

        return defaultInstance
    }()
}

public extension BatchRestrictions {
    /**
     Default instance of the BatchRestrictions structure.
     */
    static let __default: CodeBuildModel.BatchRestrictions = {
        let defaultInstance = CodeBuildModel.BatchRestrictions(
            computeTypesAllowed: nil,
            maximumBuildsAllowed: nil)

        return defaultInstance
    }()
}

public extension Build {
    /**
     Default instance of the Build structure.
     */
    static let __default: CodeBuildModel.Build = {
        let defaultInstance = CodeBuildModel.Build(
            arn: nil,
            artifacts: nil,
            buildBatchArn: nil,
            buildComplete: nil,
            buildNumber: nil,
            buildStatus: nil,
            cache: nil,
            currentPhase: nil,
            debugSession: nil,
            encryptionKey: nil,
            endTime: nil,
            environment: nil,
            exportedEnvironmentVariables: nil,
            fileSystemLocations: nil,
            id: nil,
            initiator: nil,
            logs: nil,
            networkInterface: nil,
            phases: nil,
            projectName: nil,
            queuedTimeoutInMinutes: nil,
            reportArns: nil,
            resolvedSourceVersion: nil,
            secondaryArtifacts: nil,
            secondarySourceVersions: nil,
            secondarySources: nil,
            serviceRole: nil,
            source: nil,
            sourceVersion: nil,
            startTime: nil,
            timeoutInMinutes: nil,
            vpcConfig: nil)

        return defaultInstance
    }()
}

public extension BuildArtifacts {
    /**
     Default instance of the BuildArtifacts structure.
     */
    static let __default: CodeBuildModel.BuildArtifacts = {
        let defaultInstance = CodeBuildModel.BuildArtifacts(
            artifactIdentifier: nil,
            encryptionDisabled: nil,
            location: nil,
            md5sum: nil,
            overrideArtifactName: nil,
            sha256sum: nil)

        return defaultInstance
    }()
}

public extension BuildBatch {
    /**
     Default instance of the BuildBatch structure.
     */
    static let __default: CodeBuildModel.BuildBatch = {
        let defaultInstance = CodeBuildModel.BuildBatch(
            arn: nil,
            artifacts: nil,
            buildBatchConfig: nil,
            buildBatchNumber: nil,
            buildBatchStatus: nil,
            buildGroups: nil,
            buildTimeoutInMinutes: nil,
            cache: nil,
            complete: nil,
            currentPhase: nil,
            encryptionKey: nil,
            endTime: nil,
            environment: nil,
            fileSystemLocations: nil,
            id: nil,
            initiator: nil,
            logConfig: nil,
            phases: nil,
            projectName: nil,
            queuedTimeoutInMinutes: nil,
            resolvedSourceVersion: nil,
            secondaryArtifacts: nil,
            secondarySourceVersions: nil,
            secondarySources: nil,
            serviceRole: nil,
            source: nil,
            sourceVersion: nil,
            startTime: nil,
            vpcConfig: nil)

        return defaultInstance
    }()
}

public extension BuildBatchFilter {
    /**
     Default instance of the BuildBatchFilter structure.
     */
    static let __default: CodeBuildModel.BuildBatchFilter = {
        let defaultInstance = CodeBuildModel.BuildBatchFilter(
            status: nil)

        return defaultInstance
    }()
}

public extension BuildBatchPhase {
    /**
     Default instance of the BuildBatchPhase structure.
     */
    static let __default: CodeBuildModel.BuildBatchPhase = {
        let defaultInstance = CodeBuildModel.BuildBatchPhase(
            contexts: nil,
            durationInSeconds: nil,
            endTime: nil,
            phaseStatus: nil,
            phaseType: nil,
            startTime: nil)

        return defaultInstance
    }()
}

public extension BuildGroup {
    /**
     Default instance of the BuildGroup structure.
     */
    static let __default: CodeBuildModel.BuildGroup = {
        let defaultInstance = CodeBuildModel.BuildGroup(
            currentBuildSummary: nil,
            dependsOn: nil,
            identifier: nil,
            ignoreFailure: nil,
            priorBuildSummaryList: nil)

        return defaultInstance
    }()
}

public extension BuildNotDeleted {
    /**
     Default instance of the BuildNotDeleted structure.
     */
    static let __default: CodeBuildModel.BuildNotDeleted = {
        let defaultInstance = CodeBuildModel.BuildNotDeleted(
            id: nil,
            statusCode: nil)

        return defaultInstance
    }()
}

public extension BuildPhase {
    /**
     Default instance of the BuildPhase structure.
     */
    static let __default: CodeBuildModel.BuildPhase = {
        let defaultInstance = CodeBuildModel.BuildPhase(
            contexts: nil,
            durationInSeconds: nil,
            endTime: nil,
            phaseStatus: nil,
            phaseType: nil,
            startTime: nil)

        return defaultInstance
    }()
}

public extension BuildStatusConfig {
    /**
     Default instance of the BuildStatusConfig structure.
     */
    static let __default: CodeBuildModel.BuildStatusConfig = {
        let defaultInstance = CodeBuildModel.BuildStatusConfig(
            context: nil,
            targetUrl: nil)

        return defaultInstance
    }()
}

public extension BuildSummary {
    /**
     Default instance of the BuildSummary structure.
     */
    static let __default: CodeBuildModel.BuildSummary = {
        let defaultInstance = CodeBuildModel.BuildSummary(
            arn: nil,
            buildStatus: nil,
            primaryArtifact: nil,
            requestedOn: nil,
            secondaryArtifacts: nil)

        return defaultInstance
    }()
}

public extension CloudWatchLogsConfig {
    /**
     Default instance of the CloudWatchLogsConfig structure.
     */
    static let __default: CodeBuildModel.CloudWatchLogsConfig = {
        let defaultInstance = CodeBuildModel.CloudWatchLogsConfig(
            groupName: nil,
            status: .__default,
            streamName: nil)

        return defaultInstance
    }()
}

public extension CodeCoverage {
    /**
     Default instance of the CodeCoverage structure.
     */
    static let __default: CodeBuildModel.CodeCoverage = {
        let defaultInstance = CodeBuildModel.CodeCoverage(
            branchCoveragePercentage: nil,
            branchesCovered: nil,
            branchesMissed: nil,
            expired: nil,
            filePath: nil,
            id: nil,
            lineCoveragePercentage: nil,
            linesCovered: nil,
            linesMissed: nil,
            reportARN: nil)

        return defaultInstance
    }()
}

public extension CodeCoverageReportSummary {
    /**
     Default instance of the CodeCoverageReportSummary structure.
     */
    static let __default: CodeBuildModel.CodeCoverageReportSummary = {
        let defaultInstance = CodeBuildModel.CodeCoverageReportSummary(
            branchCoveragePercentage: nil,
            branchesCovered: nil,
            branchesMissed: nil,
            lineCoveragePercentage: nil,
            linesCovered: nil,
            linesMissed: nil)

        return defaultInstance
    }()
}

public extension CreateProjectInput {
    /**
     Default instance of the CreateProjectInput structure.
     */
    static let __default: CodeBuildModel.CreateProjectInput = {
        let defaultInstance = CodeBuildModel.CreateProjectInput(
            artifacts: ProjectArtifacts.__default,
            badgeEnabled: nil,
            buildBatchConfig: nil,
            cache: nil,
            concurrentBuildLimit: nil,
            description: nil,
            encryptionKey: nil,
            environment: ProjectEnvironment.__default,
            fileSystemLocations: nil,
            logsConfig: nil,
            name: "01",
            queuedTimeoutInMinutes: nil,
            secondaryArtifacts: nil,
            secondarySourceVersions: nil,
            secondarySources: nil,
            serviceRole: "0",
            source: ProjectSource.__default,
            sourceVersion: nil,
            tags: nil,
            timeoutInMinutes: nil,
            vpcConfig: nil)

        return defaultInstance
    }()
}

public extension CreateProjectOutput {
    /**
     Default instance of the CreateProjectOutput structure.
     */
    static let __default: CodeBuildModel.CreateProjectOutput = {
        let defaultInstance = CodeBuildModel.CreateProjectOutput(
            project: nil)

        return defaultInstance
    }()
}

public extension CreateReportGroupInput {
    /**
     Default instance of the CreateReportGroupInput structure.
     */
    static let __default: CodeBuildModel.CreateReportGroupInput = {
        let defaultInstance = CodeBuildModel.CreateReportGroupInput(
            exportConfig: ReportExportConfig.__default,
            name: "01",
            tags: nil,
            type: .__default)

        return defaultInstance
    }()
}

public extension CreateReportGroupOutput {
    /**
     Default instance of the CreateReportGroupOutput structure.
     */
    static let __default: CodeBuildModel.CreateReportGroupOutput = {
        let defaultInstance = CodeBuildModel.CreateReportGroupOutput(
            reportGroup: nil)

        return defaultInstance
    }()
}

public extension CreateWebhookInput {
    /**
     Default instance of the CreateWebhookInput structure.
     */
    static let __default: CodeBuildModel.CreateWebhookInput = {
        let defaultInstance = CodeBuildModel.CreateWebhookInput(
            branchFilter: nil,
            buildType: nil,
            filterGroups: nil,
            projectName: "01")

        return defaultInstance
    }()
}

public extension CreateWebhookOutput {
    /**
     Default instance of the CreateWebhookOutput structure.
     */
    static let __default: CodeBuildModel.CreateWebhookOutput = {
        let defaultInstance = CodeBuildModel.CreateWebhookOutput(
            webhook: nil)

        return defaultInstance
    }()
}

public extension DebugSession {
    /**
     Default instance of the DebugSession structure.
     */
    static let __default: CodeBuildModel.DebugSession = {
        let defaultInstance = CodeBuildModel.DebugSession(
            sessionEnabled: nil,
            sessionTarget: nil)

        return defaultInstance
    }()
}

public extension DeleteBuildBatchInput {
    /**
     Default instance of the DeleteBuildBatchInput structure.
     */
    static let __default: CodeBuildModel.DeleteBuildBatchInput = {
        let defaultInstance = CodeBuildModel.DeleteBuildBatchInput(
            id: "0")

        return defaultInstance
    }()
}

public extension DeleteBuildBatchOutput {
    /**
     Default instance of the DeleteBuildBatchOutput structure.
     */
    static let __default: CodeBuildModel.DeleteBuildBatchOutput = {
        let defaultInstance = CodeBuildModel.DeleteBuildBatchOutput(
            buildsDeleted: nil,
            buildsNotDeleted: nil,
            statusCode: nil)

        return defaultInstance
    }()
}

public extension DeleteProjectInput {
    /**
     Default instance of the DeleteProjectInput structure.
     */
    static let __default: CodeBuildModel.DeleteProjectInput = {
        let defaultInstance = CodeBuildModel.DeleteProjectInput(
            name: "0")

        return defaultInstance
    }()
}

public extension DeleteProjectOutput {
    /**
     Default instance of the DeleteProjectOutput structure.
     */
    static let __default: CodeBuildModel.DeleteProjectOutput = {
        let defaultInstance = CodeBuildModel.DeleteProjectOutput()

        return defaultInstance
    }()
}

public extension DeleteReportGroupInput {
    /**
     Default instance of the DeleteReportGroupInput structure.
     */
    static let __default: CodeBuildModel.DeleteReportGroupInput = {
        let defaultInstance = CodeBuildModel.DeleteReportGroupInput(
            arn: "0",
            deleteReports: nil)

        return defaultInstance
    }()
}

public extension DeleteReportGroupOutput {
    /**
     Default instance of the DeleteReportGroupOutput structure.
     */
    static let __default: CodeBuildModel.DeleteReportGroupOutput = {
        let defaultInstance = CodeBuildModel.DeleteReportGroupOutput()

        return defaultInstance
    }()
}

public extension DeleteReportInput {
    /**
     Default instance of the DeleteReportInput structure.
     */
    static let __default: CodeBuildModel.DeleteReportInput = {
        let defaultInstance = CodeBuildModel.DeleteReportInput(
            arn: "0")

        return defaultInstance
    }()
}

public extension DeleteReportOutput {
    /**
     Default instance of the DeleteReportOutput structure.
     */
    static let __default: CodeBuildModel.DeleteReportOutput = {
        let defaultInstance = CodeBuildModel.DeleteReportOutput()

        return defaultInstance
    }()
}

public extension DeleteResourcePolicyInput {
    /**
     Default instance of the DeleteResourcePolicyInput structure.
     */
    static let __default: CodeBuildModel.DeleteResourcePolicyInput = {
        let defaultInstance = CodeBuildModel.DeleteResourcePolicyInput(
            resourceArn: "0")

        return defaultInstance
    }()
}

public extension DeleteResourcePolicyOutput {
    /**
     Default instance of the DeleteResourcePolicyOutput structure.
     */
    static let __default: CodeBuildModel.DeleteResourcePolicyOutput = {
        let defaultInstance = CodeBuildModel.DeleteResourcePolicyOutput()

        return defaultInstance
    }()
}

public extension DeleteSourceCredentialsInput {
    /**
     Default instance of the DeleteSourceCredentialsInput structure.
     */
    static let __default: CodeBuildModel.DeleteSourceCredentialsInput = {
        let defaultInstance = CodeBuildModel.DeleteSourceCredentialsInput(
            arn: "0")

        return defaultInstance
    }()
}

public extension DeleteSourceCredentialsOutput {
    /**
     Default instance of the DeleteSourceCredentialsOutput structure.
     */
    static let __default: CodeBuildModel.DeleteSourceCredentialsOutput = {
        let defaultInstance = CodeBuildModel.DeleteSourceCredentialsOutput(
            arn: nil)

        return defaultInstance
    }()
}

public extension DeleteWebhookInput {
    /**
     Default instance of the DeleteWebhookInput structure.
     */
    static let __default: CodeBuildModel.DeleteWebhookInput = {
        let defaultInstance = CodeBuildModel.DeleteWebhookInput(
            projectName: "01")

        return defaultInstance
    }()
}

public extension DeleteWebhookOutput {
    /**
     Default instance of the DeleteWebhookOutput structure.
     */
    static let __default: CodeBuildModel.DeleteWebhookOutput = {
        let defaultInstance = CodeBuildModel.DeleteWebhookOutput()

        return defaultInstance
    }()
}

public extension DescribeCodeCoveragesInput {
    /**
     Default instance of the DescribeCodeCoveragesInput structure.
     */
    static let __default: CodeBuildModel.DescribeCodeCoveragesInput = {
        let defaultInstance = CodeBuildModel.DescribeCodeCoveragesInput(
            maxLineCoveragePercentage: nil,
            maxResults: nil,
            minLineCoveragePercentage: nil,
            nextToken: nil,
            reportArn: "0",
            sortBy: nil,
            sortOrder: nil)

        return defaultInstance
    }()
}

public extension DescribeCodeCoveragesOutput {
    /**
     Default instance of the DescribeCodeCoveragesOutput structure.
     */
    static let __default: CodeBuildModel.DescribeCodeCoveragesOutput = {
        let defaultInstance = CodeBuildModel.DescribeCodeCoveragesOutput(
            codeCoverages: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension DescribeTestCasesInput {
    /**
     Default instance of the DescribeTestCasesInput structure.
     */
    static let __default: CodeBuildModel.DescribeTestCasesInput = {
        let defaultInstance = CodeBuildModel.DescribeTestCasesInput(
            filter: nil,
            maxResults: nil,
            nextToken: nil,
            reportArn: "value")

        return defaultInstance
    }()
}

public extension DescribeTestCasesOutput {
    /**
     Default instance of the DescribeTestCasesOutput structure.
     */
    static let __default: CodeBuildModel.DescribeTestCasesOutput = {
        let defaultInstance = CodeBuildModel.DescribeTestCasesOutput(
            nextToken: nil,
            testCases: nil)

        return defaultInstance
    }()
}

public extension EnvironmentImage {
    /**
     Default instance of the EnvironmentImage structure.
     */
    static let __default: CodeBuildModel.EnvironmentImage = {
        let defaultInstance = CodeBuildModel.EnvironmentImage(
            description: nil,
            name: nil,
            versions: nil)

        return defaultInstance
    }()
}

public extension EnvironmentLanguage {
    /**
     Default instance of the EnvironmentLanguage structure.
     */
    static let __default: CodeBuildModel.EnvironmentLanguage = {
        let defaultInstance = CodeBuildModel.EnvironmentLanguage(
            images: nil,
            language: nil)

        return defaultInstance
    }()
}

public extension EnvironmentPlatform {
    /**
     Default instance of the EnvironmentPlatform structure.
     */
    static let __default: CodeBuildModel.EnvironmentPlatform = {
        let defaultInstance = CodeBuildModel.EnvironmentPlatform(
            languages: nil,
            platform: nil)

        return defaultInstance
    }()
}

public extension EnvironmentVariable {
    /**
     Default instance of the EnvironmentVariable structure.
     */
    static let __default: CodeBuildModel.EnvironmentVariable = {
        let defaultInstance = CodeBuildModel.EnvironmentVariable(
            name: "0",
            type: nil,
            value: "value")

        return defaultInstance
    }()
}

public extension ExportedEnvironmentVariable {
    /**
     Default instance of the ExportedEnvironmentVariable structure.
     */
    static let __default: CodeBuildModel.ExportedEnvironmentVariable = {
        let defaultInstance = CodeBuildModel.ExportedEnvironmentVariable(
            name: nil,
            value: nil)

        return defaultInstance
    }()
}

public extension GetReportGroupTrendInput {
    /**
     Default instance of the GetReportGroupTrendInput structure.
     */
    static let __default: CodeBuildModel.GetReportGroupTrendInput = {
        let defaultInstance = CodeBuildModel.GetReportGroupTrendInput(
            numOfReports: nil,
            reportGroupArn: "0",
            trendField: .__default)

        return defaultInstance
    }()
}

public extension GetReportGroupTrendOutput {
    /**
     Default instance of the GetReportGroupTrendOutput structure.
     */
    static let __default: CodeBuildModel.GetReportGroupTrendOutput = {
        let defaultInstance = CodeBuildModel.GetReportGroupTrendOutput(
            rawData: nil,
            stats: nil)

        return defaultInstance
    }()
}

public extension GetResourcePolicyInput {
    /**
     Default instance of the GetResourcePolicyInput structure.
     */
    static let __default: CodeBuildModel.GetResourcePolicyInput = {
        let defaultInstance = CodeBuildModel.GetResourcePolicyInput(
            resourceArn: "0")

        return defaultInstance
    }()
}

public extension GetResourcePolicyOutput {
    /**
     Default instance of the GetResourcePolicyOutput structure.
     */
    static let __default: CodeBuildModel.GetResourcePolicyOutput = {
        let defaultInstance = CodeBuildModel.GetResourcePolicyOutput(
            policy: nil)

        return defaultInstance
    }()
}

public extension GitSubmodulesConfig {
    /**
     Default instance of the GitSubmodulesConfig structure.
     */
    static let __default: CodeBuildModel.GitSubmodulesConfig = {
        let defaultInstance = CodeBuildModel.GitSubmodulesConfig(
            fetchSubmodules: false)

        return defaultInstance
    }()
}

public extension ImportSourceCredentialsInput {
    /**
     Default instance of the ImportSourceCredentialsInput structure.
     */
    static let __default: CodeBuildModel.ImportSourceCredentialsInput = {
        let defaultInstance = CodeBuildModel.ImportSourceCredentialsInput(
            authType: .__default,
            serverType: .__default,
            shouldOverwrite: nil,
            token: "0",
            username: nil)

        return defaultInstance
    }()
}

public extension ImportSourceCredentialsOutput {
    /**
     Default instance of the ImportSourceCredentialsOutput structure.
     */
    static let __default: CodeBuildModel.ImportSourceCredentialsOutput = {
        let defaultInstance = CodeBuildModel.ImportSourceCredentialsOutput(
            arn: nil)

        return defaultInstance
    }()
}

public extension InvalidInputException {
    /**
     Default instance of the InvalidInputException structure.
     */
    static let __default: CodeBuildModel.InvalidInputException = {
        let defaultInstance = CodeBuildModel.InvalidInputException()

        return defaultInstance
    }()
}

public extension InvalidateProjectCacheInput {
    /**
     Default instance of the InvalidateProjectCacheInput structure.
     */
    static let __default: CodeBuildModel.InvalidateProjectCacheInput = {
        let defaultInstance = CodeBuildModel.InvalidateProjectCacheInput(
            projectName: "0")

        return defaultInstance
    }()
}

public extension InvalidateProjectCacheOutput {
    /**
     Default instance of the InvalidateProjectCacheOutput structure.
     */
    static let __default: CodeBuildModel.InvalidateProjectCacheOutput = {
        let defaultInstance = CodeBuildModel.InvalidateProjectCacheOutput()

        return defaultInstance
    }()
}

public extension ListBuildBatchesForProjectInput {
    /**
     Default instance of the ListBuildBatchesForProjectInput structure.
     */
    static let __default: CodeBuildModel.ListBuildBatchesForProjectInput = {
        let defaultInstance = CodeBuildModel.ListBuildBatchesForProjectInput(
            filter: nil,
            maxResults: nil,
            nextToken: nil,
            projectName: nil,
            sortOrder: nil)

        return defaultInstance
    }()
}

public extension ListBuildBatchesForProjectOutput {
    /**
     Default instance of the ListBuildBatchesForProjectOutput structure.
     */
    static let __default: CodeBuildModel.ListBuildBatchesForProjectOutput = {
        let defaultInstance = CodeBuildModel.ListBuildBatchesForProjectOutput(
            ids: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListBuildBatchesInput {
    /**
     Default instance of the ListBuildBatchesInput structure.
     */
    static let __default: CodeBuildModel.ListBuildBatchesInput = {
        let defaultInstance = CodeBuildModel.ListBuildBatchesInput(
            filter: nil,
            maxResults: nil,
            nextToken: nil,
            sortOrder: nil)

        return defaultInstance
    }()
}

public extension ListBuildBatchesOutput {
    /**
     Default instance of the ListBuildBatchesOutput structure.
     */
    static let __default: CodeBuildModel.ListBuildBatchesOutput = {
        let defaultInstance = CodeBuildModel.ListBuildBatchesOutput(
            ids: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListBuildsForProjectInput {
    /**
     Default instance of the ListBuildsForProjectInput structure.
     */
    static let __default: CodeBuildModel.ListBuildsForProjectInput = {
        let defaultInstance = CodeBuildModel.ListBuildsForProjectInput(
            nextToken: nil,
            projectName: "0",
            sortOrder: nil)

        return defaultInstance
    }()
}

public extension ListBuildsForProjectOutput {
    /**
     Default instance of the ListBuildsForProjectOutput structure.
     */
    static let __default: CodeBuildModel.ListBuildsForProjectOutput = {
        let defaultInstance = CodeBuildModel.ListBuildsForProjectOutput(
            ids: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListBuildsInput {
    /**
     Default instance of the ListBuildsInput structure.
     */
    static let __default: CodeBuildModel.ListBuildsInput = {
        let defaultInstance = CodeBuildModel.ListBuildsInput(
            nextToken: nil,
            sortOrder: nil)

        return defaultInstance
    }()
}

public extension ListBuildsOutput {
    /**
     Default instance of the ListBuildsOutput structure.
     */
    static let __default: CodeBuildModel.ListBuildsOutput = {
        let defaultInstance = CodeBuildModel.ListBuildsOutput(
            ids: nil,
            nextToken: nil)

        return defaultInstance
    }()
}

public extension ListCuratedEnvironmentImagesInput {
    /**
     Default instance of the ListCuratedEnvironmentImagesInput structure.
     */
    static let __default: CodeBuildModel.ListCuratedEnvironmentImagesInput = {
        let defaultInstance = CodeBuildModel.ListCuratedEnvironmentImagesInput()

        return defaultInstance
    }()
}

public extension ListCuratedEnvironmentImagesOutput {
    /**
     Default instance of the ListCuratedEnvironmentImagesOutput structure.
     */
    static let __default: CodeBuildModel.ListCuratedEnvironmentImagesOutput = {
        let defaultInstance = CodeBuildModel.ListCuratedEnvironmentImagesOutput(
            platforms: nil)

        return defaultInstance
    }()
}

public extension ListProjectsInput {
    /**
     Default instance of the ListProjectsInput structure.
     */
    static let __default: CodeBuildModel.ListProjectsInput = {
        let defaultInstance = CodeBuildModel.ListProjectsInput(
            nextToken: nil,
            sortBy: nil,
            sortOrder: nil)

        return defaultInstance
    }()
}

public extension ListProjectsOutput {
    /**
     Default instance of the ListProjectsOutput structure.
     */
    static let __default: CodeBuildModel.ListProjectsOutput = {
        let defaultInstance = CodeBuildModel.ListProjectsOutput(
            nextToken: nil,
            projects: nil)

        return defaultInstance
    }()
}

public extension ListReportGroupsInput {
    /**
     Default instance of the ListReportGroupsInput structure.
     */
    static let __default: CodeBuildModel.ListReportGroupsInput = {
        let defaultInstance = CodeBuildModel.ListReportGroupsInput(
            maxResults: nil,
            nextToken: nil,
            sortBy: nil,
            sortOrder: nil)

        return defaultInstance
    }()
}

public extension ListReportGroupsOutput {
    /**
     Default instance of the ListReportGroupsOutput structure.
     */
    static let __default: CodeBuildModel.ListReportGroupsOutput = {
        let defaultInstance = CodeBuildModel.ListReportGroupsOutput(
            nextToken: nil,
            reportGroups: nil)

        return defaultInstance
    }()
}

public extension ListReportsForReportGroupInput {
    /**
     Default instance of the ListReportsForReportGroupInput structure.
     */
    static let __default: CodeBuildModel.ListReportsForReportGroupInput = {
        let defaultInstance = CodeBuildModel.ListReportsForReportGroupInput(
            filter: nil,
            maxResults: nil,
            nextToken: nil,
            reportGroupArn: "value",
            sortOrder: nil)

        return defaultInstance
    }()
}

public extension ListReportsForReportGroupOutput {
    /**
     Default instance of the ListReportsForReportGroupOutput structure.
     */
    static let __default: CodeBuildModel.ListReportsForReportGroupOutput = {
        let defaultInstance = CodeBuildModel.ListReportsForReportGroupOutput(
            nextToken: nil,
            reports: nil)

        return defaultInstance
    }()
}

public extension ListReportsInput {
    /**
     Default instance of the ListReportsInput structure.
     */
    static let __default: CodeBuildModel.ListReportsInput = {
        let defaultInstance = CodeBuildModel.ListReportsInput(
            filter: nil,
            maxResults: nil,
            nextToken: nil,
            sortOrder: nil)

        return defaultInstance
    }()
}

public extension ListReportsOutput {
    /**
     Default instance of the ListReportsOutput structure.
     */
    static let __default: CodeBuildModel.ListReportsOutput = {
        let defaultInstance = CodeBuildModel.ListReportsOutput(
            nextToken: nil,
            reports: nil)

        return defaultInstance
    }()
}

public extension ListSharedProjectsInput {
    /**
     Default instance of the ListSharedProjectsInput structure.
     */
    static let __default: CodeBuildModel.ListSharedProjectsInput = {
        let defaultInstance = CodeBuildModel.ListSharedProjectsInput(
            maxResults: nil,
            nextToken: nil,
            sortBy: nil,
            sortOrder: nil)

        return defaultInstance
    }()
}

public extension ListSharedProjectsOutput {
    /**
     Default instance of the ListSharedProjectsOutput structure.
     */
    static let __default: CodeBuildModel.ListSharedProjectsOutput = {
        let defaultInstance = CodeBuildModel.ListSharedProjectsOutput(
            nextToken: nil,
            projects: nil)

        return defaultInstance
    }()
}

public extension ListSharedReportGroupsInput {
    /**
     Default instance of the ListSharedReportGroupsInput structure.
     */
    static let __default: CodeBuildModel.ListSharedReportGroupsInput = {
        let defaultInstance = CodeBuildModel.ListSharedReportGroupsInput(
            maxResults: nil,
            nextToken: nil,
            sortBy: nil,
            sortOrder: nil)

        return defaultInstance
    }()
}

public extension ListSharedReportGroupsOutput {
    /**
     Default instance of the ListSharedReportGroupsOutput structure.
     */
    static let __default: CodeBuildModel.ListSharedReportGroupsOutput = {
        let defaultInstance = CodeBuildModel.ListSharedReportGroupsOutput(
            nextToken: nil,
            reportGroups: nil)

        return defaultInstance
    }()
}

public extension ListSourceCredentialsInput {
    /**
     Default instance of the ListSourceCredentialsInput structure.
     */
    static let __default: CodeBuildModel.ListSourceCredentialsInput = {
        let defaultInstance = CodeBuildModel.ListSourceCredentialsInput()

        return defaultInstance
    }()
}

public extension ListSourceCredentialsOutput {
    /**
     Default instance of the ListSourceCredentialsOutput structure.
     */
    static let __default: CodeBuildModel.ListSourceCredentialsOutput = {
        let defaultInstance = CodeBuildModel.ListSourceCredentialsOutput(
            sourceCredentialsInfos: nil)

        return defaultInstance
    }()
}

public extension LogsConfig {
    /**
     Default instance of the LogsConfig structure.
     */
    static let __default: CodeBuildModel.LogsConfig = {
        let defaultInstance = CodeBuildModel.LogsConfig(
            cloudWatchLogs: nil,
            s3Logs: nil)

        return defaultInstance
    }()
}

public extension LogsLocation {
    /**
     Default instance of the LogsLocation structure.
     */
    static let __default: CodeBuildModel.LogsLocation = {
        let defaultInstance = CodeBuildModel.LogsLocation(
            cloudWatchLogs: nil,
            cloudWatchLogsArn: nil,
            deepLink: nil,
            groupName: nil,
            s3DeepLink: nil,
            s3Logs: nil,
            s3LogsArn: nil,
            streamName: nil)

        return defaultInstance
    }()
}

public extension NetworkInterface {
    /**
     Default instance of the NetworkInterface structure.
     */
    static let __default: CodeBuildModel.NetworkInterface = {
        let defaultInstance = CodeBuildModel.NetworkInterface(
            networkInterfaceId: nil,
            subnetId: nil)

        return defaultInstance
    }()
}

public extension OAuthProviderException {
    /**
     Default instance of the OAuthProviderException structure.
     */
    static let __default: CodeBuildModel.OAuthProviderException = {
        let defaultInstance = CodeBuildModel.OAuthProviderException()

        return defaultInstance
    }()
}

public extension PhaseContext {
    /**
     Default instance of the PhaseContext structure.
     */
    static let __default: CodeBuildModel.PhaseContext = {
        let defaultInstance = CodeBuildModel.PhaseContext(
            message: nil,
            statusCode: nil)

        return defaultInstance
    }()
}

public extension Project {
    /**
     Default instance of the Project structure.
     */
    static let __default: CodeBuildModel.Project = {
        let defaultInstance = CodeBuildModel.Project(
            arn: nil,
            artifacts: nil,
            badge: nil,
            buildBatchConfig: nil,
            cache: nil,
            concurrentBuildLimit: nil,
            created: nil,
            description: nil,
            encryptionKey: nil,
            environment: nil,
            fileSystemLocations: nil,
            lastModified: nil,
            logsConfig: nil,
            name: nil,
            queuedTimeoutInMinutes: nil,
            secondaryArtifacts: nil,
            secondarySourceVersions: nil,
            secondarySources: nil,
            serviceRole: nil,
            source: nil,
            sourceVersion: nil,
            tags: nil,
            timeoutInMinutes: nil,
            vpcConfig: nil,
            webhook: nil)

        return defaultInstance
    }()
}

public extension ProjectArtifacts {
    /**
     Default instance of the ProjectArtifacts structure.
     */
    static let __default: CodeBuildModel.ProjectArtifacts = {
        let defaultInstance = CodeBuildModel.ProjectArtifacts(
            artifactIdentifier: nil,
            encryptionDisabled: nil,
            location: nil,
            name: nil,
            namespaceType: nil,
            overrideArtifactName: nil,
            packaging: nil,
            path: nil,
            type: .__default)

        return defaultInstance
    }()
}

public extension ProjectBadge {
    /**
     Default instance of the ProjectBadge structure.
     */
    static let __default: CodeBuildModel.ProjectBadge = {
        let defaultInstance = CodeBuildModel.ProjectBadge(
            badgeEnabled: nil,
            badgeRequestUrl: nil)

        return defaultInstance
    }()
}

public extension ProjectBuildBatchConfig {
    /**
     Default instance of the ProjectBuildBatchConfig structure.
     */
    static let __default: CodeBuildModel.ProjectBuildBatchConfig = {
        let defaultInstance = CodeBuildModel.ProjectBuildBatchConfig(
            combineArtifacts: nil,
            restrictions: nil,
            serviceRole: nil,
            timeoutInMins: nil)

        return defaultInstance
    }()
}

public extension ProjectCache {
    /**
     Default instance of the ProjectCache structure.
     */
    static let __default: CodeBuildModel.ProjectCache = {
        let defaultInstance = CodeBuildModel.ProjectCache(
            location: nil,
            modes: nil,
            type: .__default)

        return defaultInstance
    }()
}

public extension ProjectEnvironment {
    /**
     Default instance of the ProjectEnvironment structure.
     */
    static let __default: CodeBuildModel.ProjectEnvironment = {
        let defaultInstance = CodeBuildModel.ProjectEnvironment(
            certificate: nil,
            computeType: .__default,
            environmentVariables: nil,
            image: "0",
            imagePullCredentialsType: nil,
            privilegedMode: nil,
            registryCredential: nil,
            type: .__default)

        return defaultInstance
    }()
}

public extension ProjectFileSystemLocation {
    /**
     Default instance of the ProjectFileSystemLocation structure.
     */
    static let __default: CodeBuildModel.ProjectFileSystemLocation = {
        let defaultInstance = CodeBuildModel.ProjectFileSystemLocation(
            identifier: nil,
            location: nil,
            mountOptions: nil,
            mountPoint: nil,
            type: nil)

        return defaultInstance
    }()
}

public extension ProjectSource {
    /**
     Default instance of the ProjectSource structure.
     */
    static let __default: CodeBuildModel.ProjectSource = {
        let defaultInstance = CodeBuildModel.ProjectSource(
            auth: nil,
            buildStatusConfig: nil,
            buildspec: nil,
            gitCloneDepth: nil,
            gitSubmodulesConfig: nil,
            insecureSsl: nil,
            location: nil,
            reportBuildStatus: nil,
            sourceIdentifier: nil,
            type: .__default)

        return defaultInstance
    }()
}

public extension ProjectSourceVersion {
    /**
     Default instance of the ProjectSourceVersion structure.
     */
    static let __default: CodeBuildModel.ProjectSourceVersion = {
        let defaultInstance = CodeBuildModel.ProjectSourceVersion(
            sourceIdentifier: "value",
            sourceVersion: "value")

        return defaultInstance
    }()
}

public extension PutResourcePolicyInput {
    /**
     Default instance of the PutResourcePolicyInput structure.
     */
    static let __default: CodeBuildModel.PutResourcePolicyInput = {
        let defaultInstance = CodeBuildModel.PutResourcePolicyInput(
            policy: "0",
            resourceArn: "0")

        return defaultInstance
    }()
}

public extension PutResourcePolicyOutput {
    /**
     Default instance of the PutResourcePolicyOutput structure.
     */
    static let __default: CodeBuildModel.PutResourcePolicyOutput = {
        let defaultInstance = CodeBuildModel.PutResourcePolicyOutput(
            resourceArn: nil)

        return defaultInstance
    }()
}

public extension RegistryCredential {
    /**
     Default instance of the RegistryCredential structure.
     */
    static let __default: CodeBuildModel.RegistryCredential = {
        let defaultInstance = CodeBuildModel.RegistryCredential(
            credential: "0",
            credentialProvider: .__default)

        return defaultInstance
    }()
}

public extension Report {
    /**
     Default instance of the Report structure.
     */
    static let __default: CodeBuildModel.Report = {
        let defaultInstance = CodeBuildModel.Report(
            arn: nil,
            codeCoverageSummary: nil,
            created: nil,
            executionId: nil,
            expired: nil,
            exportConfig: nil,
            name: nil,
            reportGroupArn: nil,
            status: nil,
            testSummary: nil,
            truncated: nil,
            type: nil)

        return defaultInstance
    }()
}

public extension ReportExportConfig {
    /**
     Default instance of the ReportExportConfig structure.
     */
    static let __default: CodeBuildModel.ReportExportConfig = {
        let defaultInstance = CodeBuildModel.ReportExportConfig(
            exportConfigType: nil,
            s3Destination: nil)

        return defaultInstance
    }()
}

public extension ReportFilter {
    /**
     Default instance of the ReportFilter structure.
     */
    static let __default: CodeBuildModel.ReportFilter = {
        let defaultInstance = CodeBuildModel.ReportFilter(
            status: nil)

        return defaultInstance
    }()
}

public extension ReportGroup {
    /**
     Default instance of the ReportGroup structure.
     */
    static let __default: CodeBuildModel.ReportGroup = {
        let defaultInstance = CodeBuildModel.ReportGroup(
            arn: nil,
            created: nil,
            exportConfig: nil,
            lastModified: nil,
            name: nil,
            status: nil,
            tags: nil,
            type: nil)

        return defaultInstance
    }()
}

public extension ReportGroupTrendStats {
    /**
     Default instance of the ReportGroupTrendStats structure.
     */
    static let __default: CodeBuildModel.ReportGroupTrendStats = {
        let defaultInstance = CodeBuildModel.ReportGroupTrendStats(
            average: nil,
            max: nil,
            min: nil)

        return defaultInstance
    }()
}

public extension ReportWithRawData {
    /**
     Default instance of the ReportWithRawData structure.
     */
    static let __default: CodeBuildModel.ReportWithRawData = {
        let defaultInstance = CodeBuildModel.ReportWithRawData(
            data: nil,
            reportArn: nil)

        return defaultInstance
    }()
}

public extension ResolvedArtifact {
    /**
     Default instance of the ResolvedArtifact structure.
     */
    static let __default: CodeBuildModel.ResolvedArtifact = {
        let defaultInstance = CodeBuildModel.ResolvedArtifact(
            identifier: nil,
            location: nil,
            type: nil)

        return defaultInstance
    }()
}

public extension ResourceAlreadyExistsException {
    /**
     Default instance of the ResourceAlreadyExistsException structure.
     */
    static let __default: CodeBuildModel.ResourceAlreadyExistsException = {
        let defaultInstance = CodeBuildModel.ResourceAlreadyExistsException()

        return defaultInstance
    }()
}

public extension ResourceNotFoundException {
    /**
     Default instance of the ResourceNotFoundException structure.
     */
    static let __default: CodeBuildModel.ResourceNotFoundException = {
        let defaultInstance = CodeBuildModel.ResourceNotFoundException()

        return defaultInstance
    }()
}

public extension RetryBuildBatchInput {
    /**
     Default instance of the RetryBuildBatchInput structure.
     */
    static let __default: CodeBuildModel.RetryBuildBatchInput = {
        let defaultInstance = CodeBuildModel.RetryBuildBatchInput(
            id: nil,
            idempotencyToken: nil,
            retryType: nil)

        return defaultInstance
    }()
}

public extension RetryBuildBatchOutput {
    /**
     Default instance of the RetryBuildBatchOutput structure.
     */
    static let __default: CodeBuildModel.RetryBuildBatchOutput = {
        let defaultInstance = CodeBuildModel.RetryBuildBatchOutput(
            buildBatch: nil)

        return defaultInstance
    }()
}

public extension RetryBuildInput {
    /**
     Default instance of the RetryBuildInput structure.
     */
    static let __default: CodeBuildModel.RetryBuildInput = {
        let defaultInstance = CodeBuildModel.RetryBuildInput(
            id: nil,
            idempotencyToken: nil)

        return defaultInstance
    }()
}

public extension RetryBuildOutput {
    /**
     Default instance of the RetryBuildOutput structure.
     */
    static let __default: CodeBuildModel.RetryBuildOutput = {
        let defaultInstance = CodeBuildModel.RetryBuildOutput(
            build: nil)

        return defaultInstance
    }()
}

public extension S3LogsConfig {
    /**
     Default instance of the S3LogsConfig structure.
     */
    static let __default: CodeBuildModel.S3LogsConfig = {
        let defaultInstance = CodeBuildModel.S3LogsConfig(
            encryptionDisabled: nil,
            location: nil,
            status: .__default)

        return defaultInstance
    }()
}

public extension S3ReportExportConfig {
    /**
     Default instance of the S3ReportExportConfig structure.
     */
    static let __default: CodeBuildModel.S3ReportExportConfig = {
        let defaultInstance = CodeBuildModel.S3ReportExportConfig(
            bucket: nil,
            bucketOwner: nil,
            encryptionDisabled: nil,
            encryptionKey: nil,
            packaging: nil,
            path: nil)

        return defaultInstance
    }()
}

public extension SourceAuth {
    /**
     Default instance of the SourceAuth structure.
     */
    static let __default: CodeBuildModel.SourceAuth = {
        let defaultInstance = CodeBuildModel.SourceAuth(
            resource: nil,
            type: .__default)

        return defaultInstance
    }()
}

public extension SourceCredentialsInfo {
    /**
     Default instance of the SourceCredentialsInfo structure.
     */
    static let __default: CodeBuildModel.SourceCredentialsInfo = {
        let defaultInstance = CodeBuildModel.SourceCredentialsInfo(
            arn: nil,
            authType: nil,
            serverType: nil)

        return defaultInstance
    }()
}

public extension StartBuildBatchInput {
    /**
     Default instance of the StartBuildBatchInput structure.
     */
    static let __default: CodeBuildModel.StartBuildBatchInput = {
        let defaultInstance = CodeBuildModel.StartBuildBatchInput(
            artifactsOverride: nil,
            buildBatchConfigOverride: nil,
            buildTimeoutInMinutesOverride: nil,
            buildspecOverride: nil,
            cacheOverride: nil,
            certificateOverride: nil,
            computeTypeOverride: nil,
            encryptionKeyOverride: nil,
            environmentTypeOverride: nil,
            environmentVariablesOverride: nil,
            gitCloneDepthOverride: nil,
            gitSubmodulesConfigOverride: nil,
            idempotencyToken: nil,
            imageOverride: nil,
            imagePullCredentialsTypeOverride: nil,
            insecureSslOverride: nil,
            logsConfigOverride: nil,
            privilegedModeOverride: nil,
            projectName: "0",
            queuedTimeoutInMinutesOverride: nil,
            registryCredentialOverride: nil,
            reportBuildBatchStatusOverride: nil,
            secondaryArtifactsOverride: nil,
            secondarySourcesOverride: nil,
            secondarySourcesVersionOverride: nil,
            serviceRoleOverride: nil,
            sourceAuthOverride: nil,
            sourceLocationOverride: nil,
            sourceTypeOverride: nil,
            sourceVersion: nil)

        return defaultInstance
    }()
}

public extension StartBuildBatchOutput {
    /**
     Default instance of the StartBuildBatchOutput structure.
     */
    static let __default: CodeBuildModel.StartBuildBatchOutput = {
        let defaultInstance = CodeBuildModel.StartBuildBatchOutput(
            buildBatch: nil)

        return defaultInstance
    }()
}

public extension StartBuildInput {
    /**
     Default instance of the StartBuildInput structure.
     */
    static let __default: CodeBuildModel.StartBuildInput = {
        let defaultInstance = CodeBuildModel.StartBuildInput(
            artifactsOverride: nil,
            buildStatusConfigOverride: nil,
            buildspecOverride: nil,
            cacheOverride: nil,
            certificateOverride: nil,
            computeTypeOverride: nil,
            debugSessionEnabled: nil,
            encryptionKeyOverride: nil,
            environmentTypeOverride: nil,
            environmentVariablesOverride: nil,
            gitCloneDepthOverride: nil,
            gitSubmodulesConfigOverride: nil,
            idempotencyToken: nil,
            imageOverride: nil,
            imagePullCredentialsTypeOverride: nil,
            insecureSslOverride: nil,
            logsConfigOverride: nil,
            privilegedModeOverride: nil,
            projectName: "0",
            queuedTimeoutInMinutesOverride: nil,
            registryCredentialOverride: nil,
            reportBuildStatusOverride: nil,
            secondaryArtifactsOverride: nil,
            secondarySourcesOverride: nil,
            secondarySourcesVersionOverride: nil,
            serviceRoleOverride: nil,
            sourceAuthOverride: nil,
            sourceLocationOverride: nil,
            sourceTypeOverride: nil,
            sourceVersion: nil,
            timeoutInMinutesOverride: nil)

        return defaultInstance
    }()
}

public extension StartBuildOutput {
    /**
     Default instance of the StartBuildOutput structure.
     */
    static let __default: CodeBuildModel.StartBuildOutput = {
        let defaultInstance = CodeBuildModel.StartBuildOutput(
            build: nil)

        return defaultInstance
    }()
}

public extension StopBuildBatchInput {
    /**
     Default instance of the StopBuildBatchInput structure.
     */
    static let __default: CodeBuildModel.StopBuildBatchInput = {
        let defaultInstance = CodeBuildModel.StopBuildBatchInput(
            id: "0")

        return defaultInstance
    }()
}

public extension StopBuildBatchOutput {
    /**
     Default instance of the StopBuildBatchOutput structure.
     */
    static let __default: CodeBuildModel.StopBuildBatchOutput = {
        let defaultInstance = CodeBuildModel.StopBuildBatchOutput(
            buildBatch: nil)

        return defaultInstance
    }()
}

public extension StopBuildInput {
    /**
     Default instance of the StopBuildInput structure.
     */
    static let __default: CodeBuildModel.StopBuildInput = {
        let defaultInstance = CodeBuildModel.StopBuildInput(
            id: "0")

        return defaultInstance
    }()
}

public extension StopBuildOutput {
    /**
     Default instance of the StopBuildOutput structure.
     */
    static let __default: CodeBuildModel.StopBuildOutput = {
        let defaultInstance = CodeBuildModel.StopBuildOutput(
            build: nil)

        return defaultInstance
    }()
}

public extension Tag {
    /**
     Default instance of the Tag structure.
     */
    static let __default: CodeBuildModel.Tag = {
        let defaultInstance = CodeBuildModel.Tag(
            key: nil,
            value: nil)

        return defaultInstance
    }()
}

public extension TestCase {
    /**
     Default instance of the TestCase structure.
     */
    static let __default: CodeBuildModel.TestCase = {
        let defaultInstance = CodeBuildModel.TestCase(
            durationInNanoSeconds: nil,
            expired: nil,
            message: nil,
            name: nil,
            prefix: nil,
            reportArn: nil,
            status: nil,
            testRawDataPath: nil)

        return defaultInstance
    }()
}

public extension TestCaseFilter {
    /**
     Default instance of the TestCaseFilter structure.
     */
    static let __default: CodeBuildModel.TestCaseFilter = {
        let defaultInstance = CodeBuildModel.TestCaseFilter(
            keyword: nil,
            status: nil)

        return defaultInstance
    }()
}

public extension TestReportSummary {
    /**
     Default instance of the TestReportSummary structure.
     */
    static let __default: CodeBuildModel.TestReportSummary = {
        let defaultInstance = CodeBuildModel.TestReportSummary(
            durationInNanoSeconds: 0,
            statusCounts: [:],
            total: 0)

        return defaultInstance
    }()
}

public extension UpdateProjectInput {
    /**
     Default instance of the UpdateProjectInput structure.
     */
    static let __default: CodeBuildModel.UpdateProjectInput = {
        let defaultInstance = CodeBuildModel.UpdateProjectInput(
            artifacts: nil,
            badgeEnabled: nil,
            buildBatchConfig: nil,
            cache: nil,
            concurrentBuildLimit: nil,
            description: nil,
            encryptionKey: nil,
            environment: nil,
            fileSystemLocations: nil,
            logsConfig: nil,
            name: "0",
            queuedTimeoutInMinutes: nil,
            secondaryArtifacts: nil,
            secondarySourceVersions: nil,
            secondarySources: nil,
            serviceRole: nil,
            source: nil,
            sourceVersion: nil,
            tags: nil,
            timeoutInMinutes: nil,
            vpcConfig: nil)

        return defaultInstance
    }()
}

public extension UpdateProjectOutput {
    /**
     Default instance of the UpdateProjectOutput structure.
     */
    static let __default: CodeBuildModel.UpdateProjectOutput = {
        let defaultInstance = CodeBuildModel.UpdateProjectOutput(
            project: nil)

        return defaultInstance
    }()
}

public extension UpdateReportGroupInput {
    /**
     Default instance of the UpdateReportGroupInput structure.
     */
    static let __default: CodeBuildModel.UpdateReportGroupInput = {
        let defaultInstance = CodeBuildModel.UpdateReportGroupInput(
            arn: "0",
            exportConfig: nil,
            tags: nil)

        return defaultInstance
    }()
}

public extension UpdateReportGroupOutput {
    /**
     Default instance of the UpdateReportGroupOutput structure.
     */
    static let __default: CodeBuildModel.UpdateReportGroupOutput = {
        let defaultInstance = CodeBuildModel.UpdateReportGroupOutput(
            reportGroup: nil)

        return defaultInstance
    }()
}

public extension UpdateWebhookInput {
    /**
     Default instance of the UpdateWebhookInput structure.
     */
    static let __default: CodeBuildModel.UpdateWebhookInput = {
        let defaultInstance = CodeBuildModel.UpdateWebhookInput(
            branchFilter: nil,
            buildType: nil,
            filterGroups: nil,
            projectName: "01",
            rotateSecret: nil)

        return defaultInstance
    }()
}

public extension UpdateWebhookOutput {
    /**
     Default instance of the UpdateWebhookOutput structure.
     */
    static let __default: CodeBuildModel.UpdateWebhookOutput = {
        let defaultInstance = CodeBuildModel.UpdateWebhookOutput(
            webhook: nil)

        return defaultInstance
    }()
}

public extension VpcConfig {
    /**
     Default instance of the VpcConfig structure.
     */
    static let __default: CodeBuildModel.VpcConfig = {
        let defaultInstance = CodeBuildModel.VpcConfig(
            securityGroupIds: nil,
            subnets: nil,
            vpcId: nil)

        return defaultInstance
    }()
}

public extension Webhook {
    /**
     Default instance of the Webhook structure.
     */
    static let __default: CodeBuildModel.Webhook = {
        let defaultInstance = CodeBuildModel.Webhook(
            branchFilter: nil,
            buildType: nil,
            filterGroups: nil,
            lastModifiedSecret: nil,
            payloadUrl: nil,
            secret: nil,
            url: nil)

        return defaultInstance
    }()
}

public extension WebhookFilter {
    /**
     Default instance of the WebhookFilter structure.
     */
    static let __default: CodeBuildModel.WebhookFilter = {
        let defaultInstance = CodeBuildModel.WebhookFilter(
            excludeMatchedPattern: nil,
            pattern: "value",
            type: .__default)

        return defaultInstance
    }()
}
