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
// MockCodeBuildClient.swift
// CodeBuildClient
//

import Foundation
import CodeBuildModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the CodeBuild service by default returns the `__default` property of its return type.
 */
public struct MockCodeBuildClient: CodeBuildClientProtocol {
    let batchDeleteBuildsAsyncOverride: BatchDeleteBuildsAsyncType?
    let batchDeleteBuildsSyncOverride: BatchDeleteBuildsSyncType?
    let batchGetBuildBatchesAsyncOverride: BatchGetBuildBatchesAsyncType?
    let batchGetBuildBatchesSyncOverride: BatchGetBuildBatchesSyncType?
    let batchGetBuildsAsyncOverride: BatchGetBuildsAsyncType?
    let batchGetBuildsSyncOverride: BatchGetBuildsSyncType?
    let batchGetProjectsAsyncOverride: BatchGetProjectsAsyncType?
    let batchGetProjectsSyncOverride: BatchGetProjectsSyncType?
    let batchGetReportGroupsAsyncOverride: BatchGetReportGroupsAsyncType?
    let batchGetReportGroupsSyncOverride: BatchGetReportGroupsSyncType?
    let batchGetReportsAsyncOverride: BatchGetReportsAsyncType?
    let batchGetReportsSyncOverride: BatchGetReportsSyncType?
    let createProjectAsyncOverride: CreateProjectAsyncType?
    let createProjectSyncOverride: CreateProjectSyncType?
    let createReportGroupAsyncOverride: CreateReportGroupAsyncType?
    let createReportGroupSyncOverride: CreateReportGroupSyncType?
    let createWebhookAsyncOverride: CreateWebhookAsyncType?
    let createWebhookSyncOverride: CreateWebhookSyncType?
    let deleteBuildBatchAsyncOverride: DeleteBuildBatchAsyncType?
    let deleteBuildBatchSyncOverride: DeleteBuildBatchSyncType?
    let deleteProjectAsyncOverride: DeleteProjectAsyncType?
    let deleteProjectSyncOverride: DeleteProjectSyncType?
    let deleteReportAsyncOverride: DeleteReportAsyncType?
    let deleteReportSyncOverride: DeleteReportSyncType?
    let deleteReportGroupAsyncOverride: DeleteReportGroupAsyncType?
    let deleteReportGroupSyncOverride: DeleteReportGroupSyncType?
    let deleteResourcePolicyAsyncOverride: DeleteResourcePolicyAsyncType?
    let deleteResourcePolicySyncOverride: DeleteResourcePolicySyncType?
    let deleteSourceCredentialsAsyncOverride: DeleteSourceCredentialsAsyncType?
    let deleteSourceCredentialsSyncOverride: DeleteSourceCredentialsSyncType?
    let deleteWebhookAsyncOverride: DeleteWebhookAsyncType?
    let deleteWebhookSyncOverride: DeleteWebhookSyncType?
    let describeCodeCoveragesAsyncOverride: DescribeCodeCoveragesAsyncType?
    let describeCodeCoveragesSyncOverride: DescribeCodeCoveragesSyncType?
    let describeTestCasesAsyncOverride: DescribeTestCasesAsyncType?
    let describeTestCasesSyncOverride: DescribeTestCasesSyncType?
    let getReportGroupTrendAsyncOverride: GetReportGroupTrendAsyncType?
    let getReportGroupTrendSyncOverride: GetReportGroupTrendSyncType?
    let getResourcePolicyAsyncOverride: GetResourcePolicyAsyncType?
    let getResourcePolicySyncOverride: GetResourcePolicySyncType?
    let importSourceCredentialsAsyncOverride: ImportSourceCredentialsAsyncType?
    let importSourceCredentialsSyncOverride: ImportSourceCredentialsSyncType?
    let invalidateProjectCacheAsyncOverride: InvalidateProjectCacheAsyncType?
    let invalidateProjectCacheSyncOverride: InvalidateProjectCacheSyncType?
    let listBuildBatchesAsyncOverride: ListBuildBatchesAsyncType?
    let listBuildBatchesSyncOverride: ListBuildBatchesSyncType?
    let listBuildBatchesForProjectAsyncOverride: ListBuildBatchesForProjectAsyncType?
    let listBuildBatchesForProjectSyncOverride: ListBuildBatchesForProjectSyncType?
    let listBuildsAsyncOverride: ListBuildsAsyncType?
    let listBuildsSyncOverride: ListBuildsSyncType?
    let listBuildsForProjectAsyncOverride: ListBuildsForProjectAsyncType?
    let listBuildsForProjectSyncOverride: ListBuildsForProjectSyncType?
    let listCuratedEnvironmentImagesAsyncOverride: ListCuratedEnvironmentImagesAsyncType?
    let listCuratedEnvironmentImagesSyncOverride: ListCuratedEnvironmentImagesSyncType?
    let listProjectsAsyncOverride: ListProjectsAsyncType?
    let listProjectsSyncOverride: ListProjectsSyncType?
    let listReportGroupsAsyncOverride: ListReportGroupsAsyncType?
    let listReportGroupsSyncOverride: ListReportGroupsSyncType?
    let listReportsAsyncOverride: ListReportsAsyncType?
    let listReportsSyncOverride: ListReportsSyncType?
    let listReportsForReportGroupAsyncOverride: ListReportsForReportGroupAsyncType?
    let listReportsForReportGroupSyncOverride: ListReportsForReportGroupSyncType?
    let listSharedProjectsAsyncOverride: ListSharedProjectsAsyncType?
    let listSharedProjectsSyncOverride: ListSharedProjectsSyncType?
    let listSharedReportGroupsAsyncOverride: ListSharedReportGroupsAsyncType?
    let listSharedReportGroupsSyncOverride: ListSharedReportGroupsSyncType?
    let listSourceCredentialsAsyncOverride: ListSourceCredentialsAsyncType?
    let listSourceCredentialsSyncOverride: ListSourceCredentialsSyncType?
    let putResourcePolicyAsyncOverride: PutResourcePolicyAsyncType?
    let putResourcePolicySyncOverride: PutResourcePolicySyncType?
    let retryBuildAsyncOverride: RetryBuildAsyncType?
    let retryBuildSyncOverride: RetryBuildSyncType?
    let retryBuildBatchAsyncOverride: RetryBuildBatchAsyncType?
    let retryBuildBatchSyncOverride: RetryBuildBatchSyncType?
    let startBuildAsyncOverride: StartBuildAsyncType?
    let startBuildSyncOverride: StartBuildSyncType?
    let startBuildBatchAsyncOverride: StartBuildBatchAsyncType?
    let startBuildBatchSyncOverride: StartBuildBatchSyncType?
    let stopBuildAsyncOverride: StopBuildAsyncType?
    let stopBuildSyncOverride: StopBuildSyncType?
    let stopBuildBatchAsyncOverride: StopBuildBatchAsyncType?
    let stopBuildBatchSyncOverride: StopBuildBatchSyncType?
    let updateProjectAsyncOverride: UpdateProjectAsyncType?
    let updateProjectSyncOverride: UpdateProjectSyncType?
    let updateReportGroupAsyncOverride: UpdateReportGroupAsyncType?
    let updateReportGroupSyncOverride: UpdateReportGroupSyncType?
    let updateWebhookAsyncOverride: UpdateWebhookAsyncType?
    let updateWebhookSyncOverride: UpdateWebhookSyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            batchDeleteBuildsAsync: BatchDeleteBuildsAsyncType? = nil,
            batchDeleteBuildsSync: BatchDeleteBuildsSyncType? = nil,
            batchGetBuildBatchesAsync: BatchGetBuildBatchesAsyncType? = nil,
            batchGetBuildBatchesSync: BatchGetBuildBatchesSyncType? = nil,
            batchGetBuildsAsync: BatchGetBuildsAsyncType? = nil,
            batchGetBuildsSync: BatchGetBuildsSyncType? = nil,
            batchGetProjectsAsync: BatchGetProjectsAsyncType? = nil,
            batchGetProjectsSync: BatchGetProjectsSyncType? = nil,
            batchGetReportGroupsAsync: BatchGetReportGroupsAsyncType? = nil,
            batchGetReportGroupsSync: BatchGetReportGroupsSyncType? = nil,
            batchGetReportsAsync: BatchGetReportsAsyncType? = nil,
            batchGetReportsSync: BatchGetReportsSyncType? = nil,
            createProjectAsync: CreateProjectAsyncType? = nil,
            createProjectSync: CreateProjectSyncType? = nil,
            createReportGroupAsync: CreateReportGroupAsyncType? = nil,
            createReportGroupSync: CreateReportGroupSyncType? = nil,
            createWebhookAsync: CreateWebhookAsyncType? = nil,
            createWebhookSync: CreateWebhookSyncType? = nil,
            deleteBuildBatchAsync: DeleteBuildBatchAsyncType? = nil,
            deleteBuildBatchSync: DeleteBuildBatchSyncType? = nil,
            deleteProjectAsync: DeleteProjectAsyncType? = nil,
            deleteProjectSync: DeleteProjectSyncType? = nil,
            deleteReportAsync: DeleteReportAsyncType? = nil,
            deleteReportSync: DeleteReportSyncType? = nil,
            deleteReportGroupAsync: DeleteReportGroupAsyncType? = nil,
            deleteReportGroupSync: DeleteReportGroupSyncType? = nil,
            deleteResourcePolicyAsync: DeleteResourcePolicyAsyncType? = nil,
            deleteResourcePolicySync: DeleteResourcePolicySyncType? = nil,
            deleteSourceCredentialsAsync: DeleteSourceCredentialsAsyncType? = nil,
            deleteSourceCredentialsSync: DeleteSourceCredentialsSyncType? = nil,
            deleteWebhookAsync: DeleteWebhookAsyncType? = nil,
            deleteWebhookSync: DeleteWebhookSyncType? = nil,
            describeCodeCoveragesAsync: DescribeCodeCoveragesAsyncType? = nil,
            describeCodeCoveragesSync: DescribeCodeCoveragesSyncType? = nil,
            describeTestCasesAsync: DescribeTestCasesAsyncType? = nil,
            describeTestCasesSync: DescribeTestCasesSyncType? = nil,
            getReportGroupTrendAsync: GetReportGroupTrendAsyncType? = nil,
            getReportGroupTrendSync: GetReportGroupTrendSyncType? = nil,
            getResourcePolicyAsync: GetResourcePolicyAsyncType? = nil,
            getResourcePolicySync: GetResourcePolicySyncType? = nil,
            importSourceCredentialsAsync: ImportSourceCredentialsAsyncType? = nil,
            importSourceCredentialsSync: ImportSourceCredentialsSyncType? = nil,
            invalidateProjectCacheAsync: InvalidateProjectCacheAsyncType? = nil,
            invalidateProjectCacheSync: InvalidateProjectCacheSyncType? = nil,
            listBuildBatchesAsync: ListBuildBatchesAsyncType? = nil,
            listBuildBatchesSync: ListBuildBatchesSyncType? = nil,
            listBuildBatchesForProjectAsync: ListBuildBatchesForProjectAsyncType? = nil,
            listBuildBatchesForProjectSync: ListBuildBatchesForProjectSyncType? = nil,
            listBuildsAsync: ListBuildsAsyncType? = nil,
            listBuildsSync: ListBuildsSyncType? = nil,
            listBuildsForProjectAsync: ListBuildsForProjectAsyncType? = nil,
            listBuildsForProjectSync: ListBuildsForProjectSyncType? = nil,
            listCuratedEnvironmentImagesAsync: ListCuratedEnvironmentImagesAsyncType? = nil,
            listCuratedEnvironmentImagesSync: ListCuratedEnvironmentImagesSyncType? = nil,
            listProjectsAsync: ListProjectsAsyncType? = nil,
            listProjectsSync: ListProjectsSyncType? = nil,
            listReportGroupsAsync: ListReportGroupsAsyncType? = nil,
            listReportGroupsSync: ListReportGroupsSyncType? = nil,
            listReportsAsync: ListReportsAsyncType? = nil,
            listReportsSync: ListReportsSyncType? = nil,
            listReportsForReportGroupAsync: ListReportsForReportGroupAsyncType? = nil,
            listReportsForReportGroupSync: ListReportsForReportGroupSyncType? = nil,
            listSharedProjectsAsync: ListSharedProjectsAsyncType? = nil,
            listSharedProjectsSync: ListSharedProjectsSyncType? = nil,
            listSharedReportGroupsAsync: ListSharedReportGroupsAsyncType? = nil,
            listSharedReportGroupsSync: ListSharedReportGroupsSyncType? = nil,
            listSourceCredentialsAsync: ListSourceCredentialsAsyncType? = nil,
            listSourceCredentialsSync: ListSourceCredentialsSyncType? = nil,
            putResourcePolicyAsync: PutResourcePolicyAsyncType? = nil,
            putResourcePolicySync: PutResourcePolicySyncType? = nil,
            retryBuildAsync: RetryBuildAsyncType? = nil,
            retryBuildSync: RetryBuildSyncType? = nil,
            retryBuildBatchAsync: RetryBuildBatchAsyncType? = nil,
            retryBuildBatchSync: RetryBuildBatchSyncType? = nil,
            startBuildAsync: StartBuildAsyncType? = nil,
            startBuildSync: StartBuildSyncType? = nil,
            startBuildBatchAsync: StartBuildBatchAsyncType? = nil,
            startBuildBatchSync: StartBuildBatchSyncType? = nil,
            stopBuildAsync: StopBuildAsyncType? = nil,
            stopBuildSync: StopBuildSyncType? = nil,
            stopBuildBatchAsync: StopBuildBatchAsyncType? = nil,
            stopBuildBatchSync: StopBuildBatchSyncType? = nil,
            updateProjectAsync: UpdateProjectAsyncType? = nil,
            updateProjectSync: UpdateProjectSyncType? = nil,
            updateReportGroupAsync: UpdateReportGroupAsyncType? = nil,
            updateReportGroupSync: UpdateReportGroupSyncType? = nil,
            updateWebhookAsync: UpdateWebhookAsyncType? = nil,
            updateWebhookSync: UpdateWebhookSyncType? = nil) {
        self.batchDeleteBuildsAsyncOverride = batchDeleteBuildsAsync
        self.batchDeleteBuildsSyncOverride = batchDeleteBuildsSync
        self.batchGetBuildBatchesAsyncOverride = batchGetBuildBatchesAsync
        self.batchGetBuildBatchesSyncOverride = batchGetBuildBatchesSync
        self.batchGetBuildsAsyncOverride = batchGetBuildsAsync
        self.batchGetBuildsSyncOverride = batchGetBuildsSync
        self.batchGetProjectsAsyncOverride = batchGetProjectsAsync
        self.batchGetProjectsSyncOverride = batchGetProjectsSync
        self.batchGetReportGroupsAsyncOverride = batchGetReportGroupsAsync
        self.batchGetReportGroupsSyncOverride = batchGetReportGroupsSync
        self.batchGetReportsAsyncOverride = batchGetReportsAsync
        self.batchGetReportsSyncOverride = batchGetReportsSync
        self.createProjectAsyncOverride = createProjectAsync
        self.createProjectSyncOverride = createProjectSync
        self.createReportGroupAsyncOverride = createReportGroupAsync
        self.createReportGroupSyncOverride = createReportGroupSync
        self.createWebhookAsyncOverride = createWebhookAsync
        self.createWebhookSyncOverride = createWebhookSync
        self.deleteBuildBatchAsyncOverride = deleteBuildBatchAsync
        self.deleteBuildBatchSyncOverride = deleteBuildBatchSync
        self.deleteProjectAsyncOverride = deleteProjectAsync
        self.deleteProjectSyncOverride = deleteProjectSync
        self.deleteReportAsyncOverride = deleteReportAsync
        self.deleteReportSyncOverride = deleteReportSync
        self.deleteReportGroupAsyncOverride = deleteReportGroupAsync
        self.deleteReportGroupSyncOverride = deleteReportGroupSync
        self.deleteResourcePolicyAsyncOverride = deleteResourcePolicyAsync
        self.deleteResourcePolicySyncOverride = deleteResourcePolicySync
        self.deleteSourceCredentialsAsyncOverride = deleteSourceCredentialsAsync
        self.deleteSourceCredentialsSyncOverride = deleteSourceCredentialsSync
        self.deleteWebhookAsyncOverride = deleteWebhookAsync
        self.deleteWebhookSyncOverride = deleteWebhookSync
        self.describeCodeCoveragesAsyncOverride = describeCodeCoveragesAsync
        self.describeCodeCoveragesSyncOverride = describeCodeCoveragesSync
        self.describeTestCasesAsyncOverride = describeTestCasesAsync
        self.describeTestCasesSyncOverride = describeTestCasesSync
        self.getReportGroupTrendAsyncOverride = getReportGroupTrendAsync
        self.getReportGroupTrendSyncOverride = getReportGroupTrendSync
        self.getResourcePolicyAsyncOverride = getResourcePolicyAsync
        self.getResourcePolicySyncOverride = getResourcePolicySync
        self.importSourceCredentialsAsyncOverride = importSourceCredentialsAsync
        self.importSourceCredentialsSyncOverride = importSourceCredentialsSync
        self.invalidateProjectCacheAsyncOverride = invalidateProjectCacheAsync
        self.invalidateProjectCacheSyncOverride = invalidateProjectCacheSync
        self.listBuildBatchesAsyncOverride = listBuildBatchesAsync
        self.listBuildBatchesSyncOverride = listBuildBatchesSync
        self.listBuildBatchesForProjectAsyncOverride = listBuildBatchesForProjectAsync
        self.listBuildBatchesForProjectSyncOverride = listBuildBatchesForProjectSync
        self.listBuildsAsyncOverride = listBuildsAsync
        self.listBuildsSyncOverride = listBuildsSync
        self.listBuildsForProjectAsyncOverride = listBuildsForProjectAsync
        self.listBuildsForProjectSyncOverride = listBuildsForProjectSync
        self.listCuratedEnvironmentImagesAsyncOverride = listCuratedEnvironmentImagesAsync
        self.listCuratedEnvironmentImagesSyncOverride = listCuratedEnvironmentImagesSync
        self.listProjectsAsyncOverride = listProjectsAsync
        self.listProjectsSyncOverride = listProjectsSync
        self.listReportGroupsAsyncOverride = listReportGroupsAsync
        self.listReportGroupsSyncOverride = listReportGroupsSync
        self.listReportsAsyncOverride = listReportsAsync
        self.listReportsSyncOverride = listReportsSync
        self.listReportsForReportGroupAsyncOverride = listReportsForReportGroupAsync
        self.listReportsForReportGroupSyncOverride = listReportsForReportGroupSync
        self.listSharedProjectsAsyncOverride = listSharedProjectsAsync
        self.listSharedProjectsSyncOverride = listSharedProjectsSync
        self.listSharedReportGroupsAsyncOverride = listSharedReportGroupsAsync
        self.listSharedReportGroupsSyncOverride = listSharedReportGroupsSync
        self.listSourceCredentialsAsyncOverride = listSourceCredentialsAsync
        self.listSourceCredentialsSyncOverride = listSourceCredentialsSync
        self.putResourcePolicyAsyncOverride = putResourcePolicyAsync
        self.putResourcePolicySyncOverride = putResourcePolicySync
        self.retryBuildAsyncOverride = retryBuildAsync
        self.retryBuildSyncOverride = retryBuildSync
        self.retryBuildBatchAsyncOverride = retryBuildBatchAsync
        self.retryBuildBatchSyncOverride = retryBuildBatchSync
        self.startBuildAsyncOverride = startBuildAsync
        self.startBuildSyncOverride = startBuildSync
        self.startBuildBatchAsyncOverride = startBuildBatchAsync
        self.startBuildBatchSyncOverride = startBuildBatchSync
        self.stopBuildAsyncOverride = stopBuildAsync
        self.stopBuildSyncOverride = stopBuildSync
        self.stopBuildBatchAsyncOverride = stopBuildBatchAsync
        self.stopBuildBatchSyncOverride = stopBuildBatchSync
        self.updateProjectAsyncOverride = updateProjectAsync
        self.updateProjectSyncOverride = updateProjectSync
        self.updateReportGroupAsyncOverride = updateReportGroupAsync
        self.updateReportGroupSyncOverride = updateReportGroupSync
        self.updateWebhookAsyncOverride = updateWebhookAsync
        self.updateWebhookSyncOverride = updateWebhookSync
    }

    /**
     Invokes the BatchDeleteBuilds operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchDeleteBuildsInput object being passed to this operation.
         - completion: The BatchDeleteBuildsOutput object or an error will be passed to this 
           callback when the operation is complete. The BatchDeleteBuildsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func batchDeleteBuildsAsync(
            input: CodeBuildModel.BatchDeleteBuildsInput, 
            completion: @escaping (Result<CodeBuildModel.BatchDeleteBuildsOutput, CodeBuildError>) -> ()) throws {
        if let batchDeleteBuildsAsyncOverride = batchDeleteBuildsAsyncOverride {
            return try batchDeleteBuildsAsyncOverride(input, completion)
        }

        let result = BatchDeleteBuildsOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the BatchDeleteBuilds operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchDeleteBuildsInput object being passed to this operation.
     - Returns: The BatchDeleteBuildsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func batchDeleteBuildsSync(
            input: CodeBuildModel.BatchDeleteBuildsInput) throws -> CodeBuildModel.BatchDeleteBuildsOutput {
        if let batchDeleteBuildsSyncOverride = batchDeleteBuildsSyncOverride {
            return try batchDeleteBuildsSyncOverride(input)
        }

        return BatchDeleteBuildsOutput.__default
    }

    /**
     Invokes the BatchGetBuildBatches operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchGetBuildBatchesInput object being passed to this operation.
         - completion: The BatchGetBuildBatchesOutput object or an error will be passed to this 
           callback when the operation is complete. The BatchGetBuildBatchesOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func batchGetBuildBatchesAsync(
            input: CodeBuildModel.BatchGetBuildBatchesInput, 
            completion: @escaping (Result<CodeBuildModel.BatchGetBuildBatchesOutput, CodeBuildError>) -> ()) throws {
        if let batchGetBuildBatchesAsyncOverride = batchGetBuildBatchesAsyncOverride {
            return try batchGetBuildBatchesAsyncOverride(input, completion)
        }

        let result = BatchGetBuildBatchesOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the BatchGetBuildBatches operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchGetBuildBatchesInput object being passed to this operation.
     - Returns: The BatchGetBuildBatchesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func batchGetBuildBatchesSync(
            input: CodeBuildModel.BatchGetBuildBatchesInput) throws -> CodeBuildModel.BatchGetBuildBatchesOutput {
        if let batchGetBuildBatchesSyncOverride = batchGetBuildBatchesSyncOverride {
            return try batchGetBuildBatchesSyncOverride(input)
        }

        return BatchGetBuildBatchesOutput.__default
    }

    /**
     Invokes the BatchGetBuilds operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchGetBuildsInput object being passed to this operation.
         - completion: The BatchGetBuildsOutput object or an error will be passed to this 
           callback when the operation is complete. The BatchGetBuildsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func batchGetBuildsAsync(
            input: CodeBuildModel.BatchGetBuildsInput, 
            completion: @escaping (Result<CodeBuildModel.BatchGetBuildsOutput, CodeBuildError>) -> ()) throws {
        if let batchGetBuildsAsyncOverride = batchGetBuildsAsyncOverride {
            return try batchGetBuildsAsyncOverride(input, completion)
        }

        let result = BatchGetBuildsOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the BatchGetBuilds operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchGetBuildsInput object being passed to this operation.
     - Returns: The BatchGetBuildsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func batchGetBuildsSync(
            input: CodeBuildModel.BatchGetBuildsInput) throws -> CodeBuildModel.BatchGetBuildsOutput {
        if let batchGetBuildsSyncOverride = batchGetBuildsSyncOverride {
            return try batchGetBuildsSyncOverride(input)
        }

        return BatchGetBuildsOutput.__default
    }

    /**
     Invokes the BatchGetProjects operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchGetProjectsInput object being passed to this operation.
         - completion: The BatchGetProjectsOutput object or an error will be passed to this 
           callback when the operation is complete. The BatchGetProjectsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func batchGetProjectsAsync(
            input: CodeBuildModel.BatchGetProjectsInput, 
            completion: @escaping (Result<CodeBuildModel.BatchGetProjectsOutput, CodeBuildError>) -> ()) throws {
        if let batchGetProjectsAsyncOverride = batchGetProjectsAsyncOverride {
            return try batchGetProjectsAsyncOverride(input, completion)
        }

        let result = BatchGetProjectsOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the BatchGetProjects operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchGetProjectsInput object being passed to this operation.
     - Returns: The BatchGetProjectsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func batchGetProjectsSync(
            input: CodeBuildModel.BatchGetProjectsInput) throws -> CodeBuildModel.BatchGetProjectsOutput {
        if let batchGetProjectsSyncOverride = batchGetProjectsSyncOverride {
            return try batchGetProjectsSyncOverride(input)
        }

        return BatchGetProjectsOutput.__default
    }

    /**
     Invokes the BatchGetReportGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchGetReportGroupsInput object being passed to this operation.
         - completion: The BatchGetReportGroupsOutput object or an error will be passed to this 
           callback when the operation is complete. The BatchGetReportGroupsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func batchGetReportGroupsAsync(
            input: CodeBuildModel.BatchGetReportGroupsInput, 
            completion: @escaping (Result<CodeBuildModel.BatchGetReportGroupsOutput, CodeBuildError>) -> ()) throws {
        if let batchGetReportGroupsAsyncOverride = batchGetReportGroupsAsyncOverride {
            return try batchGetReportGroupsAsyncOverride(input, completion)
        }

        let result = BatchGetReportGroupsOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the BatchGetReportGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchGetReportGroupsInput object being passed to this operation.
     - Returns: The BatchGetReportGroupsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func batchGetReportGroupsSync(
            input: CodeBuildModel.BatchGetReportGroupsInput) throws -> CodeBuildModel.BatchGetReportGroupsOutput {
        if let batchGetReportGroupsSyncOverride = batchGetReportGroupsSyncOverride {
            return try batchGetReportGroupsSyncOverride(input)
        }

        return BatchGetReportGroupsOutput.__default
    }

    /**
     Invokes the BatchGetReports operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchGetReportsInput object being passed to this operation.
         - completion: The BatchGetReportsOutput object or an error will be passed to this 
           callback when the operation is complete. The BatchGetReportsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func batchGetReportsAsync(
            input: CodeBuildModel.BatchGetReportsInput, 
            completion: @escaping (Result<CodeBuildModel.BatchGetReportsOutput, CodeBuildError>) -> ()) throws {
        if let batchGetReportsAsyncOverride = batchGetReportsAsyncOverride {
            return try batchGetReportsAsyncOverride(input, completion)
        }

        let result = BatchGetReportsOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the BatchGetReports operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchGetReportsInput object being passed to this operation.
     - Returns: The BatchGetReportsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func batchGetReportsSync(
            input: CodeBuildModel.BatchGetReportsInput) throws -> CodeBuildModel.BatchGetReportsOutput {
        if let batchGetReportsSyncOverride = batchGetReportsSyncOverride {
            return try batchGetReportsSyncOverride(input)
        }

        return BatchGetReportsOutput.__default
    }

    /**
     Invokes the CreateProject operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateProjectInput object being passed to this operation.
         - completion: The CreateProjectOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateProjectOutput
           object will be validated before being returned to caller.
           The possible errors are: accountLimitExceeded, invalidInput, resourceAlreadyExists.
     */
    public func createProjectAsync(
            input: CodeBuildModel.CreateProjectInput, 
            completion: @escaping (Result<CodeBuildModel.CreateProjectOutput, CodeBuildError>) -> ()) throws {
        if let createProjectAsyncOverride = createProjectAsyncOverride {
            return try createProjectAsyncOverride(input, completion)
        }

        let result = CreateProjectOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the CreateProject operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateProjectInput object being passed to this operation.
     - Returns: The CreateProjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accountLimitExceeded, invalidInput, resourceAlreadyExists.
     */
    public func createProjectSync(
            input: CodeBuildModel.CreateProjectInput) throws -> CodeBuildModel.CreateProjectOutput {
        if let createProjectSyncOverride = createProjectSyncOverride {
            return try createProjectSyncOverride(input)
        }

        return CreateProjectOutput.__default
    }

    /**
     Invokes the CreateReportGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateReportGroupInput object being passed to this operation.
         - completion: The CreateReportGroupOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateReportGroupOutput
           object will be validated before being returned to caller.
           The possible errors are: accountLimitExceeded, invalidInput, resourceAlreadyExists.
     */
    public func createReportGroupAsync(
            input: CodeBuildModel.CreateReportGroupInput, 
            completion: @escaping (Result<CodeBuildModel.CreateReportGroupOutput, CodeBuildError>) -> ()) throws {
        if let createReportGroupAsyncOverride = createReportGroupAsyncOverride {
            return try createReportGroupAsyncOverride(input, completion)
        }

        let result = CreateReportGroupOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the CreateReportGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateReportGroupInput object being passed to this operation.
     - Returns: The CreateReportGroupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accountLimitExceeded, invalidInput, resourceAlreadyExists.
     */
    public func createReportGroupSync(
            input: CodeBuildModel.CreateReportGroupInput) throws -> CodeBuildModel.CreateReportGroupOutput {
        if let createReportGroupSyncOverride = createReportGroupSyncOverride {
            return try createReportGroupSyncOverride(input)
        }

        return CreateReportGroupOutput.__default
    }

    /**
     Invokes the CreateWebhook operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateWebhookInput object being passed to this operation.
         - completion: The CreateWebhookOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateWebhookOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, oAuthProvider, resourceAlreadyExists, resourceNotFound.
     */
    public func createWebhookAsync(
            input: CodeBuildModel.CreateWebhookInput, 
            completion: @escaping (Result<CodeBuildModel.CreateWebhookOutput, CodeBuildError>) -> ()) throws {
        if let createWebhookAsyncOverride = createWebhookAsyncOverride {
            return try createWebhookAsyncOverride(input, completion)
        }

        let result = CreateWebhookOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the CreateWebhook operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateWebhookInput object being passed to this operation.
     - Returns: The CreateWebhookOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, oAuthProvider, resourceAlreadyExists, resourceNotFound.
     */
    public func createWebhookSync(
            input: CodeBuildModel.CreateWebhookInput) throws -> CodeBuildModel.CreateWebhookOutput {
        if let createWebhookSyncOverride = createWebhookSyncOverride {
            return try createWebhookSyncOverride(input)
        }

        return CreateWebhookOutput.__default
    }

    /**
     Invokes the DeleteBuildBatch operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBuildBatchInput object being passed to this operation.
         - completion: The DeleteBuildBatchOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteBuildBatchOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func deleteBuildBatchAsync(
            input: CodeBuildModel.DeleteBuildBatchInput, 
            completion: @escaping (Result<CodeBuildModel.DeleteBuildBatchOutput, CodeBuildError>) -> ()) throws {
        if let deleteBuildBatchAsyncOverride = deleteBuildBatchAsyncOverride {
            return try deleteBuildBatchAsyncOverride(input, completion)
        }

        let result = DeleteBuildBatchOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DeleteBuildBatch operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBuildBatchInput object being passed to this operation.
     - Returns: The DeleteBuildBatchOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func deleteBuildBatchSync(
            input: CodeBuildModel.DeleteBuildBatchInput) throws -> CodeBuildModel.DeleteBuildBatchOutput {
        if let deleteBuildBatchSyncOverride = deleteBuildBatchSyncOverride {
            return try deleteBuildBatchSyncOverride(input)
        }

        return DeleteBuildBatchOutput.__default
    }

    /**
     Invokes the DeleteProject operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteProjectInput object being passed to this operation.
         - completion: The DeleteProjectOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteProjectOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func deleteProjectAsync(
            input: CodeBuildModel.DeleteProjectInput, 
            completion: @escaping (Result<CodeBuildModel.DeleteProjectOutput, CodeBuildError>) -> ()) throws {
        if let deleteProjectAsyncOverride = deleteProjectAsyncOverride {
            return try deleteProjectAsyncOverride(input, completion)
        }

        let result = DeleteProjectOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DeleteProject operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteProjectInput object being passed to this operation.
     - Returns: The DeleteProjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func deleteProjectSync(
            input: CodeBuildModel.DeleteProjectInput) throws -> CodeBuildModel.DeleteProjectOutput {
        if let deleteProjectSyncOverride = deleteProjectSyncOverride {
            return try deleteProjectSyncOverride(input)
        }

        return DeleteProjectOutput.__default
    }

    /**
     Invokes the DeleteReport operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteReportInput object being passed to this operation.
         - completion: The DeleteReportOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteReportOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func deleteReportAsync(
            input: CodeBuildModel.DeleteReportInput, 
            completion: @escaping (Result<CodeBuildModel.DeleteReportOutput, CodeBuildError>) -> ()) throws {
        if let deleteReportAsyncOverride = deleteReportAsyncOverride {
            return try deleteReportAsyncOverride(input, completion)
        }

        let result = DeleteReportOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DeleteReport operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteReportInput object being passed to this operation.
     - Returns: The DeleteReportOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func deleteReportSync(
            input: CodeBuildModel.DeleteReportInput) throws -> CodeBuildModel.DeleteReportOutput {
        if let deleteReportSyncOverride = deleteReportSyncOverride {
            return try deleteReportSyncOverride(input)
        }

        return DeleteReportOutput.__default
    }

    /**
     Invokes the DeleteReportGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteReportGroupInput object being passed to this operation.
         - completion: The DeleteReportGroupOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteReportGroupOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func deleteReportGroupAsync(
            input: CodeBuildModel.DeleteReportGroupInput, 
            completion: @escaping (Result<CodeBuildModel.DeleteReportGroupOutput, CodeBuildError>) -> ()) throws {
        if let deleteReportGroupAsyncOverride = deleteReportGroupAsyncOverride {
            return try deleteReportGroupAsyncOverride(input, completion)
        }

        let result = DeleteReportGroupOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DeleteReportGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteReportGroupInput object being passed to this operation.
     - Returns: The DeleteReportGroupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func deleteReportGroupSync(
            input: CodeBuildModel.DeleteReportGroupInput) throws -> CodeBuildModel.DeleteReportGroupOutput {
        if let deleteReportGroupSyncOverride = deleteReportGroupSyncOverride {
            return try deleteReportGroupSyncOverride(input)
        }

        return DeleteReportGroupOutput.__default
    }

    /**
     Invokes the DeleteResourcePolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteResourcePolicyInput object being passed to this operation.
         - completion: The DeleteResourcePolicyOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteResourcePolicyOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func deleteResourcePolicyAsync(
            input: CodeBuildModel.DeleteResourcePolicyInput, 
            completion: @escaping (Result<CodeBuildModel.DeleteResourcePolicyOutput, CodeBuildError>) -> ()) throws {
        if let deleteResourcePolicyAsyncOverride = deleteResourcePolicyAsyncOverride {
            return try deleteResourcePolicyAsyncOverride(input, completion)
        }

        let result = DeleteResourcePolicyOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DeleteResourcePolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteResourcePolicyInput object being passed to this operation.
     - Returns: The DeleteResourcePolicyOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func deleteResourcePolicySync(
            input: CodeBuildModel.DeleteResourcePolicyInput) throws -> CodeBuildModel.DeleteResourcePolicyOutput {
        if let deleteResourcePolicySyncOverride = deleteResourcePolicySyncOverride {
            return try deleteResourcePolicySyncOverride(input)
        }

        return DeleteResourcePolicyOutput.__default
    }

    /**
     Invokes the DeleteSourceCredentials operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteSourceCredentialsInput object being passed to this operation.
         - completion: The DeleteSourceCredentialsOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteSourceCredentialsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    public func deleteSourceCredentialsAsync(
            input: CodeBuildModel.DeleteSourceCredentialsInput, 
            completion: @escaping (Result<CodeBuildModel.DeleteSourceCredentialsOutput, CodeBuildError>) -> ()) throws {
        if let deleteSourceCredentialsAsyncOverride = deleteSourceCredentialsAsyncOverride {
            return try deleteSourceCredentialsAsyncOverride(input, completion)
        }

        let result = DeleteSourceCredentialsOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DeleteSourceCredentials operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteSourceCredentialsInput object being passed to this operation.
     - Returns: The DeleteSourceCredentialsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    public func deleteSourceCredentialsSync(
            input: CodeBuildModel.DeleteSourceCredentialsInput) throws -> CodeBuildModel.DeleteSourceCredentialsOutput {
        if let deleteSourceCredentialsSyncOverride = deleteSourceCredentialsSyncOverride {
            return try deleteSourceCredentialsSyncOverride(input)
        }

        return DeleteSourceCredentialsOutput.__default
    }

    /**
     Invokes the DeleteWebhook operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteWebhookInput object being passed to this operation.
         - completion: The DeleteWebhookOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteWebhookOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, oAuthProvider, resourceNotFound.
     */
    public func deleteWebhookAsync(
            input: CodeBuildModel.DeleteWebhookInput, 
            completion: @escaping (Result<CodeBuildModel.DeleteWebhookOutput, CodeBuildError>) -> ()) throws {
        if let deleteWebhookAsyncOverride = deleteWebhookAsyncOverride {
            return try deleteWebhookAsyncOverride(input, completion)
        }

        let result = DeleteWebhookOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DeleteWebhook operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteWebhookInput object being passed to this operation.
     - Returns: The DeleteWebhookOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, oAuthProvider, resourceNotFound.
     */
    public func deleteWebhookSync(
            input: CodeBuildModel.DeleteWebhookInput) throws -> CodeBuildModel.DeleteWebhookOutput {
        if let deleteWebhookSyncOverride = deleteWebhookSyncOverride {
            return try deleteWebhookSyncOverride(input)
        }

        return DeleteWebhookOutput.__default
    }

    /**
     Invokes the DescribeCodeCoverages operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeCodeCoveragesInput object being passed to this operation.
         - completion: The DescribeCodeCoveragesOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeCodeCoveragesOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func describeCodeCoveragesAsync(
            input: CodeBuildModel.DescribeCodeCoveragesInput, 
            completion: @escaping (Result<CodeBuildModel.DescribeCodeCoveragesOutput, CodeBuildError>) -> ()) throws {
        if let describeCodeCoveragesAsyncOverride = describeCodeCoveragesAsyncOverride {
            return try describeCodeCoveragesAsyncOverride(input, completion)
        }

        let result = DescribeCodeCoveragesOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeCodeCoverages operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeCodeCoveragesInput object being passed to this operation.
     - Returns: The DescribeCodeCoveragesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func describeCodeCoveragesSync(
            input: CodeBuildModel.DescribeCodeCoveragesInput) throws -> CodeBuildModel.DescribeCodeCoveragesOutput {
        if let describeCodeCoveragesSyncOverride = describeCodeCoveragesSyncOverride {
            return try describeCodeCoveragesSyncOverride(input)
        }

        return DescribeCodeCoveragesOutput.__default
    }

    /**
     Invokes the DescribeTestCases operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeTestCasesInput object being passed to this operation.
         - completion: The DescribeTestCasesOutput object or an error will be passed to this 
           callback when the operation is complete. The DescribeTestCasesOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    public func describeTestCasesAsync(
            input: CodeBuildModel.DescribeTestCasesInput, 
            completion: @escaping (Result<CodeBuildModel.DescribeTestCasesOutput, CodeBuildError>) -> ()) throws {
        if let describeTestCasesAsyncOverride = describeTestCasesAsyncOverride {
            return try describeTestCasesAsyncOverride(input, completion)
        }

        let result = DescribeTestCasesOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeTestCases operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeTestCasesInput object being passed to this operation.
     - Returns: The DescribeTestCasesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    public func describeTestCasesSync(
            input: CodeBuildModel.DescribeTestCasesInput) throws -> CodeBuildModel.DescribeTestCasesOutput {
        if let describeTestCasesSyncOverride = describeTestCasesSyncOverride {
            return try describeTestCasesSyncOverride(input)
        }

        return DescribeTestCasesOutput.__default
    }

    /**
     Invokes the GetReportGroupTrend operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetReportGroupTrendInput object being passed to this operation.
         - completion: The GetReportGroupTrendOutput object or an error will be passed to this 
           callback when the operation is complete. The GetReportGroupTrendOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    public func getReportGroupTrendAsync(
            input: CodeBuildModel.GetReportGroupTrendInput, 
            completion: @escaping (Result<CodeBuildModel.GetReportGroupTrendOutput, CodeBuildError>) -> ()) throws {
        if let getReportGroupTrendAsyncOverride = getReportGroupTrendAsyncOverride {
            return try getReportGroupTrendAsyncOverride(input, completion)
        }

        let result = GetReportGroupTrendOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the GetReportGroupTrend operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetReportGroupTrendInput object being passed to this operation.
     - Returns: The GetReportGroupTrendOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    public func getReportGroupTrendSync(
            input: CodeBuildModel.GetReportGroupTrendInput) throws -> CodeBuildModel.GetReportGroupTrendOutput {
        if let getReportGroupTrendSyncOverride = getReportGroupTrendSyncOverride {
            return try getReportGroupTrendSyncOverride(input)
        }

        return GetReportGroupTrendOutput.__default
    }

    /**
     Invokes the GetResourcePolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetResourcePolicyInput object being passed to this operation.
         - completion: The GetResourcePolicyOutput object or an error will be passed to this 
           callback when the operation is complete. The GetResourcePolicyOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    public func getResourcePolicyAsync(
            input: CodeBuildModel.GetResourcePolicyInput, 
            completion: @escaping (Result<CodeBuildModel.GetResourcePolicyOutput, CodeBuildError>) -> ()) throws {
        if let getResourcePolicyAsyncOverride = getResourcePolicyAsyncOverride {
            return try getResourcePolicyAsyncOverride(input, completion)
        }

        let result = GetResourcePolicyOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the GetResourcePolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetResourcePolicyInput object being passed to this operation.
     - Returns: The GetResourcePolicyOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    public func getResourcePolicySync(
            input: CodeBuildModel.GetResourcePolicyInput) throws -> CodeBuildModel.GetResourcePolicyOutput {
        if let getResourcePolicySyncOverride = getResourcePolicySyncOverride {
            return try getResourcePolicySyncOverride(input)
        }

        return GetResourcePolicyOutput.__default
    }

    /**
     Invokes the ImportSourceCredentials operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ImportSourceCredentialsInput object being passed to this operation.
         - completion: The ImportSourceCredentialsOutput object or an error will be passed to this 
           callback when the operation is complete. The ImportSourceCredentialsOutput
           object will be validated before being returned to caller.
           The possible errors are: accountLimitExceeded, invalidInput, resourceAlreadyExists.
     */
    public func importSourceCredentialsAsync(
            input: CodeBuildModel.ImportSourceCredentialsInput, 
            completion: @escaping (Result<CodeBuildModel.ImportSourceCredentialsOutput, CodeBuildError>) -> ()) throws {
        if let importSourceCredentialsAsyncOverride = importSourceCredentialsAsyncOverride {
            return try importSourceCredentialsAsyncOverride(input, completion)
        }

        let result = ImportSourceCredentialsOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ImportSourceCredentials operation waiting for the response before returning.

     - Parameters:
         - input: The validated ImportSourceCredentialsInput object being passed to this operation.
     - Returns: The ImportSourceCredentialsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accountLimitExceeded, invalidInput, resourceAlreadyExists.
     */
    public func importSourceCredentialsSync(
            input: CodeBuildModel.ImportSourceCredentialsInput) throws -> CodeBuildModel.ImportSourceCredentialsOutput {
        if let importSourceCredentialsSyncOverride = importSourceCredentialsSyncOverride {
            return try importSourceCredentialsSyncOverride(input)
        }

        return ImportSourceCredentialsOutput.__default
    }

    /**
     Invokes the InvalidateProjectCache operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated InvalidateProjectCacheInput object being passed to this operation.
         - completion: The InvalidateProjectCacheOutput object or an error will be passed to this 
           callback when the operation is complete. The InvalidateProjectCacheOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    public func invalidateProjectCacheAsync(
            input: CodeBuildModel.InvalidateProjectCacheInput, 
            completion: @escaping (Result<CodeBuildModel.InvalidateProjectCacheOutput, CodeBuildError>) -> ()) throws {
        if let invalidateProjectCacheAsyncOverride = invalidateProjectCacheAsyncOverride {
            return try invalidateProjectCacheAsyncOverride(input, completion)
        }

        let result = InvalidateProjectCacheOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the InvalidateProjectCache operation waiting for the response before returning.

     - Parameters:
         - input: The validated InvalidateProjectCacheInput object being passed to this operation.
     - Returns: The InvalidateProjectCacheOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    public func invalidateProjectCacheSync(
            input: CodeBuildModel.InvalidateProjectCacheInput) throws -> CodeBuildModel.InvalidateProjectCacheOutput {
        if let invalidateProjectCacheSyncOverride = invalidateProjectCacheSyncOverride {
            return try invalidateProjectCacheSyncOverride(input)
        }

        return InvalidateProjectCacheOutput.__default
    }

    /**
     Invokes the ListBuildBatches operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListBuildBatchesInput object being passed to this operation.
         - completion: The ListBuildBatchesOutput object or an error will be passed to this 
           callback when the operation is complete. The ListBuildBatchesOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func listBuildBatchesAsync(
            input: CodeBuildModel.ListBuildBatchesInput, 
            completion: @escaping (Result<CodeBuildModel.ListBuildBatchesOutput, CodeBuildError>) -> ()) throws {
        if let listBuildBatchesAsyncOverride = listBuildBatchesAsyncOverride {
            return try listBuildBatchesAsyncOverride(input, completion)
        }

        let result = ListBuildBatchesOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ListBuildBatches operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListBuildBatchesInput object being passed to this operation.
     - Returns: The ListBuildBatchesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func listBuildBatchesSync(
            input: CodeBuildModel.ListBuildBatchesInput) throws -> CodeBuildModel.ListBuildBatchesOutput {
        if let listBuildBatchesSyncOverride = listBuildBatchesSyncOverride {
            return try listBuildBatchesSyncOverride(input)
        }

        return ListBuildBatchesOutput.__default
    }

    /**
     Invokes the ListBuildBatchesForProject operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListBuildBatchesForProjectInput object being passed to this operation.
         - completion: The ListBuildBatchesForProjectOutput object or an error will be passed to this 
           callback when the operation is complete. The ListBuildBatchesForProjectOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    public func listBuildBatchesForProjectAsync(
            input: CodeBuildModel.ListBuildBatchesForProjectInput, 
            completion: @escaping (Result<CodeBuildModel.ListBuildBatchesForProjectOutput, CodeBuildError>) -> ()) throws {
        if let listBuildBatchesForProjectAsyncOverride = listBuildBatchesForProjectAsyncOverride {
            return try listBuildBatchesForProjectAsyncOverride(input, completion)
        }

        let result = ListBuildBatchesForProjectOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ListBuildBatchesForProject operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListBuildBatchesForProjectInput object being passed to this operation.
     - Returns: The ListBuildBatchesForProjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    public func listBuildBatchesForProjectSync(
            input: CodeBuildModel.ListBuildBatchesForProjectInput) throws -> CodeBuildModel.ListBuildBatchesForProjectOutput {
        if let listBuildBatchesForProjectSyncOverride = listBuildBatchesForProjectSyncOverride {
            return try listBuildBatchesForProjectSyncOverride(input)
        }

        return ListBuildBatchesForProjectOutput.__default
    }

    /**
     Invokes the ListBuilds operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListBuildsInput object being passed to this operation.
         - completion: The ListBuildsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListBuildsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func listBuildsAsync(
            input: CodeBuildModel.ListBuildsInput, 
            completion: @escaping (Result<CodeBuildModel.ListBuildsOutput, CodeBuildError>) -> ()) throws {
        if let listBuildsAsyncOverride = listBuildsAsyncOverride {
            return try listBuildsAsyncOverride(input, completion)
        }

        let result = ListBuildsOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ListBuilds operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListBuildsInput object being passed to this operation.
     - Returns: The ListBuildsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func listBuildsSync(
            input: CodeBuildModel.ListBuildsInput) throws -> CodeBuildModel.ListBuildsOutput {
        if let listBuildsSyncOverride = listBuildsSyncOverride {
            return try listBuildsSyncOverride(input)
        }

        return ListBuildsOutput.__default
    }

    /**
     Invokes the ListBuildsForProject operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListBuildsForProjectInput object being passed to this operation.
         - completion: The ListBuildsForProjectOutput object or an error will be passed to this 
           callback when the operation is complete. The ListBuildsForProjectOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    public func listBuildsForProjectAsync(
            input: CodeBuildModel.ListBuildsForProjectInput, 
            completion: @escaping (Result<CodeBuildModel.ListBuildsForProjectOutput, CodeBuildError>) -> ()) throws {
        if let listBuildsForProjectAsyncOverride = listBuildsForProjectAsyncOverride {
            return try listBuildsForProjectAsyncOverride(input, completion)
        }

        let result = ListBuildsForProjectOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ListBuildsForProject operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListBuildsForProjectInput object being passed to this operation.
     - Returns: The ListBuildsForProjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    public func listBuildsForProjectSync(
            input: CodeBuildModel.ListBuildsForProjectInput) throws -> CodeBuildModel.ListBuildsForProjectOutput {
        if let listBuildsForProjectSyncOverride = listBuildsForProjectSyncOverride {
            return try listBuildsForProjectSyncOverride(input)
        }

        return ListBuildsForProjectOutput.__default
    }

    /**
     Invokes the ListCuratedEnvironmentImages operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListCuratedEnvironmentImagesInput object being passed to this operation.
         - completion: The ListCuratedEnvironmentImagesOutput object or an error will be passed to this 
           callback when the operation is complete. The ListCuratedEnvironmentImagesOutput
           object will be validated before being returned to caller.
     */
    public func listCuratedEnvironmentImagesAsync(
            input: CodeBuildModel.ListCuratedEnvironmentImagesInput, 
            completion: @escaping (Result<CodeBuildModel.ListCuratedEnvironmentImagesOutput, CodeBuildError>) -> ()) throws {
        if let listCuratedEnvironmentImagesAsyncOverride = listCuratedEnvironmentImagesAsyncOverride {
            return try listCuratedEnvironmentImagesAsyncOverride(input, completion)
        }

        let result = ListCuratedEnvironmentImagesOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ListCuratedEnvironmentImages operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListCuratedEnvironmentImagesInput object being passed to this operation.
     - Returns: The ListCuratedEnvironmentImagesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listCuratedEnvironmentImagesSync(
            input: CodeBuildModel.ListCuratedEnvironmentImagesInput) throws -> CodeBuildModel.ListCuratedEnvironmentImagesOutput {
        if let listCuratedEnvironmentImagesSyncOverride = listCuratedEnvironmentImagesSyncOverride {
            return try listCuratedEnvironmentImagesSyncOverride(input)
        }

        return ListCuratedEnvironmentImagesOutput.__default
    }

    /**
     Invokes the ListProjects operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListProjectsInput object being passed to this operation.
         - completion: The ListProjectsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListProjectsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func listProjectsAsync(
            input: CodeBuildModel.ListProjectsInput, 
            completion: @escaping (Result<CodeBuildModel.ListProjectsOutput, CodeBuildError>) -> ()) throws {
        if let listProjectsAsyncOverride = listProjectsAsyncOverride {
            return try listProjectsAsyncOverride(input, completion)
        }

        let result = ListProjectsOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ListProjects operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListProjectsInput object being passed to this operation.
     - Returns: The ListProjectsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func listProjectsSync(
            input: CodeBuildModel.ListProjectsInput) throws -> CodeBuildModel.ListProjectsOutput {
        if let listProjectsSyncOverride = listProjectsSyncOverride {
            return try listProjectsSyncOverride(input)
        }

        return ListProjectsOutput.__default
    }

    /**
     Invokes the ListReportGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListReportGroupsInput object being passed to this operation.
         - completion: The ListReportGroupsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListReportGroupsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func listReportGroupsAsync(
            input: CodeBuildModel.ListReportGroupsInput, 
            completion: @escaping (Result<CodeBuildModel.ListReportGroupsOutput, CodeBuildError>) -> ()) throws {
        if let listReportGroupsAsyncOverride = listReportGroupsAsyncOverride {
            return try listReportGroupsAsyncOverride(input, completion)
        }

        let result = ListReportGroupsOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ListReportGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListReportGroupsInput object being passed to this operation.
     - Returns: The ListReportGroupsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func listReportGroupsSync(
            input: CodeBuildModel.ListReportGroupsInput) throws -> CodeBuildModel.ListReportGroupsOutput {
        if let listReportGroupsSyncOverride = listReportGroupsSyncOverride {
            return try listReportGroupsSyncOverride(input)
        }

        return ListReportGroupsOutput.__default
    }

    /**
     Invokes the ListReports operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListReportsInput object being passed to this operation.
         - completion: The ListReportsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListReportsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func listReportsAsync(
            input: CodeBuildModel.ListReportsInput, 
            completion: @escaping (Result<CodeBuildModel.ListReportsOutput, CodeBuildError>) -> ()) throws {
        if let listReportsAsyncOverride = listReportsAsyncOverride {
            return try listReportsAsyncOverride(input, completion)
        }

        let result = ListReportsOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ListReports operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListReportsInput object being passed to this operation.
     - Returns: The ListReportsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func listReportsSync(
            input: CodeBuildModel.ListReportsInput) throws -> CodeBuildModel.ListReportsOutput {
        if let listReportsSyncOverride = listReportsSyncOverride {
            return try listReportsSyncOverride(input)
        }

        return ListReportsOutput.__default
    }

    /**
     Invokes the ListReportsForReportGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListReportsForReportGroupInput object being passed to this operation.
         - completion: The ListReportsForReportGroupOutput object or an error will be passed to this 
           callback when the operation is complete. The ListReportsForReportGroupOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    public func listReportsForReportGroupAsync(
            input: CodeBuildModel.ListReportsForReportGroupInput, 
            completion: @escaping (Result<CodeBuildModel.ListReportsForReportGroupOutput, CodeBuildError>) -> ()) throws {
        if let listReportsForReportGroupAsyncOverride = listReportsForReportGroupAsyncOverride {
            return try listReportsForReportGroupAsyncOverride(input, completion)
        }

        let result = ListReportsForReportGroupOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ListReportsForReportGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListReportsForReportGroupInput object being passed to this operation.
     - Returns: The ListReportsForReportGroupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    public func listReportsForReportGroupSync(
            input: CodeBuildModel.ListReportsForReportGroupInput) throws -> CodeBuildModel.ListReportsForReportGroupOutput {
        if let listReportsForReportGroupSyncOverride = listReportsForReportGroupSyncOverride {
            return try listReportsForReportGroupSyncOverride(input)
        }

        return ListReportsForReportGroupOutput.__default
    }

    /**
     Invokes the ListSharedProjects operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListSharedProjectsInput object being passed to this operation.
         - completion: The ListSharedProjectsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListSharedProjectsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func listSharedProjectsAsync(
            input: CodeBuildModel.ListSharedProjectsInput, 
            completion: @escaping (Result<CodeBuildModel.ListSharedProjectsOutput, CodeBuildError>) -> ()) throws {
        if let listSharedProjectsAsyncOverride = listSharedProjectsAsyncOverride {
            return try listSharedProjectsAsyncOverride(input, completion)
        }

        let result = ListSharedProjectsOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ListSharedProjects operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListSharedProjectsInput object being passed to this operation.
     - Returns: The ListSharedProjectsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func listSharedProjectsSync(
            input: CodeBuildModel.ListSharedProjectsInput) throws -> CodeBuildModel.ListSharedProjectsOutput {
        if let listSharedProjectsSyncOverride = listSharedProjectsSyncOverride {
            return try listSharedProjectsSyncOverride(input)
        }

        return ListSharedProjectsOutput.__default
    }

    /**
     Invokes the ListSharedReportGroups operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListSharedReportGroupsInput object being passed to this operation.
         - completion: The ListSharedReportGroupsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListSharedReportGroupsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func listSharedReportGroupsAsync(
            input: CodeBuildModel.ListSharedReportGroupsInput, 
            completion: @escaping (Result<CodeBuildModel.ListSharedReportGroupsOutput, CodeBuildError>) -> ()) throws {
        if let listSharedReportGroupsAsyncOverride = listSharedReportGroupsAsyncOverride {
            return try listSharedReportGroupsAsyncOverride(input, completion)
        }

        let result = ListSharedReportGroupsOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ListSharedReportGroups operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListSharedReportGroupsInput object being passed to this operation.
     - Returns: The ListSharedReportGroupsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func listSharedReportGroupsSync(
            input: CodeBuildModel.ListSharedReportGroupsInput) throws -> CodeBuildModel.ListSharedReportGroupsOutput {
        if let listSharedReportGroupsSyncOverride = listSharedReportGroupsSyncOverride {
            return try listSharedReportGroupsSyncOverride(input)
        }

        return ListSharedReportGroupsOutput.__default
    }

    /**
     Invokes the ListSourceCredentials operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListSourceCredentialsInput object being passed to this operation.
         - completion: The ListSourceCredentialsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListSourceCredentialsOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput.
     */
    public func listSourceCredentialsAsync(
            input: CodeBuildModel.ListSourceCredentialsInput, 
            completion: @escaping (Result<CodeBuildModel.ListSourceCredentialsOutput, CodeBuildError>) -> ()) throws {
        if let listSourceCredentialsAsyncOverride = listSourceCredentialsAsyncOverride {
            return try listSourceCredentialsAsyncOverride(input, completion)
        }

        let result = ListSourceCredentialsOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ListSourceCredentials operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListSourceCredentialsInput object being passed to this operation.
     - Returns: The ListSourceCredentialsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput.
     */
    public func listSourceCredentialsSync(
            input: CodeBuildModel.ListSourceCredentialsInput) throws -> CodeBuildModel.ListSourceCredentialsOutput {
        if let listSourceCredentialsSyncOverride = listSourceCredentialsSyncOverride {
            return try listSourceCredentialsSyncOverride(input)
        }

        return ListSourceCredentialsOutput.__default
    }

    /**
     Invokes the PutResourcePolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutResourcePolicyInput object being passed to this operation.
         - completion: The PutResourcePolicyOutput object or an error will be passed to this 
           callback when the operation is complete. The PutResourcePolicyOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    public func putResourcePolicyAsync(
            input: CodeBuildModel.PutResourcePolicyInput, 
            completion: @escaping (Result<CodeBuildModel.PutResourcePolicyOutput, CodeBuildError>) -> ()) throws {
        if let putResourcePolicyAsyncOverride = putResourcePolicyAsyncOverride {
            return try putResourcePolicyAsyncOverride(input, completion)
        }

        let result = PutResourcePolicyOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the PutResourcePolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutResourcePolicyInput object being passed to this operation.
     - Returns: The PutResourcePolicyOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    public func putResourcePolicySync(
            input: CodeBuildModel.PutResourcePolicyInput) throws -> CodeBuildModel.PutResourcePolicyOutput {
        if let putResourcePolicySyncOverride = putResourcePolicySyncOverride {
            return try putResourcePolicySyncOverride(input)
        }

        return PutResourcePolicyOutput.__default
    }

    /**
     Invokes the RetryBuild operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RetryBuildInput object being passed to this operation.
         - completion: The RetryBuildOutput object or an error will be passed to this 
           callback when the operation is complete. The RetryBuildOutput
           object will be validated before being returned to caller.
           The possible errors are: accountLimitExceeded, invalidInput, resourceNotFound.
     */
    public func retryBuildAsync(
            input: CodeBuildModel.RetryBuildInput, 
            completion: @escaping (Result<CodeBuildModel.RetryBuildOutput, CodeBuildError>) -> ()) throws {
        if let retryBuildAsyncOverride = retryBuildAsyncOverride {
            return try retryBuildAsyncOverride(input, completion)
        }

        let result = RetryBuildOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the RetryBuild operation waiting for the response before returning.

     - Parameters:
         - input: The validated RetryBuildInput object being passed to this operation.
     - Returns: The RetryBuildOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accountLimitExceeded, invalidInput, resourceNotFound.
     */
    public func retryBuildSync(
            input: CodeBuildModel.RetryBuildInput) throws -> CodeBuildModel.RetryBuildOutput {
        if let retryBuildSyncOverride = retryBuildSyncOverride {
            return try retryBuildSyncOverride(input)
        }

        return RetryBuildOutput.__default
    }

    /**
     Invokes the RetryBuildBatch operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RetryBuildBatchInput object being passed to this operation.
         - completion: The RetryBuildBatchOutput object or an error will be passed to this 
           callback when the operation is complete. The RetryBuildBatchOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    public func retryBuildBatchAsync(
            input: CodeBuildModel.RetryBuildBatchInput, 
            completion: @escaping (Result<CodeBuildModel.RetryBuildBatchOutput, CodeBuildError>) -> ()) throws {
        if let retryBuildBatchAsyncOverride = retryBuildBatchAsyncOverride {
            return try retryBuildBatchAsyncOverride(input, completion)
        }

        let result = RetryBuildBatchOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the RetryBuildBatch operation waiting for the response before returning.

     - Parameters:
         - input: The validated RetryBuildBatchInput object being passed to this operation.
     - Returns: The RetryBuildBatchOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    public func retryBuildBatchSync(
            input: CodeBuildModel.RetryBuildBatchInput) throws -> CodeBuildModel.RetryBuildBatchOutput {
        if let retryBuildBatchSyncOverride = retryBuildBatchSyncOverride {
            return try retryBuildBatchSyncOverride(input)
        }

        return RetryBuildBatchOutput.__default
    }

    /**
     Invokes the StartBuild operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartBuildInput object being passed to this operation.
         - completion: The StartBuildOutput object or an error will be passed to this 
           callback when the operation is complete. The StartBuildOutput
           object will be validated before being returned to caller.
           The possible errors are: accountLimitExceeded, invalidInput, resourceNotFound.
     */
    public func startBuildAsync(
            input: CodeBuildModel.StartBuildInput, 
            completion: @escaping (Result<CodeBuildModel.StartBuildOutput, CodeBuildError>) -> ()) throws {
        if let startBuildAsyncOverride = startBuildAsyncOverride {
            return try startBuildAsyncOverride(input, completion)
        }

        let result = StartBuildOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the StartBuild operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartBuildInput object being passed to this operation.
     - Returns: The StartBuildOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: accountLimitExceeded, invalidInput, resourceNotFound.
     */
    public func startBuildSync(
            input: CodeBuildModel.StartBuildInput) throws -> CodeBuildModel.StartBuildOutput {
        if let startBuildSyncOverride = startBuildSyncOverride {
            return try startBuildSyncOverride(input)
        }

        return StartBuildOutput.__default
    }

    /**
     Invokes the StartBuildBatch operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartBuildBatchInput object being passed to this operation.
         - completion: The StartBuildBatchOutput object or an error will be passed to this 
           callback when the operation is complete. The StartBuildBatchOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    public func startBuildBatchAsync(
            input: CodeBuildModel.StartBuildBatchInput, 
            completion: @escaping (Result<CodeBuildModel.StartBuildBatchOutput, CodeBuildError>) -> ()) throws {
        if let startBuildBatchAsyncOverride = startBuildBatchAsyncOverride {
            return try startBuildBatchAsyncOverride(input, completion)
        }

        let result = StartBuildBatchOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the StartBuildBatch operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartBuildBatchInput object being passed to this operation.
     - Returns: The StartBuildBatchOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    public func startBuildBatchSync(
            input: CodeBuildModel.StartBuildBatchInput) throws -> CodeBuildModel.StartBuildBatchOutput {
        if let startBuildBatchSyncOverride = startBuildBatchSyncOverride {
            return try startBuildBatchSyncOverride(input)
        }

        return StartBuildBatchOutput.__default
    }

    /**
     Invokes the StopBuild operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopBuildInput object being passed to this operation.
         - completion: The StopBuildOutput object or an error will be passed to this 
           callback when the operation is complete. The StopBuildOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    public func stopBuildAsync(
            input: CodeBuildModel.StopBuildInput, 
            completion: @escaping (Result<CodeBuildModel.StopBuildOutput, CodeBuildError>) -> ()) throws {
        if let stopBuildAsyncOverride = stopBuildAsyncOverride {
            return try stopBuildAsyncOverride(input, completion)
        }

        let result = StopBuildOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the StopBuild operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopBuildInput object being passed to this operation.
     - Returns: The StopBuildOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    public func stopBuildSync(
            input: CodeBuildModel.StopBuildInput) throws -> CodeBuildModel.StopBuildOutput {
        if let stopBuildSyncOverride = stopBuildSyncOverride {
            return try stopBuildSyncOverride(input)
        }

        return StopBuildOutput.__default
    }

    /**
     Invokes the StopBuildBatch operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StopBuildBatchInput object being passed to this operation.
         - completion: The StopBuildBatchOutput object or an error will be passed to this 
           callback when the operation is complete. The StopBuildBatchOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    public func stopBuildBatchAsync(
            input: CodeBuildModel.StopBuildBatchInput, 
            completion: @escaping (Result<CodeBuildModel.StopBuildBatchOutput, CodeBuildError>) -> ()) throws {
        if let stopBuildBatchAsyncOverride = stopBuildBatchAsyncOverride {
            return try stopBuildBatchAsyncOverride(input, completion)
        }

        let result = StopBuildBatchOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the StopBuildBatch operation waiting for the response before returning.

     - Parameters:
         - input: The validated StopBuildBatchInput object being passed to this operation.
     - Returns: The StopBuildBatchOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    public func stopBuildBatchSync(
            input: CodeBuildModel.StopBuildBatchInput) throws -> CodeBuildModel.StopBuildBatchOutput {
        if let stopBuildBatchSyncOverride = stopBuildBatchSyncOverride {
            return try stopBuildBatchSyncOverride(input)
        }

        return StopBuildBatchOutput.__default
    }

    /**
     Invokes the UpdateProject operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateProjectInput object being passed to this operation.
         - completion: The UpdateProjectOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateProjectOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    public func updateProjectAsync(
            input: CodeBuildModel.UpdateProjectInput, 
            completion: @escaping (Result<CodeBuildModel.UpdateProjectOutput, CodeBuildError>) -> ()) throws {
        if let updateProjectAsyncOverride = updateProjectAsyncOverride {
            return try updateProjectAsyncOverride(input, completion)
        }

        let result = UpdateProjectOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the UpdateProject operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateProjectInput object being passed to this operation.
     - Returns: The UpdateProjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    public func updateProjectSync(
            input: CodeBuildModel.UpdateProjectInput) throws -> CodeBuildModel.UpdateProjectOutput {
        if let updateProjectSyncOverride = updateProjectSyncOverride {
            return try updateProjectSyncOverride(input)
        }

        return UpdateProjectOutput.__default
    }

    /**
     Invokes the UpdateReportGroup operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateReportGroupInput object being passed to this operation.
         - completion: The UpdateReportGroupOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateReportGroupOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, resourceNotFound.
     */
    public func updateReportGroupAsync(
            input: CodeBuildModel.UpdateReportGroupInput, 
            completion: @escaping (Result<CodeBuildModel.UpdateReportGroupOutput, CodeBuildError>) -> ()) throws {
        if let updateReportGroupAsyncOverride = updateReportGroupAsyncOverride {
            return try updateReportGroupAsyncOverride(input, completion)
        }

        let result = UpdateReportGroupOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the UpdateReportGroup operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateReportGroupInput object being passed to this operation.
     - Returns: The UpdateReportGroupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, resourceNotFound.
     */
    public func updateReportGroupSync(
            input: CodeBuildModel.UpdateReportGroupInput) throws -> CodeBuildModel.UpdateReportGroupOutput {
        if let updateReportGroupSyncOverride = updateReportGroupSyncOverride {
            return try updateReportGroupSyncOverride(input)
        }

        return UpdateReportGroupOutput.__default
    }

    /**
     Invokes the UpdateWebhook operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UpdateWebhookInput object being passed to this operation.
         - completion: The UpdateWebhookOutput object or an error will be passed to this 
           callback when the operation is complete. The UpdateWebhookOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidInput, oAuthProvider, resourceNotFound.
     */
    public func updateWebhookAsync(
            input: CodeBuildModel.UpdateWebhookInput, 
            completion: @escaping (Result<CodeBuildModel.UpdateWebhookOutput, CodeBuildError>) -> ()) throws {
        if let updateWebhookAsyncOverride = updateWebhookAsyncOverride {
            return try updateWebhookAsyncOverride(input, completion)
        }

        let result = UpdateWebhookOutput.__default
        
        completion(.success(result))
    }

    /**
     Invokes the UpdateWebhook operation waiting for the response before returning.

     - Parameters:
         - input: The validated UpdateWebhookInput object being passed to this operation.
     - Returns: The UpdateWebhookOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidInput, oAuthProvider, resourceNotFound.
     */
    public func updateWebhookSync(
            input: CodeBuildModel.UpdateWebhookInput) throws -> CodeBuildModel.UpdateWebhookOutput {
        if let updateWebhookSyncOverride = updateWebhookSyncOverride {
            return try updateWebhookSyncOverride(input)
        }

        return UpdateWebhookOutput.__default
    }
}
