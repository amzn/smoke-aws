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
// CodeBuildInvocationsReporting.swift
// CodeBuildClient
//

import Foundation
import SmokeHTTPClient
import SmokeAWSHttp
import CodeBuildModel

/**
 Operation reporting for the CodeBuildModel.
 */
public struct CodeBuildInvocationsReporting<InvocationReportingType: HTTPClientCoreInvocationReporting> {
    let batchDeleteBuilds: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let batchGetBuildBatches: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let batchGetBuilds: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let batchGetProjects: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let batchGetReportGroups: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let batchGetReports: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createProject: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createReportGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let createWebhook: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteBuildBatch: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteProject: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteReport: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteReportGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteResourcePolicy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteSourceCredentials: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let deleteWebhook: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeCodeCoverages: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let describeTestCases: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getReportGroupTrend: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let getResourcePolicy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let importSourceCredentials: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let invalidateProjectCache: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listBuildBatches: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listBuildBatchesForProject: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listBuilds: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listBuildsForProject: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listCuratedEnvironmentImages: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listProjects: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listReportGroups: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listReports: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listReportsForReportGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listSharedProjects: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listSharedReportGroups: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let listSourceCredentials: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let putResourcePolicy: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let retryBuild: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let retryBuildBatch: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let startBuild: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let startBuildBatch: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let stopBuild: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let stopBuildBatch: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let updateProject: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let updateReportGroup: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>
    let updateWebhook: SmokeAWSHTTPClientInvocationReporting<InvocationReportingType>

    public init(reporting: InvocationReportingType, operationsReporting: CodeBuildOperationsReporting) {
        self.batchDeleteBuilds = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.batchDeleteBuilds)
        self.batchGetBuildBatches = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.batchGetBuildBatches)
        self.batchGetBuilds = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.batchGetBuilds)
        self.batchGetProjects = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.batchGetProjects)
        self.batchGetReportGroups = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.batchGetReportGroups)
        self.batchGetReports = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.batchGetReports)
        self.createProject = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createProject)
        self.createReportGroup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createReportGroup)
        self.createWebhook = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.createWebhook)
        self.deleteBuildBatch = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteBuildBatch)
        self.deleteProject = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteProject)
        self.deleteReport = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteReport)
        self.deleteReportGroup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteReportGroup)
        self.deleteResourcePolicy = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteResourcePolicy)
        self.deleteSourceCredentials = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteSourceCredentials)
        self.deleteWebhook = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.deleteWebhook)
        self.describeCodeCoverages = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeCodeCoverages)
        self.describeTestCases = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.describeTestCases)
        self.getReportGroupTrend = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getReportGroupTrend)
        self.getResourcePolicy = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.getResourcePolicy)
        self.importSourceCredentials = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.importSourceCredentials)
        self.invalidateProjectCache = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.invalidateProjectCache)
        self.listBuildBatches = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listBuildBatches)
        self.listBuildBatchesForProject = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listBuildBatchesForProject)
        self.listBuilds = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listBuilds)
        self.listBuildsForProject = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listBuildsForProject)
        self.listCuratedEnvironmentImages = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listCuratedEnvironmentImages)
        self.listProjects = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listProjects)
        self.listReportGroups = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listReportGroups)
        self.listReports = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listReports)
        self.listReportsForReportGroup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listReportsForReportGroup)
        self.listSharedProjects = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listSharedProjects)
        self.listSharedReportGroups = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listSharedReportGroups)
        self.listSourceCredentials = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.listSourceCredentials)
        self.putResourcePolicy = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.putResourcePolicy)
        self.retryBuild = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.retryBuild)
        self.retryBuildBatch = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.retryBuildBatch)
        self.startBuild = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.startBuild)
        self.startBuildBatch = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.startBuildBatch)
        self.stopBuild = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.stopBuild)
        self.stopBuildBatch = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.stopBuildBatch)
        self.updateProject = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.updateProject)
        self.updateReportGroup = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.updateReportGroup)
        self.updateWebhook = SmokeAWSHTTPClientInvocationReporting(smokeAWSInvocationReporting: reporting,
            smokeAWSOperationReporting: operationsReporting.updateWebhook)
    }
}
