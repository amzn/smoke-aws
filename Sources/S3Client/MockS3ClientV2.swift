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
// MockS3ClientV2.swift
// S3Client
//

import Foundation
import S3Model
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the S3 service by default returns the `__default` property of its return type.
 */
public struct MockS3ClientV2: S3ClientProtocolV2 {
#if (os(Linux) && compiler(>=5.5)) || (!os(Linux) && compiler(>=5.5.2)) && canImport(_Concurrency)
    let abortMultipartUploadOverride: AbortMultipartUploadFunctionType?
    let completeMultipartUploadOverride: CompleteMultipartUploadFunctionType?
    let copyObjectOverride: CopyObjectFunctionType?
    let createBucketOverride: CreateBucketFunctionType?
    let createMultipartUploadOverride: CreateMultipartUploadFunctionType?
    let deleteBucketOverride: DeleteBucketFunctionType?
    let deleteBucketAnalyticsConfigurationOverride: DeleteBucketAnalyticsConfigurationFunctionType?
    let deleteBucketCorsOverride: DeleteBucketCorsFunctionType?
    let deleteBucketEncryptionOverride: DeleteBucketEncryptionFunctionType?
    let deleteBucketIntelligentTieringConfigurationOverride: DeleteBucketIntelligentTieringConfigurationFunctionType?
    let deleteBucketInventoryConfigurationOverride: DeleteBucketInventoryConfigurationFunctionType?
    let deleteBucketLifecycleOverride: DeleteBucketLifecycleFunctionType?
    let deleteBucketMetricsConfigurationOverride: DeleteBucketMetricsConfigurationFunctionType?
    let deleteBucketOwnershipControlsOverride: DeleteBucketOwnershipControlsFunctionType?
    let deleteBucketPolicyOverride: DeleteBucketPolicyFunctionType?
    let deleteBucketReplicationOverride: DeleteBucketReplicationFunctionType?
    let deleteBucketTaggingOverride: DeleteBucketTaggingFunctionType?
    let deleteBucketWebsiteOverride: DeleteBucketWebsiteFunctionType?
    let deleteObjectOverride: DeleteObjectFunctionType?
    let deleteObjectTaggingOverride: DeleteObjectTaggingFunctionType?
    let deleteObjectsOverride: DeleteObjectsFunctionType?
    let deletePublicAccessBlockOverride: DeletePublicAccessBlockFunctionType?
    let getBucketAccelerateConfigurationOverride: GetBucketAccelerateConfigurationFunctionType?
    let getBucketAclOverride: GetBucketAclFunctionType?
    let getBucketAnalyticsConfigurationOverride: GetBucketAnalyticsConfigurationFunctionType?
    let getBucketCorsOverride: GetBucketCorsFunctionType?
    let getBucketEncryptionOverride: GetBucketEncryptionFunctionType?
    let getBucketIntelligentTieringConfigurationOverride: GetBucketIntelligentTieringConfigurationFunctionType?
    let getBucketInventoryConfigurationOverride: GetBucketInventoryConfigurationFunctionType?
    let getBucketLifecycleOverride: GetBucketLifecycleFunctionType?
    let getBucketLifecycleConfigurationOverride: GetBucketLifecycleConfigurationFunctionType?
    let getBucketLocationOverride: GetBucketLocationFunctionType?
    let getBucketLoggingOverride: GetBucketLoggingFunctionType?
    let getBucketMetricsConfigurationOverride: GetBucketMetricsConfigurationFunctionType?
    let getBucketNotificationOverride: GetBucketNotificationFunctionType?
    let getBucketNotificationConfigurationOverride: GetBucketNotificationConfigurationFunctionType?
    let getBucketOwnershipControlsOverride: GetBucketOwnershipControlsFunctionType?
    let getBucketPolicyOverride: GetBucketPolicyFunctionType?
    let getBucketPolicyStatusOverride: GetBucketPolicyStatusFunctionType?
    let getBucketReplicationOverride: GetBucketReplicationFunctionType?
    let getBucketRequestPaymentOverride: GetBucketRequestPaymentFunctionType?
    let getBucketTaggingOverride: GetBucketTaggingFunctionType?
    let getBucketVersioningOverride: GetBucketVersioningFunctionType?
    let getBucketWebsiteOverride: GetBucketWebsiteFunctionType?
    let getObjectOverride: GetObjectFunctionType?
    let getObjectAclOverride: GetObjectAclFunctionType?
    let getObjectAttributesOverride: GetObjectAttributesFunctionType?
    let getObjectLegalHoldOverride: GetObjectLegalHoldFunctionType?
    let getObjectLockConfigurationOverride: GetObjectLockConfigurationFunctionType?
    let getObjectRetentionOverride: GetObjectRetentionFunctionType?
    let getObjectTaggingOverride: GetObjectTaggingFunctionType?
    let getObjectTorrentOverride: GetObjectTorrentFunctionType?
    let getPublicAccessBlockOverride: GetPublicAccessBlockFunctionType?
    let headBucketOverride: HeadBucketFunctionType?
    let headObjectOverride: HeadObjectFunctionType?
    let listBucketAnalyticsConfigurationsOverride: ListBucketAnalyticsConfigurationsFunctionType?
    let listBucketIntelligentTieringConfigurationsOverride: ListBucketIntelligentTieringConfigurationsFunctionType?
    let listBucketInventoryConfigurationsOverride: ListBucketInventoryConfigurationsFunctionType?
    let listBucketMetricsConfigurationsOverride: ListBucketMetricsConfigurationsFunctionType?
    let listBucketsOverride: ListBucketsFunctionType?
    let listMultipartUploadsOverride: ListMultipartUploadsFunctionType?
    let listObjectVersionsOverride: ListObjectVersionsFunctionType?
    let listObjectsOverride: ListObjectsFunctionType?
    let listObjectsV2Override: ListObjectsV2FunctionType?
    let listPartsOverride: ListPartsFunctionType?
    let putBucketAccelerateConfigurationOverride: PutBucketAccelerateConfigurationFunctionType?
    let putBucketAclOverride: PutBucketAclFunctionType?
    let putBucketAnalyticsConfigurationOverride: PutBucketAnalyticsConfigurationFunctionType?
    let putBucketCorsOverride: PutBucketCorsFunctionType?
    let putBucketEncryptionOverride: PutBucketEncryptionFunctionType?
    let putBucketIntelligentTieringConfigurationOverride: PutBucketIntelligentTieringConfigurationFunctionType?
    let putBucketInventoryConfigurationOverride: PutBucketInventoryConfigurationFunctionType?
    let putBucketLifecycleOverride: PutBucketLifecycleFunctionType?
    let putBucketLifecycleConfigurationOverride: PutBucketLifecycleConfigurationFunctionType?
    let putBucketLoggingOverride: PutBucketLoggingFunctionType?
    let putBucketMetricsConfigurationOverride: PutBucketMetricsConfigurationFunctionType?
    let putBucketNotificationOverride: PutBucketNotificationFunctionType?
    let putBucketNotificationConfigurationOverride: PutBucketNotificationConfigurationFunctionType?
    let putBucketOwnershipControlsOverride: PutBucketOwnershipControlsFunctionType?
    let putBucketPolicyOverride: PutBucketPolicyFunctionType?
    let putBucketReplicationOverride: PutBucketReplicationFunctionType?
    let putBucketRequestPaymentOverride: PutBucketRequestPaymentFunctionType?
    let putBucketTaggingOverride: PutBucketTaggingFunctionType?
    let putBucketVersioningOverride: PutBucketVersioningFunctionType?
    let putBucketWebsiteOverride: PutBucketWebsiteFunctionType?
    let putObjectOverride: PutObjectFunctionType?
    let putObjectAclOverride: PutObjectAclFunctionType?
    let putObjectLegalHoldOverride: PutObjectLegalHoldFunctionType?
    let putObjectLockConfigurationOverride: PutObjectLockConfigurationFunctionType?
    let putObjectRetentionOverride: PutObjectRetentionFunctionType?
    let putObjectTaggingOverride: PutObjectTaggingFunctionType?
    let putPublicAccessBlockOverride: PutPublicAccessBlockFunctionType?
    let restoreObjectOverride: RestoreObjectFunctionType?
    let selectObjectContentOverride: SelectObjectContentFunctionType?
    let uploadPartOverride: UploadPartFunctionType?
    let uploadPartCopyOverride: UploadPartCopyFunctionType?
    let writeGetObjectResponseOverride: WriteGetObjectResponseFunctionType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            abortMultipartUpload: AbortMultipartUploadFunctionType? = nil,
            completeMultipartUpload: CompleteMultipartUploadFunctionType? = nil,
            copyObject: CopyObjectFunctionType? = nil,
            createBucket: CreateBucketFunctionType? = nil,
            createMultipartUpload: CreateMultipartUploadFunctionType? = nil,
            deleteBucket: DeleteBucketFunctionType? = nil,
            deleteBucketAnalyticsConfiguration: DeleteBucketAnalyticsConfigurationFunctionType? = nil,
            deleteBucketCors: DeleteBucketCorsFunctionType? = nil,
            deleteBucketEncryption: DeleteBucketEncryptionFunctionType? = nil,
            deleteBucketIntelligentTieringConfiguration: DeleteBucketIntelligentTieringConfigurationFunctionType? = nil,
            deleteBucketInventoryConfiguration: DeleteBucketInventoryConfigurationFunctionType? = nil,
            deleteBucketLifecycle: DeleteBucketLifecycleFunctionType? = nil,
            deleteBucketMetricsConfiguration: DeleteBucketMetricsConfigurationFunctionType? = nil,
            deleteBucketOwnershipControls: DeleteBucketOwnershipControlsFunctionType? = nil,
            deleteBucketPolicy: DeleteBucketPolicyFunctionType? = nil,
            deleteBucketReplication: DeleteBucketReplicationFunctionType? = nil,
            deleteBucketTagging: DeleteBucketTaggingFunctionType? = nil,
            deleteBucketWebsite: DeleteBucketWebsiteFunctionType? = nil,
            deleteObject: DeleteObjectFunctionType? = nil,
            deleteObjectTagging: DeleteObjectTaggingFunctionType? = nil,
            deleteObjects: DeleteObjectsFunctionType? = nil,
            deletePublicAccessBlock: DeletePublicAccessBlockFunctionType? = nil,
            getBucketAccelerateConfiguration: GetBucketAccelerateConfigurationFunctionType? = nil,
            getBucketAcl: GetBucketAclFunctionType? = nil,
            getBucketAnalyticsConfiguration: GetBucketAnalyticsConfigurationFunctionType? = nil,
            getBucketCors: GetBucketCorsFunctionType? = nil,
            getBucketEncryption: GetBucketEncryptionFunctionType? = nil,
            getBucketIntelligentTieringConfiguration: GetBucketIntelligentTieringConfigurationFunctionType? = nil,
            getBucketInventoryConfiguration: GetBucketInventoryConfigurationFunctionType? = nil,
            getBucketLifecycle: GetBucketLifecycleFunctionType? = nil,
            getBucketLifecycleConfiguration: GetBucketLifecycleConfigurationFunctionType? = nil,
            getBucketLocation: GetBucketLocationFunctionType? = nil,
            getBucketLogging: GetBucketLoggingFunctionType? = nil,
            getBucketMetricsConfiguration: GetBucketMetricsConfigurationFunctionType? = nil,
            getBucketNotification: GetBucketNotificationFunctionType? = nil,
            getBucketNotificationConfiguration: GetBucketNotificationConfigurationFunctionType? = nil,
            getBucketOwnershipControls: GetBucketOwnershipControlsFunctionType? = nil,
            getBucketPolicy: GetBucketPolicyFunctionType? = nil,
            getBucketPolicyStatus: GetBucketPolicyStatusFunctionType? = nil,
            getBucketReplication: GetBucketReplicationFunctionType? = nil,
            getBucketRequestPayment: GetBucketRequestPaymentFunctionType? = nil,
            getBucketTagging: GetBucketTaggingFunctionType? = nil,
            getBucketVersioning: GetBucketVersioningFunctionType? = nil,
            getBucketWebsite: GetBucketWebsiteFunctionType? = nil,
            getObject: GetObjectFunctionType? = nil,
            getObjectAcl: GetObjectAclFunctionType? = nil,
            getObjectAttributes: GetObjectAttributesFunctionType? = nil,
            getObjectLegalHold: GetObjectLegalHoldFunctionType? = nil,
            getObjectLockConfiguration: GetObjectLockConfigurationFunctionType? = nil,
            getObjectRetention: GetObjectRetentionFunctionType? = nil,
            getObjectTagging: GetObjectTaggingFunctionType? = nil,
            getObjectTorrent: GetObjectTorrentFunctionType? = nil,
            getPublicAccessBlock: GetPublicAccessBlockFunctionType? = nil,
            headBucket: HeadBucketFunctionType? = nil,
            headObject: HeadObjectFunctionType? = nil,
            listBucketAnalyticsConfigurations: ListBucketAnalyticsConfigurationsFunctionType? = nil,
            listBucketIntelligentTieringConfigurations: ListBucketIntelligentTieringConfigurationsFunctionType? = nil,
            listBucketInventoryConfigurations: ListBucketInventoryConfigurationsFunctionType? = nil,
            listBucketMetricsConfigurations: ListBucketMetricsConfigurationsFunctionType? = nil,
            listBuckets: ListBucketsFunctionType? = nil,
            listMultipartUploads: ListMultipartUploadsFunctionType? = nil,
            listObjectVersions: ListObjectVersionsFunctionType? = nil,
            listObjects: ListObjectsFunctionType? = nil,
            listObjectsV2: ListObjectsV2FunctionType? = nil,
            listParts: ListPartsFunctionType? = nil,
            putBucketAccelerateConfiguration: PutBucketAccelerateConfigurationFunctionType? = nil,
            putBucketAcl: PutBucketAclFunctionType? = nil,
            putBucketAnalyticsConfiguration: PutBucketAnalyticsConfigurationFunctionType? = nil,
            putBucketCors: PutBucketCorsFunctionType? = nil,
            putBucketEncryption: PutBucketEncryptionFunctionType? = nil,
            putBucketIntelligentTieringConfiguration: PutBucketIntelligentTieringConfigurationFunctionType? = nil,
            putBucketInventoryConfiguration: PutBucketInventoryConfigurationFunctionType? = nil,
            putBucketLifecycle: PutBucketLifecycleFunctionType? = nil,
            putBucketLifecycleConfiguration: PutBucketLifecycleConfigurationFunctionType? = nil,
            putBucketLogging: PutBucketLoggingFunctionType? = nil,
            putBucketMetricsConfiguration: PutBucketMetricsConfigurationFunctionType? = nil,
            putBucketNotification: PutBucketNotificationFunctionType? = nil,
            putBucketNotificationConfiguration: PutBucketNotificationConfigurationFunctionType? = nil,
            putBucketOwnershipControls: PutBucketOwnershipControlsFunctionType? = nil,
            putBucketPolicy: PutBucketPolicyFunctionType? = nil,
            putBucketReplication: PutBucketReplicationFunctionType? = nil,
            putBucketRequestPayment: PutBucketRequestPaymentFunctionType? = nil,
            putBucketTagging: PutBucketTaggingFunctionType? = nil,
            putBucketVersioning: PutBucketVersioningFunctionType? = nil,
            putBucketWebsite: PutBucketWebsiteFunctionType? = nil,
            putObject: PutObjectFunctionType? = nil,
            putObjectAcl: PutObjectAclFunctionType? = nil,
            putObjectLegalHold: PutObjectLegalHoldFunctionType? = nil,
            putObjectLockConfiguration: PutObjectLockConfigurationFunctionType? = nil,
            putObjectRetention: PutObjectRetentionFunctionType? = nil,
            putObjectTagging: PutObjectTaggingFunctionType? = nil,
            putPublicAccessBlock: PutPublicAccessBlockFunctionType? = nil,
            restoreObject: RestoreObjectFunctionType? = nil,
            selectObjectContent: SelectObjectContentFunctionType? = nil,
            uploadPart: UploadPartFunctionType? = nil,
            uploadPartCopy: UploadPartCopyFunctionType? = nil,
            writeGetObjectResponse: WriteGetObjectResponseFunctionType? = nil) {
        self.abortMultipartUploadOverride = abortMultipartUpload
        self.completeMultipartUploadOverride = completeMultipartUpload
        self.copyObjectOverride = copyObject
        self.createBucketOverride = createBucket
        self.createMultipartUploadOverride = createMultipartUpload
        self.deleteBucketOverride = deleteBucket
        self.deleteBucketAnalyticsConfigurationOverride = deleteBucketAnalyticsConfiguration
        self.deleteBucketCorsOverride = deleteBucketCors
        self.deleteBucketEncryptionOverride = deleteBucketEncryption
        self.deleteBucketIntelligentTieringConfigurationOverride = deleteBucketIntelligentTieringConfiguration
        self.deleteBucketInventoryConfigurationOverride = deleteBucketInventoryConfiguration
        self.deleteBucketLifecycleOverride = deleteBucketLifecycle
        self.deleteBucketMetricsConfigurationOverride = deleteBucketMetricsConfiguration
        self.deleteBucketOwnershipControlsOverride = deleteBucketOwnershipControls
        self.deleteBucketPolicyOverride = deleteBucketPolicy
        self.deleteBucketReplicationOverride = deleteBucketReplication
        self.deleteBucketTaggingOverride = deleteBucketTagging
        self.deleteBucketWebsiteOverride = deleteBucketWebsite
        self.deleteObjectOverride = deleteObject
        self.deleteObjectTaggingOverride = deleteObjectTagging
        self.deleteObjectsOverride = deleteObjects
        self.deletePublicAccessBlockOverride = deletePublicAccessBlock
        self.getBucketAccelerateConfigurationOverride = getBucketAccelerateConfiguration
        self.getBucketAclOverride = getBucketAcl
        self.getBucketAnalyticsConfigurationOverride = getBucketAnalyticsConfiguration
        self.getBucketCorsOverride = getBucketCors
        self.getBucketEncryptionOverride = getBucketEncryption
        self.getBucketIntelligentTieringConfigurationOverride = getBucketIntelligentTieringConfiguration
        self.getBucketInventoryConfigurationOverride = getBucketInventoryConfiguration
        self.getBucketLifecycleOverride = getBucketLifecycle
        self.getBucketLifecycleConfigurationOverride = getBucketLifecycleConfiguration
        self.getBucketLocationOverride = getBucketLocation
        self.getBucketLoggingOverride = getBucketLogging
        self.getBucketMetricsConfigurationOverride = getBucketMetricsConfiguration
        self.getBucketNotificationOverride = getBucketNotification
        self.getBucketNotificationConfigurationOverride = getBucketNotificationConfiguration
        self.getBucketOwnershipControlsOverride = getBucketOwnershipControls
        self.getBucketPolicyOverride = getBucketPolicy
        self.getBucketPolicyStatusOverride = getBucketPolicyStatus
        self.getBucketReplicationOverride = getBucketReplication
        self.getBucketRequestPaymentOverride = getBucketRequestPayment
        self.getBucketTaggingOverride = getBucketTagging
        self.getBucketVersioningOverride = getBucketVersioning
        self.getBucketWebsiteOverride = getBucketWebsite
        self.getObjectOverride = getObject
        self.getObjectAclOverride = getObjectAcl
        self.getObjectAttributesOverride = getObjectAttributes
        self.getObjectLegalHoldOverride = getObjectLegalHold
        self.getObjectLockConfigurationOverride = getObjectLockConfiguration
        self.getObjectRetentionOverride = getObjectRetention
        self.getObjectTaggingOverride = getObjectTagging
        self.getObjectTorrentOverride = getObjectTorrent
        self.getPublicAccessBlockOverride = getPublicAccessBlock
        self.headBucketOverride = headBucket
        self.headObjectOverride = headObject
        self.listBucketAnalyticsConfigurationsOverride = listBucketAnalyticsConfigurations
        self.listBucketIntelligentTieringConfigurationsOverride = listBucketIntelligentTieringConfigurations
        self.listBucketInventoryConfigurationsOverride = listBucketInventoryConfigurations
        self.listBucketMetricsConfigurationsOverride = listBucketMetricsConfigurations
        self.listBucketsOverride = listBuckets
        self.listMultipartUploadsOverride = listMultipartUploads
        self.listObjectVersionsOverride = listObjectVersions
        self.listObjectsOverride = listObjects
        self.listObjectsV2Override = listObjectsV2
        self.listPartsOverride = listParts
        self.putBucketAccelerateConfigurationOverride = putBucketAccelerateConfiguration
        self.putBucketAclOverride = putBucketAcl
        self.putBucketAnalyticsConfigurationOverride = putBucketAnalyticsConfiguration
        self.putBucketCorsOverride = putBucketCors
        self.putBucketEncryptionOverride = putBucketEncryption
        self.putBucketIntelligentTieringConfigurationOverride = putBucketIntelligentTieringConfiguration
        self.putBucketInventoryConfigurationOverride = putBucketInventoryConfiguration
        self.putBucketLifecycleOverride = putBucketLifecycle
        self.putBucketLifecycleConfigurationOverride = putBucketLifecycleConfiguration
        self.putBucketLoggingOverride = putBucketLogging
        self.putBucketMetricsConfigurationOverride = putBucketMetricsConfiguration
        self.putBucketNotificationOverride = putBucketNotification
        self.putBucketNotificationConfigurationOverride = putBucketNotificationConfiguration
        self.putBucketOwnershipControlsOverride = putBucketOwnershipControls
        self.putBucketPolicyOverride = putBucketPolicy
        self.putBucketReplicationOverride = putBucketReplication
        self.putBucketRequestPaymentOverride = putBucketRequestPayment
        self.putBucketTaggingOverride = putBucketTagging
        self.putBucketVersioningOverride = putBucketVersioning
        self.putBucketWebsiteOverride = putBucketWebsite
        self.putObjectOverride = putObject
        self.putObjectAclOverride = putObjectAcl
        self.putObjectLegalHoldOverride = putObjectLegalHold
        self.putObjectLockConfigurationOverride = putObjectLockConfiguration
        self.putObjectRetentionOverride = putObjectRetention
        self.putObjectTaggingOverride = putObjectTagging
        self.putPublicAccessBlockOverride = putPublicAccessBlock
        self.restoreObjectOverride = restoreObject
        self.selectObjectContentOverride = selectObjectContent
        self.uploadPartOverride = uploadPart
        self.uploadPartCopyOverride = uploadPartCopy
        self.writeGetObjectResponseOverride = writeGetObjectResponse
    }

    /**
     Invokes the AbortMultipartUpload operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated AbortMultipartUploadRequest object being passed to this operation.
     - Returns: The AbortMultipartUploadOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchUpload.
     */
    public func abortMultipartUpload(
            input: S3Model.AbortMultipartUploadRequest) async throws -> S3Model.AbortMultipartUploadOutput {
        if let abortMultipartUploadOverride = abortMultipartUploadOverride {
            return try await abortMultipartUploadOverride(input)
        }

        return AbortMultipartUploadOutput.__default
    }

    /**
     Invokes the CompleteMultipartUpload operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CompleteMultipartUploadRequest object being passed to this operation.
     - Returns: The CompleteMultipartUploadOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func completeMultipartUpload(
            input: S3Model.CompleteMultipartUploadRequest) async throws -> S3Model.CompleteMultipartUploadOutput {
        if let completeMultipartUploadOverride = completeMultipartUploadOverride {
            return try await completeMultipartUploadOverride(input)
        }

        return CompleteMultipartUploadOutput.__default
    }

    /**
     Invokes the CopyObject operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CopyObjectRequest object being passed to this operation.
     - Returns: The CopyObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: objectNotInActiveTier.
     */
    public func copyObject(
            input: S3Model.CopyObjectRequest) async throws -> S3Model.CopyObjectOutput {
        if let copyObjectOverride = copyObjectOverride {
            return try await copyObjectOverride(input)
        }

        return CopyObjectOutput.__default
    }

    /**
     Invokes the CreateBucket operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateBucketRequest object being passed to this operation.
     - Returns: The CreateBucketOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: bucketAlreadyExists, bucketAlreadyOwnedByYou.
     */
    public func createBucket(
            input: S3Model.CreateBucketRequest) async throws -> S3Model.CreateBucketOutput {
        if let createBucketOverride = createBucketOverride {
            return try await createBucketOverride(input)
        }

        return CreateBucketOutput.__default
    }

    /**
     Invokes the CreateMultipartUpload operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated CreateMultipartUploadRequest object being passed to this operation.
     - Returns: The CreateMultipartUploadOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createMultipartUpload(
            input: S3Model.CreateMultipartUploadRequest) async throws -> S3Model.CreateMultipartUploadOutput {
        if let createMultipartUploadOverride = createMultipartUploadOverride {
            return try await createMultipartUploadOverride(input)
        }

        return CreateMultipartUploadOutput.__default
    }

    /**
     Invokes the DeleteBucket operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteBucketRequest object being passed to this operation.
     */
    public func deleteBucket(
            input: S3Model.DeleteBucketRequest) async throws {
        if let deleteBucketOverride = deleteBucketOverride {
            return try await deleteBucketOverride(input)
        }

    }

    /**
     Invokes the DeleteBucketAnalyticsConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteBucketAnalyticsConfigurationRequest object being passed to this operation.
     */
    public func deleteBucketAnalyticsConfiguration(
            input: S3Model.DeleteBucketAnalyticsConfigurationRequest) async throws {
        if let deleteBucketAnalyticsConfigurationOverride = deleteBucketAnalyticsConfigurationOverride {
            return try await deleteBucketAnalyticsConfigurationOverride(input)
        }

    }

    /**
     Invokes the DeleteBucketCors operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteBucketCorsRequest object being passed to this operation.
     */
    public func deleteBucketCors(
            input: S3Model.DeleteBucketCorsRequest) async throws {
        if let deleteBucketCorsOverride = deleteBucketCorsOverride {
            return try await deleteBucketCorsOverride(input)
        }

    }

    /**
     Invokes the DeleteBucketEncryption operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteBucketEncryptionRequest object being passed to this operation.
     */
    public func deleteBucketEncryption(
            input: S3Model.DeleteBucketEncryptionRequest) async throws {
        if let deleteBucketEncryptionOverride = deleteBucketEncryptionOverride {
            return try await deleteBucketEncryptionOverride(input)
        }

    }

    /**
     Invokes the DeleteBucketIntelligentTieringConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteBucketIntelligentTieringConfigurationRequest object being passed to this operation.
     */
    public func deleteBucketIntelligentTieringConfiguration(
            input: S3Model.DeleteBucketIntelligentTieringConfigurationRequest) async throws {
        if let deleteBucketIntelligentTieringConfigurationOverride = deleteBucketIntelligentTieringConfigurationOverride {
            return try await deleteBucketIntelligentTieringConfigurationOverride(input)
        }

    }

    /**
     Invokes the DeleteBucketInventoryConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteBucketInventoryConfigurationRequest object being passed to this operation.
     */
    public func deleteBucketInventoryConfiguration(
            input: S3Model.DeleteBucketInventoryConfigurationRequest) async throws {
        if let deleteBucketInventoryConfigurationOverride = deleteBucketInventoryConfigurationOverride {
            return try await deleteBucketInventoryConfigurationOverride(input)
        }

    }

    /**
     Invokes the DeleteBucketLifecycle operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteBucketLifecycleRequest object being passed to this operation.
     */
    public func deleteBucketLifecycle(
            input: S3Model.DeleteBucketLifecycleRequest) async throws {
        if let deleteBucketLifecycleOverride = deleteBucketLifecycleOverride {
            return try await deleteBucketLifecycleOverride(input)
        }

    }

    /**
     Invokes the DeleteBucketMetricsConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteBucketMetricsConfigurationRequest object being passed to this operation.
     */
    public func deleteBucketMetricsConfiguration(
            input: S3Model.DeleteBucketMetricsConfigurationRequest) async throws {
        if let deleteBucketMetricsConfigurationOverride = deleteBucketMetricsConfigurationOverride {
            return try await deleteBucketMetricsConfigurationOverride(input)
        }

    }

    /**
     Invokes the DeleteBucketOwnershipControls operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteBucketOwnershipControlsRequest object being passed to this operation.
     */
    public func deleteBucketOwnershipControls(
            input: S3Model.DeleteBucketOwnershipControlsRequest) async throws {
        if let deleteBucketOwnershipControlsOverride = deleteBucketOwnershipControlsOverride {
            return try await deleteBucketOwnershipControlsOverride(input)
        }

    }

    /**
     Invokes the DeleteBucketPolicy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteBucketPolicyRequest object being passed to this operation.
     */
    public func deleteBucketPolicy(
            input: S3Model.DeleteBucketPolicyRequest) async throws {
        if let deleteBucketPolicyOverride = deleteBucketPolicyOverride {
            return try await deleteBucketPolicyOverride(input)
        }

    }

    /**
     Invokes the DeleteBucketReplication operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteBucketReplicationRequest object being passed to this operation.
     */
    public func deleteBucketReplication(
            input: S3Model.DeleteBucketReplicationRequest) async throws {
        if let deleteBucketReplicationOverride = deleteBucketReplicationOverride {
            return try await deleteBucketReplicationOverride(input)
        }

    }

    /**
     Invokes the DeleteBucketTagging operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteBucketTaggingRequest object being passed to this operation.
     */
    public func deleteBucketTagging(
            input: S3Model.DeleteBucketTaggingRequest) async throws {
        if let deleteBucketTaggingOverride = deleteBucketTaggingOverride {
            return try await deleteBucketTaggingOverride(input)
        }

    }

    /**
     Invokes the DeleteBucketWebsite operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteBucketWebsiteRequest object being passed to this operation.
     */
    public func deleteBucketWebsite(
            input: S3Model.DeleteBucketWebsiteRequest) async throws {
        if let deleteBucketWebsiteOverride = deleteBucketWebsiteOverride {
            return try await deleteBucketWebsiteOverride(input)
        }

    }

    /**
     Invokes the DeleteObject operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteObjectRequest object being passed to this operation.
     - Returns: The DeleteObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteObject(
            input: S3Model.DeleteObjectRequest) async throws -> S3Model.DeleteObjectOutput {
        if let deleteObjectOverride = deleteObjectOverride {
            return try await deleteObjectOverride(input)
        }

        return DeleteObjectOutput.__default
    }

    /**
     Invokes the DeleteObjectTagging operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteObjectTaggingRequest object being passed to this operation.
     - Returns: The DeleteObjectTaggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteObjectTagging(
            input: S3Model.DeleteObjectTaggingRequest) async throws -> S3Model.DeleteObjectTaggingOutput {
        if let deleteObjectTaggingOverride = deleteObjectTaggingOverride {
            return try await deleteObjectTaggingOverride(input)
        }

        return DeleteObjectTaggingOutput.__default
    }

    /**
     Invokes the DeleteObjects operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeleteObjectsRequest object being passed to this operation.
     - Returns: The DeleteObjectsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteObjects(
            input: S3Model.DeleteObjectsRequest) async throws -> S3Model.DeleteObjectsOutput {
        if let deleteObjectsOverride = deleteObjectsOverride {
            return try await deleteObjectsOverride(input)
        }

        return DeleteObjectsOutput.__default
    }

    /**
     Invokes the DeletePublicAccessBlock operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated DeletePublicAccessBlockRequest object being passed to this operation.
     */
    public func deletePublicAccessBlock(
            input: S3Model.DeletePublicAccessBlockRequest) async throws {
        if let deletePublicAccessBlockOverride = deletePublicAccessBlockOverride {
            return try await deletePublicAccessBlockOverride(input)
        }

    }

    /**
     Invokes the GetBucketAccelerateConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketAccelerateConfigurationRequest object being passed to this operation.
     - Returns: The GetBucketAccelerateConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketAccelerateConfiguration(
            input: S3Model.GetBucketAccelerateConfigurationRequest) async throws -> S3Model.GetBucketAccelerateConfigurationOutput {
        if let getBucketAccelerateConfigurationOverride = getBucketAccelerateConfigurationOverride {
            return try await getBucketAccelerateConfigurationOverride(input)
        }

        return GetBucketAccelerateConfigurationOutput.__default
    }

    /**
     Invokes the GetBucketAcl operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketAclRequest object being passed to this operation.
     - Returns: The GetBucketAclOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketAcl(
            input: S3Model.GetBucketAclRequest) async throws -> S3Model.GetBucketAclOutput {
        if let getBucketAclOverride = getBucketAclOverride {
            return try await getBucketAclOverride(input)
        }

        return GetBucketAclOutput.__default
    }

    /**
     Invokes the GetBucketAnalyticsConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketAnalyticsConfigurationRequest object being passed to this operation.
     - Returns: The GetBucketAnalyticsConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketAnalyticsConfiguration(
            input: S3Model.GetBucketAnalyticsConfigurationRequest) async throws -> S3Model.GetBucketAnalyticsConfigurationOutput {
        if let getBucketAnalyticsConfigurationOverride = getBucketAnalyticsConfigurationOverride {
            return try await getBucketAnalyticsConfigurationOverride(input)
        }

        return GetBucketAnalyticsConfigurationOutput.__default
    }

    /**
     Invokes the GetBucketCors operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketCorsRequest object being passed to this operation.
     - Returns: The GetBucketCorsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketCors(
            input: S3Model.GetBucketCorsRequest) async throws -> S3Model.GetBucketCorsOutput {
        if let getBucketCorsOverride = getBucketCorsOverride {
            return try await getBucketCorsOverride(input)
        }

        return GetBucketCorsOutput.__default
    }

    /**
     Invokes the GetBucketEncryption operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketEncryptionRequest object being passed to this operation.
     - Returns: The GetBucketEncryptionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketEncryption(
            input: S3Model.GetBucketEncryptionRequest) async throws -> S3Model.GetBucketEncryptionOutput {
        if let getBucketEncryptionOverride = getBucketEncryptionOverride {
            return try await getBucketEncryptionOverride(input)
        }

        return GetBucketEncryptionOutput.__default
    }

    /**
     Invokes the GetBucketIntelligentTieringConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketIntelligentTieringConfigurationRequest object being passed to this operation.
     - Returns: The GetBucketIntelligentTieringConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketIntelligentTieringConfiguration(
            input: S3Model.GetBucketIntelligentTieringConfigurationRequest) async throws -> S3Model.GetBucketIntelligentTieringConfigurationOutput {
        if let getBucketIntelligentTieringConfigurationOverride = getBucketIntelligentTieringConfigurationOverride {
            return try await getBucketIntelligentTieringConfigurationOverride(input)
        }

        return GetBucketIntelligentTieringConfigurationOutput.__default
    }

    /**
     Invokes the GetBucketInventoryConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketInventoryConfigurationRequest object being passed to this operation.
     - Returns: The GetBucketInventoryConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketInventoryConfiguration(
            input: S3Model.GetBucketInventoryConfigurationRequest) async throws -> S3Model.GetBucketInventoryConfigurationOutput {
        if let getBucketInventoryConfigurationOverride = getBucketInventoryConfigurationOverride {
            return try await getBucketInventoryConfigurationOverride(input)
        }

        return GetBucketInventoryConfigurationOutput.__default
    }

    /**
     Invokes the GetBucketLifecycle operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketLifecycleRequest object being passed to this operation.
     - Returns: The GetBucketLifecycleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketLifecycle(
            input: S3Model.GetBucketLifecycleRequest) async throws -> S3Model.GetBucketLifecycleOutput {
        if let getBucketLifecycleOverride = getBucketLifecycleOverride {
            return try await getBucketLifecycleOverride(input)
        }

        return GetBucketLifecycleOutput.__default
    }

    /**
     Invokes the GetBucketLifecycleConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketLifecycleConfigurationRequest object being passed to this operation.
     - Returns: The GetBucketLifecycleConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketLifecycleConfiguration(
            input: S3Model.GetBucketLifecycleConfigurationRequest) async throws -> S3Model.GetBucketLifecycleConfigurationOutput {
        if let getBucketLifecycleConfigurationOverride = getBucketLifecycleConfigurationOverride {
            return try await getBucketLifecycleConfigurationOverride(input)
        }

        return GetBucketLifecycleConfigurationOutput.__default
    }

    /**
     Invokes the GetBucketLocation operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketLocationRequest object being passed to this operation.
     - Returns: The GetBucketLocationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketLocation(
            input: S3Model.GetBucketLocationRequest) async throws -> S3Model.GetBucketLocationOutput {
        if let getBucketLocationOverride = getBucketLocationOverride {
            return try await getBucketLocationOverride(input)
        }

        return GetBucketLocationOutput.__default
    }

    /**
     Invokes the GetBucketLogging operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketLoggingRequest object being passed to this operation.
     - Returns: The GetBucketLoggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketLogging(
            input: S3Model.GetBucketLoggingRequest) async throws -> S3Model.GetBucketLoggingOutput {
        if let getBucketLoggingOverride = getBucketLoggingOverride {
            return try await getBucketLoggingOverride(input)
        }

        return GetBucketLoggingOutput.__default
    }

    /**
     Invokes the GetBucketMetricsConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketMetricsConfigurationRequest object being passed to this operation.
     - Returns: The GetBucketMetricsConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketMetricsConfiguration(
            input: S3Model.GetBucketMetricsConfigurationRequest) async throws -> S3Model.GetBucketMetricsConfigurationOutput {
        if let getBucketMetricsConfigurationOverride = getBucketMetricsConfigurationOverride {
            return try await getBucketMetricsConfigurationOverride(input)
        }

        return GetBucketMetricsConfigurationOutput.__default
    }

    /**
     Invokes the GetBucketNotification operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketNotificationConfigurationRequest object being passed to this operation.
     - Returns: The NotificationConfigurationDeprecated object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketNotification(
            input: S3Model.GetBucketNotificationConfigurationRequest) async throws -> S3Model.NotificationConfigurationDeprecated {
        if let getBucketNotificationOverride = getBucketNotificationOverride {
            return try await getBucketNotificationOverride(input)
        }

        return NotificationConfigurationDeprecated.__default
    }

    /**
     Invokes the GetBucketNotificationConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketNotificationConfigurationRequest object being passed to this operation.
     - Returns: The NotificationConfiguration object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketNotificationConfiguration(
            input: S3Model.GetBucketNotificationConfigurationRequest) async throws -> S3Model.NotificationConfiguration {
        if let getBucketNotificationConfigurationOverride = getBucketNotificationConfigurationOverride {
            return try await getBucketNotificationConfigurationOverride(input)
        }

        return NotificationConfiguration.__default
    }

    /**
     Invokes the GetBucketOwnershipControls operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketOwnershipControlsRequest object being passed to this operation.
     - Returns: The GetBucketOwnershipControlsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketOwnershipControls(
            input: S3Model.GetBucketOwnershipControlsRequest) async throws -> S3Model.GetBucketOwnershipControlsOutput {
        if let getBucketOwnershipControlsOverride = getBucketOwnershipControlsOverride {
            return try await getBucketOwnershipControlsOverride(input)
        }

        return GetBucketOwnershipControlsOutput.__default
    }

    /**
     Invokes the GetBucketPolicy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketPolicyRequest object being passed to this operation.
     - Returns: The GetBucketPolicyOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketPolicy(
            input: S3Model.GetBucketPolicyRequest) async throws -> S3Model.GetBucketPolicyOutput {
        if let getBucketPolicyOverride = getBucketPolicyOverride {
            return try await getBucketPolicyOverride(input)
        }

        return GetBucketPolicyOutput.__default
    }

    /**
     Invokes the GetBucketPolicyStatus operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketPolicyStatusRequest object being passed to this operation.
     - Returns: The GetBucketPolicyStatusOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketPolicyStatus(
            input: S3Model.GetBucketPolicyStatusRequest) async throws -> S3Model.GetBucketPolicyStatusOutput {
        if let getBucketPolicyStatusOverride = getBucketPolicyStatusOverride {
            return try await getBucketPolicyStatusOverride(input)
        }

        return GetBucketPolicyStatusOutput.__default
    }

    /**
     Invokes the GetBucketReplication operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketReplicationRequest object being passed to this operation.
     - Returns: The GetBucketReplicationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketReplication(
            input: S3Model.GetBucketReplicationRequest) async throws -> S3Model.GetBucketReplicationOutput {
        if let getBucketReplicationOverride = getBucketReplicationOverride {
            return try await getBucketReplicationOverride(input)
        }

        return GetBucketReplicationOutput.__default
    }

    /**
     Invokes the GetBucketRequestPayment operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketRequestPaymentRequest object being passed to this operation.
     - Returns: The GetBucketRequestPaymentOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketRequestPayment(
            input: S3Model.GetBucketRequestPaymentRequest) async throws -> S3Model.GetBucketRequestPaymentOutput {
        if let getBucketRequestPaymentOverride = getBucketRequestPaymentOverride {
            return try await getBucketRequestPaymentOverride(input)
        }

        return GetBucketRequestPaymentOutput.__default
    }

    /**
     Invokes the GetBucketTagging operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketTaggingRequest object being passed to this operation.
     - Returns: The GetBucketTaggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketTagging(
            input: S3Model.GetBucketTaggingRequest) async throws -> S3Model.GetBucketTaggingOutput {
        if let getBucketTaggingOverride = getBucketTaggingOverride {
            return try await getBucketTaggingOverride(input)
        }

        return GetBucketTaggingOutput.__default
    }

    /**
     Invokes the GetBucketVersioning operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketVersioningRequest object being passed to this operation.
     - Returns: The GetBucketVersioningOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketVersioning(
            input: S3Model.GetBucketVersioningRequest) async throws -> S3Model.GetBucketVersioningOutput {
        if let getBucketVersioningOverride = getBucketVersioningOverride {
            return try await getBucketVersioningOverride(input)
        }

        return GetBucketVersioningOutput.__default
    }

    /**
     Invokes the GetBucketWebsite operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetBucketWebsiteRequest object being passed to this operation.
     - Returns: The GetBucketWebsiteOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketWebsite(
            input: S3Model.GetBucketWebsiteRequest) async throws -> S3Model.GetBucketWebsiteOutput {
        if let getBucketWebsiteOverride = getBucketWebsiteOverride {
            return try await getBucketWebsiteOverride(input)
        }

        return GetBucketWebsiteOutput.__default
    }

    /**
     Invokes the GetObject operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetObjectRequest object being passed to this operation.
     - Returns: The GetObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidObjectState, noSuchKey.
     */
    public func getObject(
            input: S3Model.GetObjectRequest) async throws -> S3Model.GetObjectOutput {
        if let getObjectOverride = getObjectOverride {
            return try await getObjectOverride(input)
        }

        return GetObjectOutput.__default
    }

    /**
     Invokes the GetObjectAcl operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetObjectAclRequest object being passed to this operation.
     - Returns: The GetObjectAclOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchKey.
     */
    public func getObjectAcl(
            input: S3Model.GetObjectAclRequest) async throws -> S3Model.GetObjectAclOutput {
        if let getObjectAclOverride = getObjectAclOverride {
            return try await getObjectAclOverride(input)
        }

        return GetObjectAclOutput.__default
    }

    /**
     Invokes the GetObjectAttributes operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetObjectAttributesRequest object being passed to this operation.
     - Returns: The GetObjectAttributesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchKey.
     */
    public func getObjectAttributes(
            input: S3Model.GetObjectAttributesRequest) async throws -> S3Model.GetObjectAttributesOutput {
        if let getObjectAttributesOverride = getObjectAttributesOverride {
            return try await getObjectAttributesOverride(input)
        }

        return GetObjectAttributesOutput.__default
    }

    /**
     Invokes the GetObjectLegalHold operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetObjectLegalHoldRequest object being passed to this operation.
     - Returns: The GetObjectLegalHoldOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getObjectLegalHold(
            input: S3Model.GetObjectLegalHoldRequest) async throws -> S3Model.GetObjectLegalHoldOutput {
        if let getObjectLegalHoldOverride = getObjectLegalHoldOverride {
            return try await getObjectLegalHoldOverride(input)
        }

        return GetObjectLegalHoldOutput.__default
    }

    /**
     Invokes the GetObjectLockConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetObjectLockConfigurationRequest object being passed to this operation.
     - Returns: The GetObjectLockConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getObjectLockConfiguration(
            input: S3Model.GetObjectLockConfigurationRequest) async throws -> S3Model.GetObjectLockConfigurationOutput {
        if let getObjectLockConfigurationOverride = getObjectLockConfigurationOverride {
            return try await getObjectLockConfigurationOverride(input)
        }

        return GetObjectLockConfigurationOutput.__default
    }

    /**
     Invokes the GetObjectRetention operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetObjectRetentionRequest object being passed to this operation.
     - Returns: The GetObjectRetentionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getObjectRetention(
            input: S3Model.GetObjectRetentionRequest) async throws -> S3Model.GetObjectRetentionOutput {
        if let getObjectRetentionOverride = getObjectRetentionOverride {
            return try await getObjectRetentionOverride(input)
        }

        return GetObjectRetentionOutput.__default
    }

    /**
     Invokes the GetObjectTagging operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetObjectTaggingRequest object being passed to this operation.
     - Returns: The GetObjectTaggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getObjectTagging(
            input: S3Model.GetObjectTaggingRequest) async throws -> S3Model.GetObjectTaggingOutput {
        if let getObjectTaggingOverride = getObjectTaggingOverride {
            return try await getObjectTaggingOverride(input)
        }

        return GetObjectTaggingOutput.__default
    }

    /**
     Invokes the GetObjectTorrent operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetObjectTorrentRequest object being passed to this operation.
     - Returns: The GetObjectTorrentOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getObjectTorrent(
            input: S3Model.GetObjectTorrentRequest) async throws -> S3Model.GetObjectTorrentOutput {
        if let getObjectTorrentOverride = getObjectTorrentOverride {
            return try await getObjectTorrentOverride(input)
        }

        return GetObjectTorrentOutput.__default
    }

    /**
     Invokes the GetPublicAccessBlock operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated GetPublicAccessBlockRequest object being passed to this operation.
     - Returns: The GetPublicAccessBlockOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getPublicAccessBlock(
            input: S3Model.GetPublicAccessBlockRequest) async throws -> S3Model.GetPublicAccessBlockOutput {
        if let getPublicAccessBlockOverride = getPublicAccessBlockOverride {
            return try await getPublicAccessBlockOverride(input)
        }

        return GetPublicAccessBlockOutput.__default
    }

    /**
     Invokes the HeadBucket operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated HeadBucketRequest object being passed to this operation.
     - Throws: noSuchBucket.
     */
    public func headBucket(
            input: S3Model.HeadBucketRequest) async throws {
        if let headBucketOverride = headBucketOverride {
            return try await headBucketOverride(input)
        }

    }

    /**
     Invokes the HeadObject operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated HeadObjectRequest object being passed to this operation.
     - Returns: The HeadObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchKey.
     */
    public func headObject(
            input: S3Model.HeadObjectRequest) async throws -> S3Model.HeadObjectOutput {
        if let headObjectOverride = headObjectOverride {
            return try await headObjectOverride(input)
        }

        return HeadObjectOutput.__default
    }

    /**
     Invokes the ListBucketAnalyticsConfigurations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListBucketAnalyticsConfigurationsRequest object being passed to this operation.
     - Returns: The ListBucketAnalyticsConfigurationsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listBucketAnalyticsConfigurations(
            input: S3Model.ListBucketAnalyticsConfigurationsRequest) async throws -> S3Model.ListBucketAnalyticsConfigurationsOutput {
        if let listBucketAnalyticsConfigurationsOverride = listBucketAnalyticsConfigurationsOverride {
            return try await listBucketAnalyticsConfigurationsOverride(input)
        }

        return ListBucketAnalyticsConfigurationsOutput.__default
    }

    /**
     Invokes the ListBucketIntelligentTieringConfigurations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListBucketIntelligentTieringConfigurationsRequest object being passed to this operation.
     - Returns: The ListBucketIntelligentTieringConfigurationsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listBucketIntelligentTieringConfigurations(
            input: S3Model.ListBucketIntelligentTieringConfigurationsRequest) async throws -> S3Model.ListBucketIntelligentTieringConfigurationsOutput {
        if let listBucketIntelligentTieringConfigurationsOverride = listBucketIntelligentTieringConfigurationsOverride {
            return try await listBucketIntelligentTieringConfigurationsOverride(input)
        }

        return ListBucketIntelligentTieringConfigurationsOutput.__default
    }

    /**
     Invokes the ListBucketInventoryConfigurations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListBucketInventoryConfigurationsRequest object being passed to this operation.
     - Returns: The ListBucketInventoryConfigurationsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listBucketInventoryConfigurations(
            input: S3Model.ListBucketInventoryConfigurationsRequest) async throws -> S3Model.ListBucketInventoryConfigurationsOutput {
        if let listBucketInventoryConfigurationsOverride = listBucketInventoryConfigurationsOverride {
            return try await listBucketInventoryConfigurationsOverride(input)
        }

        return ListBucketInventoryConfigurationsOutput.__default
    }

    /**
     Invokes the ListBucketMetricsConfigurations operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListBucketMetricsConfigurationsRequest object being passed to this operation.
     - Returns: The ListBucketMetricsConfigurationsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listBucketMetricsConfigurations(
            input: S3Model.ListBucketMetricsConfigurationsRequest) async throws -> S3Model.ListBucketMetricsConfigurationsOutput {
        if let listBucketMetricsConfigurationsOverride = listBucketMetricsConfigurationsOverride {
            return try await listBucketMetricsConfigurationsOverride(input)
        }

        return ListBucketMetricsConfigurationsOutput.__default
    }

    /**
     Invokes the ListBuckets operation suspending until the response is available before returning.
     - Returns: The ListBucketsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listBuckets() async throws -> S3Model.ListBucketsOutput {
        if let listBucketsOverride = listBucketsOverride {
            return try await listBucketsOverride()
        }

        return ListBucketsOutput.__default
    }

    /**
     Invokes the ListMultipartUploads operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListMultipartUploadsRequest object being passed to this operation.
     - Returns: The ListMultipartUploadsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listMultipartUploads(
            input: S3Model.ListMultipartUploadsRequest) async throws -> S3Model.ListMultipartUploadsOutput {
        if let listMultipartUploadsOverride = listMultipartUploadsOverride {
            return try await listMultipartUploadsOverride(input)
        }

        return ListMultipartUploadsOutput.__default
    }

    /**
     Invokes the ListObjectVersions operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListObjectVersionsRequest object being passed to this operation.
     - Returns: The ListObjectVersionsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listObjectVersions(
            input: S3Model.ListObjectVersionsRequest) async throws -> S3Model.ListObjectVersionsOutput {
        if let listObjectVersionsOverride = listObjectVersionsOverride {
            return try await listObjectVersionsOverride(input)
        }

        return ListObjectVersionsOutput.__default
    }

    /**
     Invokes the ListObjects operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListObjectsRequest object being passed to this operation.
     - Returns: The ListObjectsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchBucket.
     */
    public func listObjects(
            input: S3Model.ListObjectsRequest) async throws -> S3Model.ListObjectsOutput {
        if let listObjectsOverride = listObjectsOverride {
            return try await listObjectsOverride(input)
        }

        return ListObjectsOutput.__default
    }

    /**
     Invokes the ListObjectsV2 operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListObjectsV2Request object being passed to this operation.
     - Returns: The ListObjectsV2Output object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchBucket.
     */
    public func listObjectsV2(
            input: S3Model.ListObjectsV2Request) async throws -> S3Model.ListObjectsV2Output {
        if let listObjectsV2Override = listObjectsV2Override {
            return try await listObjectsV2Override(input)
        }

        return ListObjectsV2Output.__default
    }

    /**
     Invokes the ListParts operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated ListPartsRequest object being passed to this operation.
     - Returns: The ListPartsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listParts(
            input: S3Model.ListPartsRequest) async throws -> S3Model.ListPartsOutput {
        if let listPartsOverride = listPartsOverride {
            return try await listPartsOverride(input)
        }

        return ListPartsOutput.__default
    }

    /**
     Invokes the PutBucketAccelerateConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketAccelerateConfigurationRequest object being passed to this operation.
     */
    public func putBucketAccelerateConfiguration(
            input: S3Model.PutBucketAccelerateConfigurationRequest) async throws {
        if let putBucketAccelerateConfigurationOverride = putBucketAccelerateConfigurationOverride {
            return try await putBucketAccelerateConfigurationOverride(input)
        }

    }

    /**
     Invokes the PutBucketAcl operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketAclRequest object being passed to this operation.
     */
    public func putBucketAcl(
            input: S3Model.PutBucketAclRequest) async throws {
        if let putBucketAclOverride = putBucketAclOverride {
            return try await putBucketAclOverride(input)
        }

    }

    /**
     Invokes the PutBucketAnalyticsConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketAnalyticsConfigurationRequest object being passed to this operation.
     */
    public func putBucketAnalyticsConfiguration(
            input: S3Model.PutBucketAnalyticsConfigurationRequest) async throws {
        if let putBucketAnalyticsConfigurationOverride = putBucketAnalyticsConfigurationOverride {
            return try await putBucketAnalyticsConfigurationOverride(input)
        }

    }

    /**
     Invokes the PutBucketCors operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketCorsRequest object being passed to this operation.
     */
    public func putBucketCors(
            input: S3Model.PutBucketCorsRequest) async throws {
        if let putBucketCorsOverride = putBucketCorsOverride {
            return try await putBucketCorsOverride(input)
        }

    }

    /**
     Invokes the PutBucketEncryption operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketEncryptionRequest object being passed to this operation.
     */
    public func putBucketEncryption(
            input: S3Model.PutBucketEncryptionRequest) async throws {
        if let putBucketEncryptionOverride = putBucketEncryptionOverride {
            return try await putBucketEncryptionOverride(input)
        }

    }

    /**
     Invokes the PutBucketIntelligentTieringConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketIntelligentTieringConfigurationRequest object being passed to this operation.
     */
    public func putBucketIntelligentTieringConfiguration(
            input: S3Model.PutBucketIntelligentTieringConfigurationRequest) async throws {
        if let putBucketIntelligentTieringConfigurationOverride = putBucketIntelligentTieringConfigurationOverride {
            return try await putBucketIntelligentTieringConfigurationOverride(input)
        }

    }

    /**
     Invokes the PutBucketInventoryConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketInventoryConfigurationRequest object being passed to this operation.
     */
    public func putBucketInventoryConfiguration(
            input: S3Model.PutBucketInventoryConfigurationRequest) async throws {
        if let putBucketInventoryConfigurationOverride = putBucketInventoryConfigurationOverride {
            return try await putBucketInventoryConfigurationOverride(input)
        }

    }

    /**
     Invokes the PutBucketLifecycle operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketLifecycleRequest object being passed to this operation.
     */
    public func putBucketLifecycle(
            input: S3Model.PutBucketLifecycleRequest) async throws {
        if let putBucketLifecycleOverride = putBucketLifecycleOverride {
            return try await putBucketLifecycleOverride(input)
        }

    }

    /**
     Invokes the PutBucketLifecycleConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketLifecycleConfigurationRequest object being passed to this operation.
     */
    public func putBucketLifecycleConfiguration(
            input: S3Model.PutBucketLifecycleConfigurationRequest) async throws {
        if let putBucketLifecycleConfigurationOverride = putBucketLifecycleConfigurationOverride {
            return try await putBucketLifecycleConfigurationOverride(input)
        }

    }

    /**
     Invokes the PutBucketLogging operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketLoggingRequest object being passed to this operation.
     */
    public func putBucketLogging(
            input: S3Model.PutBucketLoggingRequest) async throws {
        if let putBucketLoggingOverride = putBucketLoggingOverride {
            return try await putBucketLoggingOverride(input)
        }

    }

    /**
     Invokes the PutBucketMetricsConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketMetricsConfigurationRequest object being passed to this operation.
     */
    public func putBucketMetricsConfiguration(
            input: S3Model.PutBucketMetricsConfigurationRequest) async throws {
        if let putBucketMetricsConfigurationOverride = putBucketMetricsConfigurationOverride {
            return try await putBucketMetricsConfigurationOverride(input)
        }

    }

    /**
     Invokes the PutBucketNotification operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketNotificationRequest object being passed to this operation.
     */
    public func putBucketNotification(
            input: S3Model.PutBucketNotificationRequest) async throws {
        if let putBucketNotificationOverride = putBucketNotificationOverride {
            return try await putBucketNotificationOverride(input)
        }

    }

    /**
     Invokes the PutBucketNotificationConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketNotificationConfigurationRequest object being passed to this operation.
     */
    public func putBucketNotificationConfiguration(
            input: S3Model.PutBucketNotificationConfigurationRequest) async throws {
        if let putBucketNotificationConfigurationOverride = putBucketNotificationConfigurationOverride {
            return try await putBucketNotificationConfigurationOverride(input)
        }

    }

    /**
     Invokes the PutBucketOwnershipControls operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketOwnershipControlsRequest object being passed to this operation.
     */
    public func putBucketOwnershipControls(
            input: S3Model.PutBucketOwnershipControlsRequest) async throws {
        if let putBucketOwnershipControlsOverride = putBucketOwnershipControlsOverride {
            return try await putBucketOwnershipControlsOverride(input)
        }

    }

    /**
     Invokes the PutBucketPolicy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketPolicyRequest object being passed to this operation.
     */
    public func putBucketPolicy(
            input: S3Model.PutBucketPolicyRequest) async throws {
        if let putBucketPolicyOverride = putBucketPolicyOverride {
            return try await putBucketPolicyOverride(input)
        }

    }

    /**
     Invokes the PutBucketReplication operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketReplicationRequest object being passed to this operation.
     */
    public func putBucketReplication(
            input: S3Model.PutBucketReplicationRequest) async throws {
        if let putBucketReplicationOverride = putBucketReplicationOverride {
            return try await putBucketReplicationOverride(input)
        }

    }

    /**
     Invokes the PutBucketRequestPayment operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketRequestPaymentRequest object being passed to this operation.
     */
    public func putBucketRequestPayment(
            input: S3Model.PutBucketRequestPaymentRequest) async throws {
        if let putBucketRequestPaymentOverride = putBucketRequestPaymentOverride {
            return try await putBucketRequestPaymentOverride(input)
        }

    }

    /**
     Invokes the PutBucketTagging operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketTaggingRequest object being passed to this operation.
     */
    public func putBucketTagging(
            input: S3Model.PutBucketTaggingRequest) async throws {
        if let putBucketTaggingOverride = putBucketTaggingOverride {
            return try await putBucketTaggingOverride(input)
        }

    }

    /**
     Invokes the PutBucketVersioning operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketVersioningRequest object being passed to this operation.
     */
    public func putBucketVersioning(
            input: S3Model.PutBucketVersioningRequest) async throws {
        if let putBucketVersioningOverride = putBucketVersioningOverride {
            return try await putBucketVersioningOverride(input)
        }

    }

    /**
     Invokes the PutBucketWebsite operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutBucketWebsiteRequest object being passed to this operation.
     */
    public func putBucketWebsite(
            input: S3Model.PutBucketWebsiteRequest) async throws {
        if let putBucketWebsiteOverride = putBucketWebsiteOverride {
            return try await putBucketWebsiteOverride(input)
        }

    }

    /**
     Invokes the PutObject operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutObjectRequest object being passed to this operation.
     - Returns: The PutObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func putObject(
            input: S3Model.PutObjectRequest) async throws -> S3Model.PutObjectOutput {
        if let putObjectOverride = putObjectOverride {
            return try await putObjectOverride(input)
        }

        return PutObjectOutput.__default
    }

    /**
     Invokes the PutObjectAcl operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutObjectAclRequest object being passed to this operation.
     - Returns: The PutObjectAclOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchKey.
     */
    public func putObjectAcl(
            input: S3Model.PutObjectAclRequest) async throws -> S3Model.PutObjectAclOutput {
        if let putObjectAclOverride = putObjectAclOverride {
            return try await putObjectAclOverride(input)
        }

        return PutObjectAclOutput.__default
    }

    /**
     Invokes the PutObjectLegalHold operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutObjectLegalHoldRequest object being passed to this operation.
     - Returns: The PutObjectLegalHoldOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func putObjectLegalHold(
            input: S3Model.PutObjectLegalHoldRequest) async throws -> S3Model.PutObjectLegalHoldOutput {
        if let putObjectLegalHoldOverride = putObjectLegalHoldOverride {
            return try await putObjectLegalHoldOverride(input)
        }

        return PutObjectLegalHoldOutput.__default
    }

    /**
     Invokes the PutObjectLockConfiguration operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutObjectLockConfigurationRequest object being passed to this operation.
     - Returns: The PutObjectLockConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func putObjectLockConfiguration(
            input: S3Model.PutObjectLockConfigurationRequest) async throws -> S3Model.PutObjectLockConfigurationOutput {
        if let putObjectLockConfigurationOverride = putObjectLockConfigurationOverride {
            return try await putObjectLockConfigurationOverride(input)
        }

        return PutObjectLockConfigurationOutput.__default
    }

    /**
     Invokes the PutObjectRetention operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutObjectRetentionRequest object being passed to this operation.
     - Returns: The PutObjectRetentionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func putObjectRetention(
            input: S3Model.PutObjectRetentionRequest) async throws -> S3Model.PutObjectRetentionOutput {
        if let putObjectRetentionOverride = putObjectRetentionOverride {
            return try await putObjectRetentionOverride(input)
        }

        return PutObjectRetentionOutput.__default
    }

    /**
     Invokes the PutObjectTagging operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutObjectTaggingRequest object being passed to this operation.
     - Returns: The PutObjectTaggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func putObjectTagging(
            input: S3Model.PutObjectTaggingRequest) async throws -> S3Model.PutObjectTaggingOutput {
        if let putObjectTaggingOverride = putObjectTaggingOverride {
            return try await putObjectTaggingOverride(input)
        }

        return PutObjectTaggingOutput.__default
    }

    /**
     Invokes the PutPublicAccessBlock operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated PutPublicAccessBlockRequest object being passed to this operation.
     */
    public func putPublicAccessBlock(
            input: S3Model.PutPublicAccessBlockRequest) async throws {
        if let putPublicAccessBlockOverride = putPublicAccessBlockOverride {
            return try await putPublicAccessBlockOverride(input)
        }

    }

    /**
     Invokes the RestoreObject operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated RestoreObjectRequest object being passed to this operation.
     - Returns: The RestoreObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: objectAlreadyInActiveTier.
     */
    public func restoreObject(
            input: S3Model.RestoreObjectRequest) async throws -> S3Model.RestoreObjectOutput {
        if let restoreObjectOverride = restoreObjectOverride {
            return try await restoreObjectOverride(input)
        }

        return RestoreObjectOutput.__default
    }

    /**
     Invokes the SelectObjectContent operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated SelectObjectContentRequest object being passed to this operation.
     - Returns: The SelectObjectContentOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func selectObjectContent(
            input: S3Model.SelectObjectContentRequest) async throws -> S3Model.SelectObjectContentOutput {
        if let selectObjectContentOverride = selectObjectContentOverride {
            return try await selectObjectContentOverride(input)
        }

        return SelectObjectContentOutput.__default
    }

    /**
     Invokes the UploadPart operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UploadPartRequest object being passed to this operation.
     - Returns: The UploadPartOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func uploadPart(
            input: S3Model.UploadPartRequest) async throws -> S3Model.UploadPartOutput {
        if let uploadPartOverride = uploadPartOverride {
            return try await uploadPartOverride(input)
        }

        return UploadPartOutput.__default
    }

    /**
     Invokes the UploadPartCopy operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated UploadPartCopyRequest object being passed to this operation.
     - Returns: The UploadPartCopyOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func uploadPartCopy(
            input: S3Model.UploadPartCopyRequest) async throws -> S3Model.UploadPartCopyOutput {
        if let uploadPartCopyOverride = uploadPartCopyOverride {
            return try await uploadPartCopyOverride(input)
        }

        return UploadPartCopyOutput.__default
    }

    /**
     Invokes the WriteGetObjectResponse operation suspending until the response is available before returning.

     - Parameters:
         - input: The validated WriteGetObjectResponseRequest object being passed to this operation.
     */
    public func writeGetObjectResponse(
            input: S3Model.WriteGetObjectResponseRequest) async throws {
        if let writeGetObjectResponseOverride = writeGetObjectResponseOverride {
            return try await writeGetObjectResponseOverride(input)
        }

    }
#endif
}
