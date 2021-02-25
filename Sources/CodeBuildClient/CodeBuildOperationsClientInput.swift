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
// CodeBuildOperationsClientInput.swift
// CodeBuildClient
//

import Foundation
import SmokeHTTPClient
import CodeBuildModel

/**
 Type to handle the input to the BatchDeleteBuilds operation in a HTTP client.
 */
public typealias BatchDeleteBuildsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the BatchGetBuildBatches operation in a HTTP client.
 */
public typealias BatchGetBuildBatchesOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the BatchGetBuilds operation in a HTTP client.
 */
public typealias BatchGetBuildsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the BatchGetProjects operation in a HTTP client.
 */
public typealias BatchGetProjectsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the BatchGetReportGroups operation in a HTTP client.
 */
public typealias BatchGetReportGroupsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the BatchGetReports operation in a HTTP client.
 */
public typealias BatchGetReportsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the CreateProject operation in a HTTP client.
 */
public typealias CreateProjectOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the CreateReportGroup operation in a HTTP client.
 */
public typealias CreateReportGroupOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the CreateWebhook operation in a HTTP client.
 */
public typealias CreateWebhookOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DeleteBuildBatch operation in a HTTP client.
 */
public typealias DeleteBuildBatchOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DeleteProject operation in a HTTP client.
 */
public typealias DeleteProjectOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DeleteReport operation in a HTTP client.
 */
public typealias DeleteReportOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DeleteReportGroup operation in a HTTP client.
 */
public typealias DeleteReportGroupOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DeleteResourcePolicy operation in a HTTP client.
 */
public typealias DeleteResourcePolicyOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DeleteSourceCredentials operation in a HTTP client.
 */
public typealias DeleteSourceCredentialsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DeleteWebhook operation in a HTTP client.
 */
public typealias DeleteWebhookOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DescribeCodeCoverages operation in a HTTP client.
 */
public typealias DescribeCodeCoveragesOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the DescribeTestCases operation in a HTTP client.
 */
public typealias DescribeTestCasesOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the GetReportGroupTrend operation in a HTTP client.
 */
public typealias GetReportGroupTrendOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the GetResourcePolicy operation in a HTTP client.
 */
public typealias GetResourcePolicyOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ImportSourceCredentials operation in a HTTP client.
 */
public typealias ImportSourceCredentialsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the InvalidateProjectCache operation in a HTTP client.
 */
public typealias InvalidateProjectCacheOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListBuildBatches operation in a HTTP client.
 */
public typealias ListBuildBatchesOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListBuildBatchesForProject operation in a HTTP client.
 */
public typealias ListBuildBatchesForProjectOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListBuilds operation in a HTTP client.
 */
public typealias ListBuildsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListBuildsForProject operation in a HTTP client.
 */
public typealias ListBuildsForProjectOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListCuratedEnvironmentImages operation in a HTTP client.
 */
public typealias ListCuratedEnvironmentImagesOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListProjects operation in a HTTP client.
 */
public typealias ListProjectsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListReportGroups operation in a HTTP client.
 */
public typealias ListReportGroupsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListReports operation in a HTTP client.
 */
public typealias ListReportsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListReportsForReportGroup operation in a HTTP client.
 */
public typealias ListReportsForReportGroupOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListSharedProjects operation in a HTTP client.
 */
public typealias ListSharedProjectsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListSharedReportGroups operation in a HTTP client.
 */
public typealias ListSharedReportGroupsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the ListSourceCredentials operation in a HTTP client.
 */
public typealias ListSourceCredentialsOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the PutResourcePolicy operation in a HTTP client.
 */
public typealias PutResourcePolicyOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the RetryBuild operation in a HTTP client.
 */
public typealias RetryBuildOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the RetryBuildBatch operation in a HTTP client.
 */
public typealias RetryBuildBatchOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the StartBuild operation in a HTTP client.
 */
public typealias StartBuildOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the StartBuildBatch operation in a HTTP client.
 */
public typealias StartBuildBatchOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the StopBuild operation in a HTTP client.
 */
public typealias StopBuildOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the StopBuildBatch operation in a HTTP client.
 */
public typealias StopBuildBatchOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the UpdateProject operation in a HTTP client.
 */
public typealias UpdateProjectOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the UpdateReportGroup operation in a HTTP client.
 */
public typealias UpdateReportGroupOperationHTTPRequestInput = BodyHTTPRequestInput

/**
 Type to handle the input to the UpdateWebhook operation in a HTTP client.
 */
public typealias UpdateWebhookOperationHTTPRequestInput = BodyHTTPRequestInput
