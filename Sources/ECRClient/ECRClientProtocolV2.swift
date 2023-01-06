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
// ECRClientProtocolV2.swift
// ECRClient
//

import Foundation
import ECRModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Client Protocol for the ECR service.
 */
public protocol ECRClientProtocolV2 {
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    typealias BatchCheckLayerAvailabilityFunctionType = (
            _ input: ECRModel.BatchCheckLayerAvailabilityRequest) async throws -> ECRModel.BatchCheckLayerAvailabilityResponse
    typealias BatchDeleteImageFunctionType = (
            _ input: ECRModel.BatchDeleteImageRequest) async throws -> ECRModel.BatchDeleteImageResponse
    typealias BatchGetImageFunctionType = (
            _ input: ECRModel.BatchGetImageRequest) async throws -> ECRModel.BatchGetImageResponse
    typealias BatchGetRepositoryScanningConfigurationFunctionType = (
            _ input: ECRModel.BatchGetRepositoryScanningConfigurationRequest) async throws -> ECRModel.BatchGetRepositoryScanningConfigurationResponse
    typealias CompleteLayerUploadFunctionType = (
            _ input: ECRModel.CompleteLayerUploadRequest) async throws -> ECRModel.CompleteLayerUploadResponse
    typealias CreatePullThroughCacheRuleFunctionType = (
            _ input: ECRModel.CreatePullThroughCacheRuleRequest) async throws -> ECRModel.CreatePullThroughCacheRuleResponse
    typealias CreateRepositoryFunctionType = (
            _ input: ECRModel.CreateRepositoryRequest) async throws -> ECRModel.CreateRepositoryResponse
    typealias DeleteLifecyclePolicyFunctionType = (
            _ input: ECRModel.DeleteLifecyclePolicyRequest) async throws -> ECRModel.DeleteLifecyclePolicyResponse
    typealias DeletePullThroughCacheRuleFunctionType = (
            _ input: ECRModel.DeletePullThroughCacheRuleRequest) async throws -> ECRModel.DeletePullThroughCacheRuleResponse
    typealias DeleteRegistryPolicyFunctionType = (
            _ input: ECRModel.DeleteRegistryPolicyRequest) async throws -> ECRModel.DeleteRegistryPolicyResponse
    typealias DeleteRepositoryFunctionType = (
            _ input: ECRModel.DeleteRepositoryRequest) async throws -> ECRModel.DeleteRepositoryResponse
    typealias DeleteRepositoryPolicyFunctionType = (
            _ input: ECRModel.DeleteRepositoryPolicyRequest) async throws -> ECRModel.DeleteRepositoryPolicyResponse
    typealias DescribeImageReplicationStatusFunctionType = (
            _ input: ECRModel.DescribeImageReplicationStatusRequest) async throws -> ECRModel.DescribeImageReplicationStatusResponse
    typealias DescribeImageScanFindingsFunctionType = (
            _ input: ECRModel.DescribeImageScanFindingsRequest) async throws -> ECRModel.DescribeImageScanFindingsResponse
    typealias DescribeImagesFunctionType = (
            _ input: ECRModel.DescribeImagesRequest) async throws -> ECRModel.DescribeImagesResponse
    typealias DescribePullThroughCacheRulesFunctionType = (
            _ input: ECRModel.DescribePullThroughCacheRulesRequest) async throws -> ECRModel.DescribePullThroughCacheRulesResponse
    typealias DescribeRegistryFunctionType = (
            _ input: ECRModel.DescribeRegistryRequest) async throws -> ECRModel.DescribeRegistryResponse
    typealias DescribeRepositoriesFunctionType = (
            _ input: ECRModel.DescribeRepositoriesRequest) async throws -> ECRModel.DescribeRepositoriesResponse
    typealias GetAuthorizationTokenFunctionType = (
            _ input: ECRModel.GetAuthorizationTokenRequest) async throws -> ECRModel.GetAuthorizationTokenResponse
    typealias GetDownloadUrlForLayerFunctionType = (
            _ input: ECRModel.GetDownloadUrlForLayerRequest) async throws -> ECRModel.GetDownloadUrlForLayerResponse
    typealias GetLifecyclePolicyFunctionType = (
            _ input: ECRModel.GetLifecyclePolicyRequest) async throws -> ECRModel.GetLifecyclePolicyResponse
    typealias GetLifecyclePolicyPreviewFunctionType = (
            _ input: ECRModel.GetLifecyclePolicyPreviewRequest) async throws -> ECRModel.GetLifecyclePolicyPreviewResponse
    typealias GetRegistryPolicyFunctionType = (
            _ input: ECRModel.GetRegistryPolicyRequest) async throws -> ECRModel.GetRegistryPolicyResponse
    typealias GetRegistryScanningConfigurationFunctionType = (
            _ input: ECRModel.GetRegistryScanningConfigurationRequest) async throws -> ECRModel.GetRegistryScanningConfigurationResponse
    typealias GetRepositoryPolicyFunctionType = (
            _ input: ECRModel.GetRepositoryPolicyRequest) async throws -> ECRModel.GetRepositoryPolicyResponse
    typealias InitiateLayerUploadFunctionType = (
            _ input: ECRModel.InitiateLayerUploadRequest) async throws -> ECRModel.InitiateLayerUploadResponse
    typealias ListImagesFunctionType = (
            _ input: ECRModel.ListImagesRequest) async throws -> ECRModel.ListImagesResponse
    typealias ListTagsForResourceFunctionType = (
            _ input: ECRModel.ListTagsForResourceRequest) async throws -> ECRModel.ListTagsForResourceResponse
    typealias PutImageFunctionType = (
            _ input: ECRModel.PutImageRequest) async throws -> ECRModel.PutImageResponse
    typealias PutImageScanningConfigurationFunctionType = (
            _ input: ECRModel.PutImageScanningConfigurationRequest) async throws -> ECRModel.PutImageScanningConfigurationResponse
    typealias PutImageTagMutabilityFunctionType = (
            _ input: ECRModel.PutImageTagMutabilityRequest) async throws -> ECRModel.PutImageTagMutabilityResponse
    typealias PutLifecyclePolicyFunctionType = (
            _ input: ECRModel.PutLifecyclePolicyRequest) async throws -> ECRModel.PutLifecyclePolicyResponse
    typealias PutRegistryPolicyFunctionType = (
            _ input: ECRModel.PutRegistryPolicyRequest) async throws -> ECRModel.PutRegistryPolicyResponse
    typealias PutRegistryScanningConfigurationFunctionType = (
            _ input: ECRModel.PutRegistryScanningConfigurationRequest) async throws -> ECRModel.PutRegistryScanningConfigurationResponse
    typealias PutReplicationConfigurationFunctionType = (
            _ input: ECRModel.PutReplicationConfigurationRequest) async throws -> ECRModel.PutReplicationConfigurationResponse
    typealias SetRepositoryPolicyFunctionType = (
            _ input: ECRModel.SetRepositoryPolicyRequest) async throws -> ECRModel.SetRepositoryPolicyResponse
    typealias StartImageScanFunctionType = (
            _ input: ECRModel.StartImageScanRequest) async throws -> ECRModel.StartImageScanResponse
    typealias StartLifecyclePolicyPreviewFunctionType = (
            _ input: ECRModel.StartLifecyclePolicyPreviewRequest) async throws -> ECRModel.StartLifecyclePolicyPreviewResponse
    typealias TagResourceFunctionType = (
            _ input: ECRModel.TagResourceRequest) async throws -> ECRModel.TagResourceResponse
    typealias UntagResourceFunctionType = (
            _ input: ECRModel.UntagResourceRequest) async throws -> ECRModel.UntagResourceResponse
    typealias UploadLayerPartFunctionType = (
            _ input: ECRModel.UploadLayerPartRequest) async throws -> ECRModel.UploadLayerPartResponse

    /**
     Invokes the BatchCheckLayerAvailability operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated BatchCheckLayerAvailabilityRequest object being passed to this operation.
     - Returns: The BatchCheckLayerAvailabilityResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    func batchCheckLayerAvailability(
            input: ECRModel.BatchCheckLayerAvailabilityRequest) async throws -> ECRModel.BatchCheckLayerAvailabilityResponse

    /**
     Invokes the BatchDeleteImage operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated BatchDeleteImageRequest object being passed to this operation.
     - Returns: The BatchDeleteImageResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    func batchDeleteImage(
            input: ECRModel.BatchDeleteImageRequest) async throws -> ECRModel.BatchDeleteImageResponse

    /**
     Invokes the BatchGetImage operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated BatchGetImageRequest object being passed to this operation.
     - Returns: The BatchGetImageResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    func batchGetImage(
            input: ECRModel.BatchGetImageRequest) async throws -> ECRModel.BatchGetImageResponse

    /**
     Invokes the BatchGetRepositoryScanningConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated BatchGetRepositoryScanningConfigurationRequest object being passed to this operation.
     - Returns: The BatchGetRepositoryScanningConfigurationResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server, validation.
     */
    func batchGetRepositoryScanningConfiguration(
            input: ECRModel.BatchGetRepositoryScanningConfigurationRequest) async throws -> ECRModel.BatchGetRepositoryScanningConfigurationResponse

    /**
     Invokes the CompleteLayerUpload operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CompleteLayerUploadRequest object being passed to this operation.
     - Returns: The CompleteLayerUploadResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: emptyUpload, invalidLayer, invalidParameter, kms, layerAlreadyExists, layerPartTooSmall, repositoryNotFound, server, uploadNotFound.
     */
    func completeLayerUpload(
            input: ECRModel.CompleteLayerUploadRequest) async throws -> ECRModel.CompleteLayerUploadResponse

    /**
     Invokes the CreatePullThroughCacheRule operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreatePullThroughCacheRuleRequest object being passed to this operation.
     - Returns: The CreatePullThroughCacheRuleResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, limitExceeded, pullThroughCacheRuleAlreadyExists, server, unsupportedUpstreamRegistry, validation.
     */
    func createPullThroughCacheRule(
            input: ECRModel.CreatePullThroughCacheRuleRequest) async throws -> ECRModel.CreatePullThroughCacheRuleResponse

    /**
     Invokes the CreateRepository operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateRepositoryRequest object being passed to this operation.
     - Returns: The CreateRepositoryResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, invalidTagParameter, kms, limitExceeded, repositoryAlreadyExists, server, tooManyTags.
     */
    func createRepository(
            input: ECRModel.CreateRepositoryRequest) async throws -> ECRModel.CreateRepositoryResponse

    /**
     Invokes the DeleteLifecyclePolicy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteLifecyclePolicyRequest object being passed to this operation.
     - Returns: The DeleteLifecyclePolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, lifecyclePolicyNotFound, repositoryNotFound, server.
     */
    func deleteLifecyclePolicy(
            input: ECRModel.DeleteLifecyclePolicyRequest) async throws -> ECRModel.DeleteLifecyclePolicyResponse

    /**
     Invokes the DeletePullThroughCacheRule operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeletePullThroughCacheRuleRequest object being passed to this operation.
     - Returns: The DeletePullThroughCacheRuleResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, pullThroughCacheRuleNotFound, server, validation.
     */
    func deletePullThroughCacheRule(
            input: ECRModel.DeletePullThroughCacheRuleRequest) async throws -> ECRModel.DeletePullThroughCacheRuleResponse

    /**
     Invokes the DeleteRegistryPolicy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteRegistryPolicyRequest object being passed to this operation.
     - Returns: The DeleteRegistryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, registryPolicyNotFound, server, validation.
     */
    func deleteRegistryPolicy(
            input: ECRModel.DeleteRegistryPolicyRequest) async throws -> ECRModel.DeleteRegistryPolicyResponse

    /**
     Invokes the DeleteRepository operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteRepositoryRequest object being passed to this operation.
     - Returns: The DeleteRepositoryResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, kms, repositoryNotEmpty, repositoryNotFound, server.
     */
    func deleteRepository(
            input: ECRModel.DeleteRepositoryRequest) async throws -> ECRModel.DeleteRepositoryResponse

    /**
     Invokes the DeleteRepositoryPolicy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteRepositoryPolicyRequest object being passed to this operation.
     - Returns: The DeleteRepositoryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, repositoryPolicyNotFound, server.
     */
    func deleteRepositoryPolicy(
            input: ECRModel.DeleteRepositoryPolicyRequest) async throws -> ECRModel.DeleteRepositoryPolicyResponse

    /**
     Invokes the DescribeImageReplicationStatus operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeImageReplicationStatusRequest object being passed to this operation.
     - Returns: The DescribeImageReplicationStatusResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: imageNotFound, invalidParameter, repositoryNotFound, server, validation.
     */
    func describeImageReplicationStatus(
            input: ECRModel.DescribeImageReplicationStatusRequest) async throws -> ECRModel.DescribeImageReplicationStatusResponse

    /**
     Invokes the DescribeImageScanFindings operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeImageScanFindingsRequest object being passed to this operation.
     - Returns: The DescribeImageScanFindingsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: imageNotFound, invalidParameter, repositoryNotFound, scanNotFound, server, validation.
     */
    func describeImageScanFindings(
            input: ECRModel.DescribeImageScanFindingsRequest) async throws -> ECRModel.DescribeImageScanFindingsResponse

    /**
     Invokes the DescribeImages operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeImagesRequest object being passed to this operation.
     - Returns: The DescribeImagesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: imageNotFound, invalidParameter, repositoryNotFound, server.
     */
    func describeImages(
            input: ECRModel.DescribeImagesRequest) async throws -> ECRModel.DescribeImagesResponse

    /**
     Invokes the DescribePullThroughCacheRules operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribePullThroughCacheRulesRequest object being passed to this operation.
     - Returns: The DescribePullThroughCacheRulesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, pullThroughCacheRuleNotFound, server, validation.
     */
    func describePullThroughCacheRules(
            input: ECRModel.DescribePullThroughCacheRulesRequest) async throws -> ECRModel.DescribePullThroughCacheRulesResponse

    /**
     Invokes the DescribeRegistry operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeRegistryRequest object being passed to this operation.
     - Returns: The DescribeRegistryResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, server, validation.
     */
    func describeRegistry(
            input: ECRModel.DescribeRegistryRequest) async throws -> ECRModel.DescribeRegistryResponse

    /**
     Invokes the DescribeRepositories operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeRepositoriesRequest object being passed to this operation.
     - Returns: The DescribeRepositoriesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    func describeRepositories(
            input: ECRModel.DescribeRepositoriesRequest) async throws -> ECRModel.DescribeRepositoriesResponse

    /**
     Invokes the GetAuthorizationToken operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetAuthorizationTokenRequest object being passed to this operation.
     - Returns: The GetAuthorizationTokenResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, server.
     */
    func getAuthorizationToken(
            input: ECRModel.GetAuthorizationTokenRequest) async throws -> ECRModel.GetAuthorizationTokenResponse

    /**
     Invokes the GetDownloadUrlForLayer operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetDownloadUrlForLayerRequest object being passed to this operation.
     - Returns: The GetDownloadUrlForLayerResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, layerInaccessible, layersNotFound, repositoryNotFound, server.
     */
    func getDownloadUrlForLayer(
            input: ECRModel.GetDownloadUrlForLayerRequest) async throws -> ECRModel.GetDownloadUrlForLayerResponse

    /**
     Invokes the GetLifecyclePolicy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetLifecyclePolicyRequest object being passed to this operation.
     - Returns: The GetLifecyclePolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, lifecyclePolicyNotFound, repositoryNotFound, server.
     */
    func getLifecyclePolicy(
            input: ECRModel.GetLifecyclePolicyRequest) async throws -> ECRModel.GetLifecyclePolicyResponse

    /**
     Invokes the GetLifecyclePolicyPreview operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetLifecyclePolicyPreviewRequest object being passed to this operation.
     - Returns: The GetLifecyclePolicyPreviewResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, lifecyclePolicyPreviewNotFound, repositoryNotFound, server.
     */
    func getLifecyclePolicyPreview(
            input: ECRModel.GetLifecyclePolicyPreviewRequest) async throws -> ECRModel.GetLifecyclePolicyPreviewResponse

    /**
     Invokes the GetRegistryPolicy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetRegistryPolicyRequest object being passed to this operation.
     - Returns: The GetRegistryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, registryPolicyNotFound, server, validation.
     */
    func getRegistryPolicy(
            input: ECRModel.GetRegistryPolicyRequest) async throws -> ECRModel.GetRegistryPolicyResponse

    /**
     Invokes the GetRegistryScanningConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetRegistryScanningConfigurationRequest object being passed to this operation.
     - Returns: The GetRegistryScanningConfigurationResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, server, validation.
     */
    func getRegistryScanningConfiguration(
            input: ECRModel.GetRegistryScanningConfigurationRequest) async throws -> ECRModel.GetRegistryScanningConfigurationResponse

    /**
     Invokes the GetRepositoryPolicy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetRepositoryPolicyRequest object being passed to this operation.
     - Returns: The GetRepositoryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, repositoryPolicyNotFound, server.
     */
    func getRepositoryPolicy(
            input: ECRModel.GetRepositoryPolicyRequest) async throws -> ECRModel.GetRepositoryPolicyResponse

    /**
     Invokes the InitiateLayerUpload operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated InitiateLayerUploadRequest object being passed to this operation.
     - Returns: The InitiateLayerUploadResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, kms, repositoryNotFound, server.
     */
    func initiateLayerUpload(
            input: ECRModel.InitiateLayerUploadRequest) async throws -> ECRModel.InitiateLayerUploadResponse

    /**
     Invokes the ListImages operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListImagesRequest object being passed to this operation.
     - Returns: The ListImagesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    func listImages(
            input: ECRModel.ListImagesRequest) async throws -> ECRModel.ListImagesResponse

    /**
     Invokes the ListTagsForResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
     - Returns: The ListTagsForResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    func listTagsForResource(
            input: ECRModel.ListTagsForResourceRequest) async throws -> ECRModel.ListTagsForResourceResponse

    /**
     Invokes the PutImage operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutImageRequest object being passed to this operation.
     - Returns: The PutImageResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: imageAlreadyExists, imageDigestDoesNotMatch, imageTagAlreadyExists, invalidParameter, kms, layersNotFound, limitExceeded, referencedImagesNotFound, repositoryNotFound, server.
     */
    func putImage(
            input: ECRModel.PutImageRequest) async throws -> ECRModel.PutImageResponse

    /**
     Invokes the PutImageScanningConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutImageScanningConfigurationRequest object being passed to this operation.
     - Returns: The PutImageScanningConfigurationResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server, validation.
     */
    func putImageScanningConfiguration(
            input: ECRModel.PutImageScanningConfigurationRequest) async throws -> ECRModel.PutImageScanningConfigurationResponse

    /**
     Invokes the PutImageTagMutability operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutImageTagMutabilityRequest object being passed to this operation.
     - Returns: The PutImageTagMutabilityResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    func putImageTagMutability(
            input: ECRModel.PutImageTagMutabilityRequest) async throws -> ECRModel.PutImageTagMutabilityResponse

    /**
     Invokes the PutLifecyclePolicy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutLifecyclePolicyRequest object being passed to this operation.
     - Returns: The PutLifecyclePolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    func putLifecyclePolicy(
            input: ECRModel.PutLifecyclePolicyRequest) async throws -> ECRModel.PutLifecyclePolicyResponse

    /**
     Invokes the PutRegistryPolicy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutRegistryPolicyRequest object being passed to this operation.
     - Returns: The PutRegistryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, server, validation.
     */
    func putRegistryPolicy(
            input: ECRModel.PutRegistryPolicyRequest) async throws -> ECRModel.PutRegistryPolicyResponse

    /**
     Invokes the PutRegistryScanningConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutRegistryScanningConfigurationRequest object being passed to this operation.
     - Returns: The PutRegistryScanningConfigurationResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, server, validation.
     */
    func putRegistryScanningConfiguration(
            input: ECRModel.PutRegistryScanningConfigurationRequest) async throws -> ECRModel.PutRegistryScanningConfigurationResponse

    /**
     Invokes the PutReplicationConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutReplicationConfigurationRequest object being passed to this operation.
     - Returns: The PutReplicationConfigurationResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, server, validation.
     */
    func putReplicationConfiguration(
            input: ECRModel.PutReplicationConfigurationRequest) async throws -> ECRModel.PutReplicationConfigurationResponse

    /**
     Invokes the SetRepositoryPolicy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SetRepositoryPolicyRequest object being passed to this operation.
     - Returns: The SetRepositoryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    func setRepositoryPolicy(
            input: ECRModel.SetRepositoryPolicyRequest) async throws -> ECRModel.SetRepositoryPolicyResponse

    /**
     Invokes the StartImageScan operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartImageScanRequest object being passed to this operation.
     - Returns: The StartImageScanResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: imageNotFound, invalidParameter, limitExceeded, repositoryNotFound, server, unsupportedImageType, validation.
     */
    func startImageScan(
            input: ECRModel.StartImageScanRequest) async throws -> ECRModel.StartImageScanResponse

    /**
     Invokes the StartLifecyclePolicyPreview operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartLifecyclePolicyPreviewRequest object being passed to this operation.
     - Returns: The StartLifecyclePolicyPreviewResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, lifecyclePolicyNotFound, lifecyclePolicyPreviewInProgress, repositoryNotFound, server.
     */
    func startLifecyclePolicyPreview(
            input: ECRModel.StartLifecyclePolicyPreviewRequest) async throws -> ECRModel.StartLifecyclePolicyPreviewResponse

    /**
     Invokes the TagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
     - Returns: The TagResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, invalidTagParameter, repositoryNotFound, server, tooManyTags.
     */
    func tagResource(
            input: ECRModel.TagResourceRequest) async throws -> ECRModel.TagResourceResponse

    /**
     Invokes the UntagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
     - Returns: The UntagResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, invalidTagParameter, repositoryNotFound, server, tooManyTags.
     */
    func untagResource(
            input: ECRModel.UntagResourceRequest) async throws -> ECRModel.UntagResourceResponse

    /**
     Invokes the UploadLayerPart operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UploadLayerPartRequest object being passed to this operation.
     - Returns: The UploadLayerPartResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidLayerPart, invalidParameter, kms, limitExceeded, repositoryNotFound, server, uploadNotFound.
     */
    func uploadLayerPart(
            input: ECRModel.UploadLayerPartRequest) async throws -> ECRModel.UploadLayerPartResponse
#endif
}
