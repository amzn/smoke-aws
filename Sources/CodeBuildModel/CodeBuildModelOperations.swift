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
// CodeBuildModelOperations.swift
// CodeBuildModel
//

import Foundation

/**
 Operation enumeration for the CodeBuildModel.
 */
public enum CodeBuildModelOperations: String, Hashable, CustomStringConvertible {
    case batchDeleteBuilds = "BatchDeleteBuilds"
    case batchGetBuildBatches = "BatchGetBuildBatches"
    case batchGetBuilds = "BatchGetBuilds"
    case batchGetProjects = "BatchGetProjects"
    case batchGetReportGroups = "BatchGetReportGroups"
    case batchGetReports = "BatchGetReports"
    case createProject = "CreateProject"
    case createReportGroup = "CreateReportGroup"
    case createWebhook = "CreateWebhook"
    case deleteBuildBatch = "DeleteBuildBatch"
    case deleteProject = "DeleteProject"
    case deleteReport = "DeleteReport"
    case deleteReportGroup = "DeleteReportGroup"
    case deleteResourcePolicy = "DeleteResourcePolicy"
    case deleteSourceCredentials = "DeleteSourceCredentials"
    case deleteWebhook = "DeleteWebhook"
    case describeCodeCoverages = "DescribeCodeCoverages"
    case describeTestCases = "DescribeTestCases"
    case getReportGroupTrend = "GetReportGroupTrend"
    case getResourcePolicy = "GetResourcePolicy"
    case importSourceCredentials = "ImportSourceCredentials"
    case invalidateProjectCache = "InvalidateProjectCache"
    case listBuildBatches = "ListBuildBatches"
    case listBuildBatchesForProject = "ListBuildBatchesForProject"
    case listBuilds = "ListBuilds"
    case listBuildsForProject = "ListBuildsForProject"
    case listCuratedEnvironmentImages = "ListCuratedEnvironmentImages"
    case listProjects = "ListProjects"
    case listReportGroups = "ListReportGroups"
    case listReports = "ListReports"
    case listReportsForReportGroup = "ListReportsForReportGroup"
    case listSharedProjects = "ListSharedProjects"
    case listSharedReportGroups = "ListSharedReportGroups"
    case listSourceCredentials = "ListSourceCredentials"
    case putResourcePolicy = "PutResourcePolicy"
    case retryBuild = "RetryBuild"
    case retryBuildBatch = "RetryBuildBatch"
    case startBuild = "StartBuild"
    case startBuildBatch = "StartBuildBatch"
    case stopBuild = "StopBuild"
    case stopBuildBatch = "StopBuildBatch"
    case updateProject = "UpdateProject"
    case updateReportGroup = "UpdateReportGroup"
    case updateWebhook = "UpdateWebhook"

    public var description: String {
        return rawValue
    }

    public var operationPath: String {
        switch self {
        case .batchDeleteBuilds:
            return "/"
        case .batchGetBuildBatches:
            return "/"
        case .batchGetBuilds:
            return "/"
        case .batchGetProjects:
            return "/"
        case .batchGetReportGroups:
            return "/"
        case .batchGetReports:
            return "/"
        case .createProject:
            return "/"
        case .createReportGroup:
            return "/"
        case .createWebhook:
            return "/"
        case .deleteBuildBatch:
            return "/"
        case .deleteProject:
            return "/"
        case .deleteReport:
            return "/"
        case .deleteReportGroup:
            return "/"
        case .deleteResourcePolicy:
            return "/"
        case .deleteSourceCredentials:
            return "/"
        case .deleteWebhook:
            return "/"
        case .describeCodeCoverages:
            return "/"
        case .describeTestCases:
            return "/"
        case .getReportGroupTrend:
            return "/"
        case .getResourcePolicy:
            return "/"
        case .importSourceCredentials:
            return "/"
        case .invalidateProjectCache:
            return "/"
        case .listBuildBatches:
            return "/"
        case .listBuildBatchesForProject:
            return "/"
        case .listBuilds:
            return "/"
        case .listBuildsForProject:
            return "/"
        case .listCuratedEnvironmentImages:
            return "/"
        case .listProjects:
            return "/"
        case .listReportGroups:
            return "/"
        case .listReports:
            return "/"
        case .listReportsForReportGroup:
            return "/"
        case .listSharedProjects:
            return "/"
        case .listSharedReportGroups:
            return "/"
        case .listSourceCredentials:
            return "/"
        case .putResourcePolicy:
            return "/"
        case .retryBuild:
            return "/"
        case .retryBuildBatch:
            return "/"
        case .startBuild:
            return "/"
        case .startBuildBatch:
            return "/"
        case .stopBuild:
            return "/"
        case .stopBuildBatch:
            return "/"
        case .updateProject:
            return "/"
        case .updateReportGroup:
            return "/"
        case .updateWebhook:
            return "/"
        }
    }
}
