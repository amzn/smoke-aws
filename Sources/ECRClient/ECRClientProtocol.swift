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
// ECRClientProtocol.swift
// ECRClient
//

import Foundation
import ECRModel
import SmokeAWSCore
import SmokeHTTPClient

/**
 Client Protocol for the ECR service.
 */
public protocol ECRClientProtocol {
    typealias BatchCheckLayerAvailabilitySyncType = (
            _ input: ECRModel.BatchCheckLayerAvailabilityRequest) throws -> ECRModel.BatchCheckLayerAvailabilityResponse
    typealias BatchCheckLayerAvailabilityAsyncType = (
            _ input: ECRModel.BatchCheckLayerAvailabilityRequest, 
            _ completion: @escaping (Result<ECRModel.BatchCheckLayerAvailabilityResponse, ECRError>) -> ()) throws -> ()
    typealias BatchDeleteImageSyncType = (
            _ input: ECRModel.BatchDeleteImageRequest) throws -> ECRModel.BatchDeleteImageResponse
    typealias BatchDeleteImageAsyncType = (
            _ input: ECRModel.BatchDeleteImageRequest, 
            _ completion: @escaping (Result<ECRModel.BatchDeleteImageResponse, ECRError>) -> ()) throws -> ()
    typealias BatchGetImageSyncType = (
            _ input: ECRModel.BatchGetImageRequest) throws -> ECRModel.BatchGetImageResponse
    typealias BatchGetImageAsyncType = (
            _ input: ECRModel.BatchGetImageRequest, 
            _ completion: @escaping (Result<ECRModel.BatchGetImageResponse, ECRError>) -> ()) throws -> ()
    typealias CompleteLayerUploadSyncType = (
            _ input: ECRModel.CompleteLayerUploadRequest) throws -> ECRModel.CompleteLayerUploadResponse
    typealias CompleteLayerUploadAsyncType = (
            _ input: ECRModel.CompleteLayerUploadRequest, 
            _ completion: @escaping (Result<ECRModel.CompleteLayerUploadResponse, ECRError>) -> ()) throws -> ()
    typealias CreateRepositorySyncType = (
            _ input: ECRModel.CreateRepositoryRequest) throws -> ECRModel.CreateRepositoryResponse
    typealias CreateRepositoryAsyncType = (
            _ input: ECRModel.CreateRepositoryRequest, 
            _ completion: @escaping (Result<ECRModel.CreateRepositoryResponse, ECRError>) -> ()) throws -> ()
    typealias DeleteLifecyclePolicySyncType = (
            _ input: ECRModel.DeleteLifecyclePolicyRequest) throws -> ECRModel.DeleteLifecyclePolicyResponse
    typealias DeleteLifecyclePolicyAsyncType = (
            _ input: ECRModel.DeleteLifecyclePolicyRequest, 
            _ completion: @escaping (Result<ECRModel.DeleteLifecyclePolicyResponse, ECRError>) -> ()) throws -> ()
    typealias DeleteRegistryPolicySyncType = (
            _ input: ECRModel.DeleteRegistryPolicyRequest) throws -> ECRModel.DeleteRegistryPolicyResponse
    typealias DeleteRegistryPolicyAsyncType = (
            _ input: ECRModel.DeleteRegistryPolicyRequest, 
            _ completion: @escaping (Result<ECRModel.DeleteRegistryPolicyResponse, ECRError>) -> ()) throws -> ()
    typealias DeleteRepositorySyncType = (
            _ input: ECRModel.DeleteRepositoryRequest) throws -> ECRModel.DeleteRepositoryResponse
    typealias DeleteRepositoryAsyncType = (
            _ input: ECRModel.DeleteRepositoryRequest, 
            _ completion: @escaping (Result<ECRModel.DeleteRepositoryResponse, ECRError>) -> ()) throws -> ()
    typealias DeleteRepositoryPolicySyncType = (
            _ input: ECRModel.DeleteRepositoryPolicyRequest) throws -> ECRModel.DeleteRepositoryPolicyResponse
    typealias DeleteRepositoryPolicyAsyncType = (
            _ input: ECRModel.DeleteRepositoryPolicyRequest, 
            _ completion: @escaping (Result<ECRModel.DeleteRepositoryPolicyResponse, ECRError>) -> ()) throws -> ()
    typealias DescribeImageScanFindingsSyncType = (
            _ input: ECRModel.DescribeImageScanFindingsRequest) throws -> ECRModel.DescribeImageScanFindingsResponse
    typealias DescribeImageScanFindingsAsyncType = (
            _ input: ECRModel.DescribeImageScanFindingsRequest, 
            _ completion: @escaping (Result<ECRModel.DescribeImageScanFindingsResponse, ECRError>) -> ()) throws -> ()
    typealias DescribeImagesSyncType = (
            _ input: ECRModel.DescribeImagesRequest) throws -> ECRModel.DescribeImagesResponse
    typealias DescribeImagesAsyncType = (
            _ input: ECRModel.DescribeImagesRequest, 
            _ completion: @escaping (Result<ECRModel.DescribeImagesResponse, ECRError>) -> ()) throws -> ()
    typealias DescribeRegistrySyncType = (
            _ input: ECRModel.DescribeRegistryRequest) throws -> ECRModel.DescribeRegistryResponse
    typealias DescribeRegistryAsyncType = (
            _ input: ECRModel.DescribeRegistryRequest, 
            _ completion: @escaping (Result<ECRModel.DescribeRegistryResponse, ECRError>) -> ()) throws -> ()
    typealias DescribeRepositoriesSyncType = (
            _ input: ECRModel.DescribeRepositoriesRequest) throws -> ECRModel.DescribeRepositoriesResponse
    typealias DescribeRepositoriesAsyncType = (
            _ input: ECRModel.DescribeRepositoriesRequest, 
            _ completion: @escaping (Result<ECRModel.DescribeRepositoriesResponse, ECRError>) -> ()) throws -> ()
    typealias GetAuthorizationTokenSyncType = (
            _ input: ECRModel.GetAuthorizationTokenRequest) throws -> ECRModel.GetAuthorizationTokenResponse
    typealias GetAuthorizationTokenAsyncType = (
            _ input: ECRModel.GetAuthorizationTokenRequest, 
            _ completion: @escaping (Result<ECRModel.GetAuthorizationTokenResponse, ECRError>) -> ()) throws -> ()
    typealias GetDownloadUrlForLayerSyncType = (
            _ input: ECRModel.GetDownloadUrlForLayerRequest) throws -> ECRModel.GetDownloadUrlForLayerResponse
    typealias GetDownloadUrlForLayerAsyncType = (
            _ input: ECRModel.GetDownloadUrlForLayerRequest, 
            _ completion: @escaping (Result<ECRModel.GetDownloadUrlForLayerResponse, ECRError>) -> ()) throws -> ()
    typealias GetLifecyclePolicySyncType = (
            _ input: ECRModel.GetLifecyclePolicyRequest) throws -> ECRModel.GetLifecyclePolicyResponse
    typealias GetLifecyclePolicyAsyncType = (
            _ input: ECRModel.GetLifecyclePolicyRequest, 
            _ completion: @escaping (Result<ECRModel.GetLifecyclePolicyResponse, ECRError>) -> ()) throws -> ()
    typealias GetLifecyclePolicyPreviewSyncType = (
            _ input: ECRModel.GetLifecyclePolicyPreviewRequest) throws -> ECRModel.GetLifecyclePolicyPreviewResponse
    typealias GetLifecyclePolicyPreviewAsyncType = (
            _ input: ECRModel.GetLifecyclePolicyPreviewRequest, 
            _ completion: @escaping (Result<ECRModel.GetLifecyclePolicyPreviewResponse, ECRError>) -> ()) throws -> ()
    typealias GetRegistryPolicySyncType = (
            _ input: ECRModel.GetRegistryPolicyRequest) throws -> ECRModel.GetRegistryPolicyResponse
    typealias GetRegistryPolicyAsyncType = (
            _ input: ECRModel.GetRegistryPolicyRequest, 
            _ completion: @escaping (Result<ECRModel.GetRegistryPolicyResponse, ECRError>) -> ()) throws -> ()
    typealias GetRepositoryPolicySyncType = (
            _ input: ECRModel.GetRepositoryPolicyRequest) throws -> ECRModel.GetRepositoryPolicyResponse
    typealias GetRepositoryPolicyAsyncType = (
            _ input: ECRModel.GetRepositoryPolicyRequest, 
            _ completion: @escaping (Result<ECRModel.GetRepositoryPolicyResponse, ECRError>) -> ()) throws -> ()
    typealias InitiateLayerUploadSyncType = (
            _ input: ECRModel.InitiateLayerUploadRequest) throws -> ECRModel.InitiateLayerUploadResponse
    typealias InitiateLayerUploadAsyncType = (
            _ input: ECRModel.InitiateLayerUploadRequest, 
            _ completion: @escaping (Result<ECRModel.InitiateLayerUploadResponse, ECRError>) -> ()) throws -> ()
    typealias ListImagesSyncType = (
            _ input: ECRModel.ListImagesRequest) throws -> ECRModel.ListImagesResponse
    typealias ListImagesAsyncType = (
            _ input: ECRModel.ListImagesRequest, 
            _ completion: @escaping (Result<ECRModel.ListImagesResponse, ECRError>) -> ()) throws -> ()
    typealias ListTagsForResourceSyncType = (
            _ input: ECRModel.ListTagsForResourceRequest) throws -> ECRModel.ListTagsForResourceResponse
    typealias ListTagsForResourceAsyncType = (
            _ input: ECRModel.ListTagsForResourceRequest, 
            _ completion: @escaping (Result<ECRModel.ListTagsForResourceResponse, ECRError>) -> ()) throws -> ()
    typealias PutImageSyncType = (
            _ input: ECRModel.PutImageRequest) throws -> ECRModel.PutImageResponse
    typealias PutImageAsyncType = (
            _ input: ECRModel.PutImageRequest, 
            _ completion: @escaping (Result<ECRModel.PutImageResponse, ECRError>) -> ()) throws -> ()
    typealias PutImageScanningConfigurationSyncType = (
            _ input: ECRModel.PutImageScanningConfigurationRequest) throws -> ECRModel.PutImageScanningConfigurationResponse
    typealias PutImageScanningConfigurationAsyncType = (
            _ input: ECRModel.PutImageScanningConfigurationRequest, 
            _ completion: @escaping (Result<ECRModel.PutImageScanningConfigurationResponse, ECRError>) -> ()) throws -> ()
    typealias PutImageTagMutabilitySyncType = (
            _ input: ECRModel.PutImageTagMutabilityRequest) throws -> ECRModel.PutImageTagMutabilityResponse
    typealias PutImageTagMutabilityAsyncType = (
            _ input: ECRModel.PutImageTagMutabilityRequest, 
            _ completion: @escaping (Result<ECRModel.PutImageTagMutabilityResponse, ECRError>) -> ()) throws -> ()
    typealias PutLifecyclePolicySyncType = (
            _ input: ECRModel.PutLifecyclePolicyRequest) throws -> ECRModel.PutLifecyclePolicyResponse
    typealias PutLifecyclePolicyAsyncType = (
            _ input: ECRModel.PutLifecyclePolicyRequest, 
            _ completion: @escaping (Result<ECRModel.PutLifecyclePolicyResponse, ECRError>) -> ()) throws -> ()
    typealias PutRegistryPolicySyncType = (
            _ input: ECRModel.PutRegistryPolicyRequest) throws -> ECRModel.PutRegistryPolicyResponse
    typealias PutRegistryPolicyAsyncType = (
            _ input: ECRModel.PutRegistryPolicyRequest, 
            _ completion: @escaping (Result<ECRModel.PutRegistryPolicyResponse, ECRError>) -> ()) throws -> ()
    typealias PutReplicationConfigurationSyncType = (
            _ input: ECRModel.PutReplicationConfigurationRequest) throws -> ECRModel.PutReplicationConfigurationResponse
    typealias PutReplicationConfigurationAsyncType = (
            _ input: ECRModel.PutReplicationConfigurationRequest, 
            _ completion: @escaping (Result<ECRModel.PutReplicationConfigurationResponse, ECRError>) -> ()) throws -> ()
    typealias SetRepositoryPolicySyncType = (
            _ input: ECRModel.SetRepositoryPolicyRequest) throws -> ECRModel.SetRepositoryPolicyResponse
    typealias SetRepositoryPolicyAsyncType = (
            _ input: ECRModel.SetRepositoryPolicyRequest, 
            _ completion: @escaping (Result<ECRModel.SetRepositoryPolicyResponse, ECRError>) -> ()) throws -> ()
    typealias StartImageScanSyncType = (
            _ input: ECRModel.StartImageScanRequest) throws -> ECRModel.StartImageScanResponse
    typealias StartImageScanAsyncType = (
            _ input: ECRModel.StartImageScanRequest, 
            _ completion: @escaping (Result<ECRModel.StartImageScanResponse, ECRError>) -> ()) throws -> ()
    typealias StartLifecyclePolicyPreviewSyncType = (
            _ input: ECRModel.StartLifecyclePolicyPreviewRequest) throws -> ECRModel.StartLifecyclePolicyPreviewResponse
    typealias StartLifecyclePolicyPreviewAsyncType = (
            _ input: ECRModel.StartLifecyclePolicyPreviewRequest, 
            _ completion: @escaping (Result<ECRModel.StartLifecyclePolicyPreviewResponse, ECRError>) -> ()) throws -> ()
    typealias TagResourceSyncType = (
            _ input: ECRModel.TagResourceRequest) throws -> ECRModel.TagResourceResponse
    typealias TagResourceAsyncType = (
            _ input: ECRModel.TagResourceRequest, 
            _ completion: @escaping (Result<ECRModel.TagResourceResponse, ECRError>) -> ()) throws -> ()
    typealias UntagResourceSyncType = (
            _ input: ECRModel.UntagResourceRequest) throws -> ECRModel.UntagResourceResponse
    typealias UntagResourceAsyncType = (
            _ input: ECRModel.UntagResourceRequest, 
            _ completion: @escaping (Result<ECRModel.UntagResourceResponse, ECRError>) -> ()) throws -> ()
    typealias UploadLayerPartSyncType = (
            _ input: ECRModel.UploadLayerPartRequest) throws -> ECRModel.UploadLayerPartResponse
    typealias UploadLayerPartAsyncType = (
            _ input: ECRModel.UploadLayerPartRequest, 
            _ completion: @escaping (Result<ECRModel.UploadLayerPartResponse, ECRError>) -> ()) throws -> ()

    /**
     Invokes the BatchCheckLayerAvailability operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchCheckLayerAvailabilityRequest object being passed to this operation.
         - completion: The BatchCheckLayerAvailabilityResponse object or an error will be passed to this 
           callback when the operation is complete. The BatchCheckLayerAvailabilityResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    func batchCheckLayerAvailabilityAsync(
            input: ECRModel.BatchCheckLayerAvailabilityRequest, 
            completion: @escaping (Result<ECRModel.BatchCheckLayerAvailabilityResponse, ECRError>) -> ()) throws

    /**
     Invokes the BatchCheckLayerAvailability operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchCheckLayerAvailabilityRequest object being passed to this operation.
     - Returns: The BatchCheckLayerAvailabilityResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    func batchCheckLayerAvailabilitySync(
            input: ECRModel.BatchCheckLayerAvailabilityRequest) throws -> ECRModel.BatchCheckLayerAvailabilityResponse

    /**
     Invokes the BatchDeleteImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchDeleteImageRequest object being passed to this operation.
         - completion: The BatchDeleteImageResponse object or an error will be passed to this 
           callback when the operation is complete. The BatchDeleteImageResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    func batchDeleteImageAsync(
            input: ECRModel.BatchDeleteImageRequest, 
            completion: @escaping (Result<ECRModel.BatchDeleteImageResponse, ECRError>) -> ()) throws

    /**
     Invokes the BatchDeleteImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchDeleteImageRequest object being passed to this operation.
     - Returns: The BatchDeleteImageResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    func batchDeleteImageSync(
            input: ECRModel.BatchDeleteImageRequest) throws -> ECRModel.BatchDeleteImageResponse

    /**
     Invokes the BatchGetImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated BatchGetImageRequest object being passed to this operation.
         - completion: The BatchGetImageResponse object or an error will be passed to this 
           callback when the operation is complete. The BatchGetImageResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    func batchGetImageAsync(
            input: ECRModel.BatchGetImageRequest, 
            completion: @escaping (Result<ECRModel.BatchGetImageResponse, ECRError>) -> ()) throws

    /**
     Invokes the BatchGetImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated BatchGetImageRequest object being passed to this operation.
     - Returns: The BatchGetImageResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    func batchGetImageSync(
            input: ECRModel.BatchGetImageRequest) throws -> ECRModel.BatchGetImageResponse

    /**
     Invokes the CompleteLayerUpload operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CompleteLayerUploadRequest object being passed to this operation.
         - completion: The CompleteLayerUploadResponse object or an error will be passed to this 
           callback when the operation is complete. The CompleteLayerUploadResponse
           object will be validated before being returned to caller.
           The possible errors are: emptyUpload, invalidLayer, invalidParameter, kms, layerAlreadyExists, layerPartTooSmall, repositoryNotFound, server, uploadNotFound.
     */
    func completeLayerUploadAsync(
            input: ECRModel.CompleteLayerUploadRequest, 
            completion: @escaping (Result<ECRModel.CompleteLayerUploadResponse, ECRError>) -> ()) throws

    /**
     Invokes the CompleteLayerUpload operation waiting for the response before returning.

     - Parameters:
         - input: The validated CompleteLayerUploadRequest object being passed to this operation.
     - Returns: The CompleteLayerUploadResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: emptyUpload, invalidLayer, invalidParameter, kms, layerAlreadyExists, layerPartTooSmall, repositoryNotFound, server, uploadNotFound.
     */
    func completeLayerUploadSync(
            input: ECRModel.CompleteLayerUploadRequest) throws -> ECRModel.CompleteLayerUploadResponse

    /**
     Invokes the CreateRepository operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateRepositoryRequest object being passed to this operation.
         - completion: The CreateRepositoryResponse object or an error will be passed to this 
           callback when the operation is complete. The CreateRepositoryResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, invalidTagParameter, kms, limitExceeded, repositoryAlreadyExists, server, tooManyTags.
     */
    func createRepositoryAsync(
            input: ECRModel.CreateRepositoryRequest, 
            completion: @escaping (Result<ECRModel.CreateRepositoryResponse, ECRError>) -> ()) throws

    /**
     Invokes the CreateRepository operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateRepositoryRequest object being passed to this operation.
     - Returns: The CreateRepositoryResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, invalidTagParameter, kms, limitExceeded, repositoryAlreadyExists, server, tooManyTags.
     */
    func createRepositorySync(
            input: ECRModel.CreateRepositoryRequest) throws -> ECRModel.CreateRepositoryResponse

    /**
     Invokes the DeleteLifecyclePolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteLifecyclePolicyRequest object being passed to this operation.
         - completion: The DeleteLifecyclePolicyResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteLifecyclePolicyResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, lifecyclePolicyNotFound, repositoryNotFound, server.
     */
    func deleteLifecyclePolicyAsync(
            input: ECRModel.DeleteLifecyclePolicyRequest, 
            completion: @escaping (Result<ECRModel.DeleteLifecyclePolicyResponse, ECRError>) -> ()) throws

    /**
     Invokes the DeleteLifecyclePolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteLifecyclePolicyRequest object being passed to this operation.
     - Returns: The DeleteLifecyclePolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, lifecyclePolicyNotFound, repositoryNotFound, server.
     */
    func deleteLifecyclePolicySync(
            input: ECRModel.DeleteLifecyclePolicyRequest) throws -> ECRModel.DeleteLifecyclePolicyResponse

    /**
     Invokes the DeleteRegistryPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteRegistryPolicyRequest object being passed to this operation.
         - completion: The DeleteRegistryPolicyResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteRegistryPolicyResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, registryPolicyNotFound, server.
     */
    func deleteRegistryPolicyAsync(
            input: ECRModel.DeleteRegistryPolicyRequest, 
            completion: @escaping (Result<ECRModel.DeleteRegistryPolicyResponse, ECRError>) -> ()) throws

    /**
     Invokes the DeleteRegistryPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteRegistryPolicyRequest object being passed to this operation.
     - Returns: The DeleteRegistryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, registryPolicyNotFound, server.
     */
    func deleteRegistryPolicySync(
            input: ECRModel.DeleteRegistryPolicyRequest) throws -> ECRModel.DeleteRegistryPolicyResponse

    /**
     Invokes the DeleteRepository operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteRepositoryRequest object being passed to this operation.
         - completion: The DeleteRepositoryResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteRepositoryResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, kms, repositoryNotEmpty, repositoryNotFound, server.
     */
    func deleteRepositoryAsync(
            input: ECRModel.DeleteRepositoryRequest, 
            completion: @escaping (Result<ECRModel.DeleteRepositoryResponse, ECRError>) -> ()) throws

    /**
     Invokes the DeleteRepository operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteRepositoryRequest object being passed to this operation.
     - Returns: The DeleteRepositoryResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, kms, repositoryNotEmpty, repositoryNotFound, server.
     */
    func deleteRepositorySync(
            input: ECRModel.DeleteRepositoryRequest) throws -> ECRModel.DeleteRepositoryResponse

    /**
     Invokes the DeleteRepositoryPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteRepositoryPolicyRequest object being passed to this operation.
         - completion: The DeleteRepositoryPolicyResponse object or an error will be passed to this 
           callback when the operation is complete. The DeleteRepositoryPolicyResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, repositoryPolicyNotFound, server.
     */
    func deleteRepositoryPolicyAsync(
            input: ECRModel.DeleteRepositoryPolicyRequest, 
            completion: @escaping (Result<ECRModel.DeleteRepositoryPolicyResponse, ECRError>) -> ()) throws

    /**
     Invokes the DeleteRepositoryPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteRepositoryPolicyRequest object being passed to this operation.
     - Returns: The DeleteRepositoryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, repositoryPolicyNotFound, server.
     */
    func deleteRepositoryPolicySync(
            input: ECRModel.DeleteRepositoryPolicyRequest) throws -> ECRModel.DeleteRepositoryPolicyResponse

    /**
     Invokes the DescribeImageScanFindings operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeImageScanFindingsRequest object being passed to this operation.
         - completion: The DescribeImageScanFindingsResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeImageScanFindingsResponse
           object will be validated before being returned to caller.
           The possible errors are: imageNotFound, invalidParameter, repositoryNotFound, scanNotFound, server.
     */
    func describeImageScanFindingsAsync(
            input: ECRModel.DescribeImageScanFindingsRequest, 
            completion: @escaping (Result<ECRModel.DescribeImageScanFindingsResponse, ECRError>) -> ()) throws

    /**
     Invokes the DescribeImageScanFindings operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeImageScanFindingsRequest object being passed to this operation.
     - Returns: The DescribeImageScanFindingsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: imageNotFound, invalidParameter, repositoryNotFound, scanNotFound, server.
     */
    func describeImageScanFindingsSync(
            input: ECRModel.DescribeImageScanFindingsRequest) throws -> ECRModel.DescribeImageScanFindingsResponse

    /**
     Invokes the DescribeImages operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeImagesRequest object being passed to this operation.
         - completion: The DescribeImagesResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeImagesResponse
           object will be validated before being returned to caller.
           The possible errors are: imageNotFound, invalidParameter, repositoryNotFound, server.
     */
    func describeImagesAsync(
            input: ECRModel.DescribeImagesRequest, 
            completion: @escaping (Result<ECRModel.DescribeImagesResponse, ECRError>) -> ()) throws

    /**
     Invokes the DescribeImages operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeImagesRequest object being passed to this operation.
     - Returns: The DescribeImagesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: imageNotFound, invalidParameter, repositoryNotFound, server.
     */
    func describeImagesSync(
            input: ECRModel.DescribeImagesRequest) throws -> ECRModel.DescribeImagesResponse

    /**
     Invokes the DescribeRegistry operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeRegistryRequest object being passed to this operation.
         - completion: The DescribeRegistryResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeRegistryResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, server, validation.
     */
    func describeRegistryAsync(
            input: ECRModel.DescribeRegistryRequest, 
            completion: @escaping (Result<ECRModel.DescribeRegistryResponse, ECRError>) -> ()) throws

    /**
     Invokes the DescribeRegistry operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeRegistryRequest object being passed to this operation.
     - Returns: The DescribeRegistryResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, server, validation.
     */
    func describeRegistrySync(
            input: ECRModel.DescribeRegistryRequest) throws -> ECRModel.DescribeRegistryResponse

    /**
     Invokes the DescribeRepositories operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DescribeRepositoriesRequest object being passed to this operation.
         - completion: The DescribeRepositoriesResponse object or an error will be passed to this 
           callback when the operation is complete. The DescribeRepositoriesResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    func describeRepositoriesAsync(
            input: ECRModel.DescribeRepositoriesRequest, 
            completion: @escaping (Result<ECRModel.DescribeRepositoriesResponse, ECRError>) -> ()) throws

    /**
     Invokes the DescribeRepositories operation waiting for the response before returning.

     - Parameters:
         - input: The validated DescribeRepositoriesRequest object being passed to this operation.
     - Returns: The DescribeRepositoriesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    func describeRepositoriesSync(
            input: ECRModel.DescribeRepositoriesRequest) throws -> ECRModel.DescribeRepositoriesResponse

    /**
     Invokes the GetAuthorizationToken operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetAuthorizationTokenRequest object being passed to this operation.
         - completion: The GetAuthorizationTokenResponse object or an error will be passed to this 
           callback when the operation is complete. The GetAuthorizationTokenResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, server.
     */
    func getAuthorizationTokenAsync(
            input: ECRModel.GetAuthorizationTokenRequest, 
            completion: @escaping (Result<ECRModel.GetAuthorizationTokenResponse, ECRError>) -> ()) throws

    /**
     Invokes the GetAuthorizationToken operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetAuthorizationTokenRequest object being passed to this operation.
     - Returns: The GetAuthorizationTokenResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, server.
     */
    func getAuthorizationTokenSync(
            input: ECRModel.GetAuthorizationTokenRequest) throws -> ECRModel.GetAuthorizationTokenResponse

    /**
     Invokes the GetDownloadUrlForLayer operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetDownloadUrlForLayerRequest object being passed to this operation.
         - completion: The GetDownloadUrlForLayerResponse object or an error will be passed to this 
           callback when the operation is complete. The GetDownloadUrlForLayerResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, layerInaccessible, layersNotFound, repositoryNotFound, server.
     */
    func getDownloadUrlForLayerAsync(
            input: ECRModel.GetDownloadUrlForLayerRequest, 
            completion: @escaping (Result<ECRModel.GetDownloadUrlForLayerResponse, ECRError>) -> ()) throws

    /**
     Invokes the GetDownloadUrlForLayer operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetDownloadUrlForLayerRequest object being passed to this operation.
     - Returns: The GetDownloadUrlForLayerResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, layerInaccessible, layersNotFound, repositoryNotFound, server.
     */
    func getDownloadUrlForLayerSync(
            input: ECRModel.GetDownloadUrlForLayerRequest) throws -> ECRModel.GetDownloadUrlForLayerResponse

    /**
     Invokes the GetLifecyclePolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetLifecyclePolicyRequest object being passed to this operation.
         - completion: The GetLifecyclePolicyResponse object or an error will be passed to this 
           callback when the operation is complete. The GetLifecyclePolicyResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, lifecyclePolicyNotFound, repositoryNotFound, server.
     */
    func getLifecyclePolicyAsync(
            input: ECRModel.GetLifecyclePolicyRequest, 
            completion: @escaping (Result<ECRModel.GetLifecyclePolicyResponse, ECRError>) -> ()) throws

    /**
     Invokes the GetLifecyclePolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetLifecyclePolicyRequest object being passed to this operation.
     - Returns: The GetLifecyclePolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, lifecyclePolicyNotFound, repositoryNotFound, server.
     */
    func getLifecyclePolicySync(
            input: ECRModel.GetLifecyclePolicyRequest) throws -> ECRModel.GetLifecyclePolicyResponse

    /**
     Invokes the GetLifecyclePolicyPreview operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetLifecyclePolicyPreviewRequest object being passed to this operation.
         - completion: The GetLifecyclePolicyPreviewResponse object or an error will be passed to this 
           callback when the operation is complete. The GetLifecyclePolicyPreviewResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, lifecyclePolicyPreviewNotFound, repositoryNotFound, server.
     */
    func getLifecyclePolicyPreviewAsync(
            input: ECRModel.GetLifecyclePolicyPreviewRequest, 
            completion: @escaping (Result<ECRModel.GetLifecyclePolicyPreviewResponse, ECRError>) -> ()) throws

    /**
     Invokes the GetLifecyclePolicyPreview operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetLifecyclePolicyPreviewRequest object being passed to this operation.
     - Returns: The GetLifecyclePolicyPreviewResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, lifecyclePolicyPreviewNotFound, repositoryNotFound, server.
     */
    func getLifecyclePolicyPreviewSync(
            input: ECRModel.GetLifecyclePolicyPreviewRequest) throws -> ECRModel.GetLifecyclePolicyPreviewResponse

    /**
     Invokes the GetRegistryPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetRegistryPolicyRequest object being passed to this operation.
         - completion: The GetRegistryPolicyResponse object or an error will be passed to this 
           callback when the operation is complete. The GetRegistryPolicyResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, registryPolicyNotFound, server.
     */
    func getRegistryPolicyAsync(
            input: ECRModel.GetRegistryPolicyRequest, 
            completion: @escaping (Result<ECRModel.GetRegistryPolicyResponse, ECRError>) -> ()) throws

    /**
     Invokes the GetRegistryPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetRegistryPolicyRequest object being passed to this operation.
     - Returns: The GetRegistryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, registryPolicyNotFound, server.
     */
    func getRegistryPolicySync(
            input: ECRModel.GetRegistryPolicyRequest) throws -> ECRModel.GetRegistryPolicyResponse

    /**
     Invokes the GetRepositoryPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetRepositoryPolicyRequest object being passed to this operation.
         - completion: The GetRepositoryPolicyResponse object or an error will be passed to this 
           callback when the operation is complete. The GetRepositoryPolicyResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, repositoryPolicyNotFound, server.
     */
    func getRepositoryPolicyAsync(
            input: ECRModel.GetRepositoryPolicyRequest, 
            completion: @escaping (Result<ECRModel.GetRepositoryPolicyResponse, ECRError>) -> ()) throws

    /**
     Invokes the GetRepositoryPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetRepositoryPolicyRequest object being passed to this operation.
     - Returns: The GetRepositoryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, repositoryPolicyNotFound, server.
     */
    func getRepositoryPolicySync(
            input: ECRModel.GetRepositoryPolicyRequest) throws -> ECRModel.GetRepositoryPolicyResponse

    /**
     Invokes the InitiateLayerUpload operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated InitiateLayerUploadRequest object being passed to this operation.
         - completion: The InitiateLayerUploadResponse object or an error will be passed to this 
           callback when the operation is complete. The InitiateLayerUploadResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, kms, repositoryNotFound, server.
     */
    func initiateLayerUploadAsync(
            input: ECRModel.InitiateLayerUploadRequest, 
            completion: @escaping (Result<ECRModel.InitiateLayerUploadResponse, ECRError>) -> ()) throws

    /**
     Invokes the InitiateLayerUpload operation waiting for the response before returning.

     - Parameters:
         - input: The validated InitiateLayerUploadRequest object being passed to this operation.
     - Returns: The InitiateLayerUploadResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, kms, repositoryNotFound, server.
     */
    func initiateLayerUploadSync(
            input: ECRModel.InitiateLayerUploadRequest) throws -> ECRModel.InitiateLayerUploadResponse

    /**
     Invokes the ListImages operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListImagesRequest object being passed to this operation.
         - completion: The ListImagesResponse object or an error will be passed to this 
           callback when the operation is complete. The ListImagesResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    func listImagesAsync(
            input: ECRModel.ListImagesRequest, 
            completion: @escaping (Result<ECRModel.ListImagesResponse, ECRError>) -> ()) throws

    /**
     Invokes the ListImages operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListImagesRequest object being passed to this operation.
     - Returns: The ListImagesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    func listImagesSync(
            input: ECRModel.ListImagesRequest) throws -> ECRModel.ListImagesResponse

    /**
     Invokes the ListTagsForResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
         - completion: The ListTagsForResourceResponse object or an error will be passed to this 
           callback when the operation is complete. The ListTagsForResourceResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    func listTagsForResourceAsync(
            input: ECRModel.ListTagsForResourceRequest, 
            completion: @escaping (Result<ECRModel.ListTagsForResourceResponse, ECRError>) -> ()) throws

    /**
     Invokes the ListTagsForResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
     - Returns: The ListTagsForResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    func listTagsForResourceSync(
            input: ECRModel.ListTagsForResourceRequest) throws -> ECRModel.ListTagsForResourceResponse

    /**
     Invokes the PutImage operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutImageRequest object being passed to this operation.
         - completion: The PutImageResponse object or an error will be passed to this 
           callback when the operation is complete. The PutImageResponse
           object will be validated before being returned to caller.
           The possible errors are: imageAlreadyExists, imageDigestDoesNotMatch, imageTagAlreadyExists, invalidParameter, kms, layersNotFound, limitExceeded, referencedImagesNotFound, repositoryNotFound, server.
     */
    func putImageAsync(
            input: ECRModel.PutImageRequest, 
            completion: @escaping (Result<ECRModel.PutImageResponse, ECRError>) -> ()) throws

    /**
     Invokes the PutImage operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutImageRequest object being passed to this operation.
     - Returns: The PutImageResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: imageAlreadyExists, imageDigestDoesNotMatch, imageTagAlreadyExists, invalidParameter, kms, layersNotFound, limitExceeded, referencedImagesNotFound, repositoryNotFound, server.
     */
    func putImageSync(
            input: ECRModel.PutImageRequest) throws -> ECRModel.PutImageResponse

    /**
     Invokes the PutImageScanningConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutImageScanningConfigurationRequest object being passed to this operation.
         - completion: The PutImageScanningConfigurationResponse object or an error will be passed to this 
           callback when the operation is complete. The PutImageScanningConfigurationResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    func putImageScanningConfigurationAsync(
            input: ECRModel.PutImageScanningConfigurationRequest, 
            completion: @escaping (Result<ECRModel.PutImageScanningConfigurationResponse, ECRError>) -> ()) throws

    /**
     Invokes the PutImageScanningConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutImageScanningConfigurationRequest object being passed to this operation.
     - Returns: The PutImageScanningConfigurationResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    func putImageScanningConfigurationSync(
            input: ECRModel.PutImageScanningConfigurationRequest) throws -> ECRModel.PutImageScanningConfigurationResponse

    /**
     Invokes the PutImageTagMutability operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutImageTagMutabilityRequest object being passed to this operation.
         - completion: The PutImageTagMutabilityResponse object or an error will be passed to this 
           callback when the operation is complete. The PutImageTagMutabilityResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    func putImageTagMutabilityAsync(
            input: ECRModel.PutImageTagMutabilityRequest, 
            completion: @escaping (Result<ECRModel.PutImageTagMutabilityResponse, ECRError>) -> ()) throws

    /**
     Invokes the PutImageTagMutability operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutImageTagMutabilityRequest object being passed to this operation.
     - Returns: The PutImageTagMutabilityResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    func putImageTagMutabilitySync(
            input: ECRModel.PutImageTagMutabilityRequest) throws -> ECRModel.PutImageTagMutabilityResponse

    /**
     Invokes the PutLifecyclePolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutLifecyclePolicyRequest object being passed to this operation.
         - completion: The PutLifecyclePolicyResponse object or an error will be passed to this 
           callback when the operation is complete. The PutLifecyclePolicyResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    func putLifecyclePolicyAsync(
            input: ECRModel.PutLifecyclePolicyRequest, 
            completion: @escaping (Result<ECRModel.PutLifecyclePolicyResponse, ECRError>) -> ()) throws

    /**
     Invokes the PutLifecyclePolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutLifecyclePolicyRequest object being passed to this operation.
     - Returns: The PutLifecyclePolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    func putLifecyclePolicySync(
            input: ECRModel.PutLifecyclePolicyRequest) throws -> ECRModel.PutLifecyclePolicyResponse

    /**
     Invokes the PutRegistryPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutRegistryPolicyRequest object being passed to this operation.
         - completion: The PutRegistryPolicyResponse object or an error will be passed to this 
           callback when the operation is complete. The PutRegistryPolicyResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, server.
     */
    func putRegistryPolicyAsync(
            input: ECRModel.PutRegistryPolicyRequest, 
            completion: @escaping (Result<ECRModel.PutRegistryPolicyResponse, ECRError>) -> ()) throws

    /**
     Invokes the PutRegistryPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutRegistryPolicyRequest object being passed to this operation.
     - Returns: The PutRegistryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, server.
     */
    func putRegistryPolicySync(
            input: ECRModel.PutRegistryPolicyRequest) throws -> ECRModel.PutRegistryPolicyResponse

    /**
     Invokes the PutReplicationConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutReplicationConfigurationRequest object being passed to this operation.
         - completion: The PutReplicationConfigurationResponse object or an error will be passed to this 
           callback when the operation is complete. The PutReplicationConfigurationResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, server, validation.
     */
    func putReplicationConfigurationAsync(
            input: ECRModel.PutReplicationConfigurationRequest, 
            completion: @escaping (Result<ECRModel.PutReplicationConfigurationResponse, ECRError>) -> ()) throws

    /**
     Invokes the PutReplicationConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutReplicationConfigurationRequest object being passed to this operation.
     - Returns: The PutReplicationConfigurationResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, server, validation.
     */
    func putReplicationConfigurationSync(
            input: ECRModel.PutReplicationConfigurationRequest) throws -> ECRModel.PutReplicationConfigurationResponse

    /**
     Invokes the SetRepositoryPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SetRepositoryPolicyRequest object being passed to this operation.
         - completion: The SetRepositoryPolicyResponse object or an error will be passed to this 
           callback when the operation is complete. The SetRepositoryPolicyResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    func setRepositoryPolicyAsync(
            input: ECRModel.SetRepositoryPolicyRequest, 
            completion: @escaping (Result<ECRModel.SetRepositoryPolicyResponse, ECRError>) -> ()) throws

    /**
     Invokes the SetRepositoryPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated SetRepositoryPolicyRequest object being passed to this operation.
     - Returns: The SetRepositoryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    func setRepositoryPolicySync(
            input: ECRModel.SetRepositoryPolicyRequest) throws -> ECRModel.SetRepositoryPolicyResponse

    /**
     Invokes the StartImageScan operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartImageScanRequest object being passed to this operation.
         - completion: The StartImageScanResponse object or an error will be passed to this 
           callback when the operation is complete. The StartImageScanResponse
           object will be validated before being returned to caller.
           The possible errors are: imageNotFound, invalidParameter, limitExceeded, repositoryNotFound, server, unsupportedImageType.
     */
    func startImageScanAsync(
            input: ECRModel.StartImageScanRequest, 
            completion: @escaping (Result<ECRModel.StartImageScanResponse, ECRError>) -> ()) throws

    /**
     Invokes the StartImageScan operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartImageScanRequest object being passed to this operation.
     - Returns: The StartImageScanResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: imageNotFound, invalidParameter, limitExceeded, repositoryNotFound, server, unsupportedImageType.
     */
    func startImageScanSync(
            input: ECRModel.StartImageScanRequest) throws -> ECRModel.StartImageScanResponse

    /**
     Invokes the StartLifecyclePolicyPreview operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated StartLifecyclePolicyPreviewRequest object being passed to this operation.
         - completion: The StartLifecyclePolicyPreviewResponse object or an error will be passed to this 
           callback when the operation is complete. The StartLifecyclePolicyPreviewResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, lifecyclePolicyNotFound, lifecyclePolicyPreviewInProgress, repositoryNotFound, server.
     */
    func startLifecyclePolicyPreviewAsync(
            input: ECRModel.StartLifecyclePolicyPreviewRequest, 
            completion: @escaping (Result<ECRModel.StartLifecyclePolicyPreviewResponse, ECRError>) -> ()) throws

    /**
     Invokes the StartLifecyclePolicyPreview operation waiting for the response before returning.

     - Parameters:
         - input: The validated StartLifecyclePolicyPreviewRequest object being passed to this operation.
     - Returns: The StartLifecyclePolicyPreviewResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, lifecyclePolicyNotFound, lifecyclePolicyPreviewInProgress, repositoryNotFound, server.
     */
    func startLifecyclePolicyPreviewSync(
            input: ECRModel.StartLifecyclePolicyPreviewRequest) throws -> ECRModel.StartLifecyclePolicyPreviewResponse

    /**
     Invokes the TagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
         - completion: The TagResourceResponse object or an error will be passed to this 
           callback when the operation is complete. The TagResourceResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, invalidTagParameter, repositoryNotFound, server, tooManyTags.
     */
    func tagResourceAsync(
            input: ECRModel.TagResourceRequest, 
            completion: @escaping (Result<ECRModel.TagResourceResponse, ECRError>) -> ()) throws

    /**
     Invokes the TagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
     - Returns: The TagResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, invalidTagParameter, repositoryNotFound, server, tooManyTags.
     */
    func tagResourceSync(
            input: ECRModel.TagResourceRequest) throws -> ECRModel.TagResourceResponse

    /**
     Invokes the UntagResource operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
         - completion: The UntagResourceResponse object or an error will be passed to this 
           callback when the operation is complete. The UntagResourceResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidParameter, invalidTagParameter, repositoryNotFound, server, tooManyTags.
     */
    func untagResourceAsync(
            input: ECRModel.UntagResourceRequest, 
            completion: @escaping (Result<ECRModel.UntagResourceResponse, ECRError>) -> ()) throws

    /**
     Invokes the UntagResource operation waiting for the response before returning.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
     - Returns: The UntagResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, invalidTagParameter, repositoryNotFound, server, tooManyTags.
     */
    func untagResourceSync(
            input: ECRModel.UntagResourceRequest) throws -> ECRModel.UntagResourceResponse

    /**
     Invokes the UploadLayerPart operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UploadLayerPartRequest object being passed to this operation.
         - completion: The UploadLayerPartResponse object or an error will be passed to this 
           callback when the operation is complete. The UploadLayerPartResponse
           object will be validated before being returned to caller.
           The possible errors are: invalidLayerPart, invalidParameter, kms, limitExceeded, repositoryNotFound, server, uploadNotFound.
     */
    func uploadLayerPartAsync(
            input: ECRModel.UploadLayerPartRequest, 
            completion: @escaping (Result<ECRModel.UploadLayerPartResponse, ECRError>) -> ()) throws

    /**
     Invokes the UploadLayerPart operation waiting for the response before returning.

     - Parameters:
         - input: The validated UploadLayerPartRequest object being passed to this operation.
     - Returns: The UploadLayerPartResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidLayerPart, invalidParameter, kms, limitExceeded, repositoryNotFound, server, uploadNotFound.
     */
    func uploadLayerPartSync(
            input: ECRModel.UploadLayerPartRequest) throws -> ECRModel.UploadLayerPartResponse
}
