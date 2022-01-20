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
// ECRClientProtocol+async.swift
// ECRClient
//

import Foundation
import ECRModel

#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)

/**
 Async extensions for the ECRClientProtocol type.
 */
public extension ECRClientProtocol {

    /**
     Invokes the BatchCheckLayerAvailability operation and asynchronously returning the response.

     - Parameters:
         - input: The validated BatchCheckLayerAvailabilityRequest object being passed to this operation.
     - Returns: The BatchCheckLayerAvailabilityResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    func batchCheckLayerAvailability(input: ECRModel.BatchCheckLayerAvailabilityRequest) async throws
     -> ECRModel.BatchCheckLayerAvailabilityResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try batchCheckLayerAvailabilityAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the BatchDeleteImage operation and asynchronously returning the response.

     - Parameters:
         - input: The validated BatchDeleteImageRequest object being passed to this operation.
     - Returns: The BatchDeleteImageResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    func batchDeleteImage(input: ECRModel.BatchDeleteImageRequest) async throws
     -> ECRModel.BatchDeleteImageResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try batchDeleteImageAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the BatchGetImage operation and asynchronously returning the response.

     - Parameters:
         - input: The validated BatchGetImageRequest object being passed to this operation.
     - Returns: The BatchGetImageResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    func batchGetImage(input: ECRModel.BatchGetImageRequest) async throws
     -> ECRModel.BatchGetImageResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try batchGetImageAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the BatchGetRepositoryScanningConfiguration operation and asynchronously returning the response.

     - Parameters:
         - input: The validated BatchGetRepositoryScanningConfigurationRequest object being passed to this operation.
     - Returns: The BatchGetRepositoryScanningConfigurationResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server, validation.
     */
    func batchGetRepositoryScanningConfiguration(input: ECRModel.BatchGetRepositoryScanningConfigurationRequest) async throws
     -> ECRModel.BatchGetRepositoryScanningConfigurationResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try batchGetRepositoryScanningConfigurationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CompleteLayerUpload operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CompleteLayerUploadRequest object being passed to this operation.
     - Returns: The CompleteLayerUploadResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: emptyUpload, invalidLayer, invalidParameter, kms, layerAlreadyExists, layerPartTooSmall, repositoryNotFound, server, uploadNotFound.
     */
    func completeLayerUpload(input: ECRModel.CompleteLayerUploadRequest) async throws
     -> ECRModel.CompleteLayerUploadResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try completeLayerUploadAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreatePullThroughCacheRule operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreatePullThroughCacheRuleRequest object being passed to this operation.
     - Returns: The CreatePullThroughCacheRuleResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, limitExceeded, pullThroughCacheRuleAlreadyExists, server, unsupportedUpstreamRegistry, validation.
     */
    func createPullThroughCacheRule(input: ECRModel.CreatePullThroughCacheRuleRequest) async throws
     -> ECRModel.CreatePullThroughCacheRuleResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try createPullThroughCacheRuleAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the CreateRepository operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateRepositoryRequest object being passed to this operation.
     - Returns: The CreateRepositoryResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, invalidTagParameter, kms, limitExceeded, repositoryAlreadyExists, server, tooManyTags.
     */
    func createRepository(input: ECRModel.CreateRepositoryRequest) async throws
     -> ECRModel.CreateRepositoryResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try createRepositoryAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteLifecyclePolicy operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteLifecyclePolicyRequest object being passed to this operation.
     - Returns: The DeleteLifecyclePolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, lifecyclePolicyNotFound, repositoryNotFound, server.
     */
    func deleteLifecyclePolicy(input: ECRModel.DeleteLifecyclePolicyRequest) async throws
     -> ECRModel.DeleteLifecyclePolicyResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deleteLifecyclePolicyAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeletePullThroughCacheRule operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeletePullThroughCacheRuleRequest object being passed to this operation.
     - Returns: The DeletePullThroughCacheRuleResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, pullThroughCacheRuleNotFound, server, validation.
     */
    func deletePullThroughCacheRule(input: ECRModel.DeletePullThroughCacheRuleRequest) async throws
     -> ECRModel.DeletePullThroughCacheRuleResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deletePullThroughCacheRuleAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteRegistryPolicy operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteRegistryPolicyRequest object being passed to this operation.
     - Returns: The DeleteRegistryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, registryPolicyNotFound, server, validation.
     */
    func deleteRegistryPolicy(input: ECRModel.DeleteRegistryPolicyRequest) async throws
     -> ECRModel.DeleteRegistryPolicyResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deleteRegistryPolicyAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteRepository operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteRepositoryRequest object being passed to this operation.
     - Returns: The DeleteRepositoryResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, kms, repositoryNotEmpty, repositoryNotFound, server.
     */
    func deleteRepository(input: ECRModel.DeleteRepositoryRequest) async throws
     -> ECRModel.DeleteRepositoryResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deleteRepositoryAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteRepositoryPolicy operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteRepositoryPolicyRequest object being passed to this operation.
     - Returns: The DeleteRepositoryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, repositoryPolicyNotFound, server.
     */
    func deleteRepositoryPolicy(input: ECRModel.DeleteRepositoryPolicyRequest) async throws
     -> ECRModel.DeleteRepositoryPolicyResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try deleteRepositoryPolicyAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeImageReplicationStatus operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeImageReplicationStatusRequest object being passed to this operation.
     - Returns: The DescribeImageReplicationStatusResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: imageNotFound, invalidParameter, repositoryNotFound, server, validation.
     */
    func describeImageReplicationStatus(input: ECRModel.DescribeImageReplicationStatusRequest) async throws
     -> ECRModel.DescribeImageReplicationStatusResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeImageReplicationStatusAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeImageScanFindings operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeImageScanFindingsRequest object being passed to this operation.
     - Returns: The DescribeImageScanFindingsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: imageNotFound, invalidParameter, repositoryNotFound, scanNotFound, server, validation.
     */
    func describeImageScanFindings(input: ECRModel.DescribeImageScanFindingsRequest) async throws
     -> ECRModel.DescribeImageScanFindingsResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeImageScanFindingsAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeImages operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeImagesRequest object being passed to this operation.
     - Returns: The DescribeImagesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: imageNotFound, invalidParameter, repositoryNotFound, server.
     */
    func describeImages(input: ECRModel.DescribeImagesRequest) async throws
     -> ECRModel.DescribeImagesResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeImagesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribePullThroughCacheRules operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribePullThroughCacheRulesRequest object being passed to this operation.
     - Returns: The DescribePullThroughCacheRulesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, pullThroughCacheRuleNotFound, server, validation.
     */
    func describePullThroughCacheRules(input: ECRModel.DescribePullThroughCacheRulesRequest) async throws
     -> ECRModel.DescribePullThroughCacheRulesResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describePullThroughCacheRulesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeRegistry operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeRegistryRequest object being passed to this operation.
     - Returns: The DescribeRegistryResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, server, validation.
     */
    func describeRegistry(input: ECRModel.DescribeRegistryRequest) async throws
     -> ECRModel.DescribeRegistryResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeRegistryAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DescribeRepositories operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DescribeRepositoriesRequest object being passed to this operation.
     - Returns: The DescribeRepositoriesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    func describeRepositories(input: ECRModel.DescribeRepositoriesRequest) async throws
     -> ECRModel.DescribeRepositoriesResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try describeRepositoriesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetAuthorizationToken operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetAuthorizationTokenRequest object being passed to this operation.
     - Returns: The GetAuthorizationTokenResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, server.
     */
    func getAuthorizationToken(input: ECRModel.GetAuthorizationTokenRequest) async throws
     -> ECRModel.GetAuthorizationTokenResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try getAuthorizationTokenAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetDownloadUrlForLayer operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetDownloadUrlForLayerRequest object being passed to this operation.
     - Returns: The GetDownloadUrlForLayerResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, layerInaccessible, layersNotFound, repositoryNotFound, server.
     */
    func getDownloadUrlForLayer(input: ECRModel.GetDownloadUrlForLayerRequest) async throws
     -> ECRModel.GetDownloadUrlForLayerResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try getDownloadUrlForLayerAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetLifecyclePolicy operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetLifecyclePolicyRequest object being passed to this operation.
     - Returns: The GetLifecyclePolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, lifecyclePolicyNotFound, repositoryNotFound, server.
     */
    func getLifecyclePolicy(input: ECRModel.GetLifecyclePolicyRequest) async throws
     -> ECRModel.GetLifecyclePolicyResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try getLifecyclePolicyAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetLifecyclePolicyPreview operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetLifecyclePolicyPreviewRequest object being passed to this operation.
     - Returns: The GetLifecyclePolicyPreviewResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, lifecyclePolicyPreviewNotFound, repositoryNotFound, server.
     */
    func getLifecyclePolicyPreview(input: ECRModel.GetLifecyclePolicyPreviewRequest) async throws
     -> ECRModel.GetLifecyclePolicyPreviewResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try getLifecyclePolicyPreviewAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetRegistryPolicy operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetRegistryPolicyRequest object being passed to this operation.
     - Returns: The GetRegistryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, registryPolicyNotFound, server, validation.
     */
    func getRegistryPolicy(input: ECRModel.GetRegistryPolicyRequest) async throws
     -> ECRModel.GetRegistryPolicyResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try getRegistryPolicyAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetRegistryScanningConfiguration operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetRegistryScanningConfigurationRequest object being passed to this operation.
     - Returns: The GetRegistryScanningConfigurationResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, server, validation.
     */
    func getRegistryScanningConfiguration(input: ECRModel.GetRegistryScanningConfigurationRequest) async throws
     -> ECRModel.GetRegistryScanningConfigurationResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try getRegistryScanningConfigurationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetRepositoryPolicy operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetRepositoryPolicyRequest object being passed to this operation.
     - Returns: The GetRepositoryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, repositoryPolicyNotFound, server.
     */
    func getRepositoryPolicy(input: ECRModel.GetRepositoryPolicyRequest) async throws
     -> ECRModel.GetRepositoryPolicyResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try getRepositoryPolicyAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the InitiateLayerUpload operation and asynchronously returning the response.

     - Parameters:
         - input: The validated InitiateLayerUploadRequest object being passed to this operation.
     - Returns: The InitiateLayerUploadResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, kms, repositoryNotFound, server.
     */
    func initiateLayerUpload(input: ECRModel.InitiateLayerUploadRequest) async throws
     -> ECRModel.InitiateLayerUploadResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try initiateLayerUploadAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListImages operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListImagesRequest object being passed to this operation.
     - Returns: The ListImagesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    func listImages(input: ECRModel.ListImagesRequest) async throws
     -> ECRModel.ListImagesResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listImagesAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the ListTagsForResource operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
     - Returns: The ListTagsForResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    func listTagsForResource(input: ECRModel.ListTagsForResourceRequest) async throws
     -> ECRModel.ListTagsForResourceResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try listTagsForResourceAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutImage operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutImageRequest object being passed to this operation.
     - Returns: The PutImageResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: imageAlreadyExists, imageDigestDoesNotMatch, imageTagAlreadyExists, invalidParameter, kms, layersNotFound, limitExceeded, referencedImagesNotFound, repositoryNotFound, server.
     */
    func putImage(input: ECRModel.PutImageRequest) async throws
     -> ECRModel.PutImageResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try putImageAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutImageScanningConfiguration operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutImageScanningConfigurationRequest object being passed to this operation.
     - Returns: The PutImageScanningConfigurationResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server, validation.
     */
    func putImageScanningConfiguration(input: ECRModel.PutImageScanningConfigurationRequest) async throws
     -> ECRModel.PutImageScanningConfigurationResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try putImageScanningConfigurationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutImageTagMutability operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutImageTagMutabilityRequest object being passed to this operation.
     - Returns: The PutImageTagMutabilityResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    func putImageTagMutability(input: ECRModel.PutImageTagMutabilityRequest) async throws
     -> ECRModel.PutImageTagMutabilityResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try putImageTagMutabilityAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutLifecyclePolicy operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutLifecyclePolicyRequest object being passed to this operation.
     - Returns: The PutLifecyclePolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    func putLifecyclePolicy(input: ECRModel.PutLifecyclePolicyRequest) async throws
     -> ECRModel.PutLifecyclePolicyResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try putLifecyclePolicyAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutRegistryPolicy operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutRegistryPolicyRequest object being passed to this operation.
     - Returns: The PutRegistryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, server, validation.
     */
    func putRegistryPolicy(input: ECRModel.PutRegistryPolicyRequest) async throws
     -> ECRModel.PutRegistryPolicyResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try putRegistryPolicyAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutRegistryScanningConfiguration operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutRegistryScanningConfigurationRequest object being passed to this operation.
     - Returns: The PutRegistryScanningConfigurationResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, server, validation.
     */
    func putRegistryScanningConfiguration(input: ECRModel.PutRegistryScanningConfigurationRequest) async throws
     -> ECRModel.PutRegistryScanningConfigurationResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try putRegistryScanningConfigurationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutReplicationConfiguration operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutReplicationConfigurationRequest object being passed to this operation.
     - Returns: The PutReplicationConfigurationResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, server, validation.
     */
    func putReplicationConfiguration(input: ECRModel.PutReplicationConfigurationRequest) async throws
     -> ECRModel.PutReplicationConfigurationResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try putReplicationConfigurationAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the SetRepositoryPolicy operation and asynchronously returning the response.

     - Parameters:
         - input: The validated SetRepositoryPolicyRequest object being passed to this operation.
     - Returns: The SetRepositoryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, repositoryNotFound, server.
     */
    func setRepositoryPolicy(input: ECRModel.SetRepositoryPolicyRequest) async throws
     -> ECRModel.SetRepositoryPolicyResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try setRepositoryPolicyAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the StartImageScan operation and asynchronously returning the response.

     - Parameters:
         - input: The validated StartImageScanRequest object being passed to this operation.
     - Returns: The StartImageScanResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: imageNotFound, invalidParameter, limitExceeded, repositoryNotFound, server, unsupportedImageType, validation.
     */
    func startImageScan(input: ECRModel.StartImageScanRequest) async throws
     -> ECRModel.StartImageScanResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try startImageScanAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the StartLifecyclePolicyPreview operation and asynchronously returning the response.

     - Parameters:
         - input: The validated StartLifecyclePolicyPreviewRequest object being passed to this operation.
     - Returns: The StartLifecyclePolicyPreviewResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, lifecyclePolicyNotFound, lifecyclePolicyPreviewInProgress, repositoryNotFound, server.
     */
    func startLifecyclePolicyPreview(input: ECRModel.StartLifecyclePolicyPreviewRequest) async throws
     -> ECRModel.StartLifecyclePolicyPreviewResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try startLifecyclePolicyPreviewAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the TagResource operation and asynchronously returning the response.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
     - Returns: The TagResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, invalidTagParameter, repositoryNotFound, server, tooManyTags.
     */
    func tagResource(input: ECRModel.TagResourceRequest) async throws
     -> ECRModel.TagResourceResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try tagResourceAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the UntagResource operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
     - Returns: The UntagResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidParameter, invalidTagParameter, repositoryNotFound, server, tooManyTags.
     */
    func untagResource(input: ECRModel.UntagResourceRequest) async throws
     -> ECRModel.UntagResourceResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try untagResourceAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the UploadLayerPart operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UploadLayerPartRequest object being passed to this operation.
     - Returns: The UploadLayerPartResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidLayerPart, invalidParameter, kms, limitExceeded, repositoryNotFound, server, uploadNotFound.
     */
    func uploadLayerPart(input: ECRModel.UploadLayerPartRequest) async throws
     -> ECRModel.UploadLayerPartResponse {
        return try await withUnsafeThrowingContinuation { cont in
            do {
                try uploadLayerPartAsync(input: input) { result in
                    switch result {
                    case .failure(let error):
                        cont.resume(throwing: error)
                    case .success(let response):
                        cont.resume(returning: response)
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }
}

#endif
