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
// CodeBuildClientProtocol.swift
// CodeBuildClient
//

import Foundation
import CodeBuildModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Client Protocol for the CodeBuild service.
 */
public protocol CodeBuildClientProtocol {
    typealias BatchDeleteBuildsSyncType = (
            _ input: CodeBuildModel.BatchDeleteBuildsInput) throws -> CodeBuildModel.BatchDeleteBuildsOutput
    typealias BatchDeleteBuildsAsyncType = (
            _ input: CodeBuildModel.BatchDeleteBuildsInput, 
            _ completion: @escaping (Result<CodeBuildModel.BatchDeleteBuildsOutput, CodeBuildError>) -> ()) throws -> ()
    typealias BatchGetBuildBatchesSyncType = (
            _ input: CodeBuildModel.BatchGetBuildBatchesInput) throws -> CodeBuildModel.BatchGetBuildBatchesOutput
    typealias BatchGetBuildBatchesAsyncType = (
            _ input: CodeBuildModel.BatchGetBuildBatchesInput, 
            _ completion: @escaping (Result<CodeBuildModel.BatchGetBuildBatchesOutput, CodeBuildError>) -> ()) throws -> ()
    typealias BatchGetBuildsSyncType = (
            _ input: CodeBuildModel.BatchGetBuildsInput) throws -> CodeBuildModel.BatchGetBuildsOutput
    typealias BatchGetBuildsAsyncType = (
            _ input: CodeBuildModel.BatchGetBuildsInput, 
            _ completion: @escaping (Result<CodeBuildModel.BatchGetBuildsOutput, CodeBuildError>) -> ()) throws -> ()
    typealias BatchGetProjectsSyncType = (
            _ input: CodeBuildModel.BatchGetProjectsInput) throws -> CodeBuildModel.BatchGetProjectsOutput
    typealias BatchGetProjectsAsyncType = (
            _ input: CodeBuildModel.BatchGetProjectsInput, 
            _ completion: @escaping (Result<CodeBuildModel.BatchGetProjectsOutput, CodeBuildError>) -> ()) throws -> ()
    typealias BatchGetReportGroupsSyncType = (
            _ input: CodeBuildModel.BatchGetReportGroupsInput) throws -> CodeBuildModel.BatchGetReportGroupsOutput
    typealias BatchGetReportGroupsAsyncType = (
            _ input: CodeBuildModel.BatchGetReportGroupsInput, 
            _ completion: @escaping (Result<CodeBuildModel.BatchGetReportGroupsOutput, CodeBuildError>) -> ()) throws -> ()
    typealias BatchGetReportsSyncType = (
            _ input: CodeBuildModel.BatchGetReportsInput) throws -> CodeBuildModel.BatchGetReportsOutput
    typealias BatchGetReportsAsyncType = (
            _ input: CodeBuildModel.BatchGetReportsInput, 
            _ completion: @escaping (Result<CodeBuildModel.BatchGetReportsOutput, CodeBuildError>) -> ()) throws -> ()
    typealias CreateProjectSyncType = (
            _ input: CodeBuildModel.CreateProjectInput) throws -> CodeBuildModel.CreateProjectOutput
    typealias CreateProjectAsyncType = (
            _ input: CodeBuildModel.CreateProjectInput, 
            _ completion: @escaping (Result<CodeBuildModel.CreateProjectOutput, CodeBuildError>) -> ()) throws -> ()
    typealias CreateReportGroupSyncType = (
            _ input: CodeBuildModel.CreateReportGroupInput) throws -> CodeBuildModel.CreateReportGroupOutput
    typealias CreateReportGroupAsyncType = (
            _ input: CodeBuildModel.CreateReportGroupInput, 
            _ completion: @escaping (Result<CodeBuildModel.CreateReportGroupOutput, CodeBuildError>) -> ()) throws -> ()
    typealias CreateWebhookSyncType = (
            _ input: CodeBuildModel.CreateWebhookInput) throws -> CodeBuildModel.CreateWebhookOutput
    typealias CreateWebhookAsyncType = (
            _ input: CodeBuildModel.CreateWebhookInput, 
            _ completion: @escaping (Result<CodeBuildModel.CreateWebhookOutput, CodeBuildError>) -> ()) throws -> ()
    typealias DeleteBuildBatchSyncType = (
            _ input: CodeBuildModel.DeleteBuildBatchInput) throws -> CodeBuildModel.DeleteBuildBatchOutput
    typealias DeleteBuildBatchAsyncType = (
            _ input: CodeBuildModel.DeleteBuildBatchInput, 
            _ completion: @escaping (Result<CodeBuildModel.DeleteBuildBatchOutput, CodeBuildError>) -> ()) throws -> ()
    typealias DeleteProjectSyncType = (
            _ input: CodeBuildModel.DeleteProjectInput) throws -> CodeBuildModel.DeleteProjectOutput
    typealias DeleteProjectAsyncType = (
            _ input: CodeBuildModel.DeleteProjectInput, 
            _ completion: @escaping (Result<CodeBuildModel.DeleteProjectOutput, CodeBuildError>) -> ()) throws -> ()
    typealias DeleteReportSyncType = (
            _ input: CodeBuildModel.DeleteReportInput) throws -> CodeBuildModel.DeleteReportOutput
    typealias DeleteReportAsyncType = (
            _ input: CodeBuildModel.DeleteReportInput, 
            _ completion: @escaping (Result<CodeBuildModel.DeleteReportOutput, CodeBuildError>) -> ()) throws -> ()
    typealias DeleteReportGroupSyncType = (
            _ input: CodeBuildModel.DeleteReportGroupInput) throws -> CodeBuildModel.DeleteReportGroupOutput
    typealias DeleteReportGroupAsyncType = (
            _ input: CodeBuildModel.DeleteReportGroupInput, 
            _ completion: @escaping (Result<CodeBuildModel.DeleteReportGroupOutput, CodeBuildError>) -> ()) throws -> ()
    typealias DeleteResourcePolicySyncType = (
            _ input: CodeBuildModel.DeleteResourcePolicyInput) throws -> CodeBuildModel.DeleteResourcePolicyOutput
    typealias DeleteResourcePolicyAsyncType = (
            _ input: CodeBuildModel.DeleteResourcePolicyInput, 
            _ completion: @escaping (Result<CodeBuildModel.DeleteResourcePolicyOutput, CodeBuildError>) -> ()) throws -> ()
    typealias DeleteSourceCredentialsSyncType = (
            _ input: CodeBuildModel.DeleteSourceCredentialsInput) throws -> CodeBuildModel.DeleteSourceCredentialsOutput
    typealias DeleteSourceCredentialsAsyncType = (
            _ input: CodeBuildModel.DeleteSourceCredentialsInput, 
            _ completion: @escaping (Result<CodeBuildModel.DeleteSourceCredentialsOutput, CodeBuildError>) -> ()) throws -> ()
    typealias DeleteWebhookSyncType = (
            _ input: CodeBuildModel.DeleteWebhookInput) throws -> CodeBuildModel.DeleteWebhookOutput
    typealias DeleteWebhookAsyncType = (
            _ input: CodeBuildModel.DeleteWebhookInput, 
            _ completion: @escaping (Result<CodeBuildModel.DeleteWebhookOutput, CodeBuildError>) -> ()) throws -> ()
    typealias DescribeCodeCoveragesSyncType = (
            _ input: CodeBuildModel.DescribeCodeCoveragesInput) throws -> CodeBuildModel.DescribeCodeCoveragesOutput
    typealias DescribeCodeCoveragesAsyncType = (
            _ input: CodeBuildModel.DescribeCodeCoveragesInput, 
            _ completion: @escaping (Result<CodeBuildModel.DescribeCodeCoveragesOutput, CodeBuildError>) -> ()) throws -> ()
    typealias DescribeTestCasesSyncType = (
            _ input: CodeBuildModel.DescribeTestCasesInput) throws -> CodeBuildModel.DescribeTestCasesOutput
    typealias DescribeTestCasesAsyncType = (
            _ input: CodeBuildModel.DescribeTestCasesInput, 
            _ completion: @escaping (Result<CodeBuildModel.DescribeTestCasesOutput, CodeBuildError>) -> ()) throws -> ()
    typealias GetReportGroupTrendSyncType = (
            _ input: CodeBuildModel.GetReportGroupTrendInput) throws -> CodeBuildModel.GetReportGroupTrendOutput
    typealias GetReportGroupTrendAsyncType = (
            _ input: CodeBuildModel.GetReportGroupTrendInput, 
            _ completion: @escaping (Result<CodeBuildModel.GetReportGroupTrendOutput, CodeBuildError>) -> ()) throws -> ()
    typealias GetResourcePolicySyncType = (
            _ input: CodeBuildModel.GetResourcePolicyInput) throws -> CodeBuildModel.GetResourcePolicyOutput
    typealias GetResourcePolicyAsyncType = (
            _ input: CodeBuildModel.GetResourcePolicyInput, 
            _ completion: @escaping (Result<CodeBuildModel.GetResourcePolicyOutput, CodeBuildError>) -> ()) throws -> ()
    typealias ImportSourceCredentialsSyncType = (
            _ input: CodeBuildModel.ImportSourceCredentialsInput) throws -> CodeBuildModel.ImportSourceCredentialsOutput
    typealias ImportSourceCredentialsAsyncType = (
            _ input: CodeBuildModel.ImportSourceCredentialsInput, 
            _ completion: @escaping (Result<CodeBuildModel.ImportSourceCredentialsOutput, CodeBuildError>) -> ()) throws -> ()
    typealias InvalidateProjectCacheSyncType = (
            _ input: CodeBuildModel.InvalidateProjectCacheInput) throws -> CodeBuildModel.InvalidateProjectCacheOutput
    typealias InvalidateProjectCacheAsyncType = (
            _ input: CodeBuildModel.InvalidateProjectCacheInput, 
            _ completion: @escaping (Result<CodeBuildModel.InvalidateProjectCacheOutput, CodeBuildError>) -> ()) throws -> ()
    typealias ListBuildBatchesSyncType = (
            _ input: CodeBuildModel.ListBuildBatchesInput) throws -> CodeBuildModel.ListBuildBatchesOutput
    typealias ListBuildBatchesAsyncType = (
            _ input: CodeBuildModel.ListBuildBatchesInput, 
            _ completion: @escaping (Result<CodeBuildModel.ListBuildBatchesOutput, CodeBuildError>) -> ()) throws -> ()
    typealias ListBuildBatchesForProjectSyncType = (
            _ input: CodeBuildModel.ListBuildBatchesForProjectInput) throws -> CodeBuildModel.ListBuildBatchesForProjectOutput
    typealias ListBuildBatchesForProjectAsyncType = (
            _ input: CodeBuildModel.ListBuildBatchesForProjectInput, 
            _ completion: @escaping (Result<CodeBuildModel.ListBuildBatchesForProjectOutput, CodeBuildError>) -> ()) throws -> ()
    typealias ListBuildsSyncType = (
            _ input: CodeBuildModel.ListBuildsInput) throws -> CodeBuildModel.ListBuildsOutput
    typealias ListBuildsAsyncType = (
            _ input: CodeBuildModel.ListBuildsInput, 
            _ completion: @escaping (Result<CodeBuildModel.ListBuildsOutput, CodeBuildError>) -> ()) throws -> ()
    typealias ListBuildsForProjectSyncType = (
            _ input: CodeBuildModel.ListBuildsForProjectInput) throws -> CodeBuildModel.ListBuildsForProjectOutput
    typealias ListBuildsForProjectAsyncType = (
            _ input: CodeBuildModel.ListBuildsForProjectInput, 
            _ completion: @escaping (Result<CodeBuildModel.ListBuildsForProjectOutput, CodeBuildError>) -> ()) throws -> ()
    typealias ListCuratedEnvironmentImagesSyncType = (
            _ input: CodeBuildModel.ListCuratedEnvironmentImagesInput) throws -> CodeBuildModel.ListCuratedEnvironmentImagesOutput
    typealias ListCuratedEnvironmentImagesAsyncType = (
            _ input: CodeBuildModel.ListCuratedEnvironmentImagesInput, 
            _ completion: @escaping (Result<CodeBuildModel.ListCuratedEnvironmentImagesOutput, CodeBuildError>) -> ()) throws -> ()
    typealias ListProjectsSyncType = (
            _ input: CodeBuildModel.ListProjectsInput) throws -> CodeBuildModel.ListProjectsOutput
    typealias ListProjectsAsyncType = (
            _ input: CodeBuildModel.ListProjectsInput, 
            _ completion: @escaping (Result<CodeBuildModel.ListProjectsOutput, CodeBuildError>) -> ()) throws -> ()
    typealias ListReportGroupsSyncType = (
            _ input: CodeBuildModel.ListReportGroupsInput) throws -> CodeBuildModel.ListReportGroupsOutput
    typealias ListReportGroupsAsyncType = (
            _ input: CodeBuildModel.ListReportGroupsInput, 
            _ completion: @escaping (Result<CodeBuildModel.ListReportGroupsOutput, CodeBuildError>) -> ()) throws -> ()
    typealias ListReportsSyncType = (
            _ input: CodeBuildModel.ListReportsInput) throws -> CodeBuildModel.ListReportsOutput
    typealias ListReportsAsyncType = (
            _ input: CodeBuildModel.ListReportsInput, 
            _ completion: @escaping (Result<CodeBuildModel.ListReportsOutput, CodeBuildError>) -> ()) throws -> ()
    typealias ListReportsForReportGroupSyncType = (
            _ input: CodeBuildModel.ListReportsForReportGroupInput) throws -> CodeBuildModel.ListReportsForReportGroupOutput
    typealias ListReportsForReportGroupAsyncType = (
            _ input: CodeBuildModel.ListReportsForReportGroupInput, 
            _ completion: @escaping (Result<CodeBuildModel.ListReportsForReportGroupOutput, CodeBuildError>) -> ()) throws -> ()
    typealias ListSharedProjectsSyncType = (
            _ input: CodeBuildModel.ListSharedProjectsInput) throws -> CodeBuildModel.ListSharedProjectsOutput
    typealias ListSharedProjectsAsyncType = (
            _ input: CodeBuildModel.ListSharedProjectsInput, 
            _ completion: @escaping (Result<CodeBuildModel.ListSharedProjectsOutput, CodeBuildError>) -> ()) throws -> ()
    typealias ListSharedReportGroupsSyncType = (
            _ input: CodeBuildModel.ListSharedReportGroupsInput) throws -> CodeBuildModel.ListSharedReportGroupsOutput
    typealias ListSharedReportGroupsAsyncType = (
            _ input: CodeBuildModel.ListSharedReportGroupsInput, 
            _ completion: @escaping (Result<CodeBuildModel.ListSharedReportGroupsOutput, CodeBuildError>) -> ()) throws -> ()
    typealias ListSourceCredentialsSyncType = (
            _ input: CodeBuildModel.ListSourceCredentialsInput) throws -> CodeBuildModel.ListSourceCredentialsOutput
    typealias ListSourceCredentialsAsyncType = (
            _ input: CodeBuildModel.ListSourceCredentialsInput, 
            _ completion: @escaping (Result<CodeBuildModel.ListSourceCredentialsOutput, CodeBuildError>) -> ()) throws -> ()
    typealias PutResourcePolicySyncType = (
            _ input: CodeBuildModel.PutResourcePolicyInput) throws -> CodeBuildModel.PutResourcePolicyOutput
    typealias PutResourcePolicyAsyncType = (
            _ input: CodeBuildModel.PutResourcePolicyInput, 
            _ completion: @escaping (Result<CodeBuildModel.PutResourcePolicyOutput, CodeBuildError>) -> ()) throws -> ()
    typealias RetryBuildSyncType = (
            _ input: CodeBuildModel.RetryBuildInput) throws -> CodeBuildModel.RetryBuildOutput
    typealias RetryBuildAsyncType = (
            _ input: CodeBuildModel.RetryBuildInput, 
            _ completion: @escaping (Result<CodeBuildModel.RetryBuildOutput, CodeBuildError>) -> ()) throws -> ()
    typealias RetryBuildBatchSyncType = (
            _ input: CodeBuildModel.RetryBuildBatchInput) throws -> CodeBuildModel.RetryBuildBatchOutput
    typealias RetryBuildBatchAsyncType = (
            _ input: CodeBuildModel.RetryBuildBatchInput, 
            _ completion: @escaping (Result<CodeBuildModel.RetryBuildBatchOutput, CodeBuildError>) -> ()) throws -> ()
    typealias StartBuildSyncType = (
            _ input: CodeBuildModel.StartBuildInput) throws -> CodeBuildModel.StartBuildOutput
    typealias StartBuildAsyncType = (
            _ input: CodeBuildModel.StartBuildInput, 
            _ completion: @escaping (Result<CodeBuildModel.StartBuildOutput, CodeBuildError>) -> ()) throws -> ()
    typealias StartBuildBatchSyncType = (
            _ input: CodeBuildModel.StartBuildBatchInput) throws -> CodeBuildModel.StartBuildBatchOutput
    typealias StartBuildBatchAsyncType = (
            _ input: CodeBuildModel.StartBuildBatchInput, 
            _ completion: @escaping (Result<CodeBuildModel.StartBuildBatchOutput, CodeBuildError>) -> ()) throws -> ()
    typealias StopBuildSyncType = (
            _ input: CodeBuildModel.StopBuildInput) throws -> CodeBuildModel.StopBuildOutput
    typealias StopBuildAsyncType = (
            _ input: CodeBuildModel.StopBuildInput, 
            _ completion: @escaping (Result<CodeBuildModel.StopBuildOutput, CodeBuildError>) -> ()) throws -> ()
    typealias StopBuildBatchSyncType = (
            _ input: CodeBuildModel.StopBuildBatchInput) throws -> CodeBuildModel.StopBuildBatchOutput
    typealias StopBuildBatchAsyncType = (
            _ input: CodeBuildModel.StopBuildBatchInput, 
            _ completion: @escaping (Result<CodeBuildModel.StopBuildBatchOutput, CodeBuildError>) -> ()) throws -> ()
    typealias UpdateProjectSyncType = (
            _ input: CodeBuildModel.UpdateProjectInput) throws -> CodeBuildModel.UpdateProjectOutput
    typealias UpdateProjectAsyncType = (
            _ input: CodeBuildModel.UpdateProjectInput, 
            _ completion: @escaping (Result<CodeBuildModel.UpdateProjectOutput, CodeBuildError>) -> ()) throws -> ()
    typealias UpdateReportGroupSyncType = (
            _ input: CodeBuildModel.UpdateReportGroupInput) throws -> CodeBuildModel.UpdateReportGroupOutput
    typealias UpdateReportGroupAsyncType = (
            _ input: CodeBuildModel.UpdateReportGroupInput, 
            _ completion: @escaping (Result<CodeBuildModel.UpdateReportGroupOutput, CodeBuildError>) -> ()) throws -> ()
    typealias UpdateWebhookSyncType = (
            _ input: CodeBuildModel.UpdateWebhookInput) throws -> CodeBuildModel.UpdateWebhookOutput
    typealias UpdateWebhookAsyncType = (
            _ input: CodeBuildModel.UpdateWebhookInput, 
            _ completion: @escaping (Result<CodeBuildModel.UpdateWebhookOutput, CodeBuildError>) -> ()) throws -> ()

    /**
     Invokes the BatchDeleteBuilds operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchDeleteBuildsInput object being passed to this operation.
         - completion: The BatchDeleteBuildsOutput object or an error will be passed to this 
           callback when the operation is complete. The BatchDeleteBuildsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    func batchDeleteBuildsAsync(
            input: CodeBuildModel.BatchDeleteBuildsInput, 
            completion: @escaping (Result<CodeBuildModel.BatchDeleteBuildsOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the BatchDeleteBuilds operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchDeleteBuildsInput object being passed to this operation.
     - Returns: The BatchDeleteBuildsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    func batchDeleteBuildsSync(
            input: CodeBuildModel.BatchDeleteBuildsInput) throws -> CodeBuildModel.BatchDeleteBuildsOutput

    /**
     Invokes the BatchGetBuildBatches operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchGetBuildBatchesInput object being passed to this operation.
         - completion: The BatchGetBuildBatchesOutput object or an error will be passed to this 
           callback when the operation is complete. The BatchGetBuildBatchesOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    func batchGetBuildBatchesAsync(
            input: CodeBuildModel.BatchGetBuildBatchesInput, 
            completion: @escaping (Result<CodeBuildModel.BatchGetBuildBatchesOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the BatchGetBuildBatches operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchGetBuildBatchesInput object being passed to this operation.
     - Returns: The BatchGetBuildBatchesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    func batchGetBuildBatchesSync(
            input: CodeBuildModel.BatchGetBuildBatchesInput) throws -> CodeBuildModel.BatchGetBuildBatchesOutput

    /**
     Invokes the BatchGetBuilds operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchGetBuildsInput object being passed to this operation.
         - completion: The BatchGetBuildsOutput object or an error will be passed to this 
           callback when the operation is complete. The BatchGetBuildsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    func batchGetBuildsAsync(
            input: CodeBuildModel.BatchGetBuildsInput, 
            completion: @escaping (Result<CodeBuildModel.BatchGetBuildsOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the BatchGetBuilds operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchGetBuildsInput object being passed to this operation.
     - Returns: The BatchGetBuildsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    func batchGetBuildsSync(
            input: CodeBuildModel.BatchGetBuildsInput) throws -> CodeBuildModel.BatchGetBuildsOutput

    /**
     Invokes the BatchGetProjects operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchGetProjectsInput object being passed to this operation.
         - completion: The BatchGetProjectsOutput object or an error will be passed to this 
           callback when the operation is complete. The BatchGetProjectsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    func batchGetProjectsAsync(
            input: CodeBuildModel.BatchGetProjectsInput, 
            completion: @escaping (Result<CodeBuildModel.BatchGetProjectsOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the BatchGetProjects operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchGetProjectsInput object being passed to this operation.
     - Returns: The BatchGetProjectsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    func batchGetProjectsSync(
            input: CodeBuildModel.BatchGetProjectsInput) throws -> CodeBuildModel.BatchGetProjectsOutput

    /**
     Invokes the BatchGetReportGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchGetReportGroupsInput object being passed to this operation.
         - completion: The BatchGetReportGroupsOutput object or an error will be passed to this 
           callback when the operation is complete. The BatchGetReportGroupsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    func batchGetReportGroupsAsync(
            input: CodeBuildModel.BatchGetReportGroupsInput, 
            completion: @escaping (Result<CodeBuildModel.BatchGetReportGroupsOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the BatchGetReportGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchGetReportGroupsInput object being passed to this operation.
     - Returns: The BatchGetReportGroupsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    func batchGetReportGroupsSync(
            input: CodeBuildModel.BatchGetReportGroupsInput) throws -> CodeBuildModel.BatchGetReportGroupsOutput

    /**
     Invokes the BatchGetReports operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchGetReportsInput object being passed to this operation.
         - completion: The BatchGetReportsOutput object or an error will be passed to this 
           callback when the operation is complete. The BatchGetReportsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    func batchGetReportsAsync(
            input: CodeBuildModel.BatchGetReportsInput, 
            completion: @escaping (Result<CodeBuildModel.BatchGetReportsOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the BatchGetReports operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchGetReportsInput object being passed to this operation.
     - Returns: The BatchGetReportsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    func batchGetReportsSync(
            input: CodeBuildModel.BatchGetReportsInput) throws -> CodeBuildModel.BatchGetReportsOutput

    /**
     Invokes the CreateProject operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateProjectInput object being passed to this operation.
         - completion: The CreateProjectOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateProjectOutput
           object will be validated before being returned to caller.
           The possible errors are: accountLimitExceeded, invalidInput, resourceAlreadyExists.
     */
    func createProjectAsync(
            input: CodeBuildModel.CreateProjectInput, 
            completion: @escaping (Result<CodeBuildModel.CreateProjectOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the CreateProject operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateProjectInput object being passed to this operation.
     - Returns: The CreateProjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accountLimitExceeded, invalidInput, resourceAlreadyExists.
     */
    func createProjectSync(
            input: CodeBuildModel.CreateProjectInput) throws -> CodeBuildModel.CreateProjectOutput

    /**
     Invokes the CreateReportGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateReportGroupInput object being passed to this operation.
         - completion: The CreateReportGroupOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateReportGroupOutput
           object will be validated before being returned to caller.
           The possible errors are: accountLimitExceeded, invalidInput, resourceAlreadyExists.
     */
    func createReportGroupAsync(
            input: CodeBuildModel.CreateReportGroupInput, 
            completion: @escaping (Result<CodeBuildModel.CreateReportGroupOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the CreateReportGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateReportGroupInput object being passed to this operation.
     - Returns: The CreateReportGroupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accountLimitExceeded, invalidInput, resourceAlreadyExists.
     */
    func createReportGroupSync(
            input: CodeBuildModel.CreateReportGroupInput) throws -> CodeBuildModel.CreateReportGroupOutput

    /**
     Invokes the CreateWebhook operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateWebhookInput object being passed to this operation.
         - completion: The CreateWebhookOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateWebhookOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, oAuthProvider, resourceAlreadyExists, resourceNotFound.
     */
    func createWebhookAsync(
            input: CodeBuildModel.CreateWebhookInput, 
            completion: @escaping (Result<CodeBuildModel.CreateWebhookOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the CreateWebhook operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateWebhookInput object being passed to this operation.
     - Returns: The CreateWebhookOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, oAuthProvider, resourceAlreadyExists, resourceNotFound.
     */
    func createWebhookSync(
            input: CodeBuildModel.CreateWebhookInput) throws -> CodeBuildModel.CreateWebhookOutput

    /**
     Invokes the DeleteBuildBatch operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBuildBatchInput object being passed to this operation.
         - completion: The DeleteBuildBatchOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteBuildBatchOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    func deleteBuildBatchAsync(
            input: CodeBuildModel.DeleteBuildBatchInput, 
            completion: @escaping (Result<CodeBuildModel.DeleteBuildBatchOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the DeleteBuildBatch operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBuildBatchInput object being passed to this operation.
     - Returns: The DeleteBuildBatchOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    func deleteBuildBatchSync(
            input: CodeBuildModel.DeleteBuildBatchInput) throws -> CodeBuildModel.DeleteBuildBatchOutput

    /**
     Invokes the DeleteProject operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteProjectInput object being passed to this operation.
         - completion: The DeleteProjectOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteProjectOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    func deleteProjectAsync(
            input: CodeBuildModel.DeleteProjectInput, 
            completion: @escaping (Result<CodeBuildModel.DeleteProjectOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the DeleteProject operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteProjectInput object being passed to this operation.
     - Returns: The DeleteProjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    func deleteProjectSync(
            input: CodeBuildModel.DeleteProjectInput) throws -> CodeBuildModel.DeleteProjectOutput

    /**
     Invokes the DeleteReport operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteReportInput object being passed to this operation.
         - completion: The DeleteReportOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteReportOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    func deleteReportAsync(
            input: CodeBuildModel.DeleteReportInput, 
            completion: @escaping (Result<CodeBuildModel.DeleteReportOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the DeleteReport operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteReportInput object being passed to this operation.
     - Returns: The DeleteReportOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    func deleteReportSync(
            input: CodeBuildModel.DeleteReportInput) throws -> CodeBuildModel.DeleteReportOutput

    /**
     Invokes the DeleteReportGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteReportGroupInput object being passed to this operation.
         - completion: The DeleteReportGroupOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteReportGroupOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    func deleteReportGroupAsync(
            input: CodeBuildModel.DeleteReportGroupInput, 
            completion: @escaping (Result<CodeBuildModel.DeleteReportGroupOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the DeleteReportGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteReportGroupInput object being passed to this operation.
     - Returns: The DeleteReportGroupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    func deleteReportGroupSync(
            input: CodeBuildModel.DeleteReportGroupInput) throws -> CodeBuildModel.DeleteReportGroupOutput

    /**
     Invokes the DeleteResourcePolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteResourcePolicyInput object being passed to this operation.
         - completion: The DeleteResourcePolicyOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteResourcePolicyOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    func deleteResourcePolicyAsync(
            input: CodeBuildModel.DeleteResourcePolicyInput, 
            completion: @escaping (Result<CodeBuildModel.DeleteResourcePolicyOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the DeleteResourcePolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteResourcePolicyInput object being passed to this operation.
     - Returns: The DeleteResourcePolicyOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    func deleteResourcePolicySync(
            input: CodeBuildModel.DeleteResourcePolicyInput) throws -> CodeBuildModel.DeleteResourcePolicyOutput

    /**
     Invokes the DeleteSourceCredentials operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteSourceCredentialsInput object being passed to this operation.
         - completion: The DeleteSourceCredentialsOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteSourceCredentialsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    func deleteSourceCredentialsAsync(
            input: CodeBuildModel.DeleteSourceCredentialsInput, 
            completion: @escaping (Result<CodeBuildModel.DeleteSourceCredentialsOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the DeleteSourceCredentials operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteSourceCredentialsInput object being passed to this operation.
     - Returns: The DeleteSourceCredentialsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    func deleteSourceCredentialsSync(
            input: CodeBuildModel.DeleteSourceCredentialsInput) throws -> CodeBuildModel.DeleteSourceCredentialsOutput

    /**
     Invokes the DeleteWebhook operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteWebhookInput object being passed to this operation.
         - completion: The DeleteWebhookOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteWebhookOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, oAuthProvider, resourceNotFound.
     */
    func deleteWebhookAsync(
            input: CodeBuildModel.DeleteWebhookInput, 
            completion: @escaping (Result<CodeBuildModel.DeleteWebhookOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the DeleteWebhook operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteWebhookInput object being passed to this operation.
     - Returns: The DeleteWebhookOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, oAuthProvider, resourceNotFound.
     */
    func deleteWebhookSync(
            input: CodeBuildModel.DeleteWebhookInput) throws -> CodeBuildModel.DeleteWebhookOutput

    /**
     Invokes the DescribeCodeCoverages operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeCodeCoveragesInput object being passed to this operation.
         - completion: The DescribeCodeCoveragesOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeCodeCoveragesOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    func describeCodeCoveragesAsync(
            input: CodeBuildModel.DescribeCodeCoveragesInput, 
            completion: @escaping (Result<CodeBuildModel.DescribeCodeCoveragesOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the DescribeCodeCoverages operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeCodeCoveragesInput object being passed to this operation.
     - Returns: The DescribeCodeCoveragesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    func describeCodeCoveragesSync(
            input: CodeBuildModel.DescribeCodeCoveragesInput) throws -> CodeBuildModel.DescribeCodeCoveragesOutput

    /**
     Invokes the DescribeTestCases operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTestCasesInput object being passed to this operation.
         - completion: The DescribeTestCasesOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeTestCasesOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    func describeTestCasesAsync(
            input: CodeBuildModel.DescribeTestCasesInput, 
            completion: @escaping (Result<CodeBuildModel.DescribeTestCasesOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the DescribeTestCases operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTestCasesInput object being passed to this operation.
     - Returns: The DescribeTestCasesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    func describeTestCasesSync(
            input: CodeBuildModel.DescribeTestCasesInput) throws -> CodeBuildModel.DescribeTestCasesOutput

    /**
     Invokes the GetReportGroupTrend operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetReportGroupTrendInput object being passed to this operation.
         - completion: The GetReportGroupTrendOutput object or an error will be passed to this 
           callback when the operation is complete. The GetReportGroupTrendOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    func getReportGroupTrendAsync(
            input: CodeBuildModel.GetReportGroupTrendInput, 
            completion: @escaping (Result<CodeBuildModel.GetReportGroupTrendOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the GetReportGroupTrend operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetReportGroupTrendInput object being passed to this operation.
     - Returns: The GetReportGroupTrendOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    func getReportGroupTrendSync(
            input: CodeBuildModel.GetReportGroupTrendInput) throws -> CodeBuildModel.GetReportGroupTrendOutput

    /**
     Invokes the GetResourcePolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetResourcePolicyInput object being passed to this operation.
         - completion: The GetResourcePolicyOutput object or an error will be passed to this 
           callback when the operation is complete. The GetResourcePolicyOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    func getResourcePolicyAsync(
            input: CodeBuildModel.GetResourcePolicyInput, 
            completion: @escaping (Result<CodeBuildModel.GetResourcePolicyOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the GetResourcePolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetResourcePolicyInput object being passed to this operation.
     - Returns: The GetResourcePolicyOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    func getResourcePolicySync(
            input: CodeBuildModel.GetResourcePolicyInput) throws -> CodeBuildModel.GetResourcePolicyOutput

    /**
     Invokes the ImportSourceCredentials operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ImportSourceCredentialsInput object being passed to this operation.
         - completion: The ImportSourceCredentialsOutput object or an error will be passed to this 
           callback when the operation is complete. The ImportSourceCredentialsOutput
           object will be validated before being returned to caller.
           The possible errors are: accountLimitExceeded, invalidInput, resourceAlreadyExists.
     */
    func importSourceCredentialsAsync(
            input: CodeBuildModel.ImportSourceCredentialsInput, 
            completion: @escaping (Result<CodeBuildModel.ImportSourceCredentialsOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the ImportSourceCredentials operation waiting for the response before returning.

     - Parameters:
         - input: The validated ImportSourceCredentialsInput object being passed to this operation.
     - Returns: The ImportSourceCredentialsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accountLimitExceeded, invalidInput, resourceAlreadyExists.
     */
    func importSourceCredentialsSync(
            input: CodeBuildModel.ImportSourceCredentialsInput) throws -> CodeBuildModel.ImportSourceCredentialsOutput

    /**
     Invokes the InvalidateProjectCache operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated InvalidateProjectCacheInput object being passed to this operation.
         - completion: The InvalidateProjectCacheOutput object or an error will be passed to this 
           callback when the operation is complete. The InvalidateProjectCacheOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    func invalidateProjectCacheAsync(
            input: CodeBuildModel.InvalidateProjectCacheInput, 
            completion: @escaping (Result<CodeBuildModel.InvalidateProjectCacheOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the InvalidateProjectCache operation waiting for the response before returning.

     - Parameters:
         - input: The validated InvalidateProjectCacheInput object being passed to this operation.
     - Returns: The InvalidateProjectCacheOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    func invalidateProjectCacheSync(
            input: CodeBuildModel.InvalidateProjectCacheInput) throws -> CodeBuildModel.InvalidateProjectCacheOutput

    /**
     Invokes the ListBuildBatches operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListBuildBatchesInput object being passed to this operation.
         - completion: The ListBuildBatchesOutput object or an error will be passed to this 
           callback when the operation is complete. The ListBuildBatchesOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    func listBuildBatchesAsync(
            input: CodeBuildModel.ListBuildBatchesInput, 
            completion: @escaping (Result<CodeBuildModel.ListBuildBatchesOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the ListBuildBatches operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListBuildBatchesInput object being passed to this operation.
     - Returns: The ListBuildBatchesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    func listBuildBatchesSync(
            input: CodeBuildModel.ListBuildBatchesInput) throws -> CodeBuildModel.ListBuildBatchesOutput

    /**
     Invokes the ListBuildBatchesForProject operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListBuildBatchesForProjectInput object being passed to this operation.
         - completion: The ListBuildBatchesForProjectOutput object or an error will be passed to this 
           callback when the operation is complete. The ListBuildBatchesForProjectOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    func listBuildBatchesForProjectAsync(
            input: CodeBuildModel.ListBuildBatchesForProjectInput, 
            completion: @escaping (Result<CodeBuildModel.ListBuildBatchesForProjectOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the ListBuildBatchesForProject operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListBuildBatchesForProjectInput object being passed to this operation.
     - Returns: The ListBuildBatchesForProjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    func listBuildBatchesForProjectSync(
            input: CodeBuildModel.ListBuildBatchesForProjectInput) throws -> CodeBuildModel.ListBuildBatchesForProjectOutput

    /**
     Invokes the ListBuilds operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListBuildsInput object being passed to this operation.
         - completion: The ListBuildsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListBuildsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    func listBuildsAsync(
            input: CodeBuildModel.ListBuildsInput, 
            completion: @escaping (Result<CodeBuildModel.ListBuildsOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the ListBuilds operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListBuildsInput object being passed to this operation.
     - Returns: The ListBuildsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    func listBuildsSync(
            input: CodeBuildModel.ListBuildsInput) throws -> CodeBuildModel.ListBuildsOutput

    /**
     Invokes the ListBuildsForProject operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListBuildsForProjectInput object being passed to this operation.
         - completion: The ListBuildsForProjectOutput object or an error will be passed to this 
           callback when the operation is complete. The ListBuildsForProjectOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    func listBuildsForProjectAsync(
            input: CodeBuildModel.ListBuildsForProjectInput, 
            completion: @escaping (Result<CodeBuildModel.ListBuildsForProjectOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the ListBuildsForProject operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListBuildsForProjectInput object being passed to this operation.
     - Returns: The ListBuildsForProjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    func listBuildsForProjectSync(
            input: CodeBuildModel.ListBuildsForProjectInput) throws -> CodeBuildModel.ListBuildsForProjectOutput

    /**
     Invokes the ListCuratedEnvironmentImages operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListCuratedEnvironmentImagesInput object being passed to this operation.
         - completion: The ListCuratedEnvironmentImagesOutput object or an error will be passed to this 
           callback when the operation is complete. The ListCuratedEnvironmentImagesOutput
           object will be validated before being returned to caller.
     */
    func listCuratedEnvironmentImagesAsync(
            input: CodeBuildModel.ListCuratedEnvironmentImagesInput, 
            completion: @escaping (Result<CodeBuildModel.ListCuratedEnvironmentImagesOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the ListCuratedEnvironmentImages operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListCuratedEnvironmentImagesInput object being passed to this operation.
     - Returns: The ListCuratedEnvironmentImagesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listCuratedEnvironmentImagesSync(
            input: CodeBuildModel.ListCuratedEnvironmentImagesInput) throws -> CodeBuildModel.ListCuratedEnvironmentImagesOutput

    /**
     Invokes the ListProjects operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListProjectsInput object being passed to this operation.
         - completion: The ListProjectsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListProjectsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    func listProjectsAsync(
            input: CodeBuildModel.ListProjectsInput, 
            completion: @escaping (Result<CodeBuildModel.ListProjectsOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the ListProjects operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListProjectsInput object being passed to this operation.
     - Returns: The ListProjectsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    func listProjectsSync(
            input: CodeBuildModel.ListProjectsInput) throws -> CodeBuildModel.ListProjectsOutput

    /**
     Invokes the ListReportGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListReportGroupsInput object being passed to this operation.
         - completion: The ListReportGroupsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListReportGroupsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    func listReportGroupsAsync(
            input: CodeBuildModel.ListReportGroupsInput, 
            completion: @escaping (Result<CodeBuildModel.ListReportGroupsOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the ListReportGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListReportGroupsInput object being passed to this operation.
     - Returns: The ListReportGroupsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    func listReportGroupsSync(
            input: CodeBuildModel.ListReportGroupsInput) throws -> CodeBuildModel.ListReportGroupsOutput

    /**
     Invokes the ListReports operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListReportsInput object being passed to this operation.
         - completion: The ListReportsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListReportsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    func listReportsAsync(
            input: CodeBuildModel.ListReportsInput, 
            completion: @escaping (Result<CodeBuildModel.ListReportsOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the ListReports operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListReportsInput object being passed to this operation.
     - Returns: The ListReportsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    func listReportsSync(
            input: CodeBuildModel.ListReportsInput) throws -> CodeBuildModel.ListReportsOutput

    /**
     Invokes the ListReportsForReportGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListReportsForReportGroupInput object being passed to this operation.
         - completion: The ListReportsForReportGroupOutput object or an error will be passed to this 
           callback when the operation is complete. The ListReportsForReportGroupOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    func listReportsForReportGroupAsync(
            input: CodeBuildModel.ListReportsForReportGroupInput, 
            completion: @escaping (Result<CodeBuildModel.ListReportsForReportGroupOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the ListReportsForReportGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListReportsForReportGroupInput object being passed to this operation.
     - Returns: The ListReportsForReportGroupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    func listReportsForReportGroupSync(
            input: CodeBuildModel.ListReportsForReportGroupInput) throws -> CodeBuildModel.ListReportsForReportGroupOutput

    /**
     Invokes the ListSharedProjects operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListSharedProjectsInput object being passed to this operation.
         - completion: The ListSharedProjectsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListSharedProjectsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    func listSharedProjectsAsync(
            input: CodeBuildModel.ListSharedProjectsInput, 
            completion: @escaping (Result<CodeBuildModel.ListSharedProjectsOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the ListSharedProjects operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListSharedProjectsInput object being passed to this operation.
     - Returns: The ListSharedProjectsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    func listSharedProjectsSync(
            input: CodeBuildModel.ListSharedProjectsInput) throws -> CodeBuildModel.ListSharedProjectsOutput

    /**
     Invokes the ListSharedReportGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListSharedReportGroupsInput object being passed to this operation.
         - completion: The ListSharedReportGroupsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListSharedReportGroupsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    func listSharedReportGroupsAsync(
            input: CodeBuildModel.ListSharedReportGroupsInput, 
            completion: @escaping (Result<CodeBuildModel.ListSharedReportGroupsOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the ListSharedReportGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListSharedReportGroupsInput object being passed to this operation.
     - Returns: The ListSharedReportGroupsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    func listSharedReportGroupsSync(
            input: CodeBuildModel.ListSharedReportGroupsInput) throws -> CodeBuildModel.ListSharedReportGroupsOutput

    /**
     Invokes the ListSourceCredentials operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListSourceCredentialsInput object being passed to this operation.
         - completion: The ListSourceCredentialsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListSourceCredentialsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    func listSourceCredentialsAsync(
            input: CodeBuildModel.ListSourceCredentialsInput, 
            completion: @escaping (Result<CodeBuildModel.ListSourceCredentialsOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the ListSourceCredentials operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListSourceCredentialsInput object being passed to this operation.
     - Returns: The ListSourceCredentialsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    func listSourceCredentialsSync(
            input: CodeBuildModel.ListSourceCredentialsInput) throws -> CodeBuildModel.ListSourceCredentialsOutput

    /**
     Invokes the PutResourcePolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutResourcePolicyInput object being passed to this operation.
         - completion: The PutResourcePolicyOutput object or an error will be passed to this 
           callback when the operation is complete. The PutResourcePolicyOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    func putResourcePolicyAsync(
            input: CodeBuildModel.PutResourcePolicyInput, 
            completion: @escaping (Result<CodeBuildModel.PutResourcePolicyOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the PutResourcePolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutResourcePolicyInput object being passed to this operation.
     - Returns: The PutResourcePolicyOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    func putResourcePolicySync(
            input: CodeBuildModel.PutResourcePolicyInput) throws -> CodeBuildModel.PutResourcePolicyOutput

    /**
     Invokes the RetryBuild operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RetryBuildInput object being passed to this operation.
         - completion: The RetryBuildOutput object or an error will be passed to this 
           callback when the operation is complete. The RetryBuildOutput
           object will be validated before being returned to caller.
           The possible errors are: accountLimitExceeded, invalidInput, resourceNotFound.
     */
    func retryBuildAsync(
            input: CodeBuildModel.RetryBuildInput, 
            completion: @escaping (Result<CodeBuildModel.RetryBuildOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the RetryBuild operation waiting for the response before returning.

     - Parameters:
         - input: The validated RetryBuildInput object being passed to this operation.
     - Returns: The RetryBuildOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accountLimitExceeded, invalidInput, resourceNotFound.
     */
    func retryBuildSync(
            input: CodeBuildModel.RetryBuildInput) throws -> CodeBuildModel.RetryBuildOutput

    /**
     Invokes the RetryBuildBatch operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RetryBuildBatchInput object being passed to this operation.
         - completion: The RetryBuildBatchOutput object or an error will be passed to this 
           callback when the operation is complete. The RetryBuildBatchOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    func retryBuildBatchAsync(
            input: CodeBuildModel.RetryBuildBatchInput, 
            completion: @escaping (Result<CodeBuildModel.RetryBuildBatchOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the RetryBuildBatch operation waiting for the response before returning.

     - Parameters:
         - input: The validated RetryBuildBatchInput object being passed to this operation.
     - Returns: The RetryBuildBatchOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    func retryBuildBatchSync(
            input: CodeBuildModel.RetryBuildBatchInput) throws -> CodeBuildModel.RetryBuildBatchOutput

    /**
     Invokes the StartBuild operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartBuildInput object being passed to this operation.
         - completion: The StartBuildOutput object or an error will be passed to this 
           callback when the operation is complete. The StartBuildOutput
           object will be validated before being returned to caller.
           The possible errors are: accountLimitExceeded, invalidInput, resourceNotFound.
     */
    func startBuildAsync(
            input: CodeBuildModel.StartBuildInput, 
            completion: @escaping (Result<CodeBuildModel.StartBuildOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the StartBuild operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartBuildInput object being passed to this operation.
     - Returns: The StartBuildOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accountLimitExceeded, invalidInput, resourceNotFound.
     */
    func startBuildSync(
            input: CodeBuildModel.StartBuildInput) throws -> CodeBuildModel.StartBuildOutput

    /**
     Invokes the StartBuildBatch operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartBuildBatchInput object being passed to this operation.
         - completion: The StartBuildBatchOutput object or an error will be passed to this 
           callback when the operation is complete. The StartBuildBatchOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    func startBuildBatchAsync(
            input: CodeBuildModel.StartBuildBatchInput, 
            completion: @escaping (Result<CodeBuildModel.StartBuildBatchOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the StartBuildBatch operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartBuildBatchInput object being passed to this operation.
     - Returns: The StartBuildBatchOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    func startBuildBatchSync(
            input: CodeBuildModel.StartBuildBatchInput) throws -> CodeBuildModel.StartBuildBatchOutput

    /**
     Invokes the StopBuild operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopBuildInput object being passed to this operation.
         - completion: The StopBuildOutput object or an error will be passed to this 
           callback when the operation is complete. The StopBuildOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    func stopBuildAsync(
            input: CodeBuildModel.StopBuildInput, 
            completion: @escaping (Result<CodeBuildModel.StopBuildOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the StopBuild operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopBuildInput object being passed to this operation.
     - Returns: The StopBuildOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    func stopBuildSync(
            input: CodeBuildModel.StopBuildInput) throws -> CodeBuildModel.StopBuildOutput

    /**
     Invokes the StopBuildBatch operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopBuildBatchInput object being passed to this operation.
         - completion: The StopBuildBatchOutput object or an error will be passed to this 
           callback when the operation is complete. The StopBuildBatchOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    func stopBuildBatchAsync(
            input: CodeBuildModel.StopBuildBatchInput, 
            completion: @escaping (Result<CodeBuildModel.StopBuildBatchOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the StopBuildBatch operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopBuildBatchInput object being passed to this operation.
     - Returns: The StopBuildBatchOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    func stopBuildBatchSync(
            input: CodeBuildModel.StopBuildBatchInput) throws -> CodeBuildModel.StopBuildBatchOutput

    /**
     Invokes the UpdateProject operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateProjectInput object being passed to this operation.
         - completion: The UpdateProjectOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateProjectOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    func updateProjectAsync(
            input: CodeBuildModel.UpdateProjectInput, 
            completion: @escaping (Result<CodeBuildModel.UpdateProjectOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the UpdateProject operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateProjectInput object being passed to this operation.
     - Returns: The UpdateProjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    func updateProjectSync(
            input: CodeBuildModel.UpdateProjectInput) throws -> CodeBuildModel.UpdateProjectOutput

    /**
     Invokes the UpdateReportGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateReportGroupInput object being passed to this operation.
         - completion: The UpdateReportGroupOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateReportGroupOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    func updateReportGroupAsync(
            input: CodeBuildModel.UpdateReportGroupInput, 
            completion: @escaping (Result<CodeBuildModel.UpdateReportGroupOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the UpdateReportGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateReportGroupInput object being passed to this operation.
     - Returns: The UpdateReportGroupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    func updateReportGroupSync(
            input: CodeBuildModel.UpdateReportGroupInput) throws -> CodeBuildModel.UpdateReportGroupOutput

    /**
     Invokes the UpdateWebhook operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateWebhookInput object being passed to this operation.
         - completion: The UpdateWebhookOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateWebhookOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, oAuthProvider, resourceNotFound.
     */
    func updateWebhookAsync(
            input: CodeBuildModel.UpdateWebhookInput, 
            completion: @escaping (Result<CodeBuildModel.UpdateWebhookOutput, CodeBuildError>) -> ()) throws

    /**
     Invokes the UpdateWebhook operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateWebhookInput object being passed to this operation.
     - Returns: The UpdateWebhookOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, oAuthProvider, resourceNotFound.
     */
    func updateWebhookSync(
            input: CodeBuildModel.UpdateWebhookInput) throws -> CodeBuildModel.UpdateWebhookOutput
}
