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
// MockECRClient.swift
// ECRClient
//

import Foundation
import ECRModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the ECR service by default returns the `__default` property of its return type.
 */
public struct MockECRClient: ECRClientProtocol {
    let batchCheckLayerAvailabilityAsyncOverride: BatchCheckLayerAvailabilityAsyncType?
    let batchCheckLayerAvailabilitySyncOverride: BatchCheckLayerAvailabilitySyncType?
    let batchDeleteImageAsyncOverride: BatchDeleteImageAsyncType?
    let batchDeleteImageSyncOverride: BatchDeleteImageSyncType?
    let batchGetImageAsyncOverride: BatchGetImageAsyncType?
    let batchGetImageSyncOverride: BatchGetImageSyncType?
    let completeLayerUploadAsyncOverride: CompleteLayerUploadAsyncType?
    let completeLayerUploadSyncOverride: CompleteLayerUploadSyncType?
    let createRepositoryAsyncOverride: CreateRepositoryAsyncType?
    let createRepositorySyncOverride: CreateRepositorySyncType?
    let deleteLifecyclePolicyAsyncOverride: DeleteLifecyclePolicyAsyncType?
    let deleteLifecyclePolicySyncOverride: DeleteLifecyclePolicySyncType?
    let deleteRegistryPolicyAsyncOverride: DeleteRegistryPolicyAsyncType?
    let deleteRegistryPolicySyncOverride: DeleteRegistryPolicySyncType?
    let deleteRepositoryAsyncOverride: DeleteRepositoryAsyncType?
    let deleteRepositorySyncOverride: DeleteRepositorySyncType?
    let deleteRepositoryPolicyAsyncOverride: DeleteRepositoryPolicyAsyncType?
    let deleteRepositoryPolicySyncOverride: DeleteRepositoryPolicySyncType?
    let describeImageScanFindingsAsyncOverride: DescribeImageScanFindingsAsyncType?
    let describeImageScanFindingsSyncOverride: DescribeImageScanFindingsSyncType?
    let describeImagesAsyncOverride: DescribeImagesAsyncType?
    let describeImagesSyncOverride: DescribeImagesSyncType?
    let describeRegistryAsyncOverride: DescribeRegistryAsyncType?
    let describeRegistrySyncOverride: DescribeRegistrySyncType?
    let describeRepositoriesAsyncOverride: DescribeRepositoriesAsyncType?
    let describeRepositoriesSyncOverride: DescribeRepositoriesSyncType?
    let getAuthorizationTokenAsyncOverride: GetAuthorizationTokenAsyncType?
    let getAuthorizationTokenSyncOverride: GetAuthorizationTokenSyncType?
    let getDownloadUrlForLayerAsyncOverride: GetDownloadUrlForLayerAsyncType?
    let getDownloadUrlForLayerSyncOverride: GetDownloadUrlForLayerSyncType?
    let getLifecyclePolicyAsyncOverride: GetLifecyclePolicyAsyncType?
    let getLifecyclePolicySyncOverride: GetLifecyclePolicySyncType?
    let getLifecyclePolicyPreviewAsyncOverride: GetLifecyclePolicyPreviewAsyncType?
    let getLifecyclePolicyPreviewSyncOverride: GetLifecyclePolicyPreviewSyncType?
    let getRegistryPolicyAsyncOverride: GetRegistryPolicyAsyncType?
    let getRegistryPolicySyncOverride: GetRegistryPolicySyncType?
    let getRepositoryPolicyAsyncOverride: GetRepositoryPolicyAsyncType?
    let getRepositoryPolicySyncOverride: GetRepositoryPolicySyncType?
    let initiateLayerUploadAsyncOverride: InitiateLayerUploadAsyncType?
    let initiateLayerUploadSyncOverride: InitiateLayerUploadSyncType?
    let listImagesAsyncOverride: ListImagesAsyncType?
    let listImagesSyncOverride: ListImagesSyncType?
    let listTagsForResourceAsyncOverride: ListTagsForResourceAsyncType?
    let listTagsForResourceSyncOverride: ListTagsForResourceSyncType?
    let putImageAsyncOverride: PutImageAsyncType?
    let putImageSyncOverride: PutImageSyncType?
    let putImageScanningConfigurationAsyncOverride: PutImageScanningConfigurationAsyncType?
    let putImageScanningConfigurationSyncOverride: PutImageScanningConfigurationSyncType?
    let putImageTagMutabilityAsyncOverride: PutImageTagMutabilityAsyncType?
    let putImageTagMutabilitySyncOverride: PutImageTagMutabilitySyncType?
    let putLifecyclePolicyAsyncOverride: PutLifecyclePolicyAsyncType?
    let putLifecyclePolicySyncOverride: PutLifecyclePolicySyncType?
    let putRegistryPolicyAsyncOverride: PutRegistryPolicyAsyncType?
    let putRegistryPolicySyncOverride: PutRegistryPolicySyncType?
    let putReplicationConfigurationAsyncOverride: PutReplicationConfigurationAsyncType?
    let putReplicationConfigurationSyncOverride: PutReplicationConfigurationSyncType?
    let setRepositoryPolicyAsyncOverride: SetRepositoryPolicyAsyncType?
    let setRepositoryPolicySyncOverride: SetRepositoryPolicySyncType?
    let startImageScanAsyncOverride: StartImageScanAsyncType?
    let startImageScanSyncOverride: StartImageScanSyncType?
    let startLifecyclePolicyPreviewAsyncOverride: StartLifecyclePolicyPreviewAsyncType?
    let startLifecyclePolicyPreviewSyncOverride: StartLifecyclePolicyPreviewSyncType?
    let tagResourceAsyncOverride: TagResourceAsyncType?
    let tagResourceSyncOverride: TagResourceSyncType?
    let untagResourceAsyncOverride: UntagResourceAsyncType?
    let untagResourceSyncOverride: UntagResourceSyncType?
    let uploadLayerPartAsyncOverride: UploadLayerPartAsyncType?
    let uploadLayerPartSyncOverride: UploadLayerPartSyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            batchCheckLayerAvailabilityAsync: BatchCheckLayerAvailabilityAsyncType? = nil,
            batchCheckLayerAvailabilitySync: BatchCheckLayerAvailabilitySyncType? = nil,
            batchDeleteImageAsync: BatchDeleteImageAsyncType? = nil,
            batchDeleteImageSync: BatchDeleteImageSyncType? = nil,
            batchGetImageAsync: BatchGetImageAsyncType? = nil,
            batchGetImageSync: BatchGetImageSyncType? = nil,
            completeLayerUploadAsync: CompleteLayerUploadAsyncType? = nil,
            completeLayerUploadSync: CompleteLayerUploadSyncType? = nil,
            createRepositoryAsync: CreateRepositoryAsyncType? = nil,
            createRepositorySync: CreateRepositorySyncType? = nil,
            deleteLifecyclePolicyAsync: DeleteLifecyclePolicyAsyncType? = nil,
            deleteLifecyclePolicySync: DeleteLifecyclePolicySyncType? = nil,
            deleteRegistryPolicyAsync: DeleteRegistryPolicyAsyncType? = nil,
            deleteRegistryPolicySync: DeleteRegistryPolicySyncType? = nil,
            deleteRepositoryAsync: DeleteRepositoryAsyncType? = nil,
            deleteRepositorySync: DeleteRepositorySyncType? = nil,
            deleteRepositoryPolicyAsync: DeleteRepositoryPolicyAsyncType? = nil,
            deleteRepositoryPolicySync: DeleteRepositoryPolicySyncType? = nil,
            describeImageScanFindingsAsync: DescribeImageScanFindingsAsyncType? = nil,
            describeImageScanFindingsSync: DescribeImageScanFindingsSyncType? = nil,
            describeImagesAsync: DescribeImagesAsyncType? = nil,
            describeImagesSync: DescribeImagesSyncType? = nil,
            describeRegistryAsync: DescribeRegistryAsyncType? = nil,
            describeRegistrySync: DescribeRegistrySyncType? = nil,
            describeRepositoriesAsync: DescribeRepositoriesAsyncType? = nil,
            describeRepositoriesSync: DescribeRepositoriesSyncType? = nil,
            getAuthorizationTokenAsync: GetAuthorizationTokenAsyncType? = nil,
            getAuthorizationTokenSync: GetAuthorizationTokenSyncType? = nil,
            getDownloadUrlForLayerAsync: GetDownloadUrlForLayerAsyncType? = nil,
            getDownloadUrlForLayerSync: GetDownloadUrlForLayerSyncType? = nil,
            getLifecyclePolicyAsync: GetLifecyclePolicyAsyncType? = nil,
            getLifecyclePolicySync: GetLifecyclePolicySyncType? = nil,
            getLifecyclePolicyPreviewAsync: GetLifecyclePolicyPreviewAsyncType? = nil,
            getLifecyclePolicyPreviewSync: GetLifecyclePolicyPreviewSyncType? = nil,
            getRegistryPolicyAsync: GetRegistryPolicyAsyncType? = nil,
            getRegistryPolicySync: GetRegistryPolicySyncType? = nil,
            getRepositoryPolicyAsync: GetRepositoryPolicyAsyncType? = nil,
            getRepositoryPolicySync: GetRepositoryPolicySyncType? = nil,
            initiateLayerUploadAsync: InitiateLayerUploadAsyncType? = nil,
            initiateLayerUploadSync: InitiateLayerUploadSyncType? = nil,
            listImagesAsync: ListImagesAsyncType? = nil,
            listImagesSync: ListImagesSyncType? = nil,
            listTagsForResourceAsync: ListTagsForResourceAsyncType? = nil,
            listTagsForResourceSync: ListTagsForResourceSyncType? = nil,
            putImageAsync: PutImageAsyncType? = nil,
            putImageSync: PutImageSyncType? = nil,
            putImageScanningConfigurationAsync: PutImageScanningConfigurationAsyncType? = nil,
            putImageScanningConfigurationSync: PutImageScanningConfigurationSyncType? = nil,
            putImageTagMutabilityAsync: PutImageTagMutabilityAsyncType? = nil,
            putImageTagMutabilitySync: PutImageTagMutabilitySyncType? = nil,
            putLifecyclePolicyAsync: PutLifecyclePolicyAsyncType? = nil,
            putLifecyclePolicySync: PutLifecyclePolicySyncType? = nil,
            putRegistryPolicyAsync: PutRegistryPolicyAsyncType? = nil,
            putRegistryPolicySync: PutRegistryPolicySyncType? = nil,
            putReplicationConfigurationAsync: PutReplicationConfigurationAsyncType? = nil,
            putReplicationConfigurationSync: PutReplicationConfigurationSyncType? = nil,
            setRepositoryPolicyAsync: SetRepositoryPolicyAsyncType? = nil,
            setRepositoryPolicySync: SetRepositoryPolicySyncType? = nil,
            startImageScanAsync: StartImageScanAsyncType? = nil,
            startImageScanSync: StartImageScanSyncType? = nil,
            startLifecyclePolicyPreviewAsync: StartLifecyclePolicyPreviewAsyncType? = nil,
            startLifecyclePolicyPreviewSync: StartLifecyclePolicyPreviewSyncType? = nil,
            tagResourceAsync: TagResourceAsyncType? = nil,
            tagResourceSync: TagResourceSyncType? = nil,
            untagResourceAsync: UntagResourceAsyncType? = nil,
            untagResourceSync: UntagResourceSyncType? = nil,
            uploadLayerPartAsync: UploadLayerPartAsyncType? = nil,
            uploadLayerPartSync: UploadLayerPartSyncType? = nil) {
        self.batchCheckLayerAvailabilityAsyncOverride = batchCheckLayerAvailabilityAsync
        self.batchCheckLayerAvailabilitySyncOverride = batchCheckLayerAvailabilitySync
        self.batchDeleteImageAsyncOverride = batchDeleteImageAsync
        self.batchDeleteImageSyncOverride = batchDeleteImageSync
        self.batchGetImageAsyncOverride = batchGetImageAsync
        self.batchGetImageSyncOverride = batchGetImageSync
        self.completeLayerUploadAsyncOverride = completeLayerUploadAsync
        self.completeLayerUploadSyncOverride = completeLayerUploadSync
        self.createRepositoryAsyncOverride = createRepositoryAsync
        self.createRepositorySyncOverride = createRepositorySync
        self.deleteLifecyclePolicyAsyncOverride = deleteLifecyclePolicyAsync
        self.deleteLifecyclePolicySyncOverride = deleteLifecyclePolicySync
        self.deleteRegistryPolicyAsyncOverride = deleteRegistryPolicyAsync
        self.deleteRegistryPolicySyncOverride = deleteRegistryPolicySync
        self.deleteRepositoryAsyncOverride = deleteRepositoryAsync
        self.deleteRepositorySyncOverride = deleteRepositorySync
        self.deleteRepositoryPolicyAsyncOverride = deleteRepositoryPolicyAsync
        self.deleteRepositoryPolicySyncOverride = deleteRepositoryPolicySync
        self.describeImageScanFindingsAsyncOverride = describeImageScanFindingsAsync
        self.describeImageScanFindingsSyncOverride = describeImageScanFindingsSync
        self.describeImagesAsyncOverride = describeImagesAsync
        self.describeImagesSyncOverride = describeImagesSync
        self.describeRegistryAsyncOverride = describeRegistryAsync
        self.describeRegistrySyncOverride = describeRegistrySync
        self.describeRepositoriesAsyncOverride = describeRepositoriesAsync
        self.describeRepositoriesSyncOverride = describeRepositoriesSync
        self.getAuthorizationTokenAsyncOverride = getAuthorizationTokenAsync
        self.getAuthorizationTokenSyncOverride = getAuthorizationTokenSync
        self.getDownloadUrlForLayerAsyncOverride = getDownloadUrlForLayerAsync
        self.getDownloadUrlForLayerSyncOverride = getDownloadUrlForLayerSync
        self.getLifecyclePolicyAsyncOverride = getLifecyclePolicyAsync
        self.getLifecyclePolicySyncOverride = getLifecyclePolicySync
        self.getLifecyclePolicyPreviewAsyncOverride = getLifecyclePolicyPreviewAsync
        self.getLifecyclePolicyPreviewSyncOverride = getLifecyclePolicyPreviewSync
        self.getRegistryPolicyAsyncOverride = getRegistryPolicyAsync
        self.getRegistryPolicySyncOverride = getRegistryPolicySync
        self.getRepositoryPolicyAsyncOverride = getRepositoryPolicyAsync
        self.getRepositoryPolicySyncOverride = getRepositoryPolicySync
        self.initiateLayerUploadAsyncOverride = initiateLayerUploadAsync
        self.initiateLayerUploadSyncOverride = initiateLayerUploadSync
        self.listImagesAsyncOverride = listImagesAsync
        self.listImagesSyncOverride = listImagesSync
        self.listTagsForResourceAsyncOverride = listTagsForResourceAsync
        self.listTagsForResourceSyncOverride = listTagsForResourceSync
        self.putImageAsyncOverride = putImageAsync
        self.putImageSyncOverride = putImageSync
        self.putImageScanningConfigurationAsyncOverride = putImageScanningConfigurationAsync
        self.putImageScanningConfigurationSyncOverride = putImageScanningConfigurationSync
        self.putImageTagMutabilityAsyncOverride = putImageTagMutabilityAsync
        self.putImageTagMutabilitySyncOverride = putImageTagMutabilitySync
        self.putLifecyclePolicyAsyncOverride = putLifecyclePolicyAsync
        self.putLifecyclePolicySyncOverride = putLifecyclePolicySync
        self.putRegistryPolicyAsyncOverride = putRegistryPolicyAsync
        self.putRegistryPolicySyncOverride = putRegistryPolicySync
        self.putReplicationConfigurationAsyncOverride = putReplicationConfigurationAsync
        self.putReplicationConfigurationSyncOverride = putReplicationConfigurationSync
        self.setRepositoryPolicyAsyncOverride = setRepositoryPolicyAsync
        self.setRepositoryPolicySyncOverride = setRepositoryPolicySync
        self.startImageScanAsyncOverride = startImageScanAsync
        self.startImageScanSyncOverride = startImageScanSync
        self.startLifecyclePolicyPreviewAsyncOverride = startLifecyclePolicyPreviewAsync
        self.startLifecyclePolicyPreviewSyncOverride = startLifecyclePolicyPreviewSync
        self.tagResourceAsyncOverride = tagResourceAsync
        self.tagResourceSyncOverride = tagResourceSync
        self.untagResourceAsyncOverride = untagResourceAsync
        self.untagResourceSyncOverride = untagResourceSync
        self.uploadLayerPartAsyncOverride = uploadLayerPartAsync
        self.uploadLayerPartSyncOverride = uploadLayerPartSync
    }

    /**
     Invokes the BatchCheckLayerAvailability operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchCheckLayerAvailabilityRequest object being passed to this operation.
         - completion: The BatchCheckLayerAvailabilityResponse object or an error will be passed to this 
           callback when the operation is complete. The BatchCheckLayerAvailabilityResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    public func batchCheckLayerAvailabilityAsync(
            input: ECRModel.BatchCheckLayerAvailabilityRequest, 
            completion: @escaping (Result<ECRModel.BatchCheckLayerAvailabilityResponse, ECRError>) -> ()) throws {
        if let batchCheckLayerAvailabilityAsyncOverride = batchCheckLayerAvailabilityAsyncOverride {
            return try batchCheckLayerAvailabilityAsyncOverride(input, completion)
        }

        let result = BatchCheckLayerAvailabilityResponse.__default
        
        completion(.success(result))
    }

    /**
     Invokes the BatchCheckLayerAvailability operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchCheckLayerAvailabilityRequest object being passed to this operation.
     - Returns: The BatchCheckLayerAvailabilityResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    public func batchCheckLayerAvailabilitySync(
            input: ECRModel.BatchCheckLayerAvailabilityRequest) throws -> ECRModel.BatchCheckLayerAvailabilityResponse {
        if let batchCheckLayerAvailabilitySyncOverride = batchCheckLayerAvailabilitySyncOverride {
            return try batchCheckLayerAvailabilitySyncOverride(input)
        }

        return BatchCheckLayerAvailabilityResponse.__default
    }

    /**
     Invokes the BatchDeleteImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchDeleteImageRequest object being passed to this operation.
         - completion: The BatchDeleteImageResponse object or an error will be passed to this 
           callback when the operation is complete. The BatchDeleteImageResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    public func batchDeleteImageAsync(
            input: ECRModel.BatchDeleteImageRequest, 
            completion: @escaping (Result<ECRModel.BatchDeleteImageResponse, ECRError>) -> ()) throws {
        if let batchDeleteImageAsyncOverride = batchDeleteImageAsyncOverride {
            return try batchDeleteImageAsyncOverride(input, completion)
        }

        let result = BatchDeleteImageResponse.__default
        
        completion(.success(result))
    }

    /**
     Invokes the BatchDeleteImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchDeleteImageRequest object being passed to this operation.
     - Returns: The BatchDeleteImageResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    public func batchDeleteImageSync(
            input: ECRModel.BatchDeleteImageRequest) throws -> ECRModel.BatchDeleteImageResponse {
        if let batchDeleteImageSyncOverride = batchDeleteImageSyncOverride {
            return try batchDeleteImageSyncOverride(input)
        }

        return BatchDeleteImageResponse.__default
    }

    /**
     Invokes the BatchGetImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchGetImageRequest object being passed to this operation.
         - completion: The BatchGetImageResponse object or an error will be passed to this 
           callback when the operation is complete. The BatchGetImageResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    public func batchGetImageAsync(
            input: ECRModel.BatchGetImageRequest, 
            completion: @escaping (Result<ECRModel.BatchGetImageResponse, ECRError>) -> ()) throws {
        if let batchGetImageAsyncOverride = batchGetImageAsyncOverride {
            return try batchGetImageAsyncOverride(input, completion)
        }

        let result = BatchGetImageResponse.__default
        
        completion(.success(result))
    }

    /**
     Invokes the BatchGetImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchGetImageRequest object being passed to this operation.
     - Returns: The BatchGetImageResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    public func batchGetImageSync(
            input: ECRModel.BatchGetImageRequest) throws -> ECRModel.BatchGetImageResponse {
        if let batchGetImageSyncOverride = batchGetImageSyncOverride {
            return try batchGetImageSyncOverride(input)
        }

        return BatchGetImageResponse.__default
    }

    /**
     Invokes the CompleteLayerUpload operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CompleteLayerUploadRequest object being passed to this operation.
         - completion: The CompleteLayerUploadResponse object or an error will be passed to this 
           callback when the operation is complete. The CompleteLayerUploadResponse
           object will be validated before being returned to caller.
           The possible errors are: emptyUpload, invalidLayer, invalidParameter, kms, layerAlreadyExists, layerPartTooSmall, repositoryNotFound, server, uploadNotFound.
     */
    public func completeLayerUploadAsync(
            input: ECRModel.CompleteLayerUploadRequest, 
            completion: @escaping (Result<ECRModel.CompleteLayerUploadResponse, ECRError>) -> ()) throws {
        if let completeLayerUploadAsyncOverride = completeLayerUploadAsyncOverride {
            return try completeLayerUploadAsyncOverride(input, completion)
        }

        let result = CompleteLayerUploadResponse.__default
        
        completion(.success(result))
    }

    /**
     Invokes the CompleteLayerUpload operation waiting for the response before returning.

     - Parameters:
         - input: The validated CompleteLayerUploadRequest object being passed to this operation.
     - Returns: The CompleteLayerUploadResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: emptyUpload, invalidLayer, invalidParameter, kms, layerAlreadyExists, layerPartTooSmall, repositoryNotFound, server, uploadNotFound.
     */
    public func completeLayerUploadSync(
            input: ECRModel.CompleteLayerUploadRequest) throws -> ECRModel.CompleteLayerUploadResponse {
        if let completeLayerUploadSyncOverride = completeLayerUploadSyncOverride {
            return try completeLayerUploadSyncOverride(input)
        }

        return CompleteLayerUploadResponse.__default
    }

    /**
     Invokes the CreateRepository operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateRepositoryRequest object being passed to this operation.
         - completion: The CreateRepositoryResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateRepositoryResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, invalidTagParameter, kms, limitExceeded, repositoryAlreadyExists, server, tooManyTags.
     */
    public func createRepositoryAsync(
            input: ECRModel.CreateRepositoryRequest, 
            completion: @escaping (Result<ECRModel.CreateRepositoryResponse, ECRError>) -> ()) throws {
        if let createRepositoryAsyncOverride = createRepositoryAsyncOverride {
            return try createRepositoryAsyncOverride(input, completion)
        }

        let result = CreateRepositoryResponse.__default
        
        completion(.success(result))
    }

    /**
     Invokes the CreateRepository operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateRepositoryRequest object being passed to this operation.
     - Returns: The CreateRepositoryResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, invalidTagParameter, kms, limitExceeded, repositoryAlreadyExists, server, tooManyTags.
     */
    public func createRepositorySync(
            input: ECRModel.CreateRepositoryRequest) throws -> ECRModel.CreateRepositoryResponse {
        if let createRepositorySyncOverride = createRepositorySyncOverride {
            return try createRepositorySyncOverride(input)
        }

        return CreateRepositoryResponse.__default
    }

    /**
     Invokes the DeleteLifecyclePolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteLifecyclePolicyRequest object being passed to this operation.
         - completion: The DeleteLifecyclePolicyResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteLifecyclePolicyResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, lifecyclePolicyNotFound, repositoryNotFound, server.
     */
    public func deleteLifecyclePolicyAsync(
            input: ECRModel.DeleteLifecyclePolicyRequest, 
            completion: @escaping (Result<ECRModel.DeleteLifecyclePolicyResponse, ECRError>) -> ()) throws {
        if let deleteLifecyclePolicyAsyncOverride = deleteLifecyclePolicyAsyncOverride {
            return try deleteLifecyclePolicyAsyncOverride(input, completion)
        }

        let result = DeleteLifecyclePolicyResponse.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DeleteLifecyclePolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteLifecyclePolicyRequest object being passed to this operation.
     - Returns: The DeleteLifecyclePolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, lifecyclePolicyNotFound, repositoryNotFound, server.
     */
    public func deleteLifecyclePolicySync(
            input: ECRModel.DeleteLifecyclePolicyRequest) throws -> ECRModel.DeleteLifecyclePolicyResponse {
        if let deleteLifecyclePolicySyncOverride = deleteLifecyclePolicySyncOverride {
            return try deleteLifecyclePolicySyncOverride(input)
        }

        return DeleteLifecyclePolicyResponse.__default
    }

    /**
     Invokes the DeleteRegistryPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteRegistryPolicyRequest object being passed to this operation.
         - completion: The DeleteRegistryPolicyResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteRegistryPolicyResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, registryPolicyNotFound, server.
     */
    public func deleteRegistryPolicyAsync(
            input: ECRModel.DeleteRegistryPolicyRequest, 
            completion: @escaping (Result<ECRModel.DeleteRegistryPolicyResponse, ECRError>) -> ()) throws {
        if let deleteRegistryPolicyAsyncOverride = deleteRegistryPolicyAsyncOverride {
            return try deleteRegistryPolicyAsyncOverride(input, completion)
        }

        let result = DeleteRegistryPolicyResponse.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DeleteRegistryPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteRegistryPolicyRequest object being passed to this operation.
     - Returns: The DeleteRegistryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, registryPolicyNotFound, server.
     */
    public func deleteRegistryPolicySync(
            input: ECRModel.DeleteRegistryPolicyRequest) throws -> ECRModel.DeleteRegistryPolicyResponse {
        if let deleteRegistryPolicySyncOverride = deleteRegistryPolicySyncOverride {
            return try deleteRegistryPolicySyncOverride(input)
        }

        return DeleteRegistryPolicyResponse.__default
    }

    /**
     Invokes the DeleteRepository operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteRepositoryRequest object being passed to this operation.
         - completion: The DeleteRepositoryResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteRepositoryResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, kms, repositoryNotEmpty, repositoryNotFound, server.
     */
    public func deleteRepositoryAsync(
            input: ECRModel.DeleteRepositoryRequest, 
            completion: @escaping (Result<ECRModel.DeleteRepositoryResponse, ECRError>) -> ()) throws {
        if let deleteRepositoryAsyncOverride = deleteRepositoryAsyncOverride {
            return try deleteRepositoryAsyncOverride(input, completion)
        }

        let result = DeleteRepositoryResponse.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DeleteRepository operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteRepositoryRequest object being passed to this operation.
     - Returns: The DeleteRepositoryResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, kms, repositoryNotEmpty, repositoryNotFound, server.
     */
    public func deleteRepositorySync(
            input: ECRModel.DeleteRepositoryRequest) throws -> ECRModel.DeleteRepositoryResponse {
        if let deleteRepositorySyncOverride = deleteRepositorySyncOverride {
            return try deleteRepositorySyncOverride(input)
        }

        return DeleteRepositoryResponse.__default
    }

    /**
     Invokes the DeleteRepositoryPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteRepositoryPolicyRequest object being passed to this operation.
         - completion: The DeleteRepositoryPolicyResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteRepositoryPolicyResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, repositoryPolicyNotFound, server.
     */
    public func deleteRepositoryPolicyAsync(
            input: ECRModel.DeleteRepositoryPolicyRequest, 
            completion: @escaping (Result<ECRModel.DeleteRepositoryPolicyResponse, ECRError>) -> ()) throws {
        if let deleteRepositoryPolicyAsyncOverride = deleteRepositoryPolicyAsyncOverride {
            return try deleteRepositoryPolicyAsyncOverride(input, completion)
        }

        let result = DeleteRepositoryPolicyResponse.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DeleteRepositoryPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteRepositoryPolicyRequest object being passed to this operation.
     - Returns: The DeleteRepositoryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, repositoryPolicyNotFound, server.
     */
    public func deleteRepositoryPolicySync(
            input: ECRModel.DeleteRepositoryPolicyRequest) throws -> ECRModel.DeleteRepositoryPolicyResponse {
        if let deleteRepositoryPolicySyncOverride = deleteRepositoryPolicySyncOverride {
            return try deleteRepositoryPolicySyncOverride(input)
        }

        return DeleteRepositoryPolicyResponse.__default
    }

    /**
     Invokes the DescribeImageScanFindings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeImageScanFindingsRequest object being passed to this operation.
         - completion: The DescribeImageScanFindingsResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeImageScanFindingsResponse
           object will be validated before being returned to caller.
           The possible errors are: imageNotFound, invalidParameter, repositoryNotFound, scanNotFound, server.
     */
    public func describeImageScanFindingsAsync(
            input: ECRModel.DescribeImageScanFindingsRequest, 
            completion: @escaping (Result<ECRModel.DescribeImageScanFindingsResponse, ECRError>) -> ()) throws {
        if let describeImageScanFindingsAsyncOverride = describeImageScanFindingsAsyncOverride {
            return try describeImageScanFindingsAsyncOverride(input, completion)
        }

        let result = DescribeImageScanFindingsResponse.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeImageScanFindings operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeImageScanFindingsRequest object being passed to this operation.
     - Returns: The DescribeImageScanFindingsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: imageNotFound, invalidParameter, repositoryNotFound, scanNotFound, server.
     */
    public func describeImageScanFindingsSync(
            input: ECRModel.DescribeImageScanFindingsRequest) throws -> ECRModel.DescribeImageScanFindingsResponse {
        if let describeImageScanFindingsSyncOverride = describeImageScanFindingsSyncOverride {
            return try describeImageScanFindingsSyncOverride(input)
        }

        return DescribeImageScanFindingsResponse.__default
    }

    /**
     Invokes the DescribeImages operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeImagesRequest object being passed to this operation.
         - completion: The DescribeImagesResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeImagesResponse
           object will be validated before being returned to caller.
           The possible errors are: imageNotFound, invalidParameter, repositoryNotFound, server.
     */
    public func describeImagesAsync(
            input: ECRModel.DescribeImagesRequest, 
            completion: @escaping (Result<ECRModel.DescribeImagesResponse, ECRError>) -> ()) throws {
        if let describeImagesAsyncOverride = describeImagesAsyncOverride {
            return try describeImagesAsyncOverride(input, completion)
        }

        let result = DescribeImagesResponse.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeImages operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeImagesRequest object being passed to this operation.
     - Returns: The DescribeImagesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: imageNotFound, invalidParameter, repositoryNotFound, server.
     */
    public func describeImagesSync(
            input: ECRModel.DescribeImagesRequest) throws -> ECRModel.DescribeImagesResponse {
        if let describeImagesSyncOverride = describeImagesSyncOverride {
            return try describeImagesSyncOverride(input)
        }

        return DescribeImagesResponse.__default
    }

    /**
     Invokes the DescribeRegistry operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeRegistryRequest object being passed to this operation.
         - completion: The DescribeRegistryResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeRegistryResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, server, validation.
     */
    public func describeRegistryAsync(
            input: ECRModel.DescribeRegistryRequest, 
            completion: @escaping (Result<ECRModel.DescribeRegistryResponse, ECRError>) -> ()) throws {
        if let describeRegistryAsyncOverride = describeRegistryAsyncOverride {
            return try describeRegistryAsyncOverride(input, completion)
        }

        let result = DescribeRegistryResponse.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeRegistry operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeRegistryRequest object being passed to this operation.
     - Returns: The DescribeRegistryResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, server, validation.
     */
    public func describeRegistrySync(
            input: ECRModel.DescribeRegistryRequest) throws -> ECRModel.DescribeRegistryResponse {
        if let describeRegistrySyncOverride = describeRegistrySyncOverride {
            return try describeRegistrySyncOverride(input)
        }

        return DescribeRegistryResponse.__default
    }

    /**
     Invokes the DescribeRepositories operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeRepositoriesRequest object being passed to this operation.
         - completion: The DescribeRepositoriesResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeRepositoriesResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    public func describeRepositoriesAsync(
            input: ECRModel.DescribeRepositoriesRequest, 
            completion: @escaping (Result<ECRModel.DescribeRepositoriesResponse, ECRError>) -> ()) throws {
        if let describeRepositoriesAsyncOverride = describeRepositoriesAsyncOverride {
            return try describeRepositoriesAsyncOverride(input, completion)
        }

        let result = DescribeRepositoriesResponse.__default
        
        completion(.success(result))
    }

    /**
     Invokes the DescribeRepositories operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeRepositoriesRequest object being passed to this operation.
     - Returns: The DescribeRepositoriesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    public func describeRepositoriesSync(
            input: ECRModel.DescribeRepositoriesRequest) throws -> ECRModel.DescribeRepositoriesResponse {
        if let describeRepositoriesSyncOverride = describeRepositoriesSyncOverride {
            return try describeRepositoriesSyncOverride(input)
        }

        return DescribeRepositoriesResponse.__default
    }

    /**
     Invokes the GetAuthorizationToken operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetAuthorizationTokenRequest object being passed to this operation.
         - completion: The GetAuthorizationTokenResponse object or an error will be passed to this 
           callback when the operation is complete. The GetAuthorizationTokenResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, server.
     */
    public func getAuthorizationTokenAsync(
            input: ECRModel.GetAuthorizationTokenRequest, 
            completion: @escaping (Result<ECRModel.GetAuthorizationTokenResponse, ECRError>) -> ()) throws {
        if let getAuthorizationTokenAsyncOverride = getAuthorizationTokenAsyncOverride {
            return try getAuthorizationTokenAsyncOverride(input, completion)
        }

        let result = GetAuthorizationTokenResponse.__default
        
        completion(.success(result))
    }

    /**
     Invokes the GetAuthorizationToken operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetAuthorizationTokenRequest object being passed to this operation.
     - Returns: The GetAuthorizationTokenResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, server.
     */
    public func getAuthorizationTokenSync(
            input: ECRModel.GetAuthorizationTokenRequest) throws -> ECRModel.GetAuthorizationTokenResponse {
        if let getAuthorizationTokenSyncOverride = getAuthorizationTokenSyncOverride {
            return try getAuthorizationTokenSyncOverride(input)
        }

        return GetAuthorizationTokenResponse.__default
    }

    /**
     Invokes the GetDownloadUrlForLayer operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetDownloadUrlForLayerRequest object being passed to this operation.
         - completion: The GetDownloadUrlForLayerResponse object or an error will be passed to this 
           callback when the operation is complete. The GetDownloadUrlForLayerResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, layerInaccessible, layersNotFound, repositoryNotFound, server.
     */
    public func getDownloadUrlForLayerAsync(
            input: ECRModel.GetDownloadUrlForLayerRequest, 
            completion: @escaping (Result<ECRModel.GetDownloadUrlForLayerResponse, ECRError>) -> ()) throws {
        if let getDownloadUrlForLayerAsyncOverride = getDownloadUrlForLayerAsyncOverride {
            return try getDownloadUrlForLayerAsyncOverride(input, completion)
        }

        let result = GetDownloadUrlForLayerResponse.__default
        
        completion(.success(result))
    }

    /**
     Invokes the GetDownloadUrlForLayer operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetDownloadUrlForLayerRequest object being passed to this operation.
     - Returns: The GetDownloadUrlForLayerResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, layerInaccessible, layersNotFound, repositoryNotFound, server.
     */
    public func getDownloadUrlForLayerSync(
            input: ECRModel.GetDownloadUrlForLayerRequest) throws -> ECRModel.GetDownloadUrlForLayerResponse {
        if let getDownloadUrlForLayerSyncOverride = getDownloadUrlForLayerSyncOverride {
            return try getDownloadUrlForLayerSyncOverride(input)
        }

        return GetDownloadUrlForLayerResponse.__default
    }

    /**
     Invokes the GetLifecyclePolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetLifecyclePolicyRequest object being passed to this operation.
         - completion: The GetLifecyclePolicyResponse object or an error will be passed to this 
           callback when the operation is complete. The GetLifecyclePolicyResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, lifecyclePolicyNotFound, repositoryNotFound, server.
     */
    public func getLifecyclePolicyAsync(
            input: ECRModel.GetLifecyclePolicyRequest, 
            completion: @escaping (Result<ECRModel.GetLifecyclePolicyResponse, ECRError>) -> ()) throws {
        if let getLifecyclePolicyAsyncOverride = getLifecyclePolicyAsyncOverride {
            return try getLifecyclePolicyAsyncOverride(input, completion)
        }

        let result = GetLifecyclePolicyResponse.__default
        
        completion(.success(result))
    }

    /**
     Invokes the GetLifecyclePolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetLifecyclePolicyRequest object being passed to this operation.
     - Returns: The GetLifecyclePolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, lifecyclePolicyNotFound, repositoryNotFound, server.
     */
    public func getLifecyclePolicySync(
            input: ECRModel.GetLifecyclePolicyRequest) throws -> ECRModel.GetLifecyclePolicyResponse {
        if let getLifecyclePolicySyncOverride = getLifecyclePolicySyncOverride {
            return try getLifecyclePolicySyncOverride(input)
        }

        return GetLifecyclePolicyResponse.__default
    }

    /**
     Invokes the GetLifecyclePolicyPreview operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetLifecyclePolicyPreviewRequest object being passed to this operation.
         - completion: The GetLifecyclePolicyPreviewResponse object or an error will be passed to this 
           callback when the operation is complete. The GetLifecyclePolicyPreviewResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, lifecyclePolicyPreviewNotFound, repositoryNotFound, server.
     */
    public func getLifecyclePolicyPreviewAsync(
            input: ECRModel.GetLifecyclePolicyPreviewRequest, 
            completion: @escaping (Result<ECRModel.GetLifecyclePolicyPreviewResponse, ECRError>) -> ()) throws {
        if let getLifecyclePolicyPreviewAsyncOverride = getLifecyclePolicyPreviewAsyncOverride {
            return try getLifecyclePolicyPreviewAsyncOverride(input, completion)
        }

        let result = GetLifecyclePolicyPreviewResponse.__default
        
        completion(.success(result))
    }

    /**
     Invokes the GetLifecyclePolicyPreview operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetLifecyclePolicyPreviewRequest object being passed to this operation.
     - Returns: The GetLifecyclePolicyPreviewResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, lifecyclePolicyPreviewNotFound, repositoryNotFound, server.
     */
    public func getLifecyclePolicyPreviewSync(
            input: ECRModel.GetLifecyclePolicyPreviewRequest) throws -> ECRModel.GetLifecyclePolicyPreviewResponse {
        if let getLifecyclePolicyPreviewSyncOverride = getLifecyclePolicyPreviewSyncOverride {
            return try getLifecyclePolicyPreviewSyncOverride(input)
        }

        return GetLifecyclePolicyPreviewResponse.__default
    }

    /**
     Invokes the GetRegistryPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetRegistryPolicyRequest object being passed to this operation.
         - completion: The GetRegistryPolicyResponse object or an error will be passed to this 
           callback when the operation is complete. The GetRegistryPolicyResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, registryPolicyNotFound, server.
     */
    public func getRegistryPolicyAsync(
            input: ECRModel.GetRegistryPolicyRequest, 
            completion: @escaping (Result<ECRModel.GetRegistryPolicyResponse, ECRError>) -> ()) throws {
        if let getRegistryPolicyAsyncOverride = getRegistryPolicyAsyncOverride {
            return try getRegistryPolicyAsyncOverride(input, completion)
        }

        let result = GetRegistryPolicyResponse.__default
        
        completion(.success(result))
    }

    /**
     Invokes the GetRegistryPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetRegistryPolicyRequest object being passed to this operation.
     - Returns: The GetRegistryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, registryPolicyNotFound, server.
     */
    public func getRegistryPolicySync(
            input: ECRModel.GetRegistryPolicyRequest) throws -> ECRModel.GetRegistryPolicyResponse {
        if let getRegistryPolicySyncOverride = getRegistryPolicySyncOverride {
            return try getRegistryPolicySyncOverride(input)
        }

        return GetRegistryPolicyResponse.__default
    }

    /**
     Invokes the GetRepositoryPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetRepositoryPolicyRequest object being passed to this operation.
         - completion: The GetRepositoryPolicyResponse object or an error will be passed to this 
           callback when the operation is complete. The GetRepositoryPolicyResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, repositoryPolicyNotFound, server.
     */
    public func getRepositoryPolicyAsync(
            input: ECRModel.GetRepositoryPolicyRequest, 
            completion: @escaping (Result<ECRModel.GetRepositoryPolicyResponse, ECRError>) -> ()) throws {
        if let getRepositoryPolicyAsyncOverride = getRepositoryPolicyAsyncOverride {
            return try getRepositoryPolicyAsyncOverride(input, completion)
        }

        let result = GetRepositoryPolicyResponse.__default
        
        completion(.success(result))
    }

    /**
     Invokes the GetRepositoryPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetRepositoryPolicyRequest object being passed to this operation.
     - Returns: The GetRepositoryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, repositoryPolicyNotFound, server.
     */
    public func getRepositoryPolicySync(
            input: ECRModel.GetRepositoryPolicyRequest) throws -> ECRModel.GetRepositoryPolicyResponse {
        if let getRepositoryPolicySyncOverride = getRepositoryPolicySyncOverride {
            return try getRepositoryPolicySyncOverride(input)
        }

        return GetRepositoryPolicyResponse.__default
    }

    /**
     Invokes the InitiateLayerUpload operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated InitiateLayerUploadRequest object being passed to this operation.
         - completion: The InitiateLayerUploadResponse object or an error will be passed to this 
           callback when the operation is complete. The InitiateLayerUploadResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, kms, repositoryNotFound, server.
     */
    public func initiateLayerUploadAsync(
            input: ECRModel.InitiateLayerUploadRequest, 
            completion: @escaping (Result<ECRModel.InitiateLayerUploadResponse, ECRError>) -> ()) throws {
        if let initiateLayerUploadAsyncOverride = initiateLayerUploadAsyncOverride {
            return try initiateLayerUploadAsyncOverride(input, completion)
        }

        let result = InitiateLayerUploadResponse.__default
        
        completion(.success(result))
    }

    /**
     Invokes the InitiateLayerUpload operation waiting for the response before returning.

     - Parameters:
         - input: The validated InitiateLayerUploadRequest object being passed to this operation.
     - Returns: The InitiateLayerUploadResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, kms, repositoryNotFound, server.
     */
    public func initiateLayerUploadSync(
            input: ECRModel.InitiateLayerUploadRequest) throws -> ECRModel.InitiateLayerUploadResponse {
        if let initiateLayerUploadSyncOverride = initiateLayerUploadSyncOverride {
            return try initiateLayerUploadSyncOverride(input)
        }

        return InitiateLayerUploadResponse.__default
    }

    /**
     Invokes the ListImages operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListImagesRequest object being passed to this operation.
         - completion: The ListImagesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListImagesResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    public func listImagesAsync(
            input: ECRModel.ListImagesRequest, 
            completion: @escaping (Result<ECRModel.ListImagesResponse, ECRError>) -> ()) throws {
        if let listImagesAsyncOverride = listImagesAsyncOverride {
            return try listImagesAsyncOverride(input, completion)
        }

        let result = ListImagesResponse.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ListImages operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListImagesRequest object being passed to this operation.
     - Returns: The ListImagesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    public func listImagesSync(
            input: ECRModel.ListImagesRequest) throws -> ECRModel.ListImagesResponse {
        if let listImagesSyncOverride = listImagesSyncOverride {
            return try listImagesSyncOverride(input)
        }

        return ListImagesResponse.__default
    }

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
         - completion: The ListTagsForResourceResponse object or an error will be passed to this 
           callback when the operation is complete. The ListTagsForResourceResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    public func listTagsForResourceAsync(
            input: ECRModel.ListTagsForResourceRequest, 
            completion: @escaping (Result<ECRModel.ListTagsForResourceResponse, ECRError>) -> ()) throws {
        if let listTagsForResourceAsyncOverride = listTagsForResourceAsyncOverride {
            return try listTagsForResourceAsyncOverride(input, completion)
        }

        let result = ListTagsForResourceResponse.__default
        
        completion(.success(result))
    }

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
     - Returns: The ListTagsForResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    public func listTagsForResourceSync(
            input: ECRModel.ListTagsForResourceRequest) throws -> ECRModel.ListTagsForResourceResponse {
        if let listTagsForResourceSyncOverride = listTagsForResourceSyncOverride {
            return try listTagsForResourceSyncOverride(input)
        }

        return ListTagsForResourceResponse.__default
    }

    /**
     Invokes the PutImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutImageRequest object being passed to this operation.
         - completion: The PutImageResponse object or an error will be passed to this 
           callback when the operation is complete. The PutImageResponse
           object will be validated before being returned to caller.
           The possible errors are: imageAlreadyExists, imageDigestDoesNotMatch, imageTagAlreadyExists, invalidParameter, kms, layersNotFound, limitExceeded, referencedImagesNotFound, repositoryNotFound, server.
     */
    public func putImageAsync(
            input: ECRModel.PutImageRequest, 
            completion: @escaping (Result<ECRModel.PutImageResponse, ECRError>) -> ()) throws {
        if let putImageAsyncOverride = putImageAsyncOverride {
            return try putImageAsyncOverride(input, completion)
        }

        let result = PutImageResponse.__default
        
        completion(.success(result))
    }

    /**
     Invokes the PutImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutImageRequest object being passed to this operation.
     - Returns: The PutImageResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: imageAlreadyExists, imageDigestDoesNotMatch, imageTagAlreadyExists, invalidParameter, kms, layersNotFound, limitExceeded, referencedImagesNotFound, repositoryNotFound, server.
     */
    public func putImageSync(
            input: ECRModel.PutImageRequest) throws -> ECRModel.PutImageResponse {
        if let putImageSyncOverride = putImageSyncOverride {
            return try putImageSyncOverride(input)
        }

        return PutImageResponse.__default
    }

    /**
     Invokes the PutImageScanningConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutImageScanningConfigurationRequest object being passed to this operation.
         - completion: The PutImageScanningConfigurationResponse object or an error will be passed to this 
           callback when the operation is complete. The PutImageScanningConfigurationResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    public func putImageScanningConfigurationAsync(
            input: ECRModel.PutImageScanningConfigurationRequest, 
            completion: @escaping (Result<ECRModel.PutImageScanningConfigurationResponse, ECRError>) -> ()) throws {
        if let putImageScanningConfigurationAsyncOverride = putImageScanningConfigurationAsyncOverride {
            return try putImageScanningConfigurationAsyncOverride(input, completion)
        }

        let result = PutImageScanningConfigurationResponse.__default
        
        completion(.success(result))
    }

    /**
     Invokes the PutImageScanningConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutImageScanningConfigurationRequest object being passed to this operation.
     - Returns: The PutImageScanningConfigurationResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    public func putImageScanningConfigurationSync(
            input: ECRModel.PutImageScanningConfigurationRequest) throws -> ECRModel.PutImageScanningConfigurationResponse {
        if let putImageScanningConfigurationSyncOverride = putImageScanningConfigurationSyncOverride {
            return try putImageScanningConfigurationSyncOverride(input)
        }

        return PutImageScanningConfigurationResponse.__default
    }

    /**
     Invokes the PutImageTagMutability operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutImageTagMutabilityRequest object being passed to this operation.
         - completion: The PutImageTagMutabilityResponse object or an error will be passed to this 
           callback when the operation is complete. The PutImageTagMutabilityResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    public func putImageTagMutabilityAsync(
            input: ECRModel.PutImageTagMutabilityRequest, 
            completion: @escaping (Result<ECRModel.PutImageTagMutabilityResponse, ECRError>) -> ()) throws {
        if let putImageTagMutabilityAsyncOverride = putImageTagMutabilityAsyncOverride {
            return try putImageTagMutabilityAsyncOverride(input, completion)
        }

        let result = PutImageTagMutabilityResponse.__default
        
        completion(.success(result))
    }

    /**
     Invokes the PutImageTagMutability operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutImageTagMutabilityRequest object being passed to this operation.
     - Returns: The PutImageTagMutabilityResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    public func putImageTagMutabilitySync(
            input: ECRModel.PutImageTagMutabilityRequest) throws -> ECRModel.PutImageTagMutabilityResponse {
        if let putImageTagMutabilitySyncOverride = putImageTagMutabilitySyncOverride {
            return try putImageTagMutabilitySyncOverride(input)
        }

        return PutImageTagMutabilityResponse.__default
    }

    /**
     Invokes the PutLifecyclePolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutLifecyclePolicyRequest object being passed to this operation.
         - completion: The PutLifecyclePolicyResponse object or an error will be passed to this 
           callback when the operation is complete. The PutLifecyclePolicyResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    public func putLifecyclePolicyAsync(
            input: ECRModel.PutLifecyclePolicyRequest, 
            completion: @escaping (Result<ECRModel.PutLifecyclePolicyResponse, ECRError>) -> ()) throws {
        if let putLifecyclePolicyAsyncOverride = putLifecyclePolicyAsyncOverride {
            return try putLifecyclePolicyAsyncOverride(input, completion)
        }

        let result = PutLifecyclePolicyResponse.__default
        
        completion(.success(result))
    }

    /**
     Invokes the PutLifecyclePolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutLifecyclePolicyRequest object being passed to this operation.
     - Returns: The PutLifecyclePolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    public func putLifecyclePolicySync(
            input: ECRModel.PutLifecyclePolicyRequest) throws -> ECRModel.PutLifecyclePolicyResponse {
        if let putLifecyclePolicySyncOverride = putLifecyclePolicySyncOverride {
            return try putLifecyclePolicySyncOverride(input)
        }

        return PutLifecyclePolicyResponse.__default
    }

    /**
     Invokes the PutRegistryPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutRegistryPolicyRequest object being passed to this operation.
         - completion: The PutRegistryPolicyResponse object or an error will be passed to this 
           callback when the operation is complete. The PutRegistryPolicyResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, server.
     */
    public func putRegistryPolicyAsync(
            input: ECRModel.PutRegistryPolicyRequest, 
            completion: @escaping (Result<ECRModel.PutRegistryPolicyResponse, ECRError>) -> ()) throws {
        if let putRegistryPolicyAsyncOverride = putRegistryPolicyAsyncOverride {
            return try putRegistryPolicyAsyncOverride(input, completion)
        }

        let result = PutRegistryPolicyResponse.__default
        
        completion(.success(result))
    }

    /**
     Invokes the PutRegistryPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutRegistryPolicyRequest object being passed to this operation.
     - Returns: The PutRegistryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, server.
     */
    public func putRegistryPolicySync(
            input: ECRModel.PutRegistryPolicyRequest) throws -> ECRModel.PutRegistryPolicyResponse {
        if let putRegistryPolicySyncOverride = putRegistryPolicySyncOverride {
            return try putRegistryPolicySyncOverride(input)
        }

        return PutRegistryPolicyResponse.__default
    }

    /**
     Invokes the PutReplicationConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutReplicationConfigurationRequest object being passed to this operation.
         - completion: The PutReplicationConfigurationResponse object or an error will be passed to this 
           callback when the operation is complete. The PutReplicationConfigurationResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, server, validation.
     */
    public func putReplicationConfigurationAsync(
            input: ECRModel.PutReplicationConfigurationRequest, 
            completion: @escaping (Result<ECRModel.PutReplicationConfigurationResponse, ECRError>) -> ()) throws {
        if let putReplicationConfigurationAsyncOverride = putReplicationConfigurationAsyncOverride {
            return try putReplicationConfigurationAsyncOverride(input, completion)
        }

        let result = PutReplicationConfigurationResponse.__default
        
        completion(.success(result))
    }

    /**
     Invokes the PutReplicationConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutReplicationConfigurationRequest object being passed to this operation.
     - Returns: The PutReplicationConfigurationResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, server, validation.
     */
    public func putReplicationConfigurationSync(
            input: ECRModel.PutReplicationConfigurationRequest) throws -> ECRModel.PutReplicationConfigurationResponse {
        if let putReplicationConfigurationSyncOverride = putReplicationConfigurationSyncOverride {
            return try putReplicationConfigurationSyncOverride(input)
        }

        return PutReplicationConfigurationResponse.__default
    }

    /**
     Invokes the SetRepositoryPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetRepositoryPolicyRequest object being passed to this operation.
         - completion: The SetRepositoryPolicyResponse object or an error will be passed to this 
           callback when the operation is complete. The SetRepositoryPolicyResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    public func setRepositoryPolicyAsync(
            input: ECRModel.SetRepositoryPolicyRequest, 
            completion: @escaping (Result<ECRModel.SetRepositoryPolicyResponse, ECRError>) -> ()) throws {
        if let setRepositoryPolicyAsyncOverride = setRepositoryPolicyAsyncOverride {
            return try setRepositoryPolicyAsyncOverride(input, completion)
        }

        let result = SetRepositoryPolicyResponse.__default
        
        completion(.success(result))
    }

    /**
     Invokes the SetRepositoryPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetRepositoryPolicyRequest object being passed to this operation.
     - Returns: The SetRepositoryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    public func setRepositoryPolicySync(
            input: ECRModel.SetRepositoryPolicyRequest) throws -> ECRModel.SetRepositoryPolicyResponse {
        if let setRepositoryPolicySyncOverride = setRepositoryPolicySyncOverride {
            return try setRepositoryPolicySyncOverride(input)
        }

        return SetRepositoryPolicyResponse.__default
    }

    /**
     Invokes the StartImageScan operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartImageScanRequest object being passed to this operation.
         - completion: The StartImageScanResponse object or an error will be passed to this 
           callback when the operation is complete. The StartImageScanResponse
           object will be validated before being returned to caller.
           The possible errors are: imageNotFound, invalidParameter, limitExceeded, repositoryNotFound, server, unsupportedImageType.
     */
    public func startImageScanAsync(
            input: ECRModel.StartImageScanRequest, 
            completion: @escaping (Result<ECRModel.StartImageScanResponse, ECRError>) -> ()) throws {
        if let startImageScanAsyncOverride = startImageScanAsyncOverride {
            return try startImageScanAsyncOverride(input, completion)
        }

        let result = StartImageScanResponse.__default
        
        completion(.success(result))
    }

    /**
     Invokes the StartImageScan operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartImageScanRequest object being passed to this operation.
     - Returns: The StartImageScanResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: imageNotFound, invalidParameter, limitExceeded, repositoryNotFound, server, unsupportedImageType.
     */
    public func startImageScanSync(
            input: ECRModel.StartImageScanRequest) throws -> ECRModel.StartImageScanResponse {
        if let startImageScanSyncOverride = startImageScanSyncOverride {
            return try startImageScanSyncOverride(input)
        }

        return StartImageScanResponse.__default
    }

    /**
     Invokes the StartLifecyclePolicyPreview operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartLifecyclePolicyPreviewRequest object being passed to this operation.
         - completion: The StartLifecyclePolicyPreviewResponse object or an error will be passed to this 
           callback when the operation is complete. The StartLifecyclePolicyPreviewResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, lifecyclePolicyNotFound, lifecyclePolicyPreviewInProgress, repositoryNotFound, server.
     */
    public func startLifecyclePolicyPreviewAsync(
            input: ECRModel.StartLifecyclePolicyPreviewRequest, 
            completion: @escaping (Result<ECRModel.StartLifecyclePolicyPreviewResponse, ECRError>) -> ()) throws {
        if let startLifecyclePolicyPreviewAsyncOverride = startLifecyclePolicyPreviewAsyncOverride {
            return try startLifecyclePolicyPreviewAsyncOverride(input, completion)
        }

        let result = StartLifecyclePolicyPreviewResponse.__default
        
        completion(.success(result))
    }

    /**
     Invokes the StartLifecyclePolicyPreview operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartLifecyclePolicyPreviewRequest object being passed to this operation.
     - Returns: The StartLifecyclePolicyPreviewResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, lifecyclePolicyNotFound, lifecyclePolicyPreviewInProgress, repositoryNotFound, server.
     */
    public func startLifecyclePolicyPreviewSync(
            input: ECRModel.StartLifecyclePolicyPreviewRequest) throws -> ECRModel.StartLifecyclePolicyPreviewResponse {
        if let startLifecyclePolicyPreviewSyncOverride = startLifecyclePolicyPreviewSyncOverride {
            return try startLifecyclePolicyPreviewSyncOverride(input)
        }

        return StartLifecyclePolicyPreviewResponse.__default
    }

    /**
     Invokes the TagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
         - completion: The TagResourceResponse object or an error will be passed to this 
           callback when the operation is complete. The TagResourceResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, invalidTagParameter, repositoryNotFound, server, tooManyTags.
     */
    public func tagResourceAsync(
            input: ECRModel.TagResourceRequest, 
            completion: @escaping (Result<ECRModel.TagResourceResponse, ECRError>) -> ()) throws {
        if let tagResourceAsyncOverride = tagResourceAsyncOverride {
            return try tagResourceAsyncOverride(input, completion)
        }

        let result = TagResourceResponse.__default
        
        completion(.success(result))
    }

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
     - Returns: The TagResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, invalidTagParameter, repositoryNotFound, server, tooManyTags.
     */
    public func tagResourceSync(
            input: ECRModel.TagResourceRequest) throws -> ECRModel.TagResourceResponse {
        if let tagResourceSyncOverride = tagResourceSyncOverride {
            return try tagResourceSyncOverride(input)
        }

        return TagResourceResponse.__default
    }

    /**
     Invokes the UntagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
         - completion: The UntagResourceResponse object or an error will be passed to this 
           callback when the operation is complete. The UntagResourceResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, invalidTagParameter, repositoryNotFound, server, tooManyTags.
     */
    public func untagResourceAsync(
            input: ECRModel.UntagResourceRequest, 
            completion: @escaping (Result<ECRModel.UntagResourceResponse, ECRError>) -> ()) throws {
        if let untagResourceAsyncOverride = untagResourceAsyncOverride {
            return try untagResourceAsyncOverride(input, completion)
        }

        let result = UntagResourceResponse.__default
        
        completion(.success(result))
    }

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
     - Returns: The UntagResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, invalidTagParameter, repositoryNotFound, server, tooManyTags.
     */
    public func untagResourceSync(
            input: ECRModel.UntagResourceRequest) throws -> ECRModel.UntagResourceResponse {
        if let untagResourceSyncOverride = untagResourceSyncOverride {
            return try untagResourceSyncOverride(input)
        }

        return UntagResourceResponse.__default
    }

    /**
     Invokes the UploadLayerPart operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UploadLayerPartRequest object being passed to this operation.
         - completion: The UploadLayerPartResponse object or an error will be passed to this 
           callback when the operation is complete. The UploadLayerPartResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidLayerPart, invalidParameter, kms, limitExceeded, repositoryNotFound, server, uploadNotFound.
     */
    public func uploadLayerPartAsync(
            input: ECRModel.UploadLayerPartRequest, 
            completion: @escaping (Result<ECRModel.UploadLayerPartResponse, ECRError>) -> ()) throws {
        if let uploadLayerPartAsyncOverride = uploadLayerPartAsyncOverride {
            return try uploadLayerPartAsyncOverride(input, completion)
        }

        let result = UploadLayerPartResponse.__default
        
        completion(.success(result))
    }

    /**
     Invokes the UploadLayerPart operation waiting for the response before returning.

     - Parameters:
         - input: The validated UploadLayerPartRequest object being passed to this operation.
     - Returns: The UploadLayerPartResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidLayerPart, invalidParameter, kms, limitExceeded, repositoryNotFound, server, uploadNotFound.
     */
    public func uploadLayerPartSync(
            input: ECRModel.UploadLayerPartRequest) throws -> ECRModel.UploadLayerPartResponse {
        if let uploadLayerPartSyncOverride = uploadLayerPartSyncOverride {
            return try uploadLayerPartSyncOverride(input)
        }

        return UploadLayerPartResponse.__default
    }
}
