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
// CodeBuildOperationsReporting.swift
// CodeBuildClient
//

import Foundation
import SmokeAWSCore
import CodeBuildModel

/**
 Operation reporting for the CodeBuildModel.
 */
public struct CodeBuildOperationsReporting {
    let batchDeleteBuilds: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let batchGetBuildBatches: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let batchGetBuilds: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let batchGetProjects: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let batchGetReportGroups: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let batchGetReports: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let createProject: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let createReportGroup: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let createWebhook: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let deleteBuildBatch: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let deleteProject: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let deleteReport: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let deleteReportGroup: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let deleteResourcePolicy: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let deleteSourceCredentials: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let deleteWebhook: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let describeCodeCoverages: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let describeTestCases: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let getReportGroupTrend: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let getResourcePolicy: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let importSourceCredentials: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let invalidateProjectCache: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let listBuildBatches: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let listBuildBatchesForProject: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let listBuilds: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let listBuildsForProject: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let listCuratedEnvironmentImages: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let listProjects: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let listReportGroups: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let listReports: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let listReportsForReportGroup: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let listSharedProjects: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let listSharedReportGroups: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let listSourceCredentials: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let putResourcePolicy: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let retryBuild: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let retryBuildBatch: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let startBuild: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let startBuildBatch: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let stopBuild: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let stopBuildBatch: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let updateProject: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let updateReportGroup: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>
    let updateWebhook: StandardSmokeAWSOperationReporting<CodeBuildModelOperations>

    public init(clientName: String, reportingConfiguration: SmokeAWSClientReportingConfiguration<CodeBuildModelOperations>) {
        self.batchDeleteBuilds = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .batchDeleteBuilds, configuration: reportingConfiguration)
        self.batchGetBuildBatches = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .batchGetBuildBatches, configuration: reportingConfiguration)
        self.batchGetBuilds = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .batchGetBuilds, configuration: reportingConfiguration)
        self.batchGetProjects = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .batchGetProjects, configuration: reportingConfiguration)
        self.batchGetReportGroups = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .batchGetReportGroups, configuration: reportingConfiguration)
        self.batchGetReports = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .batchGetReports, configuration: reportingConfiguration)
        self.createProject = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createProject, configuration: reportingConfiguration)
        self.createReportGroup = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createReportGroup, configuration: reportingConfiguration)
        self.createWebhook = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .createWebhook, configuration: reportingConfiguration)
        self.deleteBuildBatch = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteBuildBatch, configuration: reportingConfiguration)
        self.deleteProject = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteProject, configuration: reportingConfiguration)
        self.deleteReport = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteReport, configuration: reportingConfiguration)
        self.deleteReportGroup = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteReportGroup, configuration: reportingConfiguration)
        self.deleteResourcePolicy = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteResourcePolicy, configuration: reportingConfiguration)
        self.deleteSourceCredentials = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteSourceCredentials, configuration: reportingConfiguration)
        self.deleteWebhook = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .deleteWebhook, configuration: reportingConfiguration)
        self.describeCodeCoverages = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeCodeCoverages, configuration: reportingConfiguration)
        self.describeTestCases = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .describeTestCases, configuration: reportingConfiguration)
        self.getReportGroupTrend = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getReportGroupTrend, configuration: reportingConfiguration)
        self.getResourcePolicy = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .getResourcePolicy, configuration: reportingConfiguration)
        self.importSourceCredentials = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .importSourceCredentials, configuration: reportingConfiguration)
        self.invalidateProjectCache = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .invalidateProjectCache, configuration: reportingConfiguration)
        self.listBuildBatches = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listBuildBatches, configuration: reportingConfiguration)
        self.listBuildBatchesForProject = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listBuildBatchesForProject, configuration: reportingConfiguration)
        self.listBuilds = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listBuilds, configuration: reportingConfiguration)
        self.listBuildsForProject = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listBuildsForProject, configuration: reportingConfiguration)
        self.listCuratedEnvironmentImages = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listCuratedEnvironmentImages, configuration: reportingConfiguration)
        self.listProjects = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listProjects, configuration: reportingConfiguration)
        self.listReportGroups = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listReportGroups, configuration: reportingConfiguration)
        self.listReports = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listReports, configuration: reportingConfiguration)
        self.listReportsForReportGroup = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listReportsForReportGroup, configuration: reportingConfiguration)
        self.listSharedProjects = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listSharedProjects, configuration: reportingConfiguration)
        self.listSharedReportGroups = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listSharedReportGroups, configuration: reportingConfiguration)
        self.listSourceCredentials = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .listSourceCredentials, configuration: reportingConfiguration)
        self.putResourcePolicy = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .putResourcePolicy, configuration: reportingConfiguration)
        self.retryBuild = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .retryBuild, configuration: reportingConfiguration)
        self.retryBuildBatch = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .retryBuildBatch, configuration: reportingConfiguration)
        self.startBuild = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .startBuild, configuration: reportingConfiguration)
        self.startBuildBatch = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .startBuildBatch, configuration: reportingConfiguration)
        self.stopBuild = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .stopBuild, configuration: reportingConfiguration)
        self.stopBuildBatch = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .stopBuildBatch, configuration: reportingConfiguration)
        self.updateProject = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .updateProject, configuration: reportingConfiguration)
        self.updateReportGroup = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .updateReportGroup, configuration: reportingConfiguration)
        self.updateWebhook = StandardSmokeAWSOperationReporting(
            clientName: clientName, operation: .updateWebhook, configuration: reportingConfiguration)
    }
}
