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
// ThrowingECRClientV2.swift
// ECRClient
//

import Foundation
import ECRModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the ECR service that by default always throws from its methods.
 */
public struct ThrowingECRClientV2: ECRClientProtocolV2 {
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    let error: ECRError
    let batchCheckLayerAvailabilityOverride: BatchCheckLayerAvailabilityFunctionType?
    let batchDeleteImageOverride: BatchDeleteImageFunctionType?
    let batchGetImageOverride: BatchGetImageFunctionType?
    let batchGetRepositoryScanningConfigurationOverride: BatchGetRepositoryScanningConfigurationFunctionType?
    let completeLayerUploadOverride: CompleteLayerUploadFunctionType?
    let createPullThroughCacheRuleOverride: CreatePullThroughCacheRuleFunctionType?
    let createRepositoryOverride: CreateRepositoryFunctionType?
    let deleteLifecyclePolicyOverride: DeleteLifecyclePolicyFunctionType?
    let deletePullThroughCacheRuleOverride: DeletePullThroughCacheRuleFunctionType?
    let deleteRegistryPolicyOverride: DeleteRegistryPolicyFunctionType?
    let deleteRepositoryOverride: DeleteRepositoryFunctionType?
    let deleteRepositoryPolicyOverride: DeleteRepositoryPolicyFunctionType?
    let describeImageReplicationStatusOverride: DescribeImageReplicationStatusFunctionType?
    let describeImageScanFindingsOverride: DescribeImageScanFindingsFunctionType?
    let describeImagesOverride: DescribeImagesFunctionType?
    let describePullThroughCacheRulesOverride: DescribePullThroughCacheRulesFunctionType?
    let describeRegistryOverride: DescribeRegistryFunctionType?
    let describeRepositoriesOverride: DescribeRepositoriesFunctionType?
    let getAuthorizationTokenOverride: GetAuthorizationTokenFunctionType?
    let getDownloadUrlForLayerOverride: GetDownloadUrlForLayerFunctionType?
    let getLifecyclePolicyOverride: GetLifecyclePolicyFunctionType?
    let getLifecyclePolicyPreviewOverride: GetLifecyclePolicyPreviewFunctionType?
    let getRegistryPolicyOverride: GetRegistryPolicyFunctionType?
    let getRegistryScanningConfigurationOverride: GetRegistryScanningConfigurationFunctionType?
    let getRepositoryPolicyOverride: GetRepositoryPolicyFunctionType?
    let initiateLayerUploadOverride: InitiateLayerUploadFunctionType?
    let listImagesOverride: ListImagesFunctionType?
    let listTagsForResourceOverride: ListTagsForResourceFunctionType?
    let putImageOverride: PutImageFunctionType?
    let putImageScanningConfigurationOverride: PutImageScanningConfigurationFunctionType?
    let putImageTagMutabilityOverride: PutImageTagMutabilityFunctionType?
    let putLifecyclePolicyOverride: PutLifecyclePolicyFunctionType?
    let putRegistryPolicyOverride: PutRegistryPolicyFunctionType?
    let putRegistryScanningConfigurationOverride: PutRegistryScanningConfigurationFunctionType?
    let putReplicationConfigurationOverride: PutReplicationConfigurationFunctionType?
    let setRepositoryPolicyOverride: SetRepositoryPolicyFunctionType?
    let startImageScanOverride: StartImageScanFunctionType?
    let startLifecyclePolicyPreviewOverride: StartLifecyclePolicyPreviewFunctionType?
    let tagResourceOverride: TagResourceFunctionType?
    let untagResourceOverride: UntagResourceFunctionType?
    let uploadLayerPartOverride: UploadLayerPartFunctionType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(error: ECRError,
            batchCheckLayerAvailability: BatchCheckLayerAvailabilityFunctionType? = nil,
            batchDeleteImage: BatchDeleteImageFunctionType? = nil,
            batchGetImage: BatchGetImageFunctionType? = nil,
            batchGetRepositoryScanningConfiguration: BatchGetRepositoryScanningConfigurationFunctionType? = nil,
            completeLayerUpload: CompleteLayerUploadFunctionType? = nil,
            createPullThroughCacheRule: CreatePullThroughCacheRuleFunctionType? = nil,
            createRepository: CreateRepositoryFunctionType? = nil,
            deleteLifecyclePolicy: DeleteLifecyclePolicyFunctionType? = nil,
            deletePullThroughCacheRule: DeletePullThroughCacheRuleFunctionType? = nil,
            deleteRegistryPolicy: DeleteRegistryPolicyFunctionType? = nil,
            deleteRepository: DeleteRepositoryFunctionType? = nil,
            deleteRepositoryPolicy: DeleteRepositoryPolicyFunctionType? = nil,
            describeImageReplicationStatus: DescribeImageReplicationStatusFunctionType? = nil,
            describeImageScanFindings: DescribeImageScanFindingsFunctionType? = nil,
            describeImages: DescribeImagesFunctionType? = nil,
            describePullThroughCacheRules: DescribePullThroughCacheRulesFunctionType? = nil,
            describeRegistry: DescribeRegistryFunctionType? = nil,
            describeRepositories: DescribeRepositoriesFunctionType? = nil,
            getAuthorizationToken: GetAuthorizationTokenFunctionType? = nil,
            getDownloadUrlForLayer: GetDownloadUrlForLayerFunctionType? = nil,
            getLifecyclePolicy: GetLifecyclePolicyFunctionType? = nil,
            getLifecyclePolicyPreview: GetLifecyclePolicyPreviewFunctionType? = nil,
            getRegistryPolicy: GetRegistryPolicyFunctionType? = nil,
            getRegistryScanningConfiguration: GetRegistryScanningConfigurationFunctionType? = nil,
            getRepositoryPolicy: GetRepositoryPolicyFunctionType? = nil,
            initiateLayerUpload: InitiateLayerUploadFunctionType? = nil,
            listImages: ListImagesFunctionType? = nil,
            listTagsForResource: ListTagsForResourceFunctionType? = nil,
            putImage: PutImageFunctionType? = nil,
            putImageScanningConfiguration: PutImageScanningConfigurationFunctionType? = nil,
            putImageTagMutability: PutImageTagMutabilityFunctionType? = nil,
            putLifecyclePolicy: PutLifecyclePolicyFunctionType? = nil,
            putRegistryPolicy: PutRegistryPolicyFunctionType? = nil,
            putRegistryScanningConfiguration: PutRegistryScanningConfigurationFunctionType? = nil,
            putReplicationConfiguration: PutReplicationConfigurationFunctionType? = nil,
            setRepositoryPolicy: SetRepositoryPolicyFunctionType? = nil,
            startImageScan: StartImageScanFunctionType? = nil,
            startLifecyclePolicyPreview: StartLifecyclePolicyPreviewFunctionType? = nil,
            tagResource: TagResourceFunctionType? = nil,
            untagResource: UntagResourceFunctionType? = nil,
            uploadLayerPart: UploadLayerPartFunctionType? = nil) {
        self.error = error
        self.batchCheckLayerAvailabilityOverride = batchCheckLayerAvailability
        self.batchDeleteImageOverride = batchDeleteImage
        self.batchGetImageOverride = batchGetImage
        self.batchGetRepositoryScanningConfigurationOverride = batchGetRepositoryScanningConfiguration
        self.completeLayerUploadOverride = completeLayerUpload
        self.createPullThroughCacheRuleOverride = createPullThroughCacheRule
        self.createRepositoryOverride = createRepository
        self.deleteLifecyclePolicyOverride = deleteLifecyclePolicy
        self.deletePullThroughCacheRuleOverride = deletePullThroughCacheRule
        self.deleteRegistryPolicyOverride = deleteRegistryPolicy
        self.deleteRepositoryOverride = deleteRepository
        self.deleteRepositoryPolicyOverride = deleteRepositoryPolicy
        self.describeImageReplicationStatusOverride = describeImageReplicationStatus
        self.describeImageScanFindingsOverride = describeImageScanFindings
        self.describeImagesOverride = describeImages
        self.describePullThroughCacheRulesOverride = describePullThroughCacheRules
        self.describeRegistryOverride = describeRegistry
        self.describeRepositoriesOverride = describeRepositories
        self.getAuthorizationTokenOverride = getAuthorizationToken
        self.getDownloadUrlForLayerOverride = getDownloadUrlForLayer
        self.getLifecyclePolicyOverride = getLifecyclePolicy
        self.getLifecyclePolicyPreviewOverride = getLifecyclePolicyPreview
        self.getRegistryPolicyOverride = getRegistryPolicy
        self.getRegistryScanningConfigurationOverride = getRegistryScanningConfiguration
        self.getRepositoryPolicyOverride = getRepositoryPolicy
        self.initiateLayerUploadOverride = initiateLayerUpload
        self.listImagesOverride = listImages
        self.listTagsForResourceOverride = listTagsForResource
        self.putImageOverride = putImage
        self.putImageScanningConfigurationOverride = putImageScanningConfiguration
        self.putImageTagMutabilityOverride = putImageTagMutability
        self.putLifecyclePolicyOverride = putLifecyclePolicy
        self.putRegistryPolicyOverride = putRegistryPolicy
        self.putRegistryScanningConfigurationOverride = putRegistryScanningConfiguration
        self.putReplicationConfigurationOverride = putReplicationConfiguration
        self.setRepositoryPolicyOverride = setRepositoryPolicy
        self.startImageScanOverride = startImageScan
        self.startLifecyclePolicyPreviewOverride = startLifecyclePolicyPreview
        self.tagResourceOverride = tagResource
        self.untagResourceOverride = untagResource
        self.uploadLayerPartOverride = uploadLayerPart
    }

    /**
     Invokes the BatchCheckLayerAvailability operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated BatchCheckLayerAvailabilityRequest object being passed to this operation.
     - Returns: The BatchCheckLayerAvailabilityResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    public func batchCheckLayerAvailability(
            input: ECRModel.BatchCheckLayerAvailabilityRequest) async throws -> ECRModel.BatchCheckLayerAvailabilityResponse {
        if let batchCheckLayerAvailabilityOverride = batchCheckLayerAvailabilityOverride {
            return try await batchCheckLayerAvailabilityOverride(input)
        }

        throw error
    }

    /**
     Invokes the BatchDeleteImage operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated BatchDeleteImageRequest object being passed to this operation.
     - Returns: The BatchDeleteImageResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    public func batchDeleteImage(
            input: ECRModel.BatchDeleteImageRequest) async throws -> ECRModel.BatchDeleteImageResponse {
        if let batchDeleteImageOverride = batchDeleteImageOverride {
            return try await batchDeleteImageOverride(input)
        }

        throw error
    }

    /**
     Invokes the BatchGetImage operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated BatchGetImageRequest object being passed to this operation.
     - Returns: The BatchGetImageResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    public func batchGetImage(
            input: ECRModel.BatchGetImageRequest) async throws -> ECRModel.BatchGetImageResponse {
        if let batchGetImageOverride = batchGetImageOverride {
            return try await batchGetImageOverride(input)
        }

        throw error
    }

    /**
     Invokes the BatchGetRepositoryScanningConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated BatchGetRepositoryScanningConfigurationRequest object being passed to this operation.
     - Returns: The BatchGetRepositoryScanningConfigurationResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server, validation.
     */
    public func batchGetRepositoryScanningConfiguration(
            input: ECRModel.BatchGetRepositoryScanningConfigurationRequest) async throws -> ECRModel.BatchGetRepositoryScanningConfigurationResponse {
        if let batchGetRepositoryScanningConfigurationOverride = batchGetRepositoryScanningConfigurationOverride {
            return try await batchGetRepositoryScanningConfigurationOverride(input)
        }

        throw error
    }

    /**
     Invokes the CompleteLayerUpload operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CompleteLayerUploadRequest object being passed to this operation.
     - Returns: The CompleteLayerUploadResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: emptyUpload, invalidLayer, invalidParameter, kms, layerAlreadyExists, layerPartTooSmall, repositoryNotFound, server, uploadNotFound.
     */
    public func completeLayerUpload(
            input: ECRModel.CompleteLayerUploadRequest) async throws -> ECRModel.CompleteLayerUploadResponse {
        if let completeLayerUploadOverride = completeLayerUploadOverride {
            return try await completeLayerUploadOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreatePullThroughCacheRule operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreatePullThroughCacheRuleRequest object being passed to this operation.
     - Returns: The CreatePullThroughCacheRuleResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, limitExceeded, pullThroughCacheRuleAlreadyExists, server, unsupportedUpstreamRegistry, validation.
     */
    public func createPullThroughCacheRule(
            input: ECRModel.CreatePullThroughCacheRuleRequest) async throws -> ECRModel.CreatePullThroughCacheRuleResponse {
        if let createPullThroughCacheRuleOverride = createPullThroughCacheRuleOverride {
            return try await createPullThroughCacheRuleOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateRepository operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateRepositoryRequest object being passed to this operation.
     - Returns: The CreateRepositoryResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, invalidTagParameter, kms, limitExceeded, repositoryAlreadyExists, server, tooManyTags.
     */
    public func createRepository(
            input: ECRModel.CreateRepositoryRequest) async throws -> ECRModel.CreateRepositoryResponse {
        if let createRepositoryOverride = createRepositoryOverride {
            return try await createRepositoryOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteLifecyclePolicy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteLifecyclePolicyRequest object being passed to this operation.
     - Returns: The DeleteLifecyclePolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, lifecyclePolicyNotFound, repositoryNotFound, server, validation.
     */
    public func deleteLifecyclePolicy(
            input: ECRModel.DeleteLifecyclePolicyRequest) async throws -> ECRModel.DeleteLifecyclePolicyResponse {
        if let deleteLifecyclePolicyOverride = deleteLifecyclePolicyOverride {
            return try await deleteLifecyclePolicyOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeletePullThroughCacheRule operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeletePullThroughCacheRuleRequest object being passed to this operation.
     - Returns: The DeletePullThroughCacheRuleResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, pullThroughCacheRuleNotFound, server, validation.
     */
    public func deletePullThroughCacheRule(
            input: ECRModel.DeletePullThroughCacheRuleRequest) async throws -> ECRModel.DeletePullThroughCacheRuleResponse {
        if let deletePullThroughCacheRuleOverride = deletePullThroughCacheRuleOverride {
            return try await deletePullThroughCacheRuleOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteRegistryPolicy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteRegistryPolicyRequest object being passed to this operation.
     - Returns: The DeleteRegistryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, registryPolicyNotFound, server, validation.
     */
    public func deleteRegistryPolicy(
            input: ECRModel.DeleteRegistryPolicyRequest) async throws -> ECRModel.DeleteRegistryPolicyResponse {
        if let deleteRegistryPolicyOverride = deleteRegistryPolicyOverride {
            return try await deleteRegistryPolicyOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteRepository operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteRepositoryRequest object being passed to this operation.
     - Returns: The DeleteRepositoryResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, kms, repositoryNotEmpty, repositoryNotFound, server.
     */
    public func deleteRepository(
            input: ECRModel.DeleteRepositoryRequest) async throws -> ECRModel.DeleteRepositoryResponse {
        if let deleteRepositoryOverride = deleteRepositoryOverride {
            return try await deleteRepositoryOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteRepositoryPolicy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteRepositoryPolicyRequest object being passed to this operation.
     - Returns: The DeleteRepositoryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, repositoryPolicyNotFound, server.
     */
    public func deleteRepositoryPolicy(
            input: ECRModel.DeleteRepositoryPolicyRequest) async throws -> ECRModel.DeleteRepositoryPolicyResponse {
        if let deleteRepositoryPolicyOverride = deleteRepositoryPolicyOverride {
            return try await deleteRepositoryPolicyOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeImageReplicationStatus operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeImageReplicationStatusRequest object being passed to this operation.
     - Returns: The DescribeImageReplicationStatusResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: imageNotFound, invalidParameter, repositoryNotFound, server, validation.
     */
    public func describeImageReplicationStatus(
            input: ECRModel.DescribeImageReplicationStatusRequest) async throws -> ECRModel.DescribeImageReplicationStatusResponse {
        if let describeImageReplicationStatusOverride = describeImageReplicationStatusOverride {
            return try await describeImageReplicationStatusOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeImageScanFindings operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeImageScanFindingsRequest object being passed to this operation.
     - Returns: The DescribeImageScanFindingsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: imageNotFound, invalidParameter, repositoryNotFound, scanNotFound, server, validation.
     */
    public func describeImageScanFindings(
            input: ECRModel.DescribeImageScanFindingsRequest) async throws -> ECRModel.DescribeImageScanFindingsResponse {
        if let describeImageScanFindingsOverride = describeImageScanFindingsOverride {
            return try await describeImageScanFindingsOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeImages operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeImagesRequest object being passed to this operation.
     - Returns: The DescribeImagesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: imageNotFound, invalidParameter, repositoryNotFound, server.
     */
    public func describeImages(
            input: ECRModel.DescribeImagesRequest) async throws -> ECRModel.DescribeImagesResponse {
        if let describeImagesOverride = describeImagesOverride {
            return try await describeImagesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribePullThroughCacheRules operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribePullThroughCacheRulesRequest object being passed to this operation.
     - Returns: The DescribePullThroughCacheRulesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, pullThroughCacheRuleNotFound, server, validation.
     */
    public func describePullThroughCacheRules(
            input: ECRModel.DescribePullThroughCacheRulesRequest) async throws -> ECRModel.DescribePullThroughCacheRulesResponse {
        if let describePullThroughCacheRulesOverride = describePullThroughCacheRulesOverride {
            return try await describePullThroughCacheRulesOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeRegistry operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeRegistryRequest object being passed to this operation.
     - Returns: The DescribeRegistryResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, server, validation.
     */
    public func describeRegistry(
            input: ECRModel.DescribeRegistryRequest) async throws -> ECRModel.DescribeRegistryResponse {
        if let describeRegistryOverride = describeRegistryOverride {
            return try await describeRegistryOverride(input)
        }

        throw error
    }

    /**
     Invokes the DescribeRepositories operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DescribeRepositoriesRequest object being passed to this operation.
     - Returns: The DescribeRepositoriesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    public func describeRepositories(
            input: ECRModel.DescribeRepositoriesRequest) async throws -> ECRModel.DescribeRepositoriesResponse {
        if let describeRepositoriesOverride = describeRepositoriesOverride {
            return try await describeRepositoriesOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetAuthorizationToken operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetAuthorizationTokenRequest object being passed to this operation.
     - Returns: The GetAuthorizationTokenResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, server.
     */
    public func getAuthorizationToken(
            input: ECRModel.GetAuthorizationTokenRequest) async throws -> ECRModel.GetAuthorizationTokenResponse {
        if let getAuthorizationTokenOverride = getAuthorizationTokenOverride {
            return try await getAuthorizationTokenOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetDownloadUrlForLayer operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetDownloadUrlForLayerRequest object being passed to this operation.
     - Returns: The GetDownloadUrlForLayerResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, layerInaccessible, layersNotFound, repositoryNotFound, server.
     */
    public func getDownloadUrlForLayer(
            input: ECRModel.GetDownloadUrlForLayerRequest) async throws -> ECRModel.GetDownloadUrlForLayerResponse {
        if let getDownloadUrlForLayerOverride = getDownloadUrlForLayerOverride {
            return try await getDownloadUrlForLayerOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetLifecyclePolicy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetLifecyclePolicyRequest object being passed to this operation.
     - Returns: The GetLifecyclePolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, lifecyclePolicyNotFound, repositoryNotFound, server, validation.
     */
    public func getLifecyclePolicy(
            input: ECRModel.GetLifecyclePolicyRequest) async throws -> ECRModel.GetLifecyclePolicyResponse {
        if let getLifecyclePolicyOverride = getLifecyclePolicyOverride {
            return try await getLifecyclePolicyOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetLifecyclePolicyPreview operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetLifecyclePolicyPreviewRequest object being passed to this operation.
     - Returns: The GetLifecyclePolicyPreviewResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, lifecyclePolicyPreviewNotFound, repositoryNotFound, server, validation.
     */
    public func getLifecyclePolicyPreview(
            input: ECRModel.GetLifecyclePolicyPreviewRequest) async throws -> ECRModel.GetLifecyclePolicyPreviewResponse {
        if let getLifecyclePolicyPreviewOverride = getLifecyclePolicyPreviewOverride {
            return try await getLifecyclePolicyPreviewOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetRegistryPolicy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetRegistryPolicyRequest object being passed to this operation.
     - Returns: The GetRegistryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, registryPolicyNotFound, server, validation.
     */
    public func getRegistryPolicy(
            input: ECRModel.GetRegistryPolicyRequest) async throws -> ECRModel.GetRegistryPolicyResponse {
        if let getRegistryPolicyOverride = getRegistryPolicyOverride {
            return try await getRegistryPolicyOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetRegistryScanningConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetRegistryScanningConfigurationRequest object being passed to this operation.
     - Returns: The GetRegistryScanningConfigurationResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, server, validation.
     */
    public func getRegistryScanningConfiguration(
            input: ECRModel.GetRegistryScanningConfigurationRequest) async throws -> ECRModel.GetRegistryScanningConfigurationResponse {
        if let getRegistryScanningConfigurationOverride = getRegistryScanningConfigurationOverride {
            return try await getRegistryScanningConfigurationOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetRepositoryPolicy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetRepositoryPolicyRequest object being passed to this operation.
     - Returns: The GetRepositoryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, repositoryPolicyNotFound, server.
     */
    public func getRepositoryPolicy(
            input: ECRModel.GetRepositoryPolicyRequest) async throws -> ECRModel.GetRepositoryPolicyResponse {
        if let getRepositoryPolicyOverride = getRepositoryPolicyOverride {
            return try await getRepositoryPolicyOverride(input)
        }

        throw error
    }

    /**
     Invokes the InitiateLayerUpload operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated InitiateLayerUploadRequest object being passed to this operation.
     - Returns: The InitiateLayerUploadResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, kms, repositoryNotFound, server.
     */
    public func initiateLayerUpload(
            input: ECRModel.InitiateLayerUploadRequest) async throws -> ECRModel.InitiateLayerUploadResponse {
        if let initiateLayerUploadOverride = initiateLayerUploadOverride {
            return try await initiateLayerUploadOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListImages operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListImagesRequest object being passed to this operation.
     - Returns: The ListImagesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    public func listImages(
            input: ECRModel.ListImagesRequest) async throws -> ECRModel.ListImagesResponse {
        if let listImagesOverride = listImagesOverride {
            return try await listImagesOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListTagsForResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
     - Returns: The ListTagsForResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    public func listTagsForResource(
            input: ECRModel.ListTagsForResourceRequest) async throws -> ECRModel.ListTagsForResourceResponse {
        if let listTagsForResourceOverride = listTagsForResourceOverride {
            return try await listTagsForResourceOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutImage operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutImageRequest object being passed to this operation.
     - Returns: The PutImageResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: imageAlreadyExists, imageDigestDoesNotMatch, imageTagAlreadyExists, invalidParameter, kms, layersNotFound, limitExceeded, referencedImagesNotFound, repositoryNotFound, server.
     */
    public func putImage(
            input: ECRModel.PutImageRequest) async throws -> ECRModel.PutImageResponse {
        if let putImageOverride = putImageOverride {
            return try await putImageOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutImageScanningConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutImageScanningConfigurationRequest object being passed to this operation.
     - Returns: The PutImageScanningConfigurationResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server, validation.
     */
    public func putImageScanningConfiguration(
            input: ECRModel.PutImageScanningConfigurationRequest) async throws -> ECRModel.PutImageScanningConfigurationResponse {
        if let putImageScanningConfigurationOverride = putImageScanningConfigurationOverride {
            return try await putImageScanningConfigurationOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutImageTagMutability operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutImageTagMutabilityRequest object being passed to this operation.
     - Returns: The PutImageTagMutabilityResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    public func putImageTagMutability(
            input: ECRModel.PutImageTagMutabilityRequest) async throws -> ECRModel.PutImageTagMutabilityResponse {
        if let putImageTagMutabilityOverride = putImageTagMutabilityOverride {
            return try await putImageTagMutabilityOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutLifecyclePolicy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutLifecyclePolicyRequest object being passed to this operation.
     - Returns: The PutLifecyclePolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server, validation.
     */
    public func putLifecyclePolicy(
            input: ECRModel.PutLifecyclePolicyRequest) async throws -> ECRModel.PutLifecyclePolicyResponse {
        if let putLifecyclePolicyOverride = putLifecyclePolicyOverride {
            return try await putLifecyclePolicyOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutRegistryPolicy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutRegistryPolicyRequest object being passed to this operation.
     - Returns: The PutRegistryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, server, validation.
     */
    public func putRegistryPolicy(
            input: ECRModel.PutRegistryPolicyRequest) async throws -> ECRModel.PutRegistryPolicyResponse {
        if let putRegistryPolicyOverride = putRegistryPolicyOverride {
            return try await putRegistryPolicyOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutRegistryScanningConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutRegistryScanningConfigurationRequest object being passed to this operation.
     - Returns: The PutRegistryScanningConfigurationResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, server, validation.
     */
    public func putRegistryScanningConfiguration(
            input: ECRModel.PutRegistryScanningConfigurationRequest) async throws -> ECRModel.PutRegistryScanningConfigurationResponse {
        if let putRegistryScanningConfigurationOverride = putRegistryScanningConfigurationOverride {
            return try await putRegistryScanningConfigurationOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutReplicationConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutReplicationConfigurationRequest object being passed to this operation.
     - Returns: The PutReplicationConfigurationResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, server, validation.
     */
    public func putReplicationConfiguration(
            input: ECRModel.PutReplicationConfigurationRequest) async throws -> ECRModel.PutReplicationConfigurationResponse {
        if let putReplicationConfigurationOverride = putReplicationConfigurationOverride {
            return try await putReplicationConfigurationOverride(input)
        }

        throw error
    }

    /**
     Invokes the SetRepositoryPolicy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SetRepositoryPolicyRequest object being passed to this operation.
     - Returns: The SetRepositoryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    public func setRepositoryPolicy(
            input: ECRModel.SetRepositoryPolicyRequest) async throws -> ECRModel.SetRepositoryPolicyResponse {
        if let setRepositoryPolicyOverride = setRepositoryPolicyOverride {
            return try await setRepositoryPolicyOverride(input)
        }

        throw error
    }

    /**
     Invokes the StartImageScan operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartImageScanRequest object being passed to this operation.
     - Returns: The StartImageScanResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: imageNotFound, invalidParameter, limitExceeded, repositoryNotFound, server, unsupportedImageType, validation.
     */
    public func startImageScan(
            input: ECRModel.StartImageScanRequest) async throws -> ECRModel.StartImageScanResponse {
        if let startImageScanOverride = startImageScanOverride {
            return try await startImageScanOverride(input)
        }

        throw error
    }

    /**
     Invokes the StartLifecyclePolicyPreview operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated StartLifecyclePolicyPreviewRequest object being passed to this operation.
     - Returns: The StartLifecyclePolicyPreviewResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, lifecyclePolicyNotFound, lifecyclePolicyPreviewInProgress, repositoryNotFound, server, validation.
     */
    public func startLifecyclePolicyPreview(
            input: ECRModel.StartLifecyclePolicyPreviewRequest) async throws -> ECRModel.StartLifecyclePolicyPreviewResponse {
        if let startLifecyclePolicyPreviewOverride = startLifecyclePolicyPreviewOverride {
            return try await startLifecyclePolicyPreviewOverride(input)
        }

        throw error
    }

    /**
     Invokes the TagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
     - Returns: The TagResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, invalidTagParameter, repositoryNotFound, server, tooManyTags.
     */
    public func tagResource(
            input: ECRModel.TagResourceRequest) async throws -> ECRModel.TagResourceResponse {
        if let tagResourceOverride = tagResourceOverride {
            return try await tagResourceOverride(input)
        }

        throw error
    }

    /**
     Invokes the UntagResource operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
     - Returns: The UntagResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, invalidTagParameter, repositoryNotFound, server, tooManyTags.
     */
    public func untagResource(
            input: ECRModel.UntagResourceRequest) async throws -> ECRModel.UntagResourceResponse {
        if let untagResourceOverride = untagResourceOverride {
            return try await untagResourceOverride(input)
        }

        throw error
    }

    /**
     Invokes the UploadLayerPart operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UploadLayerPartRequest object being passed to this operation.
     - Returns: The UploadLayerPartResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidLayerPart, invalidParameter, kms, limitExceeded, repositoryNotFound, server, uploadNotFound.
     */
    public func uploadLayerPart(
            input: ECRModel.UploadLayerPartRequest) async throws -> ECRModel.UploadLayerPartResponse {
        if let uploadLayerPartOverride = uploadLayerPartOverride {
            return try await uploadLayerPartOverride(input)
        }

        throw error
    }
#endif
}
