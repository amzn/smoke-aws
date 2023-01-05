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
// S3ClientProtocolV2.swift
// S3Client
//

import Foundation
import S3Model
import SmokeAWSCore
import SmokeHTTPClient

/**
 Client Protocol for the S3 service.
 */
public protocol S3ClientProtocolV2 {
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    typealias AbortMultipartUploadFunctionType = (
            _ input: S3Model.AbortMultipartUploadRequest) async throws -> S3Model.AbortMultipartUploadOutput
    typealias CompleteMultipartUploadFunctionType = (
            _ input: S3Model.CompleteMultipartUploadRequest) async throws -> S3Model.CompleteMultipartUploadOutput
    typealias CopyObjectFunctionType = (
            _ input: S3Model.CopyObjectRequest) async throws -> S3Model.CopyObjectOutput
    typealias CreateBucketFunctionType = (
            _ input: S3Model.CreateBucketRequest) async throws -> S3Model.CreateBucketOutput
    typealias CreateMultipartUploadFunctionType = (
            _ input: S3Model.CreateMultipartUploadRequest) async throws -> S3Model.CreateMultipartUploadOutput
    typealias DeleteBucketFunctionType = (
            _ input: S3Model.DeleteBucketRequest) async throws -> ()
    typealias DeleteBucketAnalyticsConfigurationFunctionType = (
            _ input: S3Model.DeleteBucketAnalyticsConfigurationRequest) async throws -> ()
    typealias DeleteBucketCorsFunctionType = (
            _ input: S3Model.DeleteBucketCorsRequest) async throws -> ()
    typealias DeleteBucketEncryptionFunctionType = (
            _ input: S3Model.DeleteBucketEncryptionRequest) async throws -> ()
    typealias DeleteBucketIntelligentTieringConfigurationFunctionType = (
            _ input: S3Model.DeleteBucketIntelligentTieringConfigurationRequest) async throws -> ()
    typealias DeleteBucketInventoryConfigurationFunctionType = (
            _ input: S3Model.DeleteBucketInventoryConfigurationRequest) async throws -> ()
    typealias DeleteBucketLifecycleFunctionType = (
            _ input: S3Model.DeleteBucketLifecycleRequest) async throws -> ()
    typealias DeleteBucketMetricsConfigurationFunctionType = (
            _ input: S3Model.DeleteBucketMetricsConfigurationRequest) async throws -> ()
    typealias DeleteBucketOwnershipControlsFunctionType = (
            _ input: S3Model.DeleteBucketOwnershipControlsRequest) async throws -> ()
    typealias DeleteBucketPolicyFunctionType = (
            _ input: S3Model.DeleteBucketPolicyRequest) async throws -> ()
    typealias DeleteBucketReplicationFunctionType = (
            _ input: S3Model.DeleteBucketReplicationRequest) async throws -> ()
    typealias DeleteBucketTaggingFunctionType = (
            _ input: S3Model.DeleteBucketTaggingRequest) async throws -> ()
    typealias DeleteBucketWebsiteFunctionType = (
            _ input: S3Model.DeleteBucketWebsiteRequest) async throws -> ()
    typealias DeleteObjectFunctionType = (
            _ input: S3Model.DeleteObjectRequest) async throws -> S3Model.DeleteObjectOutput
    typealias DeleteObjectTaggingFunctionType = (
            _ input: S3Model.DeleteObjectTaggingRequest) async throws -> S3Model.DeleteObjectTaggingOutput
    typealias DeleteObjectsFunctionType = (
            _ input: S3Model.DeleteObjectsRequest) async throws -> S3Model.DeleteObjectsOutput
    typealias DeletePublicAccessBlockFunctionType = (
            _ input: S3Model.DeletePublicAccessBlockRequest) async throws -> ()
    typealias GetBucketAccelerateConfigurationFunctionType = (
            _ input: S3Model.GetBucketAccelerateConfigurationRequest) async throws -> S3Model.GetBucketAccelerateConfigurationOutput
    typealias GetBucketAclFunctionType = (
            _ input: S3Model.GetBucketAclRequest) async throws -> S3Model.GetBucketAclOutput
    typealias GetBucketAnalyticsConfigurationFunctionType = (
            _ input: S3Model.GetBucketAnalyticsConfigurationRequest) async throws -> S3Model.GetBucketAnalyticsConfigurationOutput
    typealias GetBucketCorsFunctionType = (
            _ input: S3Model.GetBucketCorsRequest) async throws -> S3Model.GetBucketCorsOutput
    typealias GetBucketEncryptionFunctionType = (
            _ input: S3Model.GetBucketEncryptionRequest) async throws -> S3Model.GetBucketEncryptionOutput
    typealias GetBucketIntelligentTieringConfigurationFunctionType = (
            _ input: S3Model.GetBucketIntelligentTieringConfigurationRequest) async throws -> S3Model.GetBucketIntelligentTieringConfigurationOutput
    typealias GetBucketInventoryConfigurationFunctionType = (
            _ input: S3Model.GetBucketInventoryConfigurationRequest) async throws -> S3Model.GetBucketInventoryConfigurationOutput
    typealias GetBucketLifecycleFunctionType = (
            _ input: S3Model.GetBucketLifecycleRequest) async throws -> S3Model.GetBucketLifecycleOutput
    typealias GetBucketLifecycleConfigurationFunctionType = (
            _ input: S3Model.GetBucketLifecycleConfigurationRequest) async throws -> S3Model.GetBucketLifecycleConfigurationOutput
    typealias GetBucketLocationFunctionType = (
            _ input: S3Model.GetBucketLocationRequest) async throws -> S3Model.GetBucketLocationOutput
    typealias GetBucketLoggingFunctionType = (
            _ input: S3Model.GetBucketLoggingRequest) async throws -> S3Model.GetBucketLoggingOutput
    typealias GetBucketMetricsConfigurationFunctionType = (
            _ input: S3Model.GetBucketMetricsConfigurationRequest) async throws -> S3Model.GetBucketMetricsConfigurationOutput
    typealias GetBucketNotificationFunctionType = (
            _ input: S3Model.GetBucketNotificationConfigurationRequest) async throws -> S3Model.NotificationConfigurationDeprecated
    typealias GetBucketNotificationConfigurationFunctionType = (
            _ input: S3Model.GetBucketNotificationConfigurationRequest) async throws -> S3Model.NotificationConfiguration
    typealias GetBucketOwnershipControlsFunctionType = (
            _ input: S3Model.GetBucketOwnershipControlsRequest) async throws -> S3Model.GetBucketOwnershipControlsOutput
    typealias GetBucketPolicyFunctionType = (
            _ input: S3Model.GetBucketPolicyRequest) async throws -> S3Model.GetBucketPolicyOutput
    typealias GetBucketPolicyStatusFunctionType = (
            _ input: S3Model.GetBucketPolicyStatusRequest) async throws -> S3Model.GetBucketPolicyStatusOutput
    typealias GetBucketReplicationFunctionType = (
            _ input: S3Model.GetBucketReplicationRequest) async throws -> S3Model.GetBucketReplicationOutput
    typealias GetBucketRequestPaymentFunctionType = (
            _ input: S3Model.GetBucketRequestPaymentRequest) async throws -> S3Model.GetBucketRequestPaymentOutput
    typealias GetBucketTaggingFunctionType = (
            _ input: S3Model.GetBucketTaggingRequest) async throws -> S3Model.GetBucketTaggingOutput
    typealias GetBucketVersioningFunctionType = (
            _ input: S3Model.GetBucketVersioningRequest) async throws -> S3Model.GetBucketVersioningOutput
    typealias GetBucketWebsiteFunctionType = (
            _ input: S3Model.GetBucketWebsiteRequest) async throws -> S3Model.GetBucketWebsiteOutput
    typealias GetObjectFunctionType = (
            _ input: S3Model.GetObjectRequest) async throws -> S3Model.GetObjectOutput
    typealias GetObjectAclFunctionType = (
            _ input: S3Model.GetObjectAclRequest) async throws -> S3Model.GetObjectAclOutput
    typealias GetObjectAttributesFunctionType = (
            _ input: S3Model.GetObjectAttributesRequest) async throws -> S3Model.GetObjectAttributesOutput
    typealias GetObjectLegalHoldFunctionType = (
            _ input: S3Model.GetObjectLegalHoldRequest) async throws -> S3Model.GetObjectLegalHoldOutput
    typealias GetObjectLockConfigurationFunctionType = (
            _ input: S3Model.GetObjectLockConfigurationRequest) async throws -> S3Model.GetObjectLockConfigurationOutput
    typealias GetObjectRetentionFunctionType = (
            _ input: S3Model.GetObjectRetentionRequest) async throws -> S3Model.GetObjectRetentionOutput
    typealias GetObjectTaggingFunctionType = (
            _ input: S3Model.GetObjectTaggingRequest) async throws -> S3Model.GetObjectTaggingOutput
    typealias GetObjectTorrentFunctionType = (
            _ input: S3Model.GetObjectTorrentRequest) async throws -> S3Model.GetObjectTorrentOutput
    typealias GetPublicAccessBlockFunctionType = (
            _ input: S3Model.GetPublicAccessBlockRequest) async throws -> S3Model.GetPublicAccessBlockOutput
    typealias HeadBucketFunctionType = (
            _ input: S3Model.HeadBucketRequest) async throws -> ()
    typealias HeadObjectFunctionType = (
            _ input: S3Model.HeadObjectRequest) async throws -> S3Model.HeadObjectOutput
    typealias ListBucketAnalyticsConfigurationsFunctionType = (
            _ input: S3Model.ListBucketAnalyticsConfigurationsRequest) async throws -> S3Model.ListBucketAnalyticsConfigurationsOutput
    typealias ListBucketIntelligentTieringConfigurationsFunctionType = (
            _ input: S3Model.ListBucketIntelligentTieringConfigurationsRequest) async throws -> S3Model.ListBucketIntelligentTieringConfigurationsOutput
    typealias ListBucketInventoryConfigurationsFunctionType = (
            _ input: S3Model.ListBucketInventoryConfigurationsRequest) async throws -> S3Model.ListBucketInventoryConfigurationsOutput
    typealias ListBucketMetricsConfigurationsFunctionType = (
            _ input: S3Model.ListBucketMetricsConfigurationsRequest) async throws -> S3Model.ListBucketMetricsConfigurationsOutput
    typealias ListBucketsFunctionType = () async throws -> S3Model.ListBucketsOutput
    typealias ListMultipartUploadsFunctionType = (
            _ input: S3Model.ListMultipartUploadsRequest) async throws -> S3Model.ListMultipartUploadsOutput
    typealias ListObjectVersionsFunctionType = (
            _ input: S3Model.ListObjectVersionsRequest) async throws -> S3Model.ListObjectVersionsOutput
    typealias ListObjectsFunctionType = (
            _ input: S3Model.ListObjectsRequest) async throws -> S3Model.ListObjectsOutput
    typealias ListObjectsV2FunctionType = (
            _ input: S3Model.ListObjectsV2Request) async throws -> S3Model.ListObjectsV2Output
    typealias ListPartsFunctionType = (
            _ input: S3Model.ListPartsRequest) async throws -> S3Model.ListPartsOutput
    typealias PutBucketAccelerateConfigurationFunctionType = (
            _ input: S3Model.PutBucketAccelerateConfigurationRequest) async throws -> ()
    typealias PutBucketAclFunctionType = (
            _ input: S3Model.PutBucketAclRequest) async throws -> ()
    typealias PutBucketAnalyticsConfigurationFunctionType = (
            _ input: S3Model.PutBucketAnalyticsConfigurationRequest) async throws -> ()
    typealias PutBucketCorsFunctionType = (
            _ input: S3Model.PutBucketCorsRequest) async throws -> ()
    typealias PutBucketEncryptionFunctionType = (
            _ input: S3Model.PutBucketEncryptionRequest) async throws -> ()
    typealias PutBucketIntelligentTieringConfigurationFunctionType = (
            _ input: S3Model.PutBucketIntelligentTieringConfigurationRequest) async throws -> ()
    typealias PutBucketInventoryConfigurationFunctionType = (
            _ input: S3Model.PutBucketInventoryConfigurationRequest) async throws -> ()
    typealias PutBucketLifecycleFunctionType = (
            _ input: S3Model.PutBucketLifecycleRequest) async throws -> ()
    typealias PutBucketLifecycleConfigurationFunctionType = (
            _ input: S3Model.PutBucketLifecycleConfigurationRequest) async throws -> ()
    typealias PutBucketLoggingFunctionType = (
            _ input: S3Model.PutBucketLoggingRequest) async throws -> ()
    typealias PutBucketMetricsConfigurationFunctionType = (
            _ input: S3Model.PutBucketMetricsConfigurationRequest) async throws -> ()
    typealias PutBucketNotificationFunctionType = (
            _ input: S3Model.PutBucketNotificationRequest) async throws -> ()
    typealias PutBucketNotificationConfigurationFunctionType = (
            _ input: S3Model.PutBucketNotificationConfigurationRequest) async throws -> ()
    typealias PutBucketOwnershipControlsFunctionType = (
            _ input: S3Model.PutBucketOwnershipControlsRequest) async throws -> ()
    typealias PutBucketPolicyFunctionType = (
            _ input: S3Model.PutBucketPolicyRequest) async throws -> ()
    typealias PutBucketReplicationFunctionType = (
            _ input: S3Model.PutBucketReplicationRequest) async throws -> ()
    typealias PutBucketRequestPaymentFunctionType = (
            _ input: S3Model.PutBucketRequestPaymentRequest) async throws -> ()
    typealias PutBucketTaggingFunctionType = (
            _ input: S3Model.PutBucketTaggingRequest) async throws -> ()
    typealias PutBucketVersioningFunctionType = (
            _ input: S3Model.PutBucketVersioningRequest) async throws -> ()
    typealias PutBucketWebsiteFunctionType = (
            _ input: S3Model.PutBucketWebsiteRequest) async throws -> ()
    typealias PutObjectFunctionType = (
            _ input: S3Model.PutObjectRequest) async throws -> S3Model.PutObjectOutput
    typealias PutObjectAclFunctionType = (
            _ input: S3Model.PutObjectAclRequest) async throws -> S3Model.PutObjectAclOutput
    typealias PutObjectLegalHoldFunctionType = (
            _ input: S3Model.PutObjectLegalHoldRequest) async throws -> S3Model.PutObjectLegalHoldOutput
    typealias PutObjectLockConfigurationFunctionType = (
            _ input: S3Model.PutObjectLockConfigurationRequest) async throws -> S3Model.PutObjectLockConfigurationOutput
    typealias PutObjectRetentionFunctionType = (
            _ input: S3Model.PutObjectRetentionRequest) async throws -> S3Model.PutObjectRetentionOutput
    typealias PutObjectTaggingFunctionType = (
            _ input: S3Model.PutObjectTaggingRequest) async throws -> S3Model.PutObjectTaggingOutput
    typealias PutPublicAccessBlockFunctionType = (
            _ input: S3Model.PutPublicAccessBlockRequest) async throws -> ()
    typealias RestoreObjectFunctionType = (
            _ input: S3Model.RestoreObjectRequest) async throws -> S3Model.RestoreObjectOutput
    typealias SelectObjectContentFunctionType = (
            _ input: S3Model.SelectObjectContentRequest) async throws -> S3Model.SelectObjectContentOutput
    typealias UploadPartFunctionType = (
            _ input: S3Model.UploadPartRequest) async throws -> S3Model.UploadPartOutput
    typealias UploadPartCopyFunctionType = (
            _ input: S3Model.UploadPartCopyRequest) async throws -> S3Model.UploadPartCopyOutput
    typealias WriteGetObjectResponseFunctionType = (
            _ input: S3Model.WriteGetObjectResponseRequest) async throws -> ()

    /**
     Invokes the AbortMultipartUpload operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AbortMultipartUploadRequest object being passed to this operation.
     - Returns: The AbortMultipartUploadOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchUpload.
     */
    func abortMultipartUpload(
            input: S3Model.AbortMultipartUploadRequest) async throws -> S3Model.AbortMultipartUploadOutput

    /**
     Invokes the CompleteMultipartUpload operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CompleteMultipartUploadRequest object being passed to this operation.
     - Returns: The CompleteMultipartUploadOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func completeMultipartUpload(
            input: S3Model.CompleteMultipartUploadRequest) async throws -> S3Model.CompleteMultipartUploadOutput

    /**
     Invokes the CopyObject operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CopyObjectRequest object being passed to this operation.
     - Returns: The CopyObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: objectNotInActiveTier.
     */
    func copyObject(
            input: S3Model.CopyObjectRequest) async throws -> S3Model.CopyObjectOutput

    /**
     Invokes the CreateBucket operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateBucketRequest object being passed to this operation.
     - Returns: The CreateBucketOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: bucketAlreadyExists, bucketAlreadyOwnedByYou.
     */
    func createBucket(
            input: S3Model.CreateBucketRequest) async throws -> S3Model.CreateBucketOutput

    /**
     Invokes the CreateMultipartUpload operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateMultipartUploadRequest object being passed to this operation.
     - Returns: The CreateMultipartUploadOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createMultipartUpload(
            input: S3Model.CreateMultipartUploadRequest) async throws -> S3Model.CreateMultipartUploadOutput

    /**
     Invokes the DeleteBucket operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteBucketRequest object being passed to this operation.
     */
    func deleteBucket(
            input: S3Model.DeleteBucketRequest) async throws

    /**
     Invokes the DeleteBucketAnalyticsConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteBucketAnalyticsConfigurationRequest object being passed to this operation.
     */
    func deleteBucketAnalyticsConfiguration(
            input: S3Model.DeleteBucketAnalyticsConfigurationRequest) async throws

    /**
     Invokes the DeleteBucketCors operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteBucketCorsRequest object being passed to this operation.
     */
    func deleteBucketCors(
            input: S3Model.DeleteBucketCorsRequest) async throws

    /**
     Invokes the DeleteBucketEncryption operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteBucketEncryptionRequest object being passed to this operation.
     */
    func deleteBucketEncryption(
            input: S3Model.DeleteBucketEncryptionRequest) async throws

    /**
     Invokes the DeleteBucketIntelligentTieringConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteBucketIntelligentTieringConfigurationRequest object being passed to this operation.
     */
    func deleteBucketIntelligentTieringConfiguration(
            input: S3Model.DeleteBucketIntelligentTieringConfigurationRequest) async throws

    /**
     Invokes the DeleteBucketInventoryConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteBucketInventoryConfigurationRequest object being passed to this operation.
     */
    func deleteBucketInventoryConfiguration(
            input: S3Model.DeleteBucketInventoryConfigurationRequest) async throws

    /**
     Invokes the DeleteBucketLifecycle operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteBucketLifecycleRequest object being passed to this operation.
     */
    func deleteBucketLifecycle(
            input: S3Model.DeleteBucketLifecycleRequest) async throws

    /**
     Invokes the DeleteBucketMetricsConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteBucketMetricsConfigurationRequest object being passed to this operation.
     */
    func deleteBucketMetricsConfiguration(
            input: S3Model.DeleteBucketMetricsConfigurationRequest) async throws

    /**
     Invokes the DeleteBucketOwnershipControls operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteBucketOwnershipControlsRequest object being passed to this operation.
     */
    func deleteBucketOwnershipControls(
            input: S3Model.DeleteBucketOwnershipControlsRequest) async throws

    /**
     Invokes the DeleteBucketPolicy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteBucketPolicyRequest object being passed to this operation.
     */
    func deleteBucketPolicy(
            input: S3Model.DeleteBucketPolicyRequest) async throws

    /**
     Invokes the DeleteBucketReplication operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteBucketReplicationRequest object being passed to this operation.
     */
    func deleteBucketReplication(
            input: S3Model.DeleteBucketReplicationRequest) async throws

    /**
     Invokes the DeleteBucketTagging operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteBucketTaggingRequest object being passed to this operation.
     */
    func deleteBucketTagging(
            input: S3Model.DeleteBucketTaggingRequest) async throws

    /**
     Invokes the DeleteBucketWebsite operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteBucketWebsiteRequest object being passed to this operation.
     */
    func deleteBucketWebsite(
            input: S3Model.DeleteBucketWebsiteRequest) async throws

    /**
     Invokes the DeleteObject operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteObjectRequest object being passed to this operation.
     - Returns: The DeleteObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteObject(
            input: S3Model.DeleteObjectRequest) async throws -> S3Model.DeleteObjectOutput

    /**
     Invokes the DeleteObjectTagging operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteObjectTaggingRequest object being passed to this operation.
     - Returns: The DeleteObjectTaggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteObjectTagging(
            input: S3Model.DeleteObjectTaggingRequest) async throws -> S3Model.DeleteObjectTaggingOutput

    /**
     Invokes the DeleteObjects operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteObjectsRequest object being passed to this operation.
     - Returns: The DeleteObjectsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteObjects(
            input: S3Model.DeleteObjectsRequest) async throws -> S3Model.DeleteObjectsOutput

    /**
     Invokes the DeletePublicAccessBlock operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeletePublicAccessBlockRequest object being passed to this operation.
     */
    func deletePublicAccessBlock(
            input: S3Model.DeletePublicAccessBlockRequest) async throws

    /**
     Invokes the GetBucketAccelerateConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketAccelerateConfigurationRequest object being passed to this operation.
     - Returns: The GetBucketAccelerateConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketAccelerateConfiguration(
            input: S3Model.GetBucketAccelerateConfigurationRequest) async throws -> S3Model.GetBucketAccelerateConfigurationOutput

    /**
     Invokes the GetBucketAcl operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketAclRequest object being passed to this operation.
     - Returns: The GetBucketAclOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketAcl(
            input: S3Model.GetBucketAclRequest) async throws -> S3Model.GetBucketAclOutput

    /**
     Invokes the GetBucketAnalyticsConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketAnalyticsConfigurationRequest object being passed to this operation.
     - Returns: The GetBucketAnalyticsConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketAnalyticsConfiguration(
            input: S3Model.GetBucketAnalyticsConfigurationRequest) async throws -> S3Model.GetBucketAnalyticsConfigurationOutput

    /**
     Invokes the GetBucketCors operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketCorsRequest object being passed to this operation.
     - Returns: The GetBucketCorsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketCors(
            input: S3Model.GetBucketCorsRequest) async throws -> S3Model.GetBucketCorsOutput

    /**
     Invokes the GetBucketEncryption operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketEncryptionRequest object being passed to this operation.
     - Returns: The GetBucketEncryptionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketEncryption(
            input: S3Model.GetBucketEncryptionRequest) async throws -> S3Model.GetBucketEncryptionOutput

    /**
     Invokes the GetBucketIntelligentTieringConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketIntelligentTieringConfigurationRequest object being passed to this operation.
     - Returns: The GetBucketIntelligentTieringConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketIntelligentTieringConfiguration(
            input: S3Model.GetBucketIntelligentTieringConfigurationRequest) async throws -> S3Model.GetBucketIntelligentTieringConfigurationOutput

    /**
     Invokes the GetBucketInventoryConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketInventoryConfigurationRequest object being passed to this operation.
     - Returns: The GetBucketInventoryConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketInventoryConfiguration(
            input: S3Model.GetBucketInventoryConfigurationRequest) async throws -> S3Model.GetBucketInventoryConfigurationOutput

    /**
     Invokes the GetBucketLifecycle operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketLifecycleRequest object being passed to this operation.
     - Returns: The GetBucketLifecycleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketLifecycle(
            input: S3Model.GetBucketLifecycleRequest) async throws -> S3Model.GetBucketLifecycleOutput

    /**
     Invokes the GetBucketLifecycleConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketLifecycleConfigurationRequest object being passed to this operation.
     - Returns: The GetBucketLifecycleConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketLifecycleConfiguration(
            input: S3Model.GetBucketLifecycleConfigurationRequest) async throws -> S3Model.GetBucketLifecycleConfigurationOutput

    /**
     Invokes the GetBucketLocation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketLocationRequest object being passed to this operation.
     - Returns: The GetBucketLocationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketLocation(
            input: S3Model.GetBucketLocationRequest) async throws -> S3Model.GetBucketLocationOutput

    /**
     Invokes the GetBucketLogging operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketLoggingRequest object being passed to this operation.
     - Returns: The GetBucketLoggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketLogging(
            input: S3Model.GetBucketLoggingRequest) async throws -> S3Model.GetBucketLoggingOutput

    /**
     Invokes the GetBucketMetricsConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketMetricsConfigurationRequest object being passed to this operation.
     - Returns: The GetBucketMetricsConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketMetricsConfiguration(
            input: S3Model.GetBucketMetricsConfigurationRequest) async throws -> S3Model.GetBucketMetricsConfigurationOutput

    /**
     Invokes the GetBucketNotification operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketNotificationConfigurationRequest object being passed to this operation.
     - Returns: The NotificationConfigurationDeprecated object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketNotification(
            input: S3Model.GetBucketNotificationConfigurationRequest) async throws -> S3Model.NotificationConfigurationDeprecated

    /**
     Invokes the GetBucketNotificationConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketNotificationConfigurationRequest object being passed to this operation.
     - Returns: The NotificationConfiguration object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketNotificationConfiguration(
            input: S3Model.GetBucketNotificationConfigurationRequest) async throws -> S3Model.NotificationConfiguration

    /**
     Invokes the GetBucketOwnershipControls operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketOwnershipControlsRequest object being passed to this operation.
     - Returns: The GetBucketOwnershipControlsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketOwnershipControls(
            input: S3Model.GetBucketOwnershipControlsRequest) async throws -> S3Model.GetBucketOwnershipControlsOutput

    /**
     Invokes the GetBucketPolicy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketPolicyRequest object being passed to this operation.
     - Returns: The GetBucketPolicyOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketPolicy(
            input: S3Model.GetBucketPolicyRequest) async throws -> S3Model.GetBucketPolicyOutput

    /**
     Invokes the GetBucketPolicyStatus operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketPolicyStatusRequest object being passed to this operation.
     - Returns: The GetBucketPolicyStatusOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketPolicyStatus(
            input: S3Model.GetBucketPolicyStatusRequest) async throws -> S3Model.GetBucketPolicyStatusOutput

    /**
     Invokes the GetBucketReplication operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketReplicationRequest object being passed to this operation.
     - Returns: The GetBucketReplicationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketReplication(
            input: S3Model.GetBucketReplicationRequest) async throws -> S3Model.GetBucketReplicationOutput

    /**
     Invokes the GetBucketRequestPayment operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketRequestPaymentRequest object being passed to this operation.
     - Returns: The GetBucketRequestPaymentOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketRequestPayment(
            input: S3Model.GetBucketRequestPaymentRequest) async throws -> S3Model.GetBucketRequestPaymentOutput

    /**
     Invokes the GetBucketTagging operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketTaggingRequest object being passed to this operation.
     - Returns: The GetBucketTaggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketTagging(
            input: S3Model.GetBucketTaggingRequest) async throws -> S3Model.GetBucketTaggingOutput

    /**
     Invokes the GetBucketVersioning operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketVersioningRequest object being passed to this operation.
     - Returns: The GetBucketVersioningOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketVersioning(
            input: S3Model.GetBucketVersioningRequest) async throws -> S3Model.GetBucketVersioningOutput

    /**
     Invokes the GetBucketWebsite operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketWebsiteRequest object being passed to this operation.
     - Returns: The GetBucketWebsiteOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketWebsite(
            input: S3Model.GetBucketWebsiteRequest) async throws -> S3Model.GetBucketWebsiteOutput

    /**
     Invokes the GetObject operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetObjectRequest object being passed to this operation.
     - Returns: The GetObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidObjectState, noSuchKey.
     */
    func getObject(
            input: S3Model.GetObjectRequest) async throws -> S3Model.GetObjectOutput

    /**
     Invokes the GetObjectAcl operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetObjectAclRequest object being passed to this operation.
     - Returns: The GetObjectAclOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchKey.
     */
    func getObjectAcl(
            input: S3Model.GetObjectAclRequest) async throws -> S3Model.GetObjectAclOutput

    /**
     Invokes the GetObjectAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetObjectAttributesRequest object being passed to this operation.
     - Returns: The GetObjectAttributesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchKey.
     */
    func getObjectAttributes(
            input: S3Model.GetObjectAttributesRequest) async throws -> S3Model.GetObjectAttributesOutput

    /**
     Invokes the GetObjectLegalHold operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetObjectLegalHoldRequest object being passed to this operation.
     - Returns: The GetObjectLegalHoldOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getObjectLegalHold(
            input: S3Model.GetObjectLegalHoldRequest) async throws -> S3Model.GetObjectLegalHoldOutput

    /**
     Invokes the GetObjectLockConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetObjectLockConfigurationRequest object being passed to this operation.
     - Returns: The GetObjectLockConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getObjectLockConfiguration(
            input: S3Model.GetObjectLockConfigurationRequest) async throws -> S3Model.GetObjectLockConfigurationOutput

    /**
     Invokes the GetObjectRetention operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetObjectRetentionRequest object being passed to this operation.
     - Returns: The GetObjectRetentionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getObjectRetention(
            input: S3Model.GetObjectRetentionRequest) async throws -> S3Model.GetObjectRetentionOutput

    /**
     Invokes the GetObjectTagging operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetObjectTaggingRequest object being passed to this operation.
     - Returns: The GetObjectTaggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getObjectTagging(
            input: S3Model.GetObjectTaggingRequest) async throws -> S3Model.GetObjectTaggingOutput

    /**
     Invokes the GetObjectTorrent operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetObjectTorrentRequest object being passed to this operation.
     - Returns: The GetObjectTorrentOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getObjectTorrent(
            input: S3Model.GetObjectTorrentRequest) async throws -> S3Model.GetObjectTorrentOutput

    /**
     Invokes the GetPublicAccessBlock operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetPublicAccessBlockRequest object being passed to this operation.
     - Returns: The GetPublicAccessBlockOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getPublicAccessBlock(
            input: S3Model.GetPublicAccessBlockRequest) async throws -> S3Model.GetPublicAccessBlockOutput

    /**
     Invokes the HeadBucket operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated HeadBucketRequest object being passed to this operation.
     - Throws: noSuchBucket.
     */
    func headBucket(
            input: S3Model.HeadBucketRequest) async throws

    /**
     Invokes the HeadObject operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated HeadObjectRequest object being passed to this operation.
     - Returns: The HeadObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchKey.
     */
    func headObject(
            input: S3Model.HeadObjectRequest) async throws -> S3Model.HeadObjectOutput

    /**
     Invokes the ListBucketAnalyticsConfigurations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListBucketAnalyticsConfigurationsRequest object being passed to this operation.
     - Returns: The ListBucketAnalyticsConfigurationsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listBucketAnalyticsConfigurations(
            input: S3Model.ListBucketAnalyticsConfigurationsRequest) async throws -> S3Model.ListBucketAnalyticsConfigurationsOutput

    /**
     Invokes the ListBucketIntelligentTieringConfigurations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListBucketIntelligentTieringConfigurationsRequest object being passed to this operation.
     - Returns: The ListBucketIntelligentTieringConfigurationsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listBucketIntelligentTieringConfigurations(
            input: S3Model.ListBucketIntelligentTieringConfigurationsRequest) async throws -> S3Model.ListBucketIntelligentTieringConfigurationsOutput

    /**
     Invokes the ListBucketInventoryConfigurations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListBucketInventoryConfigurationsRequest object being passed to this operation.
     - Returns: The ListBucketInventoryConfigurationsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listBucketInventoryConfigurations(
            input: S3Model.ListBucketInventoryConfigurationsRequest) async throws -> S3Model.ListBucketInventoryConfigurationsOutput

    /**
     Invokes the ListBucketMetricsConfigurations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListBucketMetricsConfigurationsRequest object being passed to this operation.
     - Returns: The ListBucketMetricsConfigurationsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listBucketMetricsConfigurations(
            input: S3Model.ListBucketMetricsConfigurationsRequest) async throws -> S3Model.ListBucketMetricsConfigurationsOutput

    /**
     Invokes the ListBuckets operation suspending until the response is available before returning.
     - Returns: The ListBucketsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listBuckets() async throws -> S3Model.ListBucketsOutput

    /**
     Invokes the ListMultipartUploads operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListMultipartUploadsRequest object being passed to this operation.
     - Returns: The ListMultipartUploadsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listMultipartUploads(
            input: S3Model.ListMultipartUploadsRequest) async throws -> S3Model.ListMultipartUploadsOutput

    /**
     Invokes the ListObjectVersions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListObjectVersionsRequest object being passed to this operation.
     - Returns: The ListObjectVersionsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listObjectVersions(
            input: S3Model.ListObjectVersionsRequest) async throws -> S3Model.ListObjectVersionsOutput

    /**
     Invokes the ListObjects operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListObjectsRequest object being passed to this operation.
     - Returns: The ListObjectsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchBucket.
     */
    func listObjects(
            input: S3Model.ListObjectsRequest) async throws -> S3Model.ListObjectsOutput

    /**
     Invokes the ListObjectsV2 operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListObjectsV2Request object being passed to this operation.
     - Returns: The ListObjectsV2Output object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchBucket.
     */
    func listObjectsV2(
            input: S3Model.ListObjectsV2Request) async throws -> S3Model.ListObjectsV2Output

    /**
     Invokes the ListParts operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListPartsRequest object being passed to this operation.
     - Returns: The ListPartsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listParts(
            input: S3Model.ListPartsRequest) async throws -> S3Model.ListPartsOutput

    /**
     Invokes the PutBucketAccelerateConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketAccelerateConfigurationRequest object being passed to this operation.
     */
    func putBucketAccelerateConfiguration(
            input: S3Model.PutBucketAccelerateConfigurationRequest) async throws

    /**
     Invokes the PutBucketAcl operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketAclRequest object being passed to this operation.
     */
    func putBucketAcl(
            input: S3Model.PutBucketAclRequest) async throws

    /**
     Invokes the PutBucketAnalyticsConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketAnalyticsConfigurationRequest object being passed to this operation.
     */
    func putBucketAnalyticsConfiguration(
            input: S3Model.PutBucketAnalyticsConfigurationRequest) async throws

    /**
     Invokes the PutBucketCors operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketCorsRequest object being passed to this operation.
     */
    func putBucketCors(
            input: S3Model.PutBucketCorsRequest) async throws

    /**
     Invokes the PutBucketEncryption operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketEncryptionRequest object being passed to this operation.
     */
    func putBucketEncryption(
            input: S3Model.PutBucketEncryptionRequest) async throws

    /**
     Invokes the PutBucketIntelligentTieringConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketIntelligentTieringConfigurationRequest object being passed to this operation.
     */
    func putBucketIntelligentTieringConfiguration(
            input: S3Model.PutBucketIntelligentTieringConfigurationRequest) async throws

    /**
     Invokes the PutBucketInventoryConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketInventoryConfigurationRequest object being passed to this operation.
     */
    func putBucketInventoryConfiguration(
            input: S3Model.PutBucketInventoryConfigurationRequest) async throws

    /**
     Invokes the PutBucketLifecycle operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketLifecycleRequest object being passed to this operation.
     */
    func putBucketLifecycle(
            input: S3Model.PutBucketLifecycleRequest) async throws

    /**
     Invokes the PutBucketLifecycleConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketLifecycleConfigurationRequest object being passed to this operation.
     */
    func putBucketLifecycleConfiguration(
            input: S3Model.PutBucketLifecycleConfigurationRequest) async throws

    /**
     Invokes the PutBucketLogging operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketLoggingRequest object being passed to this operation.
     */
    func putBucketLogging(
            input: S3Model.PutBucketLoggingRequest) async throws

    /**
     Invokes the PutBucketMetricsConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketMetricsConfigurationRequest object being passed to this operation.
     */
    func putBucketMetricsConfiguration(
            input: S3Model.PutBucketMetricsConfigurationRequest) async throws

    /**
     Invokes the PutBucketNotification operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketNotificationRequest object being passed to this operation.
     */
    func putBucketNotification(
            input: S3Model.PutBucketNotificationRequest) async throws

    /**
     Invokes the PutBucketNotificationConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketNotificationConfigurationRequest object being passed to this operation.
     */
    func putBucketNotificationConfiguration(
            input: S3Model.PutBucketNotificationConfigurationRequest) async throws

    /**
     Invokes the PutBucketOwnershipControls operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketOwnershipControlsRequest object being passed to this operation.
     */
    func putBucketOwnershipControls(
            input: S3Model.PutBucketOwnershipControlsRequest) async throws

    /**
     Invokes the PutBucketPolicy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketPolicyRequest object being passed to this operation.
     */
    func putBucketPolicy(
            input: S3Model.PutBucketPolicyRequest) async throws

    /**
     Invokes the PutBucketReplication operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketReplicationRequest object being passed to this operation.
     */
    func putBucketReplication(
            input: S3Model.PutBucketReplicationRequest) async throws

    /**
     Invokes the PutBucketRequestPayment operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketRequestPaymentRequest object being passed to this operation.
     */
    func putBucketRequestPayment(
            input: S3Model.PutBucketRequestPaymentRequest) async throws

    /**
     Invokes the PutBucketTagging operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketTaggingRequest object being passed to this operation.
     */
    func putBucketTagging(
            input: S3Model.PutBucketTaggingRequest) async throws

    /**
     Invokes the PutBucketVersioning operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketVersioningRequest object being passed to this operation.
     */
    func putBucketVersioning(
            input: S3Model.PutBucketVersioningRequest) async throws

    /**
     Invokes the PutBucketWebsite operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketWebsiteRequest object being passed to this operation.
     */
    func putBucketWebsite(
            input: S3Model.PutBucketWebsiteRequest) async throws

    /**
     Invokes the PutObject operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutObjectRequest object being passed to this operation.
     - Returns: The PutObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func putObject(
            input: S3Model.PutObjectRequest) async throws -> S3Model.PutObjectOutput

    /**
     Invokes the PutObjectAcl operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutObjectAclRequest object being passed to this operation.
     - Returns: The PutObjectAclOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchKey.
     */
    func putObjectAcl(
            input: S3Model.PutObjectAclRequest) async throws -> S3Model.PutObjectAclOutput

    /**
     Invokes the PutObjectLegalHold operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutObjectLegalHoldRequest object being passed to this operation.
     - Returns: The PutObjectLegalHoldOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func putObjectLegalHold(
            input: S3Model.PutObjectLegalHoldRequest) async throws -> S3Model.PutObjectLegalHoldOutput

    /**
     Invokes the PutObjectLockConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutObjectLockConfigurationRequest object being passed to this operation.
     - Returns: The PutObjectLockConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func putObjectLockConfiguration(
            input: S3Model.PutObjectLockConfigurationRequest) async throws -> S3Model.PutObjectLockConfigurationOutput

    /**
     Invokes the PutObjectRetention operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutObjectRetentionRequest object being passed to this operation.
     - Returns: The PutObjectRetentionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func putObjectRetention(
            input: S3Model.PutObjectRetentionRequest) async throws -> S3Model.PutObjectRetentionOutput

    /**
     Invokes the PutObjectTagging operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutObjectTaggingRequest object being passed to this operation.
     - Returns: The PutObjectTaggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func putObjectTagging(
            input: S3Model.PutObjectTaggingRequest) async throws -> S3Model.PutObjectTaggingOutput

    /**
     Invokes the PutPublicAccessBlock operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutPublicAccessBlockRequest object being passed to this operation.
     */
    func putPublicAccessBlock(
            input: S3Model.PutPublicAccessBlockRequest) async throws

    /**
     Invokes the RestoreObject operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RestoreObjectRequest object being passed to this operation.
     - Returns: The RestoreObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: objectAlreadyInActiveTier.
     */
    func restoreObject(
            input: S3Model.RestoreObjectRequest) async throws -> S3Model.RestoreObjectOutput

    /**
     Invokes the SelectObjectContent operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SelectObjectContentRequest object being passed to this operation.
     - Returns: The SelectObjectContentOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func selectObjectContent(
            input: S3Model.SelectObjectContentRequest) async throws -> S3Model.SelectObjectContentOutput

    /**
     Invokes the UploadPart operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UploadPartRequest object being passed to this operation.
     - Returns: The UploadPartOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func uploadPart(
            input: S3Model.UploadPartRequest) async throws -> S3Model.UploadPartOutput

    /**
     Invokes the UploadPartCopy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UploadPartCopyRequest object being passed to this operation.
     - Returns: The UploadPartCopyOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func uploadPartCopy(
            input: S3Model.UploadPartCopyRequest) async throws -> S3Model.UploadPartCopyOutput

    /**
     Invokes the WriteGetObjectResponse operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated WriteGetObjectResponseRequest object being passed to this operation.
     */
    func writeGetObjectResponse(
            input: S3Model.WriteGetObjectResponseRequest) async throws
#endif
}
