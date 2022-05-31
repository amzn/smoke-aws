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
// ThrowingS3Client.swift
// S3Client
//

import Foundation
import S3Model
import SmokeAWSCore
import SmokeHTTPClient

/**
 Mock Client for the S3 service that by default always throws from its methods.
 */
public struct ThrowingS3Client: S3ClientProtocol {
    let error: S3Error
    let abortMultipartUploadAsyncOverride: AbortMultipartUploadAsyncType?
    let abortMultipartUploadSyncOverride: AbortMultipartUploadSyncType?
    let completeMultipartUploadAsyncOverride: CompleteMultipartUploadAsyncType?
    let completeMultipartUploadSyncOverride: CompleteMultipartUploadSyncType?
    let copyObjectAsyncOverride: CopyObjectAsyncType?
    let copyObjectSyncOverride: CopyObjectSyncType?
    let createBucketAsyncOverride: CreateBucketAsyncType?
    let createBucketSyncOverride: CreateBucketSyncType?
    let createMultipartUploadAsyncOverride: CreateMultipartUploadAsyncType?
    let createMultipartUploadSyncOverride: CreateMultipartUploadSyncType?
    let deleteBucketAsyncOverride: DeleteBucketAsyncType?
    let deleteBucketSyncOverride: DeleteBucketSyncType?
    let deleteBucketAnalyticsConfigurationAsyncOverride: DeleteBucketAnalyticsConfigurationAsyncType?
    let deleteBucketAnalyticsConfigurationSyncOverride: DeleteBucketAnalyticsConfigurationSyncType?
    let deleteBucketCorsAsyncOverride: DeleteBucketCorsAsyncType?
    let deleteBucketCorsSyncOverride: DeleteBucketCorsSyncType?
    let deleteBucketEncryptionAsyncOverride: DeleteBucketEncryptionAsyncType?
    let deleteBucketEncryptionSyncOverride: DeleteBucketEncryptionSyncType?
    let deleteBucketIntelligentTieringConfigurationAsyncOverride: DeleteBucketIntelligentTieringConfigurationAsyncType?
    let deleteBucketIntelligentTieringConfigurationSyncOverride: DeleteBucketIntelligentTieringConfigurationSyncType?
    let deleteBucketInventoryConfigurationAsyncOverride: DeleteBucketInventoryConfigurationAsyncType?
    let deleteBucketInventoryConfigurationSyncOverride: DeleteBucketInventoryConfigurationSyncType?
    let deleteBucketLifecycleAsyncOverride: DeleteBucketLifecycleAsyncType?
    let deleteBucketLifecycleSyncOverride: DeleteBucketLifecycleSyncType?
    let deleteBucketMetricsConfigurationAsyncOverride: DeleteBucketMetricsConfigurationAsyncType?
    let deleteBucketMetricsConfigurationSyncOverride: DeleteBucketMetricsConfigurationSyncType?
    let deleteBucketOwnershipControlsAsyncOverride: DeleteBucketOwnershipControlsAsyncType?
    let deleteBucketOwnershipControlsSyncOverride: DeleteBucketOwnershipControlsSyncType?
    let deleteBucketPolicyAsyncOverride: DeleteBucketPolicyAsyncType?
    let deleteBucketPolicySyncOverride: DeleteBucketPolicySyncType?
    let deleteBucketReplicationAsyncOverride: DeleteBucketReplicationAsyncType?
    let deleteBucketReplicationSyncOverride: DeleteBucketReplicationSyncType?
    let deleteBucketTaggingAsyncOverride: DeleteBucketTaggingAsyncType?
    let deleteBucketTaggingSyncOverride: DeleteBucketTaggingSyncType?
    let deleteBucketWebsiteAsyncOverride: DeleteBucketWebsiteAsyncType?
    let deleteBucketWebsiteSyncOverride: DeleteBucketWebsiteSyncType?
    let deleteObjectAsyncOverride: DeleteObjectAsyncType?
    let deleteObjectSyncOverride: DeleteObjectSyncType?
    let deleteObjectTaggingAsyncOverride: DeleteObjectTaggingAsyncType?
    let deleteObjectTaggingSyncOverride: DeleteObjectTaggingSyncType?
    let deleteObjectsAsyncOverride: DeleteObjectsAsyncType?
    let deleteObjectsSyncOverride: DeleteObjectsSyncType?
    let deletePublicAccessBlockAsyncOverride: DeletePublicAccessBlockAsyncType?
    let deletePublicAccessBlockSyncOverride: DeletePublicAccessBlockSyncType?
    let getBucketAccelerateConfigurationAsyncOverride: GetBucketAccelerateConfigurationAsyncType?
    let getBucketAccelerateConfigurationSyncOverride: GetBucketAccelerateConfigurationSyncType?
    let getBucketAclAsyncOverride: GetBucketAclAsyncType?
    let getBucketAclSyncOverride: GetBucketAclSyncType?
    let getBucketAnalyticsConfigurationAsyncOverride: GetBucketAnalyticsConfigurationAsyncType?
    let getBucketAnalyticsConfigurationSyncOverride: GetBucketAnalyticsConfigurationSyncType?
    let getBucketCorsAsyncOverride: GetBucketCorsAsyncType?
    let getBucketCorsSyncOverride: GetBucketCorsSyncType?
    let getBucketEncryptionAsyncOverride: GetBucketEncryptionAsyncType?
    let getBucketEncryptionSyncOverride: GetBucketEncryptionSyncType?
    let getBucketIntelligentTieringConfigurationAsyncOverride: GetBucketIntelligentTieringConfigurationAsyncType?
    let getBucketIntelligentTieringConfigurationSyncOverride: GetBucketIntelligentTieringConfigurationSyncType?
    let getBucketInventoryConfigurationAsyncOverride: GetBucketInventoryConfigurationAsyncType?
    let getBucketInventoryConfigurationSyncOverride: GetBucketInventoryConfigurationSyncType?
    let getBucketLifecycleAsyncOverride: GetBucketLifecycleAsyncType?
    let getBucketLifecycleSyncOverride: GetBucketLifecycleSyncType?
    let getBucketLifecycleConfigurationAsyncOverride: GetBucketLifecycleConfigurationAsyncType?
    let getBucketLifecycleConfigurationSyncOverride: GetBucketLifecycleConfigurationSyncType?
    let getBucketLocationAsyncOverride: GetBucketLocationAsyncType?
    let getBucketLocationSyncOverride: GetBucketLocationSyncType?
    let getBucketLoggingAsyncOverride: GetBucketLoggingAsyncType?
    let getBucketLoggingSyncOverride: GetBucketLoggingSyncType?
    let getBucketMetricsConfigurationAsyncOverride: GetBucketMetricsConfigurationAsyncType?
    let getBucketMetricsConfigurationSyncOverride: GetBucketMetricsConfigurationSyncType?
    let getBucketNotificationAsyncOverride: GetBucketNotificationAsyncType?
    let getBucketNotificationSyncOverride: GetBucketNotificationSyncType?
    let getBucketNotificationConfigurationAsyncOverride: GetBucketNotificationConfigurationAsyncType?
    let getBucketNotificationConfigurationSyncOverride: GetBucketNotificationConfigurationSyncType?
    let getBucketOwnershipControlsAsyncOverride: GetBucketOwnershipControlsAsyncType?
    let getBucketOwnershipControlsSyncOverride: GetBucketOwnershipControlsSyncType?
    let getBucketPolicyAsyncOverride: GetBucketPolicyAsyncType?
    let getBucketPolicySyncOverride: GetBucketPolicySyncType?
    let getBucketPolicyStatusAsyncOverride: GetBucketPolicyStatusAsyncType?
    let getBucketPolicyStatusSyncOverride: GetBucketPolicyStatusSyncType?
    let getBucketReplicationAsyncOverride: GetBucketReplicationAsyncType?
    let getBucketReplicationSyncOverride: GetBucketReplicationSyncType?
    let getBucketRequestPaymentAsyncOverride: GetBucketRequestPaymentAsyncType?
    let getBucketRequestPaymentSyncOverride: GetBucketRequestPaymentSyncType?
    let getBucketTaggingAsyncOverride: GetBucketTaggingAsyncType?
    let getBucketTaggingSyncOverride: GetBucketTaggingSyncType?
    let getBucketVersioningAsyncOverride: GetBucketVersioningAsyncType?
    let getBucketVersioningSyncOverride: GetBucketVersioningSyncType?
    let getBucketWebsiteAsyncOverride: GetBucketWebsiteAsyncType?
    let getBucketWebsiteSyncOverride: GetBucketWebsiteSyncType?
    let getObjectAsyncOverride: GetObjectAsyncType?
    let getObjectSyncOverride: GetObjectSyncType?
    let getObjectAclAsyncOverride: GetObjectAclAsyncType?
    let getObjectAclSyncOverride: GetObjectAclSyncType?
    let getObjectAttributesAsyncOverride: GetObjectAttributesAsyncType?
    let getObjectAttributesSyncOverride: GetObjectAttributesSyncType?
    let getObjectLegalHoldAsyncOverride: GetObjectLegalHoldAsyncType?
    let getObjectLegalHoldSyncOverride: GetObjectLegalHoldSyncType?
    let getObjectLockConfigurationAsyncOverride: GetObjectLockConfigurationAsyncType?
    let getObjectLockConfigurationSyncOverride: GetObjectLockConfigurationSyncType?
    let getObjectRetentionAsyncOverride: GetObjectRetentionAsyncType?
    let getObjectRetentionSyncOverride: GetObjectRetentionSyncType?
    let getObjectTaggingAsyncOverride: GetObjectTaggingAsyncType?
    let getObjectTaggingSyncOverride: GetObjectTaggingSyncType?
    let getObjectTorrentAsyncOverride: GetObjectTorrentAsyncType?
    let getObjectTorrentSyncOverride: GetObjectTorrentSyncType?
    let getPublicAccessBlockAsyncOverride: GetPublicAccessBlockAsyncType?
    let getPublicAccessBlockSyncOverride: GetPublicAccessBlockSyncType?
    let headBucketAsyncOverride: HeadBucketAsyncType?
    let headBucketSyncOverride: HeadBucketSyncType?
    let headObjectAsyncOverride: HeadObjectAsyncType?
    let headObjectSyncOverride: HeadObjectSyncType?
    let listBucketAnalyticsConfigurationsAsyncOverride: ListBucketAnalyticsConfigurationsAsyncType?
    let listBucketAnalyticsConfigurationsSyncOverride: ListBucketAnalyticsConfigurationsSyncType?
    let listBucketIntelligentTieringConfigurationsAsyncOverride: ListBucketIntelligentTieringConfigurationsAsyncType?
    let listBucketIntelligentTieringConfigurationsSyncOverride: ListBucketIntelligentTieringConfigurationsSyncType?
    let listBucketInventoryConfigurationsAsyncOverride: ListBucketInventoryConfigurationsAsyncType?
    let listBucketInventoryConfigurationsSyncOverride: ListBucketInventoryConfigurationsSyncType?
    let listBucketMetricsConfigurationsAsyncOverride: ListBucketMetricsConfigurationsAsyncType?
    let listBucketMetricsConfigurationsSyncOverride: ListBucketMetricsConfigurationsSyncType?
    let listBucketsAsyncOverride: ListBucketsAsyncType?
    let listBucketsSyncOverride: ListBucketsSyncType?
    let listMultipartUploadsAsyncOverride: ListMultipartUploadsAsyncType?
    let listMultipartUploadsSyncOverride: ListMultipartUploadsSyncType?
    let listObjectVersionsAsyncOverride: ListObjectVersionsAsyncType?
    let listObjectVersionsSyncOverride: ListObjectVersionsSyncType?
    let listObjectsAsyncOverride: ListObjectsAsyncType?
    let listObjectsSyncOverride: ListObjectsSyncType?
    let listObjectsV2AsyncOverride: ListObjectsV2AsyncType?
    let listObjectsV2SyncOverride: ListObjectsV2SyncType?
    let listPartsAsyncOverride: ListPartsAsyncType?
    let listPartsSyncOverride: ListPartsSyncType?
    let putBucketAccelerateConfigurationAsyncOverride: PutBucketAccelerateConfigurationAsyncType?
    let putBucketAccelerateConfigurationSyncOverride: PutBucketAccelerateConfigurationSyncType?
    let putBucketAclAsyncOverride: PutBucketAclAsyncType?
    let putBucketAclSyncOverride: PutBucketAclSyncType?
    let putBucketAnalyticsConfigurationAsyncOverride: PutBucketAnalyticsConfigurationAsyncType?
    let putBucketAnalyticsConfigurationSyncOverride: PutBucketAnalyticsConfigurationSyncType?
    let putBucketCorsAsyncOverride: PutBucketCorsAsyncType?
    let putBucketCorsSyncOverride: PutBucketCorsSyncType?
    let putBucketEncryptionAsyncOverride: PutBucketEncryptionAsyncType?
    let putBucketEncryptionSyncOverride: PutBucketEncryptionSyncType?
    let putBucketIntelligentTieringConfigurationAsyncOverride: PutBucketIntelligentTieringConfigurationAsyncType?
    let putBucketIntelligentTieringConfigurationSyncOverride: PutBucketIntelligentTieringConfigurationSyncType?
    let putBucketInventoryConfigurationAsyncOverride: PutBucketInventoryConfigurationAsyncType?
    let putBucketInventoryConfigurationSyncOverride: PutBucketInventoryConfigurationSyncType?
    let putBucketLifecycleAsyncOverride: PutBucketLifecycleAsyncType?
    let putBucketLifecycleSyncOverride: PutBucketLifecycleSyncType?
    let putBucketLifecycleConfigurationAsyncOverride: PutBucketLifecycleConfigurationAsyncType?
    let putBucketLifecycleConfigurationSyncOverride: PutBucketLifecycleConfigurationSyncType?
    let putBucketLoggingAsyncOverride: PutBucketLoggingAsyncType?
    let putBucketLoggingSyncOverride: PutBucketLoggingSyncType?
    let putBucketMetricsConfigurationAsyncOverride: PutBucketMetricsConfigurationAsyncType?
    let putBucketMetricsConfigurationSyncOverride: PutBucketMetricsConfigurationSyncType?
    let putBucketNotificationAsyncOverride: PutBucketNotificationAsyncType?
    let putBucketNotificationSyncOverride: PutBucketNotificationSyncType?
    let putBucketNotificationConfigurationAsyncOverride: PutBucketNotificationConfigurationAsyncType?
    let putBucketNotificationConfigurationSyncOverride: PutBucketNotificationConfigurationSyncType?
    let putBucketOwnershipControlsAsyncOverride: PutBucketOwnershipControlsAsyncType?
    let putBucketOwnershipControlsSyncOverride: PutBucketOwnershipControlsSyncType?
    let putBucketPolicyAsyncOverride: PutBucketPolicyAsyncType?
    let putBucketPolicySyncOverride: PutBucketPolicySyncType?
    let putBucketReplicationAsyncOverride: PutBucketReplicationAsyncType?
    let putBucketReplicationSyncOverride: PutBucketReplicationSyncType?
    let putBucketRequestPaymentAsyncOverride: PutBucketRequestPaymentAsyncType?
    let putBucketRequestPaymentSyncOverride: PutBucketRequestPaymentSyncType?
    let putBucketTaggingAsyncOverride: PutBucketTaggingAsyncType?
    let putBucketTaggingSyncOverride: PutBucketTaggingSyncType?
    let putBucketVersioningAsyncOverride: PutBucketVersioningAsyncType?
    let putBucketVersioningSyncOverride: PutBucketVersioningSyncType?
    let putBucketWebsiteAsyncOverride: PutBucketWebsiteAsyncType?
    let putBucketWebsiteSyncOverride: PutBucketWebsiteSyncType?
    let putObjectAsyncOverride: PutObjectAsyncType?
    let putObjectSyncOverride: PutObjectSyncType?
    let putObjectAclAsyncOverride: PutObjectAclAsyncType?
    let putObjectAclSyncOverride: PutObjectAclSyncType?
    let putObjectLegalHoldAsyncOverride: PutObjectLegalHoldAsyncType?
    let putObjectLegalHoldSyncOverride: PutObjectLegalHoldSyncType?
    let putObjectLockConfigurationAsyncOverride: PutObjectLockConfigurationAsyncType?
    let putObjectLockConfigurationSyncOverride: PutObjectLockConfigurationSyncType?
    let putObjectRetentionAsyncOverride: PutObjectRetentionAsyncType?
    let putObjectRetentionSyncOverride: PutObjectRetentionSyncType?
    let putObjectTaggingAsyncOverride: PutObjectTaggingAsyncType?
    let putObjectTaggingSyncOverride: PutObjectTaggingSyncType?
    let putPublicAccessBlockAsyncOverride: PutPublicAccessBlockAsyncType?
    let putPublicAccessBlockSyncOverride: PutPublicAccessBlockSyncType?
    let restoreObjectAsyncOverride: RestoreObjectAsyncType?
    let restoreObjectSyncOverride: RestoreObjectSyncType?
    let selectObjectContentAsyncOverride: SelectObjectContentAsyncType?
    let selectObjectContentSyncOverride: SelectObjectContentSyncType?
    let uploadPartAsyncOverride: UploadPartAsyncType?
    let uploadPartSyncOverride: UploadPartSyncType?
    let uploadPartCopyAsyncOverride: UploadPartCopyAsyncType?
    let uploadPartCopySyncOverride: UploadPartCopySyncType?
    let writeGetObjectResponseAsyncOverride: WriteGetObjectResponseAsyncType?
    let writeGetObjectResponseSyncOverride: WriteGetObjectResponseSyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(error: S3Error,
            abortMultipartUploadAsync: AbortMultipartUploadAsyncType? = nil,
            abortMultipartUploadSync: AbortMultipartUploadSyncType? = nil,
            completeMultipartUploadAsync: CompleteMultipartUploadAsyncType? = nil,
            completeMultipartUploadSync: CompleteMultipartUploadSyncType? = nil,
            copyObjectAsync: CopyObjectAsyncType? = nil,
            copyObjectSync: CopyObjectSyncType? = nil,
            createBucketAsync: CreateBucketAsyncType? = nil,
            createBucketSync: CreateBucketSyncType? = nil,
            createMultipartUploadAsync: CreateMultipartUploadAsyncType? = nil,
            createMultipartUploadSync: CreateMultipartUploadSyncType? = nil,
            deleteBucketAsync: DeleteBucketAsyncType? = nil,
            deleteBucketSync: DeleteBucketSyncType? = nil,
            deleteBucketAnalyticsConfigurationAsync: DeleteBucketAnalyticsConfigurationAsyncType? = nil,
            deleteBucketAnalyticsConfigurationSync: DeleteBucketAnalyticsConfigurationSyncType? = nil,
            deleteBucketCorsAsync: DeleteBucketCorsAsyncType? = nil,
            deleteBucketCorsSync: DeleteBucketCorsSyncType? = nil,
            deleteBucketEncryptionAsync: DeleteBucketEncryptionAsyncType? = nil,
            deleteBucketEncryptionSync: DeleteBucketEncryptionSyncType? = nil,
            deleteBucketIntelligentTieringConfigurationAsync: DeleteBucketIntelligentTieringConfigurationAsyncType? = nil,
            deleteBucketIntelligentTieringConfigurationSync: DeleteBucketIntelligentTieringConfigurationSyncType? = nil,
            deleteBucketInventoryConfigurationAsync: DeleteBucketInventoryConfigurationAsyncType? = nil,
            deleteBucketInventoryConfigurationSync: DeleteBucketInventoryConfigurationSyncType? = nil,
            deleteBucketLifecycleAsync: DeleteBucketLifecycleAsyncType? = nil,
            deleteBucketLifecycleSync: DeleteBucketLifecycleSyncType? = nil,
            deleteBucketMetricsConfigurationAsync: DeleteBucketMetricsConfigurationAsyncType? = nil,
            deleteBucketMetricsConfigurationSync: DeleteBucketMetricsConfigurationSyncType? = nil,
            deleteBucketOwnershipControlsAsync: DeleteBucketOwnershipControlsAsyncType? = nil,
            deleteBucketOwnershipControlsSync: DeleteBucketOwnershipControlsSyncType? = nil,
            deleteBucketPolicyAsync: DeleteBucketPolicyAsyncType? = nil,
            deleteBucketPolicySync: DeleteBucketPolicySyncType? = nil,
            deleteBucketReplicationAsync: DeleteBucketReplicationAsyncType? = nil,
            deleteBucketReplicationSync: DeleteBucketReplicationSyncType? = nil,
            deleteBucketTaggingAsync: DeleteBucketTaggingAsyncType? = nil,
            deleteBucketTaggingSync: DeleteBucketTaggingSyncType? = nil,
            deleteBucketWebsiteAsync: DeleteBucketWebsiteAsyncType? = nil,
            deleteBucketWebsiteSync: DeleteBucketWebsiteSyncType? = nil,
            deleteObjectAsync: DeleteObjectAsyncType? = nil,
            deleteObjectSync: DeleteObjectSyncType? = nil,
            deleteObjectTaggingAsync: DeleteObjectTaggingAsyncType? = nil,
            deleteObjectTaggingSync: DeleteObjectTaggingSyncType? = nil,
            deleteObjectsAsync: DeleteObjectsAsyncType? = nil,
            deleteObjectsSync: DeleteObjectsSyncType? = nil,
            deletePublicAccessBlockAsync: DeletePublicAccessBlockAsyncType? = nil,
            deletePublicAccessBlockSync: DeletePublicAccessBlockSyncType? = nil,
            getBucketAccelerateConfigurationAsync: GetBucketAccelerateConfigurationAsyncType? = nil,
            getBucketAccelerateConfigurationSync: GetBucketAccelerateConfigurationSyncType? = nil,
            getBucketAclAsync: GetBucketAclAsyncType? = nil,
            getBucketAclSync: GetBucketAclSyncType? = nil,
            getBucketAnalyticsConfigurationAsync: GetBucketAnalyticsConfigurationAsyncType? = nil,
            getBucketAnalyticsConfigurationSync: GetBucketAnalyticsConfigurationSyncType? = nil,
            getBucketCorsAsync: GetBucketCorsAsyncType? = nil,
            getBucketCorsSync: GetBucketCorsSyncType? = nil,
            getBucketEncryptionAsync: GetBucketEncryptionAsyncType? = nil,
            getBucketEncryptionSync: GetBucketEncryptionSyncType? = nil,
            getBucketIntelligentTieringConfigurationAsync: GetBucketIntelligentTieringConfigurationAsyncType? = nil,
            getBucketIntelligentTieringConfigurationSync: GetBucketIntelligentTieringConfigurationSyncType? = nil,
            getBucketInventoryConfigurationAsync: GetBucketInventoryConfigurationAsyncType? = nil,
            getBucketInventoryConfigurationSync: GetBucketInventoryConfigurationSyncType? = nil,
            getBucketLifecycleAsync: GetBucketLifecycleAsyncType? = nil,
            getBucketLifecycleSync: GetBucketLifecycleSyncType? = nil,
            getBucketLifecycleConfigurationAsync: GetBucketLifecycleConfigurationAsyncType? = nil,
            getBucketLifecycleConfigurationSync: GetBucketLifecycleConfigurationSyncType? = nil,
            getBucketLocationAsync: GetBucketLocationAsyncType? = nil,
            getBucketLocationSync: GetBucketLocationSyncType? = nil,
            getBucketLoggingAsync: GetBucketLoggingAsyncType? = nil,
            getBucketLoggingSync: GetBucketLoggingSyncType? = nil,
            getBucketMetricsConfigurationAsync: GetBucketMetricsConfigurationAsyncType? = nil,
            getBucketMetricsConfigurationSync: GetBucketMetricsConfigurationSyncType? = nil,
            getBucketNotificationAsync: GetBucketNotificationAsyncType? = nil,
            getBucketNotificationSync: GetBucketNotificationSyncType? = nil,
            getBucketNotificationConfigurationAsync: GetBucketNotificationConfigurationAsyncType? = nil,
            getBucketNotificationConfigurationSync: GetBucketNotificationConfigurationSyncType? = nil,
            getBucketOwnershipControlsAsync: GetBucketOwnershipControlsAsyncType? = nil,
            getBucketOwnershipControlsSync: GetBucketOwnershipControlsSyncType? = nil,
            getBucketPolicyAsync: GetBucketPolicyAsyncType? = nil,
            getBucketPolicySync: GetBucketPolicySyncType? = nil,
            getBucketPolicyStatusAsync: GetBucketPolicyStatusAsyncType? = nil,
            getBucketPolicyStatusSync: GetBucketPolicyStatusSyncType? = nil,
            getBucketReplicationAsync: GetBucketReplicationAsyncType? = nil,
            getBucketReplicationSync: GetBucketReplicationSyncType? = nil,
            getBucketRequestPaymentAsync: GetBucketRequestPaymentAsyncType? = nil,
            getBucketRequestPaymentSync: GetBucketRequestPaymentSyncType? = nil,
            getBucketTaggingAsync: GetBucketTaggingAsyncType? = nil,
            getBucketTaggingSync: GetBucketTaggingSyncType? = nil,
            getBucketVersioningAsync: GetBucketVersioningAsyncType? = nil,
            getBucketVersioningSync: GetBucketVersioningSyncType? = nil,
            getBucketWebsiteAsync: GetBucketWebsiteAsyncType? = nil,
            getBucketWebsiteSync: GetBucketWebsiteSyncType? = nil,
            getObjectAsync: GetObjectAsyncType? = nil,
            getObjectSync: GetObjectSyncType? = nil,
            getObjectAclAsync: GetObjectAclAsyncType? = nil,
            getObjectAclSync: GetObjectAclSyncType? = nil,
            getObjectAttributesAsync: GetObjectAttributesAsyncType? = nil,
            getObjectAttributesSync: GetObjectAttributesSyncType? = nil,
            getObjectLegalHoldAsync: GetObjectLegalHoldAsyncType? = nil,
            getObjectLegalHoldSync: GetObjectLegalHoldSyncType? = nil,
            getObjectLockConfigurationAsync: GetObjectLockConfigurationAsyncType? = nil,
            getObjectLockConfigurationSync: GetObjectLockConfigurationSyncType? = nil,
            getObjectRetentionAsync: GetObjectRetentionAsyncType? = nil,
            getObjectRetentionSync: GetObjectRetentionSyncType? = nil,
            getObjectTaggingAsync: GetObjectTaggingAsyncType? = nil,
            getObjectTaggingSync: GetObjectTaggingSyncType? = nil,
            getObjectTorrentAsync: GetObjectTorrentAsyncType? = nil,
            getObjectTorrentSync: GetObjectTorrentSyncType? = nil,
            getPublicAccessBlockAsync: GetPublicAccessBlockAsyncType? = nil,
            getPublicAccessBlockSync: GetPublicAccessBlockSyncType? = nil,
            headBucketAsync: HeadBucketAsyncType? = nil,
            headBucketSync: HeadBucketSyncType? = nil,
            headObjectAsync: HeadObjectAsyncType? = nil,
            headObjectSync: HeadObjectSyncType? = nil,
            listBucketAnalyticsConfigurationsAsync: ListBucketAnalyticsConfigurationsAsyncType? = nil,
            listBucketAnalyticsConfigurationsSync: ListBucketAnalyticsConfigurationsSyncType? = nil,
            listBucketIntelligentTieringConfigurationsAsync: ListBucketIntelligentTieringConfigurationsAsyncType? = nil,
            listBucketIntelligentTieringConfigurationsSync: ListBucketIntelligentTieringConfigurationsSyncType? = nil,
            listBucketInventoryConfigurationsAsync: ListBucketInventoryConfigurationsAsyncType? = nil,
            listBucketInventoryConfigurationsSync: ListBucketInventoryConfigurationsSyncType? = nil,
            listBucketMetricsConfigurationsAsync: ListBucketMetricsConfigurationsAsyncType? = nil,
            listBucketMetricsConfigurationsSync: ListBucketMetricsConfigurationsSyncType? = nil,
            listBucketsAsync: ListBucketsAsyncType? = nil,
            listBucketsSync: ListBucketsSyncType? = nil,
            listMultipartUploadsAsync: ListMultipartUploadsAsyncType? = nil,
            listMultipartUploadsSync: ListMultipartUploadsSyncType? = nil,
            listObjectVersionsAsync: ListObjectVersionsAsyncType? = nil,
            listObjectVersionsSync: ListObjectVersionsSyncType? = nil,
            listObjectsAsync: ListObjectsAsyncType? = nil,
            listObjectsSync: ListObjectsSyncType? = nil,
            listObjectsV2Async: ListObjectsV2AsyncType? = nil,
            listObjectsV2Sync: ListObjectsV2SyncType? = nil,
            listPartsAsync: ListPartsAsyncType? = nil,
            listPartsSync: ListPartsSyncType? = nil,
            putBucketAccelerateConfigurationAsync: PutBucketAccelerateConfigurationAsyncType? = nil,
            putBucketAccelerateConfigurationSync: PutBucketAccelerateConfigurationSyncType? = nil,
            putBucketAclAsync: PutBucketAclAsyncType? = nil,
            putBucketAclSync: PutBucketAclSyncType? = nil,
            putBucketAnalyticsConfigurationAsync: PutBucketAnalyticsConfigurationAsyncType? = nil,
            putBucketAnalyticsConfigurationSync: PutBucketAnalyticsConfigurationSyncType? = nil,
            putBucketCorsAsync: PutBucketCorsAsyncType? = nil,
            putBucketCorsSync: PutBucketCorsSyncType? = nil,
            putBucketEncryptionAsync: PutBucketEncryptionAsyncType? = nil,
            putBucketEncryptionSync: PutBucketEncryptionSyncType? = nil,
            putBucketIntelligentTieringConfigurationAsync: PutBucketIntelligentTieringConfigurationAsyncType? = nil,
            putBucketIntelligentTieringConfigurationSync: PutBucketIntelligentTieringConfigurationSyncType? = nil,
            putBucketInventoryConfigurationAsync: PutBucketInventoryConfigurationAsyncType? = nil,
            putBucketInventoryConfigurationSync: PutBucketInventoryConfigurationSyncType? = nil,
            putBucketLifecycleAsync: PutBucketLifecycleAsyncType? = nil,
            putBucketLifecycleSync: PutBucketLifecycleSyncType? = nil,
            putBucketLifecycleConfigurationAsync: PutBucketLifecycleConfigurationAsyncType? = nil,
            putBucketLifecycleConfigurationSync: PutBucketLifecycleConfigurationSyncType? = nil,
            putBucketLoggingAsync: PutBucketLoggingAsyncType? = nil,
            putBucketLoggingSync: PutBucketLoggingSyncType? = nil,
            putBucketMetricsConfigurationAsync: PutBucketMetricsConfigurationAsyncType? = nil,
            putBucketMetricsConfigurationSync: PutBucketMetricsConfigurationSyncType? = nil,
            putBucketNotificationAsync: PutBucketNotificationAsyncType? = nil,
            putBucketNotificationSync: PutBucketNotificationSyncType? = nil,
            putBucketNotificationConfigurationAsync: PutBucketNotificationConfigurationAsyncType? = nil,
            putBucketNotificationConfigurationSync: PutBucketNotificationConfigurationSyncType? = nil,
            putBucketOwnershipControlsAsync: PutBucketOwnershipControlsAsyncType? = nil,
            putBucketOwnershipControlsSync: PutBucketOwnershipControlsSyncType? = nil,
            putBucketPolicyAsync: PutBucketPolicyAsyncType? = nil,
            putBucketPolicySync: PutBucketPolicySyncType? = nil,
            putBucketReplicationAsync: PutBucketReplicationAsyncType? = nil,
            putBucketReplicationSync: PutBucketReplicationSyncType? = nil,
            putBucketRequestPaymentAsync: PutBucketRequestPaymentAsyncType? = nil,
            putBucketRequestPaymentSync: PutBucketRequestPaymentSyncType? = nil,
            putBucketTaggingAsync: PutBucketTaggingAsyncType? = nil,
            putBucketTaggingSync: PutBucketTaggingSyncType? = nil,
            putBucketVersioningAsync: PutBucketVersioningAsyncType? = nil,
            putBucketVersioningSync: PutBucketVersioningSyncType? = nil,
            putBucketWebsiteAsync: PutBucketWebsiteAsyncType? = nil,
            putBucketWebsiteSync: PutBucketWebsiteSyncType? = nil,
            putObjectAsync: PutObjectAsyncType? = nil,
            putObjectSync: PutObjectSyncType? = nil,
            putObjectAclAsync: PutObjectAclAsyncType? = nil,
            putObjectAclSync: PutObjectAclSyncType? = nil,
            putObjectLegalHoldAsync: PutObjectLegalHoldAsyncType? = nil,
            putObjectLegalHoldSync: PutObjectLegalHoldSyncType? = nil,
            putObjectLockConfigurationAsync: PutObjectLockConfigurationAsyncType? = nil,
            putObjectLockConfigurationSync: PutObjectLockConfigurationSyncType? = nil,
            putObjectRetentionAsync: PutObjectRetentionAsyncType? = nil,
            putObjectRetentionSync: PutObjectRetentionSyncType? = nil,
            putObjectTaggingAsync: PutObjectTaggingAsyncType? = nil,
            putObjectTaggingSync: PutObjectTaggingSyncType? = nil,
            putPublicAccessBlockAsync: PutPublicAccessBlockAsyncType? = nil,
            putPublicAccessBlockSync: PutPublicAccessBlockSyncType? = nil,
            restoreObjectAsync: RestoreObjectAsyncType? = nil,
            restoreObjectSync: RestoreObjectSyncType? = nil,
            selectObjectContentAsync: SelectObjectContentAsyncType? = nil,
            selectObjectContentSync: SelectObjectContentSyncType? = nil,
            uploadPartAsync: UploadPartAsyncType? = nil,
            uploadPartSync: UploadPartSyncType? = nil,
            uploadPartCopyAsync: UploadPartCopyAsyncType? = nil,
            uploadPartCopySync: UploadPartCopySyncType? = nil,
            writeGetObjectResponseAsync: WriteGetObjectResponseAsyncType? = nil,
            writeGetObjectResponseSync: WriteGetObjectResponseSyncType? = nil) {
        self.error = error
        self.abortMultipartUploadAsyncOverride = abortMultipartUploadAsync
        self.abortMultipartUploadSyncOverride = abortMultipartUploadSync
        self.completeMultipartUploadAsyncOverride = completeMultipartUploadAsync
        self.completeMultipartUploadSyncOverride = completeMultipartUploadSync
        self.copyObjectAsyncOverride = copyObjectAsync
        self.copyObjectSyncOverride = copyObjectSync
        self.createBucketAsyncOverride = createBucketAsync
        self.createBucketSyncOverride = createBucketSync
        self.createMultipartUploadAsyncOverride = createMultipartUploadAsync
        self.createMultipartUploadSyncOverride = createMultipartUploadSync
        self.deleteBucketAsyncOverride = deleteBucketAsync
        self.deleteBucketSyncOverride = deleteBucketSync
        self.deleteBucketAnalyticsConfigurationAsyncOverride = deleteBucketAnalyticsConfigurationAsync
        self.deleteBucketAnalyticsConfigurationSyncOverride = deleteBucketAnalyticsConfigurationSync
        self.deleteBucketCorsAsyncOverride = deleteBucketCorsAsync
        self.deleteBucketCorsSyncOverride = deleteBucketCorsSync
        self.deleteBucketEncryptionAsyncOverride = deleteBucketEncryptionAsync
        self.deleteBucketEncryptionSyncOverride = deleteBucketEncryptionSync
        self.deleteBucketIntelligentTieringConfigurationAsyncOverride = deleteBucketIntelligentTieringConfigurationAsync
        self.deleteBucketIntelligentTieringConfigurationSyncOverride = deleteBucketIntelligentTieringConfigurationSync
        self.deleteBucketInventoryConfigurationAsyncOverride = deleteBucketInventoryConfigurationAsync
        self.deleteBucketInventoryConfigurationSyncOverride = deleteBucketInventoryConfigurationSync
        self.deleteBucketLifecycleAsyncOverride = deleteBucketLifecycleAsync
        self.deleteBucketLifecycleSyncOverride = deleteBucketLifecycleSync
        self.deleteBucketMetricsConfigurationAsyncOverride = deleteBucketMetricsConfigurationAsync
        self.deleteBucketMetricsConfigurationSyncOverride = deleteBucketMetricsConfigurationSync
        self.deleteBucketOwnershipControlsAsyncOverride = deleteBucketOwnershipControlsAsync
        self.deleteBucketOwnershipControlsSyncOverride = deleteBucketOwnershipControlsSync
        self.deleteBucketPolicyAsyncOverride = deleteBucketPolicyAsync
        self.deleteBucketPolicySyncOverride = deleteBucketPolicySync
        self.deleteBucketReplicationAsyncOverride = deleteBucketReplicationAsync
        self.deleteBucketReplicationSyncOverride = deleteBucketReplicationSync
        self.deleteBucketTaggingAsyncOverride = deleteBucketTaggingAsync
        self.deleteBucketTaggingSyncOverride = deleteBucketTaggingSync
        self.deleteBucketWebsiteAsyncOverride = deleteBucketWebsiteAsync
        self.deleteBucketWebsiteSyncOverride = deleteBucketWebsiteSync
        self.deleteObjectAsyncOverride = deleteObjectAsync
        self.deleteObjectSyncOverride = deleteObjectSync
        self.deleteObjectTaggingAsyncOverride = deleteObjectTaggingAsync
        self.deleteObjectTaggingSyncOverride = deleteObjectTaggingSync
        self.deleteObjectsAsyncOverride = deleteObjectsAsync
        self.deleteObjectsSyncOverride = deleteObjectsSync
        self.deletePublicAccessBlockAsyncOverride = deletePublicAccessBlockAsync
        self.deletePublicAccessBlockSyncOverride = deletePublicAccessBlockSync
        self.getBucketAccelerateConfigurationAsyncOverride = getBucketAccelerateConfigurationAsync
        self.getBucketAccelerateConfigurationSyncOverride = getBucketAccelerateConfigurationSync
        self.getBucketAclAsyncOverride = getBucketAclAsync
        self.getBucketAclSyncOverride = getBucketAclSync
        self.getBucketAnalyticsConfigurationAsyncOverride = getBucketAnalyticsConfigurationAsync
        self.getBucketAnalyticsConfigurationSyncOverride = getBucketAnalyticsConfigurationSync
        self.getBucketCorsAsyncOverride = getBucketCorsAsync
        self.getBucketCorsSyncOverride = getBucketCorsSync
        self.getBucketEncryptionAsyncOverride = getBucketEncryptionAsync
        self.getBucketEncryptionSyncOverride = getBucketEncryptionSync
        self.getBucketIntelligentTieringConfigurationAsyncOverride = getBucketIntelligentTieringConfigurationAsync
        self.getBucketIntelligentTieringConfigurationSyncOverride = getBucketIntelligentTieringConfigurationSync
        self.getBucketInventoryConfigurationAsyncOverride = getBucketInventoryConfigurationAsync
        self.getBucketInventoryConfigurationSyncOverride = getBucketInventoryConfigurationSync
        self.getBucketLifecycleAsyncOverride = getBucketLifecycleAsync
        self.getBucketLifecycleSyncOverride = getBucketLifecycleSync
        self.getBucketLifecycleConfigurationAsyncOverride = getBucketLifecycleConfigurationAsync
        self.getBucketLifecycleConfigurationSyncOverride = getBucketLifecycleConfigurationSync
        self.getBucketLocationAsyncOverride = getBucketLocationAsync
        self.getBucketLocationSyncOverride = getBucketLocationSync
        self.getBucketLoggingAsyncOverride = getBucketLoggingAsync
        self.getBucketLoggingSyncOverride = getBucketLoggingSync
        self.getBucketMetricsConfigurationAsyncOverride = getBucketMetricsConfigurationAsync
        self.getBucketMetricsConfigurationSyncOverride = getBucketMetricsConfigurationSync
        self.getBucketNotificationAsyncOverride = getBucketNotificationAsync
        self.getBucketNotificationSyncOverride = getBucketNotificationSync
        self.getBucketNotificationConfigurationAsyncOverride = getBucketNotificationConfigurationAsync
        self.getBucketNotificationConfigurationSyncOverride = getBucketNotificationConfigurationSync
        self.getBucketOwnershipControlsAsyncOverride = getBucketOwnershipControlsAsync
        self.getBucketOwnershipControlsSyncOverride = getBucketOwnershipControlsSync
        self.getBucketPolicyAsyncOverride = getBucketPolicyAsync
        self.getBucketPolicySyncOverride = getBucketPolicySync
        self.getBucketPolicyStatusAsyncOverride = getBucketPolicyStatusAsync
        self.getBucketPolicyStatusSyncOverride = getBucketPolicyStatusSync
        self.getBucketReplicationAsyncOverride = getBucketReplicationAsync
        self.getBucketReplicationSyncOverride = getBucketReplicationSync
        self.getBucketRequestPaymentAsyncOverride = getBucketRequestPaymentAsync
        self.getBucketRequestPaymentSyncOverride = getBucketRequestPaymentSync
        self.getBucketTaggingAsyncOverride = getBucketTaggingAsync
        self.getBucketTaggingSyncOverride = getBucketTaggingSync
        self.getBucketVersioningAsyncOverride = getBucketVersioningAsync
        self.getBucketVersioningSyncOverride = getBucketVersioningSync
        self.getBucketWebsiteAsyncOverride = getBucketWebsiteAsync
        self.getBucketWebsiteSyncOverride = getBucketWebsiteSync
        self.getObjectAsyncOverride = getObjectAsync
        self.getObjectSyncOverride = getObjectSync
        self.getObjectAclAsyncOverride = getObjectAclAsync
        self.getObjectAclSyncOverride = getObjectAclSync
        self.getObjectAttributesAsyncOverride = getObjectAttributesAsync
        self.getObjectAttributesSyncOverride = getObjectAttributesSync
        self.getObjectLegalHoldAsyncOverride = getObjectLegalHoldAsync
        self.getObjectLegalHoldSyncOverride = getObjectLegalHoldSync
        self.getObjectLockConfigurationAsyncOverride = getObjectLockConfigurationAsync
        self.getObjectLockConfigurationSyncOverride = getObjectLockConfigurationSync
        self.getObjectRetentionAsyncOverride = getObjectRetentionAsync
        self.getObjectRetentionSyncOverride = getObjectRetentionSync
        self.getObjectTaggingAsyncOverride = getObjectTaggingAsync
        self.getObjectTaggingSyncOverride = getObjectTaggingSync
        self.getObjectTorrentAsyncOverride = getObjectTorrentAsync
        self.getObjectTorrentSyncOverride = getObjectTorrentSync
        self.getPublicAccessBlockAsyncOverride = getPublicAccessBlockAsync
        self.getPublicAccessBlockSyncOverride = getPublicAccessBlockSync
        self.headBucketAsyncOverride = headBucketAsync
        self.headBucketSyncOverride = headBucketSync
        self.headObjectAsyncOverride = headObjectAsync
        self.headObjectSyncOverride = headObjectSync
        self.listBucketAnalyticsConfigurationsAsyncOverride = listBucketAnalyticsConfigurationsAsync
        self.listBucketAnalyticsConfigurationsSyncOverride = listBucketAnalyticsConfigurationsSync
        self.listBucketIntelligentTieringConfigurationsAsyncOverride = listBucketIntelligentTieringConfigurationsAsync
        self.listBucketIntelligentTieringConfigurationsSyncOverride = listBucketIntelligentTieringConfigurationsSync
        self.listBucketInventoryConfigurationsAsyncOverride = listBucketInventoryConfigurationsAsync
        self.listBucketInventoryConfigurationsSyncOverride = listBucketInventoryConfigurationsSync
        self.listBucketMetricsConfigurationsAsyncOverride = listBucketMetricsConfigurationsAsync
        self.listBucketMetricsConfigurationsSyncOverride = listBucketMetricsConfigurationsSync
        self.listBucketsAsyncOverride = listBucketsAsync
        self.listBucketsSyncOverride = listBucketsSync
        self.listMultipartUploadsAsyncOverride = listMultipartUploadsAsync
        self.listMultipartUploadsSyncOverride = listMultipartUploadsSync
        self.listObjectVersionsAsyncOverride = listObjectVersionsAsync
        self.listObjectVersionsSyncOverride = listObjectVersionsSync
        self.listObjectsAsyncOverride = listObjectsAsync
        self.listObjectsSyncOverride = listObjectsSync
        self.listObjectsV2AsyncOverride = listObjectsV2Async
        self.listObjectsV2SyncOverride = listObjectsV2Sync
        self.listPartsAsyncOverride = listPartsAsync
        self.listPartsSyncOverride = listPartsSync
        self.putBucketAccelerateConfigurationAsyncOverride = putBucketAccelerateConfigurationAsync
        self.putBucketAccelerateConfigurationSyncOverride = putBucketAccelerateConfigurationSync
        self.putBucketAclAsyncOverride = putBucketAclAsync
        self.putBucketAclSyncOverride = putBucketAclSync
        self.putBucketAnalyticsConfigurationAsyncOverride = putBucketAnalyticsConfigurationAsync
        self.putBucketAnalyticsConfigurationSyncOverride = putBucketAnalyticsConfigurationSync
        self.putBucketCorsAsyncOverride = putBucketCorsAsync
        self.putBucketCorsSyncOverride = putBucketCorsSync
        self.putBucketEncryptionAsyncOverride = putBucketEncryptionAsync
        self.putBucketEncryptionSyncOverride = putBucketEncryptionSync
        self.putBucketIntelligentTieringConfigurationAsyncOverride = putBucketIntelligentTieringConfigurationAsync
        self.putBucketIntelligentTieringConfigurationSyncOverride = putBucketIntelligentTieringConfigurationSync
        self.putBucketInventoryConfigurationAsyncOverride = putBucketInventoryConfigurationAsync
        self.putBucketInventoryConfigurationSyncOverride = putBucketInventoryConfigurationSync
        self.putBucketLifecycleAsyncOverride = putBucketLifecycleAsync
        self.putBucketLifecycleSyncOverride = putBucketLifecycleSync
        self.putBucketLifecycleConfigurationAsyncOverride = putBucketLifecycleConfigurationAsync
        self.putBucketLifecycleConfigurationSyncOverride = putBucketLifecycleConfigurationSync
        self.putBucketLoggingAsyncOverride = putBucketLoggingAsync
        self.putBucketLoggingSyncOverride = putBucketLoggingSync
        self.putBucketMetricsConfigurationAsyncOverride = putBucketMetricsConfigurationAsync
        self.putBucketMetricsConfigurationSyncOverride = putBucketMetricsConfigurationSync
        self.putBucketNotificationAsyncOverride = putBucketNotificationAsync
        self.putBucketNotificationSyncOverride = putBucketNotificationSync
        self.putBucketNotificationConfigurationAsyncOverride = putBucketNotificationConfigurationAsync
        self.putBucketNotificationConfigurationSyncOverride = putBucketNotificationConfigurationSync
        self.putBucketOwnershipControlsAsyncOverride = putBucketOwnershipControlsAsync
        self.putBucketOwnershipControlsSyncOverride = putBucketOwnershipControlsSync
        self.putBucketPolicyAsyncOverride = putBucketPolicyAsync
        self.putBucketPolicySyncOverride = putBucketPolicySync
        self.putBucketReplicationAsyncOverride = putBucketReplicationAsync
        self.putBucketReplicationSyncOverride = putBucketReplicationSync
        self.putBucketRequestPaymentAsyncOverride = putBucketRequestPaymentAsync
        self.putBucketRequestPaymentSyncOverride = putBucketRequestPaymentSync
        self.putBucketTaggingAsyncOverride = putBucketTaggingAsync
        self.putBucketTaggingSyncOverride = putBucketTaggingSync
        self.putBucketVersioningAsyncOverride = putBucketVersioningAsync
        self.putBucketVersioningSyncOverride = putBucketVersioningSync
        self.putBucketWebsiteAsyncOverride = putBucketWebsiteAsync
        self.putBucketWebsiteSyncOverride = putBucketWebsiteSync
        self.putObjectAsyncOverride = putObjectAsync
        self.putObjectSyncOverride = putObjectSync
        self.putObjectAclAsyncOverride = putObjectAclAsync
        self.putObjectAclSyncOverride = putObjectAclSync
        self.putObjectLegalHoldAsyncOverride = putObjectLegalHoldAsync
        self.putObjectLegalHoldSyncOverride = putObjectLegalHoldSync
        self.putObjectLockConfigurationAsyncOverride = putObjectLockConfigurationAsync
        self.putObjectLockConfigurationSyncOverride = putObjectLockConfigurationSync
        self.putObjectRetentionAsyncOverride = putObjectRetentionAsync
        self.putObjectRetentionSyncOverride = putObjectRetentionSync
        self.putObjectTaggingAsyncOverride = putObjectTaggingAsync
        self.putObjectTaggingSyncOverride = putObjectTaggingSync
        self.putPublicAccessBlockAsyncOverride = putPublicAccessBlockAsync
        self.putPublicAccessBlockSyncOverride = putPublicAccessBlockSync
        self.restoreObjectAsyncOverride = restoreObjectAsync
        self.restoreObjectSyncOverride = restoreObjectSync
        self.selectObjectContentAsyncOverride = selectObjectContentAsync
        self.selectObjectContentSyncOverride = selectObjectContentSync
        self.uploadPartAsyncOverride = uploadPartAsync
        self.uploadPartSyncOverride = uploadPartSync
        self.uploadPartCopyAsyncOverride = uploadPartCopyAsync
        self.uploadPartCopySyncOverride = uploadPartCopySync
        self.writeGetObjectResponseAsyncOverride = writeGetObjectResponseAsync
        self.writeGetObjectResponseSyncOverride = writeGetObjectResponseSync
    }

    /**
     Invokes the AbortMultipartUpload operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AbortMultipartUploadRequest object being passed to this operation.
         - completion: The AbortMultipartUploadOutput object or an error will be passed to this 
           callback when the operation is complete. The AbortMultipartUploadOutput
           object will be validated before being returned to caller.
           The possible errors are: noSuchUpload.
     */
    public func abortMultipartUploadAsync(
            input: S3Model.AbortMultipartUploadRequest, 
            completion: @escaping (Result<S3Model.AbortMultipartUploadOutput, S3Error>) -> ()) throws {
        if let abortMultipartUploadAsyncOverride = abortMultipartUploadAsyncOverride {
            return try abortMultipartUploadAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the AbortMultipartUpload operation waiting for the response before returning.

     - Parameters:
         - input: The validated AbortMultipartUploadRequest object being passed to this operation.
     - Returns: The AbortMultipartUploadOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchUpload.
     */
    public func abortMultipartUploadSync(
            input: S3Model.AbortMultipartUploadRequest) throws -> S3Model.AbortMultipartUploadOutput {
        if let abortMultipartUploadSyncOverride = abortMultipartUploadSyncOverride {
            return try abortMultipartUploadSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CompleteMultipartUpload operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CompleteMultipartUploadRequest object being passed to this operation.
         - completion: The CompleteMultipartUploadOutput object or an error will be passed to this 
           callback when the operation is complete. The CompleteMultipartUploadOutput
           object will be validated before being returned to caller.
     */
    public func completeMultipartUploadAsync(
            input: S3Model.CompleteMultipartUploadRequest, 
            completion: @escaping (Result<S3Model.CompleteMultipartUploadOutput, S3Error>) -> ()) throws {
        if let completeMultipartUploadAsyncOverride = completeMultipartUploadAsyncOverride {
            return try completeMultipartUploadAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CompleteMultipartUpload operation waiting for the response before returning.

     - Parameters:
         - input: The validated CompleteMultipartUploadRequest object being passed to this operation.
     - Returns: The CompleteMultipartUploadOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func completeMultipartUploadSync(
            input: S3Model.CompleteMultipartUploadRequest) throws -> S3Model.CompleteMultipartUploadOutput {
        if let completeMultipartUploadSyncOverride = completeMultipartUploadSyncOverride {
            return try completeMultipartUploadSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CopyObject operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyObjectRequest object being passed to this operation.
         - completion: The CopyObjectOutput object or an error will be passed to this 
           callback when the operation is complete. The CopyObjectOutput
           object will be validated before being returned to caller.
           The possible errors are: objectNotInActiveTier.
     */
    public func copyObjectAsync(
            input: S3Model.CopyObjectRequest, 
            completion: @escaping (Result<S3Model.CopyObjectOutput, S3Error>) -> ()) throws {
        if let copyObjectAsyncOverride = copyObjectAsyncOverride {
            return try copyObjectAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CopyObject operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyObjectRequest object being passed to this operation.
     - Returns: The CopyObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: objectNotInActiveTier.
     */
    public func copyObjectSync(
            input: S3Model.CopyObjectRequest) throws -> S3Model.CopyObjectOutput {
        if let copyObjectSyncOverride = copyObjectSyncOverride {
            return try copyObjectSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateBucket operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateBucketRequest object being passed to this operation.
         - completion: The CreateBucketOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateBucketOutput
           object will be validated before being returned to caller.
           The possible errors are: bucketAlreadyExists, bucketAlreadyOwnedByYou.
     */
    public func createBucketAsync(
            input: S3Model.CreateBucketRequest, 
            completion: @escaping (Result<S3Model.CreateBucketOutput, S3Error>) -> ()) throws {
        if let createBucketAsyncOverride = createBucketAsyncOverride {
            return try createBucketAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateBucket operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateBucketRequest object being passed to this operation.
     - Returns: The CreateBucketOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: bucketAlreadyExists, bucketAlreadyOwnedByYou.
     */
    public func createBucketSync(
            input: S3Model.CreateBucketRequest) throws -> S3Model.CreateBucketOutput {
        if let createBucketSyncOverride = createBucketSyncOverride {
            return try createBucketSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the CreateMultipartUpload operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateMultipartUploadRequest object being passed to this operation.
         - completion: The CreateMultipartUploadOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateMultipartUploadOutput
           object will be validated before being returned to caller.
     */
    public func createMultipartUploadAsync(
            input: S3Model.CreateMultipartUploadRequest, 
            completion: @escaping (Result<S3Model.CreateMultipartUploadOutput, S3Error>) -> ()) throws {
        if let createMultipartUploadAsyncOverride = createMultipartUploadAsyncOverride {
            return try createMultipartUploadAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the CreateMultipartUpload operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateMultipartUploadRequest object being passed to this operation.
     - Returns: The CreateMultipartUploadOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createMultipartUploadSync(
            input: S3Model.CreateMultipartUploadRequest) throws -> S3Model.CreateMultipartUploadOutput {
        if let createMultipartUploadSyncOverride = createMultipartUploadSyncOverride {
            return try createMultipartUploadSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteBucket operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteBucketAsync(
            input: S3Model.DeleteBucketRequest, 
            completion: @escaping (S3Error?) -> ()) throws {
        if let deleteBucketAsyncOverride = deleteBucketAsyncOverride {
            return try deleteBucketAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteBucket operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketRequest object being passed to this operation.
     */
    public func deleteBucketSync(
            input: S3Model.DeleteBucketRequest) throws {
        if let deleteBucketSyncOverride = deleteBucketSyncOverride {
            return try deleteBucketSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteBucketAnalyticsConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketAnalyticsConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteBucketAnalyticsConfigurationAsync(
            input: S3Model.DeleteBucketAnalyticsConfigurationRequest, 
            completion: @escaping (S3Error?) -> ()) throws {
        if let deleteBucketAnalyticsConfigurationAsyncOverride = deleteBucketAnalyticsConfigurationAsyncOverride {
            return try deleteBucketAnalyticsConfigurationAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteBucketAnalyticsConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketAnalyticsConfigurationRequest object being passed to this operation.
     */
    public func deleteBucketAnalyticsConfigurationSync(
            input: S3Model.DeleteBucketAnalyticsConfigurationRequest) throws {
        if let deleteBucketAnalyticsConfigurationSyncOverride = deleteBucketAnalyticsConfigurationSyncOverride {
            return try deleteBucketAnalyticsConfigurationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteBucketCors operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketCorsRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteBucketCorsAsync(
            input: S3Model.DeleteBucketCorsRequest, 
            completion: @escaping (S3Error?) -> ()) throws {
        if let deleteBucketCorsAsyncOverride = deleteBucketCorsAsyncOverride {
            return try deleteBucketCorsAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteBucketCors operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketCorsRequest object being passed to this operation.
     */
    public func deleteBucketCorsSync(
            input: S3Model.DeleteBucketCorsRequest) throws {
        if let deleteBucketCorsSyncOverride = deleteBucketCorsSyncOverride {
            return try deleteBucketCorsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteBucketEncryption operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketEncryptionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteBucketEncryptionAsync(
            input: S3Model.DeleteBucketEncryptionRequest, 
            completion: @escaping (S3Error?) -> ()) throws {
        if let deleteBucketEncryptionAsyncOverride = deleteBucketEncryptionAsyncOverride {
            return try deleteBucketEncryptionAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteBucketEncryption operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketEncryptionRequest object being passed to this operation.
     */
    public func deleteBucketEncryptionSync(
            input: S3Model.DeleteBucketEncryptionRequest) throws {
        if let deleteBucketEncryptionSyncOverride = deleteBucketEncryptionSyncOverride {
            return try deleteBucketEncryptionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteBucketIntelligentTieringConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketIntelligentTieringConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteBucketIntelligentTieringConfigurationAsync(
            input: S3Model.DeleteBucketIntelligentTieringConfigurationRequest, 
            completion: @escaping (S3Error?) -> ()) throws {
        if let deleteBucketIntelligentTieringConfigurationAsyncOverride = deleteBucketIntelligentTieringConfigurationAsyncOverride {
            return try deleteBucketIntelligentTieringConfigurationAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteBucketIntelligentTieringConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketIntelligentTieringConfigurationRequest object being passed to this operation.
     */
    public func deleteBucketIntelligentTieringConfigurationSync(
            input: S3Model.DeleteBucketIntelligentTieringConfigurationRequest) throws {
        if let deleteBucketIntelligentTieringConfigurationSyncOverride = deleteBucketIntelligentTieringConfigurationSyncOverride {
            return try deleteBucketIntelligentTieringConfigurationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteBucketInventoryConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketInventoryConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteBucketInventoryConfigurationAsync(
            input: S3Model.DeleteBucketInventoryConfigurationRequest, 
            completion: @escaping (S3Error?) -> ()) throws {
        if let deleteBucketInventoryConfigurationAsyncOverride = deleteBucketInventoryConfigurationAsyncOverride {
            return try deleteBucketInventoryConfigurationAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteBucketInventoryConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketInventoryConfigurationRequest object being passed to this operation.
     */
    public func deleteBucketInventoryConfigurationSync(
            input: S3Model.DeleteBucketInventoryConfigurationRequest) throws {
        if let deleteBucketInventoryConfigurationSyncOverride = deleteBucketInventoryConfigurationSyncOverride {
            return try deleteBucketInventoryConfigurationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteBucketLifecycle operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketLifecycleRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteBucketLifecycleAsync(
            input: S3Model.DeleteBucketLifecycleRequest, 
            completion: @escaping (S3Error?) -> ()) throws {
        if let deleteBucketLifecycleAsyncOverride = deleteBucketLifecycleAsyncOverride {
            return try deleteBucketLifecycleAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteBucketLifecycle operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketLifecycleRequest object being passed to this operation.
     */
    public func deleteBucketLifecycleSync(
            input: S3Model.DeleteBucketLifecycleRequest) throws {
        if let deleteBucketLifecycleSyncOverride = deleteBucketLifecycleSyncOverride {
            return try deleteBucketLifecycleSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteBucketMetricsConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketMetricsConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteBucketMetricsConfigurationAsync(
            input: S3Model.DeleteBucketMetricsConfigurationRequest, 
            completion: @escaping (S3Error?) -> ()) throws {
        if let deleteBucketMetricsConfigurationAsyncOverride = deleteBucketMetricsConfigurationAsyncOverride {
            return try deleteBucketMetricsConfigurationAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteBucketMetricsConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketMetricsConfigurationRequest object being passed to this operation.
     */
    public func deleteBucketMetricsConfigurationSync(
            input: S3Model.DeleteBucketMetricsConfigurationRequest) throws {
        if let deleteBucketMetricsConfigurationSyncOverride = deleteBucketMetricsConfigurationSyncOverride {
            return try deleteBucketMetricsConfigurationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteBucketOwnershipControls operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketOwnershipControlsRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteBucketOwnershipControlsAsync(
            input: S3Model.DeleteBucketOwnershipControlsRequest, 
            completion: @escaping (S3Error?) -> ()) throws {
        if let deleteBucketOwnershipControlsAsyncOverride = deleteBucketOwnershipControlsAsyncOverride {
            return try deleteBucketOwnershipControlsAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteBucketOwnershipControls operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketOwnershipControlsRequest object being passed to this operation.
     */
    public func deleteBucketOwnershipControlsSync(
            input: S3Model.DeleteBucketOwnershipControlsRequest) throws {
        if let deleteBucketOwnershipControlsSyncOverride = deleteBucketOwnershipControlsSyncOverride {
            return try deleteBucketOwnershipControlsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteBucketPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketPolicyRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteBucketPolicyAsync(
            input: S3Model.DeleteBucketPolicyRequest, 
            completion: @escaping (S3Error?) -> ()) throws {
        if let deleteBucketPolicyAsyncOverride = deleteBucketPolicyAsyncOverride {
            return try deleteBucketPolicyAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteBucketPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketPolicyRequest object being passed to this operation.
     */
    public func deleteBucketPolicySync(
            input: S3Model.DeleteBucketPolicyRequest) throws {
        if let deleteBucketPolicySyncOverride = deleteBucketPolicySyncOverride {
            return try deleteBucketPolicySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteBucketReplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketReplicationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteBucketReplicationAsync(
            input: S3Model.DeleteBucketReplicationRequest, 
            completion: @escaping (S3Error?) -> ()) throws {
        if let deleteBucketReplicationAsyncOverride = deleteBucketReplicationAsyncOverride {
            return try deleteBucketReplicationAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteBucketReplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketReplicationRequest object being passed to this operation.
     */
    public func deleteBucketReplicationSync(
            input: S3Model.DeleteBucketReplicationRequest) throws {
        if let deleteBucketReplicationSyncOverride = deleteBucketReplicationSyncOverride {
            return try deleteBucketReplicationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteBucketTagging operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketTaggingRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteBucketTaggingAsync(
            input: S3Model.DeleteBucketTaggingRequest, 
            completion: @escaping (S3Error?) -> ()) throws {
        if let deleteBucketTaggingAsyncOverride = deleteBucketTaggingAsyncOverride {
            return try deleteBucketTaggingAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteBucketTagging operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketTaggingRequest object being passed to this operation.
     */
    public func deleteBucketTaggingSync(
            input: S3Model.DeleteBucketTaggingRequest) throws {
        if let deleteBucketTaggingSyncOverride = deleteBucketTaggingSyncOverride {
            return try deleteBucketTaggingSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteBucketWebsite operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketWebsiteRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deleteBucketWebsiteAsync(
            input: S3Model.DeleteBucketWebsiteRequest, 
            completion: @escaping (S3Error?) -> ()) throws {
        if let deleteBucketWebsiteAsyncOverride = deleteBucketWebsiteAsyncOverride {
            return try deleteBucketWebsiteAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteBucketWebsite operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketWebsiteRequest object being passed to this operation.
     */
    public func deleteBucketWebsiteSync(
            input: S3Model.DeleteBucketWebsiteRequest) throws {
        if let deleteBucketWebsiteSyncOverride = deleteBucketWebsiteSyncOverride {
            return try deleteBucketWebsiteSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteObject operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteObjectRequest object being passed to this operation.
         - completion: The DeleteObjectOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteObjectOutput
           object will be validated before being returned to caller.
     */
    public func deleteObjectAsync(
            input: S3Model.DeleteObjectRequest, 
            completion: @escaping (Result<S3Model.DeleteObjectOutput, S3Error>) -> ()) throws {
        if let deleteObjectAsyncOverride = deleteObjectAsyncOverride {
            return try deleteObjectAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteObject operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteObjectRequest object being passed to this operation.
     - Returns: The DeleteObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteObjectSync(
            input: S3Model.DeleteObjectRequest) throws -> S3Model.DeleteObjectOutput {
        if let deleteObjectSyncOverride = deleteObjectSyncOverride {
            return try deleteObjectSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteObjectTagging operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteObjectTaggingRequest object being passed to this operation.
         - completion: The DeleteObjectTaggingOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteObjectTaggingOutput
           object will be validated before being returned to caller.
     */
    public func deleteObjectTaggingAsync(
            input: S3Model.DeleteObjectTaggingRequest, 
            completion: @escaping (Result<S3Model.DeleteObjectTaggingOutput, S3Error>) -> ()) throws {
        if let deleteObjectTaggingAsyncOverride = deleteObjectTaggingAsyncOverride {
            return try deleteObjectTaggingAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteObjectTagging operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteObjectTaggingRequest object being passed to this operation.
     - Returns: The DeleteObjectTaggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteObjectTaggingSync(
            input: S3Model.DeleteObjectTaggingRequest) throws -> S3Model.DeleteObjectTaggingOutput {
        if let deleteObjectTaggingSyncOverride = deleteObjectTaggingSyncOverride {
            return try deleteObjectTaggingSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeleteObjects operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteObjectsRequest object being passed to this operation.
         - completion: The DeleteObjectsOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteObjectsOutput
           object will be validated before being returned to caller.
     */
    public func deleteObjectsAsync(
            input: S3Model.DeleteObjectsRequest, 
            completion: @escaping (Result<S3Model.DeleteObjectsOutput, S3Error>) -> ()) throws {
        if let deleteObjectsAsyncOverride = deleteObjectsAsyncOverride {
            return try deleteObjectsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the DeleteObjects operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteObjectsRequest object being passed to this operation.
     - Returns: The DeleteObjectsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteObjectsSync(
            input: S3Model.DeleteObjectsRequest) throws -> S3Model.DeleteObjectsOutput {
        if let deleteObjectsSyncOverride = deleteObjectsSyncOverride {
            return try deleteObjectsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the DeletePublicAccessBlock operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeletePublicAccessBlockRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func deletePublicAccessBlockAsync(
            input: S3Model.DeletePublicAccessBlockRequest, 
            completion: @escaping (S3Error?) -> ()) throws {
        if let deletePublicAccessBlockAsyncOverride = deletePublicAccessBlockAsyncOverride {
            return try deletePublicAccessBlockAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeletePublicAccessBlock operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeletePublicAccessBlockRequest object being passed to this operation.
     */
    public func deletePublicAccessBlockSync(
            input: S3Model.DeletePublicAccessBlockRequest) throws {
        if let deletePublicAccessBlockSyncOverride = deletePublicAccessBlockSyncOverride {
            return try deletePublicAccessBlockSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetBucketAccelerateConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketAccelerateConfigurationRequest object being passed to this operation.
         - completion: The GetBucketAccelerateConfigurationOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketAccelerateConfigurationOutput
           object will be validated before being returned to caller.
     */
    public func getBucketAccelerateConfigurationAsync(
            input: S3Model.GetBucketAccelerateConfigurationRequest, 
            completion: @escaping (Result<S3Model.GetBucketAccelerateConfigurationOutput, S3Error>) -> ()) throws {
        if let getBucketAccelerateConfigurationAsyncOverride = getBucketAccelerateConfigurationAsyncOverride {
            return try getBucketAccelerateConfigurationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetBucketAccelerateConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketAccelerateConfigurationRequest object being passed to this operation.
     - Returns: The GetBucketAccelerateConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketAccelerateConfigurationSync(
            input: S3Model.GetBucketAccelerateConfigurationRequest) throws -> S3Model.GetBucketAccelerateConfigurationOutput {
        if let getBucketAccelerateConfigurationSyncOverride = getBucketAccelerateConfigurationSyncOverride {
            return try getBucketAccelerateConfigurationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetBucketAcl operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketAclRequest object being passed to this operation.
         - completion: The GetBucketAclOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketAclOutput
           object will be validated before being returned to caller.
     */
    public func getBucketAclAsync(
            input: S3Model.GetBucketAclRequest, 
            completion: @escaping (Result<S3Model.GetBucketAclOutput, S3Error>) -> ()) throws {
        if let getBucketAclAsyncOverride = getBucketAclAsyncOverride {
            return try getBucketAclAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetBucketAcl operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketAclRequest object being passed to this operation.
     - Returns: The GetBucketAclOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketAclSync(
            input: S3Model.GetBucketAclRequest) throws -> S3Model.GetBucketAclOutput {
        if let getBucketAclSyncOverride = getBucketAclSyncOverride {
            return try getBucketAclSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetBucketAnalyticsConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketAnalyticsConfigurationRequest object being passed to this operation.
         - completion: The GetBucketAnalyticsConfigurationOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketAnalyticsConfigurationOutput
           object will be validated before being returned to caller.
     */
    public func getBucketAnalyticsConfigurationAsync(
            input: S3Model.GetBucketAnalyticsConfigurationRequest, 
            completion: @escaping (Result<S3Model.GetBucketAnalyticsConfigurationOutput, S3Error>) -> ()) throws {
        if let getBucketAnalyticsConfigurationAsyncOverride = getBucketAnalyticsConfigurationAsyncOverride {
            return try getBucketAnalyticsConfigurationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetBucketAnalyticsConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketAnalyticsConfigurationRequest object being passed to this operation.
     - Returns: The GetBucketAnalyticsConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketAnalyticsConfigurationSync(
            input: S3Model.GetBucketAnalyticsConfigurationRequest) throws -> S3Model.GetBucketAnalyticsConfigurationOutput {
        if let getBucketAnalyticsConfigurationSyncOverride = getBucketAnalyticsConfigurationSyncOverride {
            return try getBucketAnalyticsConfigurationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetBucketCors operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketCorsRequest object being passed to this operation.
         - completion: The GetBucketCorsOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketCorsOutput
           object will be validated before being returned to caller.
     */
    public func getBucketCorsAsync(
            input: S3Model.GetBucketCorsRequest, 
            completion: @escaping (Result<S3Model.GetBucketCorsOutput, S3Error>) -> ()) throws {
        if let getBucketCorsAsyncOverride = getBucketCorsAsyncOverride {
            return try getBucketCorsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetBucketCors operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketCorsRequest object being passed to this operation.
     - Returns: The GetBucketCorsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketCorsSync(
            input: S3Model.GetBucketCorsRequest) throws -> S3Model.GetBucketCorsOutput {
        if let getBucketCorsSyncOverride = getBucketCorsSyncOverride {
            return try getBucketCorsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetBucketEncryption operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketEncryptionRequest object being passed to this operation.
         - completion: The GetBucketEncryptionOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketEncryptionOutput
           object will be validated before being returned to caller.
     */
    public func getBucketEncryptionAsync(
            input: S3Model.GetBucketEncryptionRequest, 
            completion: @escaping (Result<S3Model.GetBucketEncryptionOutput, S3Error>) -> ()) throws {
        if let getBucketEncryptionAsyncOverride = getBucketEncryptionAsyncOverride {
            return try getBucketEncryptionAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetBucketEncryption operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketEncryptionRequest object being passed to this operation.
     - Returns: The GetBucketEncryptionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketEncryptionSync(
            input: S3Model.GetBucketEncryptionRequest) throws -> S3Model.GetBucketEncryptionOutput {
        if let getBucketEncryptionSyncOverride = getBucketEncryptionSyncOverride {
            return try getBucketEncryptionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetBucketIntelligentTieringConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketIntelligentTieringConfigurationRequest object being passed to this operation.
         - completion: The GetBucketIntelligentTieringConfigurationOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketIntelligentTieringConfigurationOutput
           object will be validated before being returned to caller.
     */
    public func getBucketIntelligentTieringConfigurationAsync(
            input: S3Model.GetBucketIntelligentTieringConfigurationRequest, 
            completion: @escaping (Result<S3Model.GetBucketIntelligentTieringConfigurationOutput, S3Error>) -> ()) throws {
        if let getBucketIntelligentTieringConfigurationAsyncOverride = getBucketIntelligentTieringConfigurationAsyncOverride {
            return try getBucketIntelligentTieringConfigurationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetBucketIntelligentTieringConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketIntelligentTieringConfigurationRequest object being passed to this operation.
     - Returns: The GetBucketIntelligentTieringConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketIntelligentTieringConfigurationSync(
            input: S3Model.GetBucketIntelligentTieringConfigurationRequest) throws -> S3Model.GetBucketIntelligentTieringConfigurationOutput {
        if let getBucketIntelligentTieringConfigurationSyncOverride = getBucketIntelligentTieringConfigurationSyncOverride {
            return try getBucketIntelligentTieringConfigurationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetBucketInventoryConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketInventoryConfigurationRequest object being passed to this operation.
         - completion: The GetBucketInventoryConfigurationOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketInventoryConfigurationOutput
           object will be validated before being returned to caller.
     */
    public func getBucketInventoryConfigurationAsync(
            input: S3Model.GetBucketInventoryConfigurationRequest, 
            completion: @escaping (Result<S3Model.GetBucketInventoryConfigurationOutput, S3Error>) -> ()) throws {
        if let getBucketInventoryConfigurationAsyncOverride = getBucketInventoryConfigurationAsyncOverride {
            return try getBucketInventoryConfigurationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetBucketInventoryConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketInventoryConfigurationRequest object being passed to this operation.
     - Returns: The GetBucketInventoryConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketInventoryConfigurationSync(
            input: S3Model.GetBucketInventoryConfigurationRequest) throws -> S3Model.GetBucketInventoryConfigurationOutput {
        if let getBucketInventoryConfigurationSyncOverride = getBucketInventoryConfigurationSyncOverride {
            return try getBucketInventoryConfigurationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetBucketLifecycle operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketLifecycleRequest object being passed to this operation.
         - completion: The GetBucketLifecycleOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketLifecycleOutput
           object will be validated before being returned to caller.
     */
    public func getBucketLifecycleAsync(
            input: S3Model.GetBucketLifecycleRequest, 
            completion: @escaping (Result<S3Model.GetBucketLifecycleOutput, S3Error>) -> ()) throws {
        if let getBucketLifecycleAsyncOverride = getBucketLifecycleAsyncOverride {
            return try getBucketLifecycleAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetBucketLifecycle operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketLifecycleRequest object being passed to this operation.
     - Returns: The GetBucketLifecycleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketLifecycleSync(
            input: S3Model.GetBucketLifecycleRequest) throws -> S3Model.GetBucketLifecycleOutput {
        if let getBucketLifecycleSyncOverride = getBucketLifecycleSyncOverride {
            return try getBucketLifecycleSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetBucketLifecycleConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketLifecycleConfigurationRequest object being passed to this operation.
         - completion: The GetBucketLifecycleConfigurationOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketLifecycleConfigurationOutput
           object will be validated before being returned to caller.
     */
    public func getBucketLifecycleConfigurationAsync(
            input: S3Model.GetBucketLifecycleConfigurationRequest, 
            completion: @escaping (Result<S3Model.GetBucketLifecycleConfigurationOutput, S3Error>) -> ()) throws {
        if let getBucketLifecycleConfigurationAsyncOverride = getBucketLifecycleConfigurationAsyncOverride {
            return try getBucketLifecycleConfigurationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetBucketLifecycleConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketLifecycleConfigurationRequest object being passed to this operation.
     - Returns: The GetBucketLifecycleConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketLifecycleConfigurationSync(
            input: S3Model.GetBucketLifecycleConfigurationRequest) throws -> S3Model.GetBucketLifecycleConfigurationOutput {
        if let getBucketLifecycleConfigurationSyncOverride = getBucketLifecycleConfigurationSyncOverride {
            return try getBucketLifecycleConfigurationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetBucketLocation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketLocationRequest object being passed to this operation.
         - completion: The GetBucketLocationOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketLocationOutput
           object will be validated before being returned to caller.
     */
    public func getBucketLocationAsync(
            input: S3Model.GetBucketLocationRequest, 
            completion: @escaping (Result<S3Model.GetBucketLocationOutput, S3Error>) -> ()) throws {
        if let getBucketLocationAsyncOverride = getBucketLocationAsyncOverride {
            return try getBucketLocationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetBucketLocation operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketLocationRequest object being passed to this operation.
     - Returns: The GetBucketLocationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketLocationSync(
            input: S3Model.GetBucketLocationRequest) throws -> S3Model.GetBucketLocationOutput {
        if let getBucketLocationSyncOverride = getBucketLocationSyncOverride {
            return try getBucketLocationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetBucketLogging operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketLoggingRequest object being passed to this operation.
         - completion: The GetBucketLoggingOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketLoggingOutput
           object will be validated before being returned to caller.
     */
    public func getBucketLoggingAsync(
            input: S3Model.GetBucketLoggingRequest, 
            completion: @escaping (Result<S3Model.GetBucketLoggingOutput, S3Error>) -> ()) throws {
        if let getBucketLoggingAsyncOverride = getBucketLoggingAsyncOverride {
            return try getBucketLoggingAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetBucketLogging operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketLoggingRequest object being passed to this operation.
     - Returns: The GetBucketLoggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketLoggingSync(
            input: S3Model.GetBucketLoggingRequest) throws -> S3Model.GetBucketLoggingOutput {
        if let getBucketLoggingSyncOverride = getBucketLoggingSyncOverride {
            return try getBucketLoggingSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetBucketMetricsConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketMetricsConfigurationRequest object being passed to this operation.
         - completion: The GetBucketMetricsConfigurationOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketMetricsConfigurationOutput
           object will be validated before being returned to caller.
     */
    public func getBucketMetricsConfigurationAsync(
            input: S3Model.GetBucketMetricsConfigurationRequest, 
            completion: @escaping (Result<S3Model.GetBucketMetricsConfigurationOutput, S3Error>) -> ()) throws {
        if let getBucketMetricsConfigurationAsyncOverride = getBucketMetricsConfigurationAsyncOverride {
            return try getBucketMetricsConfigurationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetBucketMetricsConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketMetricsConfigurationRequest object being passed to this operation.
     - Returns: The GetBucketMetricsConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketMetricsConfigurationSync(
            input: S3Model.GetBucketMetricsConfigurationRequest) throws -> S3Model.GetBucketMetricsConfigurationOutput {
        if let getBucketMetricsConfigurationSyncOverride = getBucketMetricsConfigurationSyncOverride {
            return try getBucketMetricsConfigurationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetBucketNotification operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketNotificationConfigurationRequest object being passed to this operation.
         - completion: The NotificationConfigurationDeprecated object or an error will be passed to this 
           callback when the operation is complete. The NotificationConfigurationDeprecated
           object will be validated before being returned to caller.
     */
    public func getBucketNotificationAsync(
            input: S3Model.GetBucketNotificationConfigurationRequest, 
            completion: @escaping (Result<S3Model.NotificationConfigurationDeprecated, S3Error>) -> ()) throws {
        if let getBucketNotificationAsyncOverride = getBucketNotificationAsyncOverride {
            return try getBucketNotificationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetBucketNotification operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketNotificationConfigurationRequest object being passed to this operation.
     - Returns: The NotificationConfigurationDeprecated object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketNotificationSync(
            input: S3Model.GetBucketNotificationConfigurationRequest) throws -> S3Model.NotificationConfigurationDeprecated {
        if let getBucketNotificationSyncOverride = getBucketNotificationSyncOverride {
            return try getBucketNotificationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetBucketNotificationConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketNotificationConfigurationRequest object being passed to this operation.
         - completion: The NotificationConfiguration object or an error will be passed to this 
           callback when the operation is complete. The NotificationConfiguration
           object will be validated before being returned to caller.
     */
    public func getBucketNotificationConfigurationAsync(
            input: S3Model.GetBucketNotificationConfigurationRequest, 
            completion: @escaping (Result<S3Model.NotificationConfiguration, S3Error>) -> ()) throws {
        if let getBucketNotificationConfigurationAsyncOverride = getBucketNotificationConfigurationAsyncOverride {
            return try getBucketNotificationConfigurationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetBucketNotificationConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketNotificationConfigurationRequest object being passed to this operation.
     - Returns: The NotificationConfiguration object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketNotificationConfigurationSync(
            input: S3Model.GetBucketNotificationConfigurationRequest) throws -> S3Model.NotificationConfiguration {
        if let getBucketNotificationConfigurationSyncOverride = getBucketNotificationConfigurationSyncOverride {
            return try getBucketNotificationConfigurationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetBucketOwnershipControls operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketOwnershipControlsRequest object being passed to this operation.
         - completion: The GetBucketOwnershipControlsOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketOwnershipControlsOutput
           object will be validated before being returned to caller.
     */
    public func getBucketOwnershipControlsAsync(
            input: S3Model.GetBucketOwnershipControlsRequest, 
            completion: @escaping (Result<S3Model.GetBucketOwnershipControlsOutput, S3Error>) -> ()) throws {
        if let getBucketOwnershipControlsAsyncOverride = getBucketOwnershipControlsAsyncOverride {
            return try getBucketOwnershipControlsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetBucketOwnershipControls operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketOwnershipControlsRequest object being passed to this operation.
     - Returns: The GetBucketOwnershipControlsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketOwnershipControlsSync(
            input: S3Model.GetBucketOwnershipControlsRequest) throws -> S3Model.GetBucketOwnershipControlsOutput {
        if let getBucketOwnershipControlsSyncOverride = getBucketOwnershipControlsSyncOverride {
            return try getBucketOwnershipControlsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetBucketPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketPolicyRequest object being passed to this operation.
         - completion: The GetBucketPolicyOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketPolicyOutput
           object will be validated before being returned to caller.
     */
    public func getBucketPolicyAsync(
            input: S3Model.GetBucketPolicyRequest, 
            completion: @escaping (Result<S3Model.GetBucketPolicyOutput, S3Error>) -> ()) throws {
        if let getBucketPolicyAsyncOverride = getBucketPolicyAsyncOverride {
            return try getBucketPolicyAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetBucketPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketPolicyRequest object being passed to this operation.
     - Returns: The GetBucketPolicyOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketPolicySync(
            input: S3Model.GetBucketPolicyRequest) throws -> S3Model.GetBucketPolicyOutput {
        if let getBucketPolicySyncOverride = getBucketPolicySyncOverride {
            return try getBucketPolicySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetBucketPolicyStatus operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketPolicyStatusRequest object being passed to this operation.
         - completion: The GetBucketPolicyStatusOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketPolicyStatusOutput
           object will be validated before being returned to caller.
     */
    public func getBucketPolicyStatusAsync(
            input: S3Model.GetBucketPolicyStatusRequest, 
            completion: @escaping (Result<S3Model.GetBucketPolicyStatusOutput, S3Error>) -> ()) throws {
        if let getBucketPolicyStatusAsyncOverride = getBucketPolicyStatusAsyncOverride {
            return try getBucketPolicyStatusAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetBucketPolicyStatus operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketPolicyStatusRequest object being passed to this operation.
     - Returns: The GetBucketPolicyStatusOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketPolicyStatusSync(
            input: S3Model.GetBucketPolicyStatusRequest) throws -> S3Model.GetBucketPolicyStatusOutput {
        if let getBucketPolicyStatusSyncOverride = getBucketPolicyStatusSyncOverride {
            return try getBucketPolicyStatusSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetBucketReplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketReplicationRequest object being passed to this operation.
         - completion: The GetBucketReplicationOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketReplicationOutput
           object will be validated before being returned to caller.
     */
    public func getBucketReplicationAsync(
            input: S3Model.GetBucketReplicationRequest, 
            completion: @escaping (Result<S3Model.GetBucketReplicationOutput, S3Error>) -> ()) throws {
        if let getBucketReplicationAsyncOverride = getBucketReplicationAsyncOverride {
            return try getBucketReplicationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetBucketReplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketReplicationRequest object being passed to this operation.
     - Returns: The GetBucketReplicationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketReplicationSync(
            input: S3Model.GetBucketReplicationRequest) throws -> S3Model.GetBucketReplicationOutput {
        if let getBucketReplicationSyncOverride = getBucketReplicationSyncOverride {
            return try getBucketReplicationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetBucketRequestPayment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketRequestPaymentRequest object being passed to this operation.
         - completion: The GetBucketRequestPaymentOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketRequestPaymentOutput
           object will be validated before being returned to caller.
     */
    public func getBucketRequestPaymentAsync(
            input: S3Model.GetBucketRequestPaymentRequest, 
            completion: @escaping (Result<S3Model.GetBucketRequestPaymentOutput, S3Error>) -> ()) throws {
        if let getBucketRequestPaymentAsyncOverride = getBucketRequestPaymentAsyncOverride {
            return try getBucketRequestPaymentAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetBucketRequestPayment operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketRequestPaymentRequest object being passed to this operation.
     - Returns: The GetBucketRequestPaymentOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketRequestPaymentSync(
            input: S3Model.GetBucketRequestPaymentRequest) throws -> S3Model.GetBucketRequestPaymentOutput {
        if let getBucketRequestPaymentSyncOverride = getBucketRequestPaymentSyncOverride {
            return try getBucketRequestPaymentSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetBucketTagging operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketTaggingRequest object being passed to this operation.
         - completion: The GetBucketTaggingOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketTaggingOutput
           object will be validated before being returned to caller.
     */
    public func getBucketTaggingAsync(
            input: S3Model.GetBucketTaggingRequest, 
            completion: @escaping (Result<S3Model.GetBucketTaggingOutput, S3Error>) -> ()) throws {
        if let getBucketTaggingAsyncOverride = getBucketTaggingAsyncOverride {
            return try getBucketTaggingAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetBucketTagging operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketTaggingRequest object being passed to this operation.
     - Returns: The GetBucketTaggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketTaggingSync(
            input: S3Model.GetBucketTaggingRequest) throws -> S3Model.GetBucketTaggingOutput {
        if let getBucketTaggingSyncOverride = getBucketTaggingSyncOverride {
            return try getBucketTaggingSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetBucketVersioning operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketVersioningRequest object being passed to this operation.
         - completion: The GetBucketVersioningOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketVersioningOutput
           object will be validated before being returned to caller.
     */
    public func getBucketVersioningAsync(
            input: S3Model.GetBucketVersioningRequest, 
            completion: @escaping (Result<S3Model.GetBucketVersioningOutput, S3Error>) -> ()) throws {
        if let getBucketVersioningAsyncOverride = getBucketVersioningAsyncOverride {
            return try getBucketVersioningAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetBucketVersioning operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketVersioningRequest object being passed to this operation.
     - Returns: The GetBucketVersioningOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketVersioningSync(
            input: S3Model.GetBucketVersioningRequest) throws -> S3Model.GetBucketVersioningOutput {
        if let getBucketVersioningSyncOverride = getBucketVersioningSyncOverride {
            return try getBucketVersioningSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetBucketWebsite operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketWebsiteRequest object being passed to this operation.
         - completion: The GetBucketWebsiteOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketWebsiteOutput
           object will be validated before being returned to caller.
     */
    public func getBucketWebsiteAsync(
            input: S3Model.GetBucketWebsiteRequest, 
            completion: @escaping (Result<S3Model.GetBucketWebsiteOutput, S3Error>) -> ()) throws {
        if let getBucketWebsiteAsyncOverride = getBucketWebsiteAsyncOverride {
            return try getBucketWebsiteAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetBucketWebsite operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketWebsiteRequest object being passed to this operation.
     - Returns: The GetBucketWebsiteOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketWebsiteSync(
            input: S3Model.GetBucketWebsiteRequest) throws -> S3Model.GetBucketWebsiteOutput {
        if let getBucketWebsiteSyncOverride = getBucketWebsiteSyncOverride {
            return try getBucketWebsiteSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetObject operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetObjectRequest object being passed to this operation.
         - completion: The GetObjectOutput object or an error will be passed to this 
           callback when the operation is complete. The GetObjectOutput
           object will be validated before being returned to caller.
           The possible errors are: invalidObjectState, noSuchKey.
     */
    public func getObjectAsync(
            input: S3Model.GetObjectRequest, 
            completion: @escaping (Result<S3Model.GetObjectOutput, S3Error>) -> ()) throws {
        if let getObjectAsyncOverride = getObjectAsyncOverride {
            return try getObjectAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetObject operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetObjectRequest object being passed to this operation.
     - Returns: The GetObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: invalidObjectState, noSuchKey.
     */
    public func getObjectSync(
            input: S3Model.GetObjectRequest) throws -> S3Model.GetObjectOutput {
        if let getObjectSyncOverride = getObjectSyncOverride {
            return try getObjectSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetObjectAcl operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetObjectAclRequest object being passed to this operation.
         - completion: The GetObjectAclOutput object or an error will be passed to this 
           callback when the operation is complete. The GetObjectAclOutput
           object will be validated before being returned to caller.
           The possible errors are: noSuchKey.
     */
    public func getObjectAclAsync(
            input: S3Model.GetObjectAclRequest, 
            completion: @escaping (Result<S3Model.GetObjectAclOutput, S3Error>) -> ()) throws {
        if let getObjectAclAsyncOverride = getObjectAclAsyncOverride {
            return try getObjectAclAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetObjectAcl operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetObjectAclRequest object being passed to this operation.
     - Returns: The GetObjectAclOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchKey.
     */
    public func getObjectAclSync(
            input: S3Model.GetObjectAclRequest) throws -> S3Model.GetObjectAclOutput {
        if let getObjectAclSyncOverride = getObjectAclSyncOverride {
            return try getObjectAclSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetObjectAttributes operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetObjectAttributesRequest object being passed to this operation.
         - completion: The GetObjectAttributesOutput object or an error will be passed to this 
           callback when the operation is complete. The GetObjectAttributesOutput
           object will be validated before being returned to caller.
           The possible errors are: noSuchKey.
     */
    public func getObjectAttributesAsync(
            input: S3Model.GetObjectAttributesRequest, 
            completion: @escaping (Result<S3Model.GetObjectAttributesOutput, S3Error>) -> ()) throws {
        if let getObjectAttributesAsyncOverride = getObjectAttributesAsyncOverride {
            return try getObjectAttributesAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetObjectAttributes operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetObjectAttributesRequest object being passed to this operation.
     - Returns: The GetObjectAttributesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchKey.
     */
    public func getObjectAttributesSync(
            input: S3Model.GetObjectAttributesRequest) throws -> S3Model.GetObjectAttributesOutput {
        if let getObjectAttributesSyncOverride = getObjectAttributesSyncOverride {
            return try getObjectAttributesSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetObjectLegalHold operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetObjectLegalHoldRequest object being passed to this operation.
         - completion: The GetObjectLegalHoldOutput object or an error will be passed to this 
           callback when the operation is complete. The GetObjectLegalHoldOutput
           object will be validated before being returned to caller.
     */
    public func getObjectLegalHoldAsync(
            input: S3Model.GetObjectLegalHoldRequest, 
            completion: @escaping (Result<S3Model.GetObjectLegalHoldOutput, S3Error>) -> ()) throws {
        if let getObjectLegalHoldAsyncOverride = getObjectLegalHoldAsyncOverride {
            return try getObjectLegalHoldAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetObjectLegalHold operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetObjectLegalHoldRequest object being passed to this operation.
     - Returns: The GetObjectLegalHoldOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getObjectLegalHoldSync(
            input: S3Model.GetObjectLegalHoldRequest) throws -> S3Model.GetObjectLegalHoldOutput {
        if let getObjectLegalHoldSyncOverride = getObjectLegalHoldSyncOverride {
            return try getObjectLegalHoldSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetObjectLockConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetObjectLockConfigurationRequest object being passed to this operation.
         - completion: The GetObjectLockConfigurationOutput object or an error will be passed to this 
           callback when the operation is complete. The GetObjectLockConfigurationOutput
           object will be validated before being returned to caller.
     */
    public func getObjectLockConfigurationAsync(
            input: S3Model.GetObjectLockConfigurationRequest, 
            completion: @escaping (Result<S3Model.GetObjectLockConfigurationOutput, S3Error>) -> ()) throws {
        if let getObjectLockConfigurationAsyncOverride = getObjectLockConfigurationAsyncOverride {
            return try getObjectLockConfigurationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetObjectLockConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetObjectLockConfigurationRequest object being passed to this operation.
     - Returns: The GetObjectLockConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getObjectLockConfigurationSync(
            input: S3Model.GetObjectLockConfigurationRequest) throws -> S3Model.GetObjectLockConfigurationOutput {
        if let getObjectLockConfigurationSyncOverride = getObjectLockConfigurationSyncOverride {
            return try getObjectLockConfigurationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetObjectRetention operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetObjectRetentionRequest object being passed to this operation.
         - completion: The GetObjectRetentionOutput object or an error will be passed to this 
           callback when the operation is complete. The GetObjectRetentionOutput
           object will be validated before being returned to caller.
     */
    public func getObjectRetentionAsync(
            input: S3Model.GetObjectRetentionRequest, 
            completion: @escaping (Result<S3Model.GetObjectRetentionOutput, S3Error>) -> ()) throws {
        if let getObjectRetentionAsyncOverride = getObjectRetentionAsyncOverride {
            return try getObjectRetentionAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetObjectRetention operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetObjectRetentionRequest object being passed to this operation.
     - Returns: The GetObjectRetentionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getObjectRetentionSync(
            input: S3Model.GetObjectRetentionRequest) throws -> S3Model.GetObjectRetentionOutput {
        if let getObjectRetentionSyncOverride = getObjectRetentionSyncOverride {
            return try getObjectRetentionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetObjectTagging operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetObjectTaggingRequest object being passed to this operation.
         - completion: The GetObjectTaggingOutput object or an error will be passed to this 
           callback when the operation is complete. The GetObjectTaggingOutput
           object will be validated before being returned to caller.
     */
    public func getObjectTaggingAsync(
            input: S3Model.GetObjectTaggingRequest, 
            completion: @escaping (Result<S3Model.GetObjectTaggingOutput, S3Error>) -> ()) throws {
        if let getObjectTaggingAsyncOverride = getObjectTaggingAsyncOverride {
            return try getObjectTaggingAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetObjectTagging operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetObjectTaggingRequest object being passed to this operation.
     - Returns: The GetObjectTaggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getObjectTaggingSync(
            input: S3Model.GetObjectTaggingRequest) throws -> S3Model.GetObjectTaggingOutput {
        if let getObjectTaggingSyncOverride = getObjectTaggingSyncOverride {
            return try getObjectTaggingSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetObjectTorrent operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetObjectTorrentRequest object being passed to this operation.
         - completion: The GetObjectTorrentOutput object or an error will be passed to this 
           callback when the operation is complete. The GetObjectTorrentOutput
           object will be validated before being returned to caller.
     */
    public func getObjectTorrentAsync(
            input: S3Model.GetObjectTorrentRequest, 
            completion: @escaping (Result<S3Model.GetObjectTorrentOutput, S3Error>) -> ()) throws {
        if let getObjectTorrentAsyncOverride = getObjectTorrentAsyncOverride {
            return try getObjectTorrentAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetObjectTorrent operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetObjectTorrentRequest object being passed to this operation.
     - Returns: The GetObjectTorrentOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getObjectTorrentSync(
            input: S3Model.GetObjectTorrentRequest) throws -> S3Model.GetObjectTorrentOutput {
        if let getObjectTorrentSyncOverride = getObjectTorrentSyncOverride {
            return try getObjectTorrentSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the GetPublicAccessBlock operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetPublicAccessBlockRequest object being passed to this operation.
         - completion: The GetPublicAccessBlockOutput object or an error will be passed to this 
           callback when the operation is complete. The GetPublicAccessBlockOutput
           object will be validated before being returned to caller.
     */
    public func getPublicAccessBlockAsync(
            input: S3Model.GetPublicAccessBlockRequest, 
            completion: @escaping (Result<S3Model.GetPublicAccessBlockOutput, S3Error>) -> ()) throws {
        if let getPublicAccessBlockAsyncOverride = getPublicAccessBlockAsyncOverride {
            return try getPublicAccessBlockAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetPublicAccessBlock operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetPublicAccessBlockRequest object being passed to this operation.
     - Returns: The GetPublicAccessBlockOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getPublicAccessBlockSync(
            input: S3Model.GetPublicAccessBlockRequest) throws -> S3Model.GetPublicAccessBlockOutput {
        if let getPublicAccessBlockSyncOverride = getPublicAccessBlockSyncOverride {
            return try getPublicAccessBlockSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the HeadBucket operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated HeadBucketRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: noSuchBucket.
     */
    public func headBucketAsync(
            input: S3Model.HeadBucketRequest, 
            completion: @escaping (S3Error?) -> ()) throws {
        if let headBucketAsyncOverride = headBucketAsyncOverride {
            return try headBucketAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the HeadBucket operation waiting for the response before returning.

     - Parameters:
         - input: The validated HeadBucketRequest object being passed to this operation.
     - Throws: noSuchBucket.
     */
    public func headBucketSync(
            input: S3Model.HeadBucketRequest) throws {
        if let headBucketSyncOverride = headBucketSyncOverride {
            return try headBucketSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the HeadObject operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated HeadObjectRequest object being passed to this operation.
         - completion: The HeadObjectOutput object or an error will be passed to this 
           callback when the operation is complete. The HeadObjectOutput
           object will be validated before being returned to caller.
           The possible errors are: noSuchKey.
     */
    public func headObjectAsync(
            input: S3Model.HeadObjectRequest, 
            completion: @escaping (Result<S3Model.HeadObjectOutput, S3Error>) -> ()) throws {
        if let headObjectAsyncOverride = headObjectAsyncOverride {
            return try headObjectAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the HeadObject operation waiting for the response before returning.

     - Parameters:
         - input: The validated HeadObjectRequest object being passed to this operation.
     - Returns: The HeadObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchKey.
     */
    public func headObjectSync(
            input: S3Model.HeadObjectRequest) throws -> S3Model.HeadObjectOutput {
        if let headObjectSyncOverride = headObjectSyncOverride {
            return try headObjectSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListBucketAnalyticsConfigurations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListBucketAnalyticsConfigurationsRequest object being passed to this operation.
         - completion: The ListBucketAnalyticsConfigurationsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListBucketAnalyticsConfigurationsOutput
           object will be validated before being returned to caller.
     */
    public func listBucketAnalyticsConfigurationsAsync(
            input: S3Model.ListBucketAnalyticsConfigurationsRequest, 
            completion: @escaping (Result<S3Model.ListBucketAnalyticsConfigurationsOutput, S3Error>) -> ()) throws {
        if let listBucketAnalyticsConfigurationsAsyncOverride = listBucketAnalyticsConfigurationsAsyncOverride {
            return try listBucketAnalyticsConfigurationsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListBucketAnalyticsConfigurations operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListBucketAnalyticsConfigurationsRequest object being passed to this operation.
     - Returns: The ListBucketAnalyticsConfigurationsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listBucketAnalyticsConfigurationsSync(
            input: S3Model.ListBucketAnalyticsConfigurationsRequest) throws -> S3Model.ListBucketAnalyticsConfigurationsOutput {
        if let listBucketAnalyticsConfigurationsSyncOverride = listBucketAnalyticsConfigurationsSyncOverride {
            return try listBucketAnalyticsConfigurationsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListBucketIntelligentTieringConfigurations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListBucketIntelligentTieringConfigurationsRequest object being passed to this operation.
         - completion: The ListBucketIntelligentTieringConfigurationsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListBucketIntelligentTieringConfigurationsOutput
           object will be validated before being returned to caller.
     */
    public func listBucketIntelligentTieringConfigurationsAsync(
            input: S3Model.ListBucketIntelligentTieringConfigurationsRequest, 
            completion: @escaping (Result<S3Model.ListBucketIntelligentTieringConfigurationsOutput, S3Error>) -> ()) throws {
        if let listBucketIntelligentTieringConfigurationsAsyncOverride = listBucketIntelligentTieringConfigurationsAsyncOverride {
            return try listBucketIntelligentTieringConfigurationsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListBucketIntelligentTieringConfigurations operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListBucketIntelligentTieringConfigurationsRequest object being passed to this operation.
     - Returns: The ListBucketIntelligentTieringConfigurationsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listBucketIntelligentTieringConfigurationsSync(
            input: S3Model.ListBucketIntelligentTieringConfigurationsRequest) throws -> S3Model.ListBucketIntelligentTieringConfigurationsOutput {
        if let listBucketIntelligentTieringConfigurationsSyncOverride = listBucketIntelligentTieringConfigurationsSyncOverride {
            return try listBucketIntelligentTieringConfigurationsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListBucketInventoryConfigurations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListBucketInventoryConfigurationsRequest object being passed to this operation.
         - completion: The ListBucketInventoryConfigurationsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListBucketInventoryConfigurationsOutput
           object will be validated before being returned to caller.
     */
    public func listBucketInventoryConfigurationsAsync(
            input: S3Model.ListBucketInventoryConfigurationsRequest, 
            completion: @escaping (Result<S3Model.ListBucketInventoryConfigurationsOutput, S3Error>) -> ()) throws {
        if let listBucketInventoryConfigurationsAsyncOverride = listBucketInventoryConfigurationsAsyncOverride {
            return try listBucketInventoryConfigurationsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListBucketInventoryConfigurations operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListBucketInventoryConfigurationsRequest object being passed to this operation.
     - Returns: The ListBucketInventoryConfigurationsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listBucketInventoryConfigurationsSync(
            input: S3Model.ListBucketInventoryConfigurationsRequest) throws -> S3Model.ListBucketInventoryConfigurationsOutput {
        if let listBucketInventoryConfigurationsSyncOverride = listBucketInventoryConfigurationsSyncOverride {
            return try listBucketInventoryConfigurationsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListBucketMetricsConfigurations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListBucketMetricsConfigurationsRequest object being passed to this operation.
         - completion: The ListBucketMetricsConfigurationsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListBucketMetricsConfigurationsOutput
           object will be validated before being returned to caller.
     */
    public func listBucketMetricsConfigurationsAsync(
            input: S3Model.ListBucketMetricsConfigurationsRequest, 
            completion: @escaping (Result<S3Model.ListBucketMetricsConfigurationsOutput, S3Error>) -> ()) throws {
        if let listBucketMetricsConfigurationsAsyncOverride = listBucketMetricsConfigurationsAsyncOverride {
            return try listBucketMetricsConfigurationsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListBucketMetricsConfigurations operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListBucketMetricsConfigurationsRequest object being passed to this operation.
     - Returns: The ListBucketMetricsConfigurationsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listBucketMetricsConfigurationsSync(
            input: S3Model.ListBucketMetricsConfigurationsRequest) throws -> S3Model.ListBucketMetricsConfigurationsOutput {
        if let listBucketMetricsConfigurationsSyncOverride = listBucketMetricsConfigurationsSyncOverride {
            return try listBucketMetricsConfigurationsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListBuckets operation returning immediately and passing the response to a callback.
         - completion: The ListBucketsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListBucketsOutput
           object will be validated before being returned to caller.
     */
    public func listBucketsAsync(
            completion: @escaping (Result<S3Model.ListBucketsOutput, S3Error>) -> ()) throws {
        if let listBucketsAsyncOverride = listBucketsAsyncOverride {
            return try listBucketsAsyncOverride(completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListBuckets operation waiting for the response before returning.
     - Returns: The ListBucketsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listBucketsSync() throws -> S3Model.ListBucketsOutput {
        if let listBucketsSyncOverride = listBucketsSyncOverride {
            return try listBucketsSyncOverride()
        }

        throw error
    }

    /**
     Invokes the ListMultipartUploads operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListMultipartUploadsRequest object being passed to this operation.
         - completion: The ListMultipartUploadsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListMultipartUploadsOutput
           object will be validated before being returned to caller.
     */
    public func listMultipartUploadsAsync(
            input: S3Model.ListMultipartUploadsRequest, 
            completion: @escaping (Result<S3Model.ListMultipartUploadsOutput, S3Error>) -> ()) throws {
        if let listMultipartUploadsAsyncOverride = listMultipartUploadsAsyncOverride {
            return try listMultipartUploadsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListMultipartUploads operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListMultipartUploadsRequest object being passed to this operation.
     - Returns: The ListMultipartUploadsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listMultipartUploadsSync(
            input: S3Model.ListMultipartUploadsRequest) throws -> S3Model.ListMultipartUploadsOutput {
        if let listMultipartUploadsSyncOverride = listMultipartUploadsSyncOverride {
            return try listMultipartUploadsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListObjectVersions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListObjectVersionsRequest object being passed to this operation.
         - completion: The ListObjectVersionsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListObjectVersionsOutput
           object will be validated before being returned to caller.
     */
    public func listObjectVersionsAsync(
            input: S3Model.ListObjectVersionsRequest, 
            completion: @escaping (Result<S3Model.ListObjectVersionsOutput, S3Error>) -> ()) throws {
        if let listObjectVersionsAsyncOverride = listObjectVersionsAsyncOverride {
            return try listObjectVersionsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListObjectVersions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListObjectVersionsRequest object being passed to this operation.
     - Returns: The ListObjectVersionsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listObjectVersionsSync(
            input: S3Model.ListObjectVersionsRequest) throws -> S3Model.ListObjectVersionsOutput {
        if let listObjectVersionsSyncOverride = listObjectVersionsSyncOverride {
            return try listObjectVersionsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListObjects operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListObjectsRequest object being passed to this operation.
         - completion: The ListObjectsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListObjectsOutput
           object will be validated before being returned to caller.
           The possible errors are: noSuchBucket.
     */
    public func listObjectsAsync(
            input: S3Model.ListObjectsRequest, 
            completion: @escaping (Result<S3Model.ListObjectsOutput, S3Error>) -> ()) throws {
        if let listObjectsAsyncOverride = listObjectsAsyncOverride {
            return try listObjectsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListObjects operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListObjectsRequest object being passed to this operation.
     - Returns: The ListObjectsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchBucket.
     */
    public func listObjectsSync(
            input: S3Model.ListObjectsRequest) throws -> S3Model.ListObjectsOutput {
        if let listObjectsSyncOverride = listObjectsSyncOverride {
            return try listObjectsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListObjectsV2 operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListObjectsV2Request object being passed to this operation.
         - completion: The ListObjectsV2Output object or an error will be passed to this 
           callback when the operation is complete. The ListObjectsV2Output
           object will be validated before being returned to caller.
           The possible errors are: noSuchBucket.
     */
    public func listObjectsV2Async(
            input: S3Model.ListObjectsV2Request, 
            completion: @escaping (Result<S3Model.ListObjectsV2Output, S3Error>) -> ()) throws {
        if let listObjectsV2AsyncOverride = listObjectsV2AsyncOverride {
            return try listObjectsV2AsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListObjectsV2 operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListObjectsV2Request object being passed to this operation.
     - Returns: The ListObjectsV2Output object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchBucket.
     */
    public func listObjectsV2Sync(
            input: S3Model.ListObjectsV2Request) throws -> S3Model.ListObjectsV2Output {
        if let listObjectsV2SyncOverride = listObjectsV2SyncOverride {
            return try listObjectsV2SyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the ListParts operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListPartsRequest object being passed to this operation.
         - completion: The ListPartsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListPartsOutput
           object will be validated before being returned to caller.
     */
    public func listPartsAsync(
            input: S3Model.ListPartsRequest, 
            completion: @escaping (Result<S3Model.ListPartsOutput, S3Error>) -> ()) throws {
        if let listPartsAsyncOverride = listPartsAsyncOverride {
            return try listPartsAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListParts operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListPartsRequest object being passed to this operation.
     - Returns: The ListPartsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listPartsSync(
            input: S3Model.ListPartsRequest) throws -> S3Model.ListPartsOutput {
        if let listPartsSyncOverride = listPartsSyncOverride {
            return try listPartsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutBucketAccelerateConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketAccelerateConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putBucketAccelerateConfigurationAsync(
            input: S3Model.PutBucketAccelerateConfigurationRequest, 
            completion: @escaping (S3Error?) -> ()) throws {
        if let putBucketAccelerateConfigurationAsyncOverride = putBucketAccelerateConfigurationAsyncOverride {
            return try putBucketAccelerateConfigurationAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutBucketAccelerateConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketAccelerateConfigurationRequest object being passed to this operation.
     */
    public func putBucketAccelerateConfigurationSync(
            input: S3Model.PutBucketAccelerateConfigurationRequest) throws {
        if let putBucketAccelerateConfigurationSyncOverride = putBucketAccelerateConfigurationSyncOverride {
            return try putBucketAccelerateConfigurationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutBucketAcl operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketAclRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putBucketAclAsync(
            input: S3Model.PutBucketAclRequest, 
            completion: @escaping (S3Error?) -> ()) throws {
        if let putBucketAclAsyncOverride = putBucketAclAsyncOverride {
            return try putBucketAclAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutBucketAcl operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketAclRequest object being passed to this operation.
     */
    public func putBucketAclSync(
            input: S3Model.PutBucketAclRequest) throws {
        if let putBucketAclSyncOverride = putBucketAclSyncOverride {
            return try putBucketAclSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutBucketAnalyticsConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketAnalyticsConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putBucketAnalyticsConfigurationAsync(
            input: S3Model.PutBucketAnalyticsConfigurationRequest, 
            completion: @escaping (S3Error?) -> ()) throws {
        if let putBucketAnalyticsConfigurationAsyncOverride = putBucketAnalyticsConfigurationAsyncOverride {
            return try putBucketAnalyticsConfigurationAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutBucketAnalyticsConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketAnalyticsConfigurationRequest object being passed to this operation.
     */
    public func putBucketAnalyticsConfigurationSync(
            input: S3Model.PutBucketAnalyticsConfigurationRequest) throws {
        if let putBucketAnalyticsConfigurationSyncOverride = putBucketAnalyticsConfigurationSyncOverride {
            return try putBucketAnalyticsConfigurationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutBucketCors operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketCorsRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putBucketCorsAsync(
            input: S3Model.PutBucketCorsRequest, 
            completion: @escaping (S3Error?) -> ()) throws {
        if let putBucketCorsAsyncOverride = putBucketCorsAsyncOverride {
            return try putBucketCorsAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutBucketCors operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketCorsRequest object being passed to this operation.
     */
    public func putBucketCorsSync(
            input: S3Model.PutBucketCorsRequest) throws {
        if let putBucketCorsSyncOverride = putBucketCorsSyncOverride {
            return try putBucketCorsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutBucketEncryption operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketEncryptionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putBucketEncryptionAsync(
            input: S3Model.PutBucketEncryptionRequest, 
            completion: @escaping (S3Error?) -> ()) throws {
        if let putBucketEncryptionAsyncOverride = putBucketEncryptionAsyncOverride {
            return try putBucketEncryptionAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutBucketEncryption operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketEncryptionRequest object being passed to this operation.
     */
    public func putBucketEncryptionSync(
            input: S3Model.PutBucketEncryptionRequest) throws {
        if let putBucketEncryptionSyncOverride = putBucketEncryptionSyncOverride {
            return try putBucketEncryptionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutBucketIntelligentTieringConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketIntelligentTieringConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putBucketIntelligentTieringConfigurationAsync(
            input: S3Model.PutBucketIntelligentTieringConfigurationRequest, 
            completion: @escaping (S3Error?) -> ()) throws {
        if let putBucketIntelligentTieringConfigurationAsyncOverride = putBucketIntelligentTieringConfigurationAsyncOverride {
            return try putBucketIntelligentTieringConfigurationAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutBucketIntelligentTieringConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketIntelligentTieringConfigurationRequest object being passed to this operation.
     */
    public func putBucketIntelligentTieringConfigurationSync(
            input: S3Model.PutBucketIntelligentTieringConfigurationRequest) throws {
        if let putBucketIntelligentTieringConfigurationSyncOverride = putBucketIntelligentTieringConfigurationSyncOverride {
            return try putBucketIntelligentTieringConfigurationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutBucketInventoryConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketInventoryConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putBucketInventoryConfigurationAsync(
            input: S3Model.PutBucketInventoryConfigurationRequest, 
            completion: @escaping (S3Error?) -> ()) throws {
        if let putBucketInventoryConfigurationAsyncOverride = putBucketInventoryConfigurationAsyncOverride {
            return try putBucketInventoryConfigurationAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutBucketInventoryConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketInventoryConfigurationRequest object being passed to this operation.
     */
    public func putBucketInventoryConfigurationSync(
            input: S3Model.PutBucketInventoryConfigurationRequest) throws {
        if let putBucketInventoryConfigurationSyncOverride = putBucketInventoryConfigurationSyncOverride {
            return try putBucketInventoryConfigurationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutBucketLifecycle operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketLifecycleRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putBucketLifecycleAsync(
            input: S3Model.PutBucketLifecycleRequest, 
            completion: @escaping (S3Error?) -> ()) throws {
        if let putBucketLifecycleAsyncOverride = putBucketLifecycleAsyncOverride {
            return try putBucketLifecycleAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutBucketLifecycle operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketLifecycleRequest object being passed to this operation.
     */
    public func putBucketLifecycleSync(
            input: S3Model.PutBucketLifecycleRequest) throws {
        if let putBucketLifecycleSyncOverride = putBucketLifecycleSyncOverride {
            return try putBucketLifecycleSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutBucketLifecycleConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketLifecycleConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putBucketLifecycleConfigurationAsync(
            input: S3Model.PutBucketLifecycleConfigurationRequest, 
            completion: @escaping (S3Error?) -> ()) throws {
        if let putBucketLifecycleConfigurationAsyncOverride = putBucketLifecycleConfigurationAsyncOverride {
            return try putBucketLifecycleConfigurationAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutBucketLifecycleConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketLifecycleConfigurationRequest object being passed to this operation.
     */
    public func putBucketLifecycleConfigurationSync(
            input: S3Model.PutBucketLifecycleConfigurationRequest) throws {
        if let putBucketLifecycleConfigurationSyncOverride = putBucketLifecycleConfigurationSyncOverride {
            return try putBucketLifecycleConfigurationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutBucketLogging operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketLoggingRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putBucketLoggingAsync(
            input: S3Model.PutBucketLoggingRequest, 
            completion: @escaping (S3Error?) -> ()) throws {
        if let putBucketLoggingAsyncOverride = putBucketLoggingAsyncOverride {
            return try putBucketLoggingAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutBucketLogging operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketLoggingRequest object being passed to this operation.
     */
    public func putBucketLoggingSync(
            input: S3Model.PutBucketLoggingRequest) throws {
        if let putBucketLoggingSyncOverride = putBucketLoggingSyncOverride {
            return try putBucketLoggingSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutBucketMetricsConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketMetricsConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putBucketMetricsConfigurationAsync(
            input: S3Model.PutBucketMetricsConfigurationRequest, 
            completion: @escaping (S3Error?) -> ()) throws {
        if let putBucketMetricsConfigurationAsyncOverride = putBucketMetricsConfigurationAsyncOverride {
            return try putBucketMetricsConfigurationAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutBucketMetricsConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketMetricsConfigurationRequest object being passed to this operation.
     */
    public func putBucketMetricsConfigurationSync(
            input: S3Model.PutBucketMetricsConfigurationRequest) throws {
        if let putBucketMetricsConfigurationSyncOverride = putBucketMetricsConfigurationSyncOverride {
            return try putBucketMetricsConfigurationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutBucketNotification operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketNotificationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putBucketNotificationAsync(
            input: S3Model.PutBucketNotificationRequest, 
            completion: @escaping (S3Error?) -> ()) throws {
        if let putBucketNotificationAsyncOverride = putBucketNotificationAsyncOverride {
            return try putBucketNotificationAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutBucketNotification operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketNotificationRequest object being passed to this operation.
     */
    public func putBucketNotificationSync(
            input: S3Model.PutBucketNotificationRequest) throws {
        if let putBucketNotificationSyncOverride = putBucketNotificationSyncOverride {
            return try putBucketNotificationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutBucketNotificationConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketNotificationConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putBucketNotificationConfigurationAsync(
            input: S3Model.PutBucketNotificationConfigurationRequest, 
            completion: @escaping (S3Error?) -> ()) throws {
        if let putBucketNotificationConfigurationAsyncOverride = putBucketNotificationConfigurationAsyncOverride {
            return try putBucketNotificationConfigurationAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutBucketNotificationConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketNotificationConfigurationRequest object being passed to this operation.
     */
    public func putBucketNotificationConfigurationSync(
            input: S3Model.PutBucketNotificationConfigurationRequest) throws {
        if let putBucketNotificationConfigurationSyncOverride = putBucketNotificationConfigurationSyncOverride {
            return try putBucketNotificationConfigurationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutBucketOwnershipControls operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketOwnershipControlsRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putBucketOwnershipControlsAsync(
            input: S3Model.PutBucketOwnershipControlsRequest, 
            completion: @escaping (S3Error?) -> ()) throws {
        if let putBucketOwnershipControlsAsyncOverride = putBucketOwnershipControlsAsyncOverride {
            return try putBucketOwnershipControlsAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutBucketOwnershipControls operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketOwnershipControlsRequest object being passed to this operation.
     */
    public func putBucketOwnershipControlsSync(
            input: S3Model.PutBucketOwnershipControlsRequest) throws {
        if let putBucketOwnershipControlsSyncOverride = putBucketOwnershipControlsSyncOverride {
            return try putBucketOwnershipControlsSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutBucketPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketPolicyRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putBucketPolicyAsync(
            input: S3Model.PutBucketPolicyRequest, 
            completion: @escaping (S3Error?) -> ()) throws {
        if let putBucketPolicyAsyncOverride = putBucketPolicyAsyncOverride {
            return try putBucketPolicyAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutBucketPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketPolicyRequest object being passed to this operation.
     */
    public func putBucketPolicySync(
            input: S3Model.PutBucketPolicyRequest) throws {
        if let putBucketPolicySyncOverride = putBucketPolicySyncOverride {
            return try putBucketPolicySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutBucketReplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketReplicationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putBucketReplicationAsync(
            input: S3Model.PutBucketReplicationRequest, 
            completion: @escaping (S3Error?) -> ()) throws {
        if let putBucketReplicationAsyncOverride = putBucketReplicationAsyncOverride {
            return try putBucketReplicationAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutBucketReplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketReplicationRequest object being passed to this operation.
     */
    public func putBucketReplicationSync(
            input: S3Model.PutBucketReplicationRequest) throws {
        if let putBucketReplicationSyncOverride = putBucketReplicationSyncOverride {
            return try putBucketReplicationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutBucketRequestPayment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketRequestPaymentRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putBucketRequestPaymentAsync(
            input: S3Model.PutBucketRequestPaymentRequest, 
            completion: @escaping (S3Error?) -> ()) throws {
        if let putBucketRequestPaymentAsyncOverride = putBucketRequestPaymentAsyncOverride {
            return try putBucketRequestPaymentAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutBucketRequestPayment operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketRequestPaymentRequest object being passed to this operation.
     */
    public func putBucketRequestPaymentSync(
            input: S3Model.PutBucketRequestPaymentRequest) throws {
        if let putBucketRequestPaymentSyncOverride = putBucketRequestPaymentSyncOverride {
            return try putBucketRequestPaymentSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutBucketTagging operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketTaggingRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putBucketTaggingAsync(
            input: S3Model.PutBucketTaggingRequest, 
            completion: @escaping (S3Error?) -> ()) throws {
        if let putBucketTaggingAsyncOverride = putBucketTaggingAsyncOverride {
            return try putBucketTaggingAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutBucketTagging operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketTaggingRequest object being passed to this operation.
     */
    public func putBucketTaggingSync(
            input: S3Model.PutBucketTaggingRequest) throws {
        if let putBucketTaggingSyncOverride = putBucketTaggingSyncOverride {
            return try putBucketTaggingSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutBucketVersioning operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketVersioningRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putBucketVersioningAsync(
            input: S3Model.PutBucketVersioningRequest, 
            completion: @escaping (S3Error?) -> ()) throws {
        if let putBucketVersioningAsyncOverride = putBucketVersioningAsyncOverride {
            return try putBucketVersioningAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutBucketVersioning operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketVersioningRequest object being passed to this operation.
     */
    public func putBucketVersioningSync(
            input: S3Model.PutBucketVersioningRequest) throws {
        if let putBucketVersioningSyncOverride = putBucketVersioningSyncOverride {
            return try putBucketVersioningSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutBucketWebsite operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketWebsiteRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putBucketWebsiteAsync(
            input: S3Model.PutBucketWebsiteRequest, 
            completion: @escaping (S3Error?) -> ()) throws {
        if let putBucketWebsiteAsyncOverride = putBucketWebsiteAsyncOverride {
            return try putBucketWebsiteAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutBucketWebsite operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketWebsiteRequest object being passed to this operation.
     */
    public func putBucketWebsiteSync(
            input: S3Model.PutBucketWebsiteRequest) throws {
        if let putBucketWebsiteSyncOverride = putBucketWebsiteSyncOverride {
            return try putBucketWebsiteSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutObject operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutObjectRequest object being passed to this operation.
         - completion: The PutObjectOutput object or an error will be passed to this 
           callback when the operation is complete. The PutObjectOutput
           object will be validated before being returned to caller.
     */
    public func putObjectAsync(
            input: S3Model.PutObjectRequest, 
            completion: @escaping (Result<S3Model.PutObjectOutput, S3Error>) -> ()) throws {
        if let putObjectAsyncOverride = putObjectAsyncOverride {
            return try putObjectAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the PutObject operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutObjectRequest object being passed to this operation.
     - Returns: The PutObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func putObjectSync(
            input: S3Model.PutObjectRequest) throws -> S3Model.PutObjectOutput {
        if let putObjectSyncOverride = putObjectSyncOverride {
            return try putObjectSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutObjectAcl operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutObjectAclRequest object being passed to this operation.
         - completion: The PutObjectAclOutput object or an error will be passed to this 
           callback when the operation is complete. The PutObjectAclOutput
           object will be validated before being returned to caller.
           The possible errors are: noSuchKey.
     */
    public func putObjectAclAsync(
            input: S3Model.PutObjectAclRequest, 
            completion: @escaping (Result<S3Model.PutObjectAclOutput, S3Error>) -> ()) throws {
        if let putObjectAclAsyncOverride = putObjectAclAsyncOverride {
            return try putObjectAclAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the PutObjectAcl operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutObjectAclRequest object being passed to this operation.
     - Returns: The PutObjectAclOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchKey.
     */
    public func putObjectAclSync(
            input: S3Model.PutObjectAclRequest) throws -> S3Model.PutObjectAclOutput {
        if let putObjectAclSyncOverride = putObjectAclSyncOverride {
            return try putObjectAclSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutObjectLegalHold operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutObjectLegalHoldRequest object being passed to this operation.
         - completion: The PutObjectLegalHoldOutput object or an error will be passed to this 
           callback when the operation is complete. The PutObjectLegalHoldOutput
           object will be validated before being returned to caller.
     */
    public func putObjectLegalHoldAsync(
            input: S3Model.PutObjectLegalHoldRequest, 
            completion: @escaping (Result<S3Model.PutObjectLegalHoldOutput, S3Error>) -> ()) throws {
        if let putObjectLegalHoldAsyncOverride = putObjectLegalHoldAsyncOverride {
            return try putObjectLegalHoldAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the PutObjectLegalHold operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutObjectLegalHoldRequest object being passed to this operation.
     - Returns: The PutObjectLegalHoldOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func putObjectLegalHoldSync(
            input: S3Model.PutObjectLegalHoldRequest) throws -> S3Model.PutObjectLegalHoldOutput {
        if let putObjectLegalHoldSyncOverride = putObjectLegalHoldSyncOverride {
            return try putObjectLegalHoldSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutObjectLockConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutObjectLockConfigurationRequest object being passed to this operation.
         - completion: The PutObjectLockConfigurationOutput object or an error will be passed to this 
           callback when the operation is complete. The PutObjectLockConfigurationOutput
           object will be validated before being returned to caller.
     */
    public func putObjectLockConfigurationAsync(
            input: S3Model.PutObjectLockConfigurationRequest, 
            completion: @escaping (Result<S3Model.PutObjectLockConfigurationOutput, S3Error>) -> ()) throws {
        if let putObjectLockConfigurationAsyncOverride = putObjectLockConfigurationAsyncOverride {
            return try putObjectLockConfigurationAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the PutObjectLockConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutObjectLockConfigurationRequest object being passed to this operation.
     - Returns: The PutObjectLockConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func putObjectLockConfigurationSync(
            input: S3Model.PutObjectLockConfigurationRequest) throws -> S3Model.PutObjectLockConfigurationOutput {
        if let putObjectLockConfigurationSyncOverride = putObjectLockConfigurationSyncOverride {
            return try putObjectLockConfigurationSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutObjectRetention operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutObjectRetentionRequest object being passed to this operation.
         - completion: The PutObjectRetentionOutput object or an error will be passed to this 
           callback when the operation is complete. The PutObjectRetentionOutput
           object will be validated before being returned to caller.
     */
    public func putObjectRetentionAsync(
            input: S3Model.PutObjectRetentionRequest, 
            completion: @escaping (Result<S3Model.PutObjectRetentionOutput, S3Error>) -> ()) throws {
        if let putObjectRetentionAsyncOverride = putObjectRetentionAsyncOverride {
            return try putObjectRetentionAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the PutObjectRetention operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutObjectRetentionRequest object being passed to this operation.
     - Returns: The PutObjectRetentionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func putObjectRetentionSync(
            input: S3Model.PutObjectRetentionRequest) throws -> S3Model.PutObjectRetentionOutput {
        if let putObjectRetentionSyncOverride = putObjectRetentionSyncOverride {
            return try putObjectRetentionSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutObjectTagging operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutObjectTaggingRequest object being passed to this operation.
         - completion: The PutObjectTaggingOutput object or an error will be passed to this 
           callback when the operation is complete. The PutObjectTaggingOutput
           object will be validated before being returned to caller.
     */
    public func putObjectTaggingAsync(
            input: S3Model.PutObjectTaggingRequest, 
            completion: @escaping (Result<S3Model.PutObjectTaggingOutput, S3Error>) -> ()) throws {
        if let putObjectTaggingAsyncOverride = putObjectTaggingAsyncOverride {
            return try putObjectTaggingAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the PutObjectTagging operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutObjectTaggingRequest object being passed to this operation.
     - Returns: The PutObjectTaggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func putObjectTaggingSync(
            input: S3Model.PutObjectTaggingRequest) throws -> S3Model.PutObjectTaggingOutput {
        if let putObjectTaggingSyncOverride = putObjectTaggingSyncOverride {
            return try putObjectTaggingSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the PutPublicAccessBlock operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutPublicAccessBlockRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func putPublicAccessBlockAsync(
            input: S3Model.PutPublicAccessBlockRequest, 
            completion: @escaping (S3Error?) -> ()) throws {
        if let putPublicAccessBlockAsyncOverride = putPublicAccessBlockAsyncOverride {
            return try putPublicAccessBlockAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutPublicAccessBlock operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutPublicAccessBlockRequest object being passed to this operation.
     */
    public func putPublicAccessBlockSync(
            input: S3Model.PutPublicAccessBlockRequest) throws {
        if let putPublicAccessBlockSyncOverride = putPublicAccessBlockSyncOverride {
            return try putPublicAccessBlockSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the RestoreObject operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreObjectRequest object being passed to this operation.
         - completion: The RestoreObjectOutput object or an error will be passed to this 
           callback when the operation is complete. The RestoreObjectOutput
           object will be validated before being returned to caller.
           The possible errors are: objectAlreadyInActiveTier.
     */
    public func restoreObjectAsync(
            input: S3Model.RestoreObjectRequest, 
            completion: @escaping (Result<S3Model.RestoreObjectOutput, S3Error>) -> ()) throws {
        if let restoreObjectAsyncOverride = restoreObjectAsyncOverride {
            return try restoreObjectAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the RestoreObject operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreObjectRequest object being passed to this operation.
     - Returns: The RestoreObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: objectAlreadyInActiveTier.
     */
    public func restoreObjectSync(
            input: S3Model.RestoreObjectRequest) throws -> S3Model.RestoreObjectOutput {
        if let restoreObjectSyncOverride = restoreObjectSyncOverride {
            return try restoreObjectSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the SelectObjectContent operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SelectObjectContentRequest object being passed to this operation.
         - completion: The SelectObjectContentOutput object or an error will be passed to this 
           callback when the operation is complete. The SelectObjectContentOutput
           object will be validated before being returned to caller.
     */
    public func selectObjectContentAsync(
            input: S3Model.SelectObjectContentRequest, 
            completion: @escaping (Result<S3Model.SelectObjectContentOutput, S3Error>) -> ()) throws {
        if let selectObjectContentAsyncOverride = selectObjectContentAsyncOverride {
            return try selectObjectContentAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the SelectObjectContent operation waiting for the response before returning.

     - Parameters:
         - input: The validated SelectObjectContentRequest object being passed to this operation.
     - Returns: The SelectObjectContentOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func selectObjectContentSync(
            input: S3Model.SelectObjectContentRequest) throws -> S3Model.SelectObjectContentOutput {
        if let selectObjectContentSyncOverride = selectObjectContentSyncOverride {
            return try selectObjectContentSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the UploadPart operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UploadPartRequest object being passed to this operation.
         - completion: The UploadPartOutput object or an error will be passed to this 
           callback when the operation is complete. The UploadPartOutput
           object will be validated before being returned to caller.
     */
    public func uploadPartAsync(
            input: S3Model.UploadPartRequest, 
            completion: @escaping (Result<S3Model.UploadPartOutput, S3Error>) -> ()) throws {
        if let uploadPartAsyncOverride = uploadPartAsyncOverride {
            return try uploadPartAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the UploadPart operation waiting for the response before returning.

     - Parameters:
         - input: The validated UploadPartRequest object being passed to this operation.
     - Returns: The UploadPartOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func uploadPartSync(
            input: S3Model.UploadPartRequest) throws -> S3Model.UploadPartOutput {
        if let uploadPartSyncOverride = uploadPartSyncOverride {
            return try uploadPartSyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the UploadPartCopy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UploadPartCopyRequest object being passed to this operation.
         - completion: The UploadPartCopyOutput object or an error will be passed to this 
           callback when the operation is complete. The UploadPartCopyOutput
           object will be validated before being returned to caller.
     */
    public func uploadPartCopyAsync(
            input: S3Model.UploadPartCopyRequest, 
            completion: @escaping (Result<S3Model.UploadPartCopyOutput, S3Error>) -> ()) throws {
        if let uploadPartCopyAsyncOverride = uploadPartCopyAsyncOverride {
            return try uploadPartCopyAsyncOverride(input, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the UploadPartCopy operation waiting for the response before returning.

     - Parameters:
         - input: The validated UploadPartCopyRequest object being passed to this operation.
     - Returns: The UploadPartCopyOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func uploadPartCopySync(
            input: S3Model.UploadPartCopyRequest) throws -> S3Model.UploadPartCopyOutput {
        if let uploadPartCopySyncOverride = uploadPartCopySyncOverride {
            return try uploadPartCopySyncOverride(input)
        }

        throw error
    }

    /**
     Invokes the WriteGetObjectResponse operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated WriteGetObjectResponseRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    public func writeGetObjectResponseAsync(
            input: S3Model.WriteGetObjectResponseRequest, 
            completion: @escaping (S3Error?) -> ()) throws {
        if let writeGetObjectResponseAsyncOverride = writeGetObjectResponseAsyncOverride {
            return try writeGetObjectResponseAsyncOverride(input, completion)
        }

        completion(error)
    }

    /**
     Invokes the WriteGetObjectResponse operation waiting for the response before returning.

     - Parameters:
         - input: The validated WriteGetObjectResponseRequest object being passed to this operation.
     */
    public func writeGetObjectResponseSync(
            input: S3Model.WriteGetObjectResponseRequest) throws {
        if let writeGetObjectResponseSyncOverride = writeGetObjectResponseSyncOverride {
            return try writeGetObjectResponseSyncOverride(input)
        }

        throw error
    }
}
