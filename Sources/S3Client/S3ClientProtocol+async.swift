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
// S3ClientProtocol+async.swift
// S3Client
//

import Foundation
import S3Model

#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)

/**
 Async extensions for the S3ClientProtocol type.
 */
public extension S3ClientProtocol {

    /**
     Invokes the AbortMultipartUpload operation and asynchronously returning the response.

     - Parameters:
         - input: The validated AbortMultipartUploadRequest object being passed to this operation.
     - Returns: The AbortMultipartUploadOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchUpload.
     */
    func abortMultipartUpload(input: S3Model.AbortMultipartUploadRequest) async throws
     -> S3Model.AbortMultipartUploadOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try abortMultipartUploadAsync(input: input) { result in
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
     Invokes the CompleteMultipartUpload operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CompleteMultipartUploadRequest object being passed to this operation.
     - Returns: The CompleteMultipartUploadOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func completeMultipartUpload(input: S3Model.CompleteMultipartUploadRequest) async throws
     -> S3Model.CompleteMultipartUploadOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try completeMultipartUploadAsync(input: input) { result in
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
     Invokes the CopyObject operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CopyObjectRequest object being passed to this operation.
     - Returns: The CopyObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: objectNotInActiveTier.
     */
    func copyObject(input: S3Model.CopyObjectRequest) async throws
     -> S3Model.CopyObjectOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try copyObjectAsync(input: input) { result in
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
     Invokes the CreateBucket operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateBucketRequest object being passed to this operation.
     - Returns: The CreateBucketOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: bucketAlreadyExists, bucketAlreadyOwnedByYou.
     */
    func createBucket(input: S3Model.CreateBucketRequest) async throws
     -> S3Model.CreateBucketOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createBucketAsync(input: input) { result in
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
     Invokes the CreateMultipartUpload operation and asynchronously returning the response.

     - Parameters:
         - input: The validated CreateMultipartUploadRequest object being passed to this operation.
     - Returns: The CreateMultipartUploadOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createMultipartUpload(input: S3Model.CreateMultipartUploadRequest) async throws
     -> S3Model.CreateMultipartUploadOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try createMultipartUploadAsync(input: input) { result in
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
     Invokes the DeleteBucket operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteBucketRequest object being passed to this operation.
     */
    func deleteBucket(input: S3Model.DeleteBucketRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteBucketAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteBucketAnalyticsConfiguration operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteBucketAnalyticsConfigurationRequest object being passed to this operation.
     */
    func deleteBucketAnalyticsConfiguration(input: S3Model.DeleteBucketAnalyticsConfigurationRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteBucketAnalyticsConfigurationAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteBucketCors operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteBucketCorsRequest object being passed to this operation.
     */
    func deleteBucketCors(input: S3Model.DeleteBucketCorsRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteBucketCorsAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteBucketEncryption operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteBucketEncryptionRequest object being passed to this operation.
     */
    func deleteBucketEncryption(input: S3Model.DeleteBucketEncryptionRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteBucketEncryptionAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteBucketIntelligentTieringConfiguration operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteBucketIntelligentTieringConfigurationRequest object being passed to this operation.
     */
    func deleteBucketIntelligentTieringConfiguration(input: S3Model.DeleteBucketIntelligentTieringConfigurationRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteBucketIntelligentTieringConfigurationAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteBucketInventoryConfiguration operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteBucketInventoryConfigurationRequest object being passed to this operation.
     */
    func deleteBucketInventoryConfiguration(input: S3Model.DeleteBucketInventoryConfigurationRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteBucketInventoryConfigurationAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteBucketLifecycle operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteBucketLifecycleRequest object being passed to this operation.
     */
    func deleteBucketLifecycle(input: S3Model.DeleteBucketLifecycleRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteBucketLifecycleAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteBucketMetricsConfiguration operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteBucketMetricsConfigurationRequest object being passed to this operation.
     */
    func deleteBucketMetricsConfiguration(input: S3Model.DeleteBucketMetricsConfigurationRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteBucketMetricsConfigurationAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteBucketOwnershipControls operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteBucketOwnershipControlsRequest object being passed to this operation.
     */
    func deleteBucketOwnershipControls(input: S3Model.DeleteBucketOwnershipControlsRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteBucketOwnershipControlsAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteBucketPolicy operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteBucketPolicyRequest object being passed to this operation.
     */
    func deleteBucketPolicy(input: S3Model.DeleteBucketPolicyRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteBucketPolicyAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteBucketReplication operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteBucketReplicationRequest object being passed to this operation.
     */
    func deleteBucketReplication(input: S3Model.DeleteBucketReplicationRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteBucketReplicationAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteBucketTagging operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteBucketTaggingRequest object being passed to this operation.
     */
    func deleteBucketTagging(input: S3Model.DeleteBucketTaggingRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteBucketTaggingAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteBucketWebsite operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteBucketWebsiteRequest object being passed to this operation.
     */
    func deleteBucketWebsite(input: S3Model.DeleteBucketWebsiteRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteBucketWebsiteAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the DeleteObject operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteObjectRequest object being passed to this operation.
     - Returns: The DeleteObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteObject(input: S3Model.DeleteObjectRequest) async throws
     -> S3Model.DeleteObjectOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteObjectAsync(input: input) { result in
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
     Invokes the DeleteObjectTagging operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteObjectTaggingRequest object being passed to this operation.
     - Returns: The DeleteObjectTaggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteObjectTagging(input: S3Model.DeleteObjectTaggingRequest) async throws
     -> S3Model.DeleteObjectTaggingOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteObjectTaggingAsync(input: input) { result in
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
     Invokes the DeleteObjects operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeleteObjectsRequest object being passed to this operation.
     - Returns: The DeleteObjectsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteObjects(input: S3Model.DeleteObjectsRequest) async throws
     -> S3Model.DeleteObjectsOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deleteObjectsAsync(input: input) { result in
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
     Invokes the DeletePublicAccessBlock operation and asynchronously returning the response.

     - Parameters:
         - input: The validated DeletePublicAccessBlockRequest object being passed to this operation.
     */
    func deletePublicAccessBlock(input: S3Model.DeletePublicAccessBlockRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try deletePublicAccessBlockAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the GetBucketAccelerateConfiguration operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetBucketAccelerateConfigurationRequest object being passed to this operation.
     - Returns: The GetBucketAccelerateConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketAccelerateConfiguration(input: S3Model.GetBucketAccelerateConfigurationRequest) async throws
     -> S3Model.GetBucketAccelerateConfigurationOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getBucketAccelerateConfigurationAsync(input: input) { result in
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
     Invokes the GetBucketAcl operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetBucketAclRequest object being passed to this operation.
     - Returns: The GetBucketAclOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketAcl(input: S3Model.GetBucketAclRequest) async throws
     -> S3Model.GetBucketAclOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getBucketAclAsync(input: input) { result in
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
     Invokes the GetBucketAnalyticsConfiguration operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetBucketAnalyticsConfigurationRequest object being passed to this operation.
     - Returns: The GetBucketAnalyticsConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketAnalyticsConfiguration(input: S3Model.GetBucketAnalyticsConfigurationRequest) async throws
     -> S3Model.GetBucketAnalyticsConfigurationOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getBucketAnalyticsConfigurationAsync(input: input) { result in
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
     Invokes the GetBucketCors operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetBucketCorsRequest object being passed to this operation.
     - Returns: The GetBucketCorsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketCors(input: S3Model.GetBucketCorsRequest) async throws
     -> S3Model.GetBucketCorsOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getBucketCorsAsync(input: input) { result in
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
     Invokes the GetBucketEncryption operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetBucketEncryptionRequest object being passed to this operation.
     - Returns: The GetBucketEncryptionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketEncryption(input: S3Model.GetBucketEncryptionRequest) async throws
     -> S3Model.GetBucketEncryptionOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getBucketEncryptionAsync(input: input) { result in
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
     Invokes the GetBucketIntelligentTieringConfiguration operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetBucketIntelligentTieringConfigurationRequest object being passed to this operation.
     - Returns: The GetBucketIntelligentTieringConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketIntelligentTieringConfiguration(input: S3Model.GetBucketIntelligentTieringConfigurationRequest) async throws
     -> S3Model.GetBucketIntelligentTieringConfigurationOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getBucketIntelligentTieringConfigurationAsync(input: input) { result in
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
     Invokes the GetBucketInventoryConfiguration operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetBucketInventoryConfigurationRequest object being passed to this operation.
     - Returns: The GetBucketInventoryConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketInventoryConfiguration(input: S3Model.GetBucketInventoryConfigurationRequest) async throws
     -> S3Model.GetBucketInventoryConfigurationOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getBucketInventoryConfigurationAsync(input: input) { result in
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
     Invokes the GetBucketLifecycle operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetBucketLifecycleRequest object being passed to this operation.
     - Returns: The GetBucketLifecycleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketLifecycle(input: S3Model.GetBucketLifecycleRequest) async throws
     -> S3Model.GetBucketLifecycleOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getBucketLifecycleAsync(input: input) { result in
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
     Invokes the GetBucketLifecycleConfiguration operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetBucketLifecycleConfigurationRequest object being passed to this operation.
     - Returns: The GetBucketLifecycleConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketLifecycleConfiguration(input: S3Model.GetBucketLifecycleConfigurationRequest) async throws
     -> S3Model.GetBucketLifecycleConfigurationOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getBucketLifecycleConfigurationAsync(input: input) { result in
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
     Invokes the GetBucketLocation operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetBucketLocationRequest object being passed to this operation.
     - Returns: The GetBucketLocationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketLocation(input: S3Model.GetBucketLocationRequest) async throws
     -> S3Model.GetBucketLocationOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getBucketLocationAsync(input: input) { result in
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
     Invokes the GetBucketLogging operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetBucketLoggingRequest object being passed to this operation.
     - Returns: The GetBucketLoggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketLogging(input: S3Model.GetBucketLoggingRequest) async throws
     -> S3Model.GetBucketLoggingOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getBucketLoggingAsync(input: input) { result in
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
     Invokes the GetBucketMetricsConfiguration operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetBucketMetricsConfigurationRequest object being passed to this operation.
     - Returns: The GetBucketMetricsConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketMetricsConfiguration(input: S3Model.GetBucketMetricsConfigurationRequest) async throws
     -> S3Model.GetBucketMetricsConfigurationOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getBucketMetricsConfigurationAsync(input: input) { result in
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
     Invokes the GetBucketNotification operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetBucketNotificationConfigurationRequest object being passed to this operation.
     - Returns: The NotificationConfigurationDeprecated object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketNotification(input: S3Model.GetBucketNotificationConfigurationRequest) async throws
     -> S3Model.NotificationConfigurationDeprecated {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getBucketNotificationAsync(input: input) { result in
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
     Invokes the GetBucketNotificationConfiguration operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetBucketNotificationConfigurationRequest object being passed to this operation.
     - Returns: The NotificationConfiguration object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketNotificationConfiguration(input: S3Model.GetBucketNotificationConfigurationRequest) async throws
     -> S3Model.NotificationConfiguration {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getBucketNotificationConfigurationAsync(input: input) { result in
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
     Invokes the GetBucketOwnershipControls operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetBucketOwnershipControlsRequest object being passed to this operation.
     - Returns: The GetBucketOwnershipControlsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketOwnershipControls(input: S3Model.GetBucketOwnershipControlsRequest) async throws
     -> S3Model.GetBucketOwnershipControlsOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getBucketOwnershipControlsAsync(input: input) { result in
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
     Invokes the GetBucketPolicy operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetBucketPolicyRequest object being passed to this operation.
     - Returns: The GetBucketPolicyOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketPolicy(input: S3Model.GetBucketPolicyRequest) async throws
     -> S3Model.GetBucketPolicyOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getBucketPolicyAsync(input: input) { result in
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
     Invokes the GetBucketPolicyStatus operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetBucketPolicyStatusRequest object being passed to this operation.
     - Returns: The GetBucketPolicyStatusOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketPolicyStatus(input: S3Model.GetBucketPolicyStatusRequest) async throws
     -> S3Model.GetBucketPolicyStatusOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getBucketPolicyStatusAsync(input: input) { result in
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
     Invokes the GetBucketReplication operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetBucketReplicationRequest object being passed to this operation.
     - Returns: The GetBucketReplicationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketReplication(input: S3Model.GetBucketReplicationRequest) async throws
     -> S3Model.GetBucketReplicationOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getBucketReplicationAsync(input: input) { result in
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
     Invokes the GetBucketRequestPayment operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetBucketRequestPaymentRequest object being passed to this operation.
     - Returns: The GetBucketRequestPaymentOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketRequestPayment(input: S3Model.GetBucketRequestPaymentRequest) async throws
     -> S3Model.GetBucketRequestPaymentOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getBucketRequestPaymentAsync(input: input) { result in
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
     Invokes the GetBucketTagging operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetBucketTaggingRequest object being passed to this operation.
     - Returns: The GetBucketTaggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketTagging(input: S3Model.GetBucketTaggingRequest) async throws
     -> S3Model.GetBucketTaggingOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getBucketTaggingAsync(input: input) { result in
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
     Invokes the GetBucketVersioning operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetBucketVersioningRequest object being passed to this operation.
     - Returns: The GetBucketVersioningOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketVersioning(input: S3Model.GetBucketVersioningRequest) async throws
     -> S3Model.GetBucketVersioningOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getBucketVersioningAsync(input: input) { result in
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
     Invokes the GetBucketWebsite operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetBucketWebsiteRequest object being passed to this operation.
     - Returns: The GetBucketWebsiteOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketWebsite(input: S3Model.GetBucketWebsiteRequest) async throws
     -> S3Model.GetBucketWebsiteOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getBucketWebsiteAsync(input: input) { result in
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
     Invokes the GetObject operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetObjectRequest object being passed to this operation.
     - Returns: The GetObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidObjectState, noSuchKey.
     */
    func getObject(input: S3Model.GetObjectRequest) async throws
     -> S3Model.GetObjectOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getObjectAsync(input: input) { result in
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
     Invokes the GetObjectAcl operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetObjectAclRequest object being passed to this operation.
     - Returns: The GetObjectAclOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchKey.
     */
    func getObjectAcl(input: S3Model.GetObjectAclRequest) async throws
     -> S3Model.GetObjectAclOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getObjectAclAsync(input: input) { result in
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
     Invokes the GetObjectAttributes operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetObjectAttributesRequest object being passed to this operation.
     - Returns: The GetObjectAttributesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchKey.
     */
    func getObjectAttributes(input: S3Model.GetObjectAttributesRequest) async throws
     -> S3Model.GetObjectAttributesOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getObjectAttributesAsync(input: input) { result in
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
     Invokes the GetObjectLegalHold operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetObjectLegalHoldRequest object being passed to this operation.
     - Returns: The GetObjectLegalHoldOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getObjectLegalHold(input: S3Model.GetObjectLegalHoldRequest) async throws
     -> S3Model.GetObjectLegalHoldOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getObjectLegalHoldAsync(input: input) { result in
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
     Invokes the GetObjectLockConfiguration operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetObjectLockConfigurationRequest object being passed to this operation.
     - Returns: The GetObjectLockConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getObjectLockConfiguration(input: S3Model.GetObjectLockConfigurationRequest) async throws
     -> S3Model.GetObjectLockConfigurationOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getObjectLockConfigurationAsync(input: input) { result in
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
     Invokes the GetObjectRetention operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetObjectRetentionRequest object being passed to this operation.
     - Returns: The GetObjectRetentionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getObjectRetention(input: S3Model.GetObjectRetentionRequest) async throws
     -> S3Model.GetObjectRetentionOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getObjectRetentionAsync(input: input) { result in
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
     Invokes the GetObjectTagging operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetObjectTaggingRequest object being passed to this operation.
     - Returns: The GetObjectTaggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getObjectTagging(input: S3Model.GetObjectTaggingRequest) async throws
     -> S3Model.GetObjectTaggingOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getObjectTaggingAsync(input: input) { result in
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
     Invokes the GetObjectTorrent operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetObjectTorrentRequest object being passed to this operation.
     - Returns: The GetObjectTorrentOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getObjectTorrent(input: S3Model.GetObjectTorrentRequest) async throws
     -> S3Model.GetObjectTorrentOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getObjectTorrentAsync(input: input) { result in
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
     Invokes the GetPublicAccessBlock operation and asynchronously returning the response.

     - Parameters:
         - input: The validated GetPublicAccessBlockRequest object being passed to this operation.
     - Returns: The GetPublicAccessBlockOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getPublicAccessBlock(input: S3Model.GetPublicAccessBlockRequest) async throws
     -> S3Model.GetPublicAccessBlockOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try getPublicAccessBlockAsync(input: input) { result in
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
     Invokes the HeadBucket operation and asynchronously returning the response.

     - Parameters:
         - input: The validated HeadBucketRequest object being passed to this operation.
     - Throws: noSuchBucket.
     */
    func headBucket(input: S3Model.HeadBucketRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try headBucketAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the HeadObject operation and asynchronously returning the response.

     - Parameters:
         - input: The validated HeadObjectRequest object being passed to this operation.
     - Returns: The HeadObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchKey.
     */
    func headObject(input: S3Model.HeadObjectRequest) async throws
     -> S3Model.HeadObjectOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try headObjectAsync(input: input) { result in
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
     Invokes the ListBucketAnalyticsConfigurations operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListBucketAnalyticsConfigurationsRequest object being passed to this operation.
     - Returns: The ListBucketAnalyticsConfigurationsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listBucketAnalyticsConfigurations(input: S3Model.ListBucketAnalyticsConfigurationsRequest) async throws
     -> S3Model.ListBucketAnalyticsConfigurationsOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listBucketAnalyticsConfigurationsAsync(input: input) { result in
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
     Invokes the ListBucketIntelligentTieringConfigurations operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListBucketIntelligentTieringConfigurationsRequest object being passed to this operation.
     - Returns: The ListBucketIntelligentTieringConfigurationsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listBucketIntelligentTieringConfigurations(input: S3Model.ListBucketIntelligentTieringConfigurationsRequest) async throws
     -> S3Model.ListBucketIntelligentTieringConfigurationsOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listBucketIntelligentTieringConfigurationsAsync(input: input) { result in
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
     Invokes the ListBucketInventoryConfigurations operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListBucketInventoryConfigurationsRequest object being passed to this operation.
     - Returns: The ListBucketInventoryConfigurationsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listBucketInventoryConfigurations(input: S3Model.ListBucketInventoryConfigurationsRequest) async throws
     -> S3Model.ListBucketInventoryConfigurationsOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listBucketInventoryConfigurationsAsync(input: input) { result in
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
     Invokes the ListBucketMetricsConfigurations operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListBucketMetricsConfigurationsRequest object being passed to this operation.
     - Returns: The ListBucketMetricsConfigurationsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listBucketMetricsConfigurations(input: S3Model.ListBucketMetricsConfigurationsRequest) async throws
     -> S3Model.ListBucketMetricsConfigurationsOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listBucketMetricsConfigurationsAsync(input: input) { result in
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
     Invokes the ListBuckets operation and asynchronously returning the response.
     - Returns: The ListBucketsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listBuckets() async throws
     -> S3Model.ListBucketsOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listBucketsAsync { result in
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
     Invokes the ListMultipartUploads operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListMultipartUploadsRequest object being passed to this operation.
     - Returns: The ListMultipartUploadsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listMultipartUploads(input: S3Model.ListMultipartUploadsRequest) async throws
     -> S3Model.ListMultipartUploadsOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listMultipartUploadsAsync(input: input) { result in
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
     Invokes the ListObjectVersions operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListObjectVersionsRequest object being passed to this operation.
     - Returns: The ListObjectVersionsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listObjectVersions(input: S3Model.ListObjectVersionsRequest) async throws
     -> S3Model.ListObjectVersionsOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listObjectVersionsAsync(input: input) { result in
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
     Invokes the ListObjects operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListObjectsRequest object being passed to this operation.
     - Returns: The ListObjectsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchBucket.
     */
    func listObjects(input: S3Model.ListObjectsRequest) async throws
     -> S3Model.ListObjectsOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listObjectsAsync(input: input) { result in
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
     Invokes the ListObjectsV2 operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListObjectsV2Request object being passed to this operation.
     - Returns: The ListObjectsV2Output object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchBucket.
     */
    func listObjectsV2(input: S3Model.ListObjectsV2Request) async throws
     -> S3Model.ListObjectsV2Output {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listObjectsV2Async(input: input) { result in
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
     Invokes the ListParts operation and asynchronously returning the response.

     - Parameters:
         - input: The validated ListPartsRequest object being passed to this operation.
     - Returns: The ListPartsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listParts(input: S3Model.ListPartsRequest) async throws
     -> S3Model.ListPartsOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try listPartsAsync(input: input) { result in
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
     Invokes the PutBucketAccelerateConfiguration operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutBucketAccelerateConfigurationRequest object being passed to this operation.
     */
    func putBucketAccelerateConfiguration(input: S3Model.PutBucketAccelerateConfigurationRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try putBucketAccelerateConfigurationAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutBucketAcl operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutBucketAclRequest object being passed to this operation.
     */
    func putBucketAcl(input: S3Model.PutBucketAclRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try putBucketAclAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutBucketAnalyticsConfiguration operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutBucketAnalyticsConfigurationRequest object being passed to this operation.
     */
    func putBucketAnalyticsConfiguration(input: S3Model.PutBucketAnalyticsConfigurationRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try putBucketAnalyticsConfigurationAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutBucketCors operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutBucketCorsRequest object being passed to this operation.
     */
    func putBucketCors(input: S3Model.PutBucketCorsRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try putBucketCorsAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutBucketEncryption operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutBucketEncryptionRequest object being passed to this operation.
     */
    func putBucketEncryption(input: S3Model.PutBucketEncryptionRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try putBucketEncryptionAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutBucketIntelligentTieringConfiguration operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutBucketIntelligentTieringConfigurationRequest object being passed to this operation.
     */
    func putBucketIntelligentTieringConfiguration(input: S3Model.PutBucketIntelligentTieringConfigurationRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try putBucketIntelligentTieringConfigurationAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutBucketInventoryConfiguration operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutBucketInventoryConfigurationRequest object being passed to this operation.
     */
    func putBucketInventoryConfiguration(input: S3Model.PutBucketInventoryConfigurationRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try putBucketInventoryConfigurationAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutBucketLifecycle operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutBucketLifecycleRequest object being passed to this operation.
     */
    func putBucketLifecycle(input: S3Model.PutBucketLifecycleRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try putBucketLifecycleAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutBucketLifecycleConfiguration operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutBucketLifecycleConfigurationRequest object being passed to this operation.
     */
    func putBucketLifecycleConfiguration(input: S3Model.PutBucketLifecycleConfigurationRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try putBucketLifecycleConfigurationAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutBucketLogging operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutBucketLoggingRequest object being passed to this operation.
     */
    func putBucketLogging(input: S3Model.PutBucketLoggingRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try putBucketLoggingAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutBucketMetricsConfiguration operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutBucketMetricsConfigurationRequest object being passed to this operation.
     */
    func putBucketMetricsConfiguration(input: S3Model.PutBucketMetricsConfigurationRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try putBucketMetricsConfigurationAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutBucketNotification operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutBucketNotificationRequest object being passed to this operation.
     */
    func putBucketNotification(input: S3Model.PutBucketNotificationRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try putBucketNotificationAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutBucketNotificationConfiguration operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutBucketNotificationConfigurationRequest object being passed to this operation.
     */
    func putBucketNotificationConfiguration(input: S3Model.PutBucketNotificationConfigurationRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try putBucketNotificationConfigurationAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutBucketOwnershipControls operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutBucketOwnershipControlsRequest object being passed to this operation.
     */
    func putBucketOwnershipControls(input: S3Model.PutBucketOwnershipControlsRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try putBucketOwnershipControlsAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutBucketPolicy operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutBucketPolicyRequest object being passed to this operation.
     */
    func putBucketPolicy(input: S3Model.PutBucketPolicyRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try putBucketPolicyAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutBucketReplication operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutBucketReplicationRequest object being passed to this operation.
     */
    func putBucketReplication(input: S3Model.PutBucketReplicationRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try putBucketReplicationAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutBucketRequestPayment operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutBucketRequestPaymentRequest object being passed to this operation.
     */
    func putBucketRequestPayment(input: S3Model.PutBucketRequestPaymentRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try putBucketRequestPaymentAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutBucketTagging operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutBucketTaggingRequest object being passed to this operation.
     */
    func putBucketTagging(input: S3Model.PutBucketTaggingRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try putBucketTaggingAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutBucketVersioning operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutBucketVersioningRequest object being passed to this operation.
     */
    func putBucketVersioning(input: S3Model.PutBucketVersioningRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try putBucketVersioningAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutBucketWebsite operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutBucketWebsiteRequest object being passed to this operation.
     */
    func putBucketWebsite(input: S3Model.PutBucketWebsiteRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try putBucketWebsiteAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the PutObject operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutObjectRequest object being passed to this operation.
     - Returns: The PutObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func putObject(input: S3Model.PutObjectRequest) async throws
     -> S3Model.PutObjectOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try putObjectAsync(input: input) { result in
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
     Invokes the PutObjectAcl operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutObjectAclRequest object being passed to this operation.
     - Returns: The PutObjectAclOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchKey.
     */
    func putObjectAcl(input: S3Model.PutObjectAclRequest) async throws
     -> S3Model.PutObjectAclOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try putObjectAclAsync(input: input) { result in
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
     Invokes the PutObjectLegalHold operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutObjectLegalHoldRequest object being passed to this operation.
     - Returns: The PutObjectLegalHoldOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func putObjectLegalHold(input: S3Model.PutObjectLegalHoldRequest) async throws
     -> S3Model.PutObjectLegalHoldOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try putObjectLegalHoldAsync(input: input) { result in
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
     Invokes the PutObjectLockConfiguration operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutObjectLockConfigurationRequest object being passed to this operation.
     - Returns: The PutObjectLockConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func putObjectLockConfiguration(input: S3Model.PutObjectLockConfigurationRequest) async throws
     -> S3Model.PutObjectLockConfigurationOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try putObjectLockConfigurationAsync(input: input) { result in
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
     Invokes the PutObjectRetention operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutObjectRetentionRequest object being passed to this operation.
     - Returns: The PutObjectRetentionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func putObjectRetention(input: S3Model.PutObjectRetentionRequest) async throws
     -> S3Model.PutObjectRetentionOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try putObjectRetentionAsync(input: input) { result in
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
     Invokes the PutObjectTagging operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutObjectTaggingRequest object being passed to this operation.
     - Returns: The PutObjectTaggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func putObjectTagging(input: S3Model.PutObjectTaggingRequest) async throws
     -> S3Model.PutObjectTaggingOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try putObjectTaggingAsync(input: input) { result in
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
     Invokes the PutPublicAccessBlock operation and asynchronously returning the response.

     - Parameters:
         - input: The validated PutPublicAccessBlockRequest object being passed to this operation.
     */
    func putPublicAccessBlock(input: S3Model.PutPublicAccessBlockRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try putPublicAccessBlockAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }

    /**
     Invokes the RestoreObject operation and asynchronously returning the response.

     - Parameters:
         - input: The validated RestoreObjectRequest object being passed to this operation.
     - Returns: The RestoreObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: objectAlreadyInActiveTier.
     */
    func restoreObject(input: S3Model.RestoreObjectRequest) async throws
     -> S3Model.RestoreObjectOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try restoreObjectAsync(input: input) { result in
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
     Invokes the SelectObjectContent operation and asynchronously returning the response.

     - Parameters:
         - input: The validated SelectObjectContentRequest object being passed to this operation.
     - Returns: The SelectObjectContentOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func selectObjectContent(input: S3Model.SelectObjectContentRequest) async throws
     -> S3Model.SelectObjectContentOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try selectObjectContentAsync(input: input) { result in
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
     Invokes the UploadPart operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UploadPartRequest object being passed to this operation.
     - Returns: The UploadPartOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func uploadPart(input: S3Model.UploadPartRequest) async throws
     -> S3Model.UploadPartOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try uploadPartAsync(input: input) { result in
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
     Invokes the UploadPartCopy operation and asynchronously returning the response.

     - Parameters:
         - input: The validated UploadPartCopyRequest object being passed to this operation.
     - Returns: The UploadPartCopyOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func uploadPartCopy(input: S3Model.UploadPartCopyRequest) async throws
     -> S3Model.UploadPartCopyOutput {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try uploadPartCopyAsync(input: input) { result in
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
     Invokes the WriteGetObjectResponse operation and asynchronously returning the response.

     - Parameters:
         - input: The validated WriteGetObjectResponseRequest object being passed to this operation.
     */
    func writeGetObjectResponse(input: S3Model.WriteGetObjectResponseRequest) async throws {
        return try await withCheckedThrowingContinuation { cont in
            do {
                try writeGetObjectResponseAsync(input: input) { error in
                    if let error = error {
                        cont.resume(throwing: error)
                    } else {
                        cont.resume(returning: ())
                    }
                }
            } catch {
                cont.resume(throwing: error)
            }
        }
    }
}

#endif
