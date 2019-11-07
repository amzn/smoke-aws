// Copyright 2018-2019 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment type_body_length
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
    let error: HTTPClientError
    let abortMultipartUploadAsyncOverride: S3ClientProtocol.AbortMultipartUploadAsyncType?
    let abortMultipartUploadSyncOverride: S3ClientProtocol.AbortMultipartUploadSyncType?
    let completeMultipartUploadAsyncOverride: S3ClientProtocol.CompleteMultipartUploadAsyncType?
    let completeMultipartUploadSyncOverride: S3ClientProtocol.CompleteMultipartUploadSyncType?
    let copyObjectAsyncOverride: S3ClientProtocol.CopyObjectAsyncType?
    let copyObjectSyncOverride: S3ClientProtocol.CopyObjectSyncType?
    let createBucketAsyncOverride: S3ClientProtocol.CreateBucketAsyncType?
    let createBucketSyncOverride: S3ClientProtocol.CreateBucketSyncType?
    let createMultipartUploadAsyncOverride: S3ClientProtocol.CreateMultipartUploadAsyncType?
    let createMultipartUploadSyncOverride: S3ClientProtocol.CreateMultipartUploadSyncType?
    let deleteBucketAsyncOverride: S3ClientProtocol.DeleteBucketAsyncType?
    let deleteBucketSyncOverride: S3ClientProtocol.DeleteBucketSyncType?
    let deleteBucketAnalyticsConfigurationAsyncOverride: S3ClientProtocol.DeleteBucketAnalyticsConfigurationAsyncType?
    let deleteBucketAnalyticsConfigurationSyncOverride: S3ClientProtocol.DeleteBucketAnalyticsConfigurationSyncType?
    let deleteBucketCorsAsyncOverride: S3ClientProtocol.DeleteBucketCorsAsyncType?
    let deleteBucketCorsSyncOverride: S3ClientProtocol.DeleteBucketCorsSyncType?
    let deleteBucketEncryptionAsyncOverride: S3ClientProtocol.DeleteBucketEncryptionAsyncType?
    let deleteBucketEncryptionSyncOverride: S3ClientProtocol.DeleteBucketEncryptionSyncType?
    let deleteBucketInventoryConfigurationAsyncOverride: S3ClientProtocol.DeleteBucketInventoryConfigurationAsyncType?
    let deleteBucketInventoryConfigurationSyncOverride: S3ClientProtocol.DeleteBucketInventoryConfigurationSyncType?
    let deleteBucketLifecycleAsyncOverride: S3ClientProtocol.DeleteBucketLifecycleAsyncType?
    let deleteBucketLifecycleSyncOverride: S3ClientProtocol.DeleteBucketLifecycleSyncType?
    let deleteBucketMetricsConfigurationAsyncOverride: S3ClientProtocol.DeleteBucketMetricsConfigurationAsyncType?
    let deleteBucketMetricsConfigurationSyncOverride: S3ClientProtocol.DeleteBucketMetricsConfigurationSyncType?
    let deleteBucketPolicyAsyncOverride: S3ClientProtocol.DeleteBucketPolicyAsyncType?
    let deleteBucketPolicySyncOverride: S3ClientProtocol.DeleteBucketPolicySyncType?
    let deleteBucketReplicationAsyncOverride: S3ClientProtocol.DeleteBucketReplicationAsyncType?
    let deleteBucketReplicationSyncOverride: S3ClientProtocol.DeleteBucketReplicationSyncType?
    let deleteBucketTaggingAsyncOverride: S3ClientProtocol.DeleteBucketTaggingAsyncType?
    let deleteBucketTaggingSyncOverride: S3ClientProtocol.DeleteBucketTaggingSyncType?
    let deleteBucketWebsiteAsyncOverride: S3ClientProtocol.DeleteBucketWebsiteAsyncType?
    let deleteBucketWebsiteSyncOverride: S3ClientProtocol.DeleteBucketWebsiteSyncType?
    let deleteObjectAsyncOverride: S3ClientProtocol.DeleteObjectAsyncType?
    let deleteObjectSyncOverride: S3ClientProtocol.DeleteObjectSyncType?
    let deleteObjectTaggingAsyncOverride: S3ClientProtocol.DeleteObjectTaggingAsyncType?
    let deleteObjectTaggingSyncOverride: S3ClientProtocol.DeleteObjectTaggingSyncType?
    let deleteObjectsAsyncOverride: S3ClientProtocol.DeleteObjectsAsyncType?
    let deleteObjectsSyncOverride: S3ClientProtocol.DeleteObjectsSyncType?
    let deletePublicAccessBlockAsyncOverride: S3ClientProtocol.DeletePublicAccessBlockAsyncType?
    let deletePublicAccessBlockSyncOverride: S3ClientProtocol.DeletePublicAccessBlockSyncType?
    let getBucketAccelerateConfigurationAsyncOverride: S3ClientProtocol.GetBucketAccelerateConfigurationAsyncType?
    let getBucketAccelerateConfigurationSyncOverride: S3ClientProtocol.GetBucketAccelerateConfigurationSyncType?
    let getBucketAclAsyncOverride: S3ClientProtocol.GetBucketAclAsyncType?
    let getBucketAclSyncOverride: S3ClientProtocol.GetBucketAclSyncType?
    let getBucketAnalyticsConfigurationAsyncOverride: S3ClientProtocol.GetBucketAnalyticsConfigurationAsyncType?
    let getBucketAnalyticsConfigurationSyncOverride: S3ClientProtocol.GetBucketAnalyticsConfigurationSyncType?
    let getBucketCorsAsyncOverride: S3ClientProtocol.GetBucketCorsAsyncType?
    let getBucketCorsSyncOverride: S3ClientProtocol.GetBucketCorsSyncType?
    let getBucketEncryptionAsyncOverride: S3ClientProtocol.GetBucketEncryptionAsyncType?
    let getBucketEncryptionSyncOverride: S3ClientProtocol.GetBucketEncryptionSyncType?
    let getBucketInventoryConfigurationAsyncOverride: S3ClientProtocol.GetBucketInventoryConfigurationAsyncType?
    let getBucketInventoryConfigurationSyncOverride: S3ClientProtocol.GetBucketInventoryConfigurationSyncType?
    let getBucketLifecycleAsyncOverride: S3ClientProtocol.GetBucketLifecycleAsyncType?
    let getBucketLifecycleSyncOverride: S3ClientProtocol.GetBucketLifecycleSyncType?
    let getBucketLifecycleConfigurationAsyncOverride: S3ClientProtocol.GetBucketLifecycleConfigurationAsyncType?
    let getBucketLifecycleConfigurationSyncOverride: S3ClientProtocol.GetBucketLifecycleConfigurationSyncType?
    let getBucketLocationAsyncOverride: S3ClientProtocol.GetBucketLocationAsyncType?
    let getBucketLocationSyncOverride: S3ClientProtocol.GetBucketLocationSyncType?
    let getBucketLoggingAsyncOverride: S3ClientProtocol.GetBucketLoggingAsyncType?
    let getBucketLoggingSyncOverride: S3ClientProtocol.GetBucketLoggingSyncType?
    let getBucketMetricsConfigurationAsyncOverride: S3ClientProtocol.GetBucketMetricsConfigurationAsyncType?
    let getBucketMetricsConfigurationSyncOverride: S3ClientProtocol.GetBucketMetricsConfigurationSyncType?
    let getBucketNotificationAsyncOverride: S3ClientProtocol.GetBucketNotificationAsyncType?
    let getBucketNotificationSyncOverride: S3ClientProtocol.GetBucketNotificationSyncType?
    let getBucketNotificationConfigurationAsyncOverride: S3ClientProtocol.GetBucketNotificationConfigurationAsyncType?
    let getBucketNotificationConfigurationSyncOverride: S3ClientProtocol.GetBucketNotificationConfigurationSyncType?
    let getBucketPolicyAsyncOverride: S3ClientProtocol.GetBucketPolicyAsyncType?
    let getBucketPolicySyncOverride: S3ClientProtocol.GetBucketPolicySyncType?
    let getBucketPolicyStatusAsyncOverride: S3ClientProtocol.GetBucketPolicyStatusAsyncType?
    let getBucketPolicyStatusSyncOverride: S3ClientProtocol.GetBucketPolicyStatusSyncType?
    let getBucketReplicationAsyncOverride: S3ClientProtocol.GetBucketReplicationAsyncType?
    let getBucketReplicationSyncOverride: S3ClientProtocol.GetBucketReplicationSyncType?
    let getBucketRequestPaymentAsyncOverride: S3ClientProtocol.GetBucketRequestPaymentAsyncType?
    let getBucketRequestPaymentSyncOverride: S3ClientProtocol.GetBucketRequestPaymentSyncType?
    let getBucketTaggingAsyncOverride: S3ClientProtocol.GetBucketTaggingAsyncType?
    let getBucketTaggingSyncOverride: S3ClientProtocol.GetBucketTaggingSyncType?
    let getBucketVersioningAsyncOverride: S3ClientProtocol.GetBucketVersioningAsyncType?
    let getBucketVersioningSyncOverride: S3ClientProtocol.GetBucketVersioningSyncType?
    let getBucketWebsiteAsyncOverride: S3ClientProtocol.GetBucketWebsiteAsyncType?
    let getBucketWebsiteSyncOverride: S3ClientProtocol.GetBucketWebsiteSyncType?
    let getObjectAsyncOverride: S3ClientProtocol.GetObjectAsyncType?
    let getObjectSyncOverride: S3ClientProtocol.GetObjectSyncType?
    let getObjectAclAsyncOverride: S3ClientProtocol.GetObjectAclAsyncType?
    let getObjectAclSyncOverride: S3ClientProtocol.GetObjectAclSyncType?
    let getObjectLegalHoldAsyncOverride: S3ClientProtocol.GetObjectLegalHoldAsyncType?
    let getObjectLegalHoldSyncOverride: S3ClientProtocol.GetObjectLegalHoldSyncType?
    let getObjectLockConfigurationAsyncOverride: S3ClientProtocol.GetObjectLockConfigurationAsyncType?
    let getObjectLockConfigurationSyncOverride: S3ClientProtocol.GetObjectLockConfigurationSyncType?
    let getObjectRetentionAsyncOverride: S3ClientProtocol.GetObjectRetentionAsyncType?
    let getObjectRetentionSyncOverride: S3ClientProtocol.GetObjectRetentionSyncType?
    let getObjectTaggingAsyncOverride: S3ClientProtocol.GetObjectTaggingAsyncType?
    let getObjectTaggingSyncOverride: S3ClientProtocol.GetObjectTaggingSyncType?
    let getObjectTorrentAsyncOverride: S3ClientProtocol.GetObjectTorrentAsyncType?
    let getObjectTorrentSyncOverride: S3ClientProtocol.GetObjectTorrentSyncType?
    let getPublicAccessBlockAsyncOverride: S3ClientProtocol.GetPublicAccessBlockAsyncType?
    let getPublicAccessBlockSyncOverride: S3ClientProtocol.GetPublicAccessBlockSyncType?
    let headBucketAsyncOverride: S3ClientProtocol.HeadBucketAsyncType?
    let headBucketSyncOverride: S3ClientProtocol.HeadBucketSyncType?
    let headObjectAsyncOverride: S3ClientProtocol.HeadObjectAsyncType?
    let headObjectSyncOverride: S3ClientProtocol.HeadObjectSyncType?
    let listBucketAnalyticsConfigurationsAsyncOverride: S3ClientProtocol.ListBucketAnalyticsConfigurationsAsyncType?
    let listBucketAnalyticsConfigurationsSyncOverride: S3ClientProtocol.ListBucketAnalyticsConfigurationsSyncType?
    let listBucketInventoryConfigurationsAsyncOverride: S3ClientProtocol.ListBucketInventoryConfigurationsAsyncType?
    let listBucketInventoryConfigurationsSyncOverride: S3ClientProtocol.ListBucketInventoryConfigurationsSyncType?
    let listBucketMetricsConfigurationsAsyncOverride: S3ClientProtocol.ListBucketMetricsConfigurationsAsyncType?
    let listBucketMetricsConfigurationsSyncOverride: S3ClientProtocol.ListBucketMetricsConfigurationsSyncType?
    let listBucketsAsyncOverride: S3ClientProtocol.ListBucketsAsyncType?
    let listBucketsSyncOverride: S3ClientProtocol.ListBucketsSyncType?
    let listMultipartUploadsAsyncOverride: S3ClientProtocol.ListMultipartUploadsAsyncType?
    let listMultipartUploadsSyncOverride: S3ClientProtocol.ListMultipartUploadsSyncType?
    let listObjectVersionsAsyncOverride: S3ClientProtocol.ListObjectVersionsAsyncType?
    let listObjectVersionsSyncOverride: S3ClientProtocol.ListObjectVersionsSyncType?
    let listObjectsAsyncOverride: S3ClientProtocol.ListObjectsAsyncType?
    let listObjectsSyncOverride: S3ClientProtocol.ListObjectsSyncType?
    let listObjectsV2AsyncOverride: S3ClientProtocol.ListObjectsV2AsyncType?
    let listObjectsV2SyncOverride: S3ClientProtocol.ListObjectsV2SyncType?
    let listPartsAsyncOverride: S3ClientProtocol.ListPartsAsyncType?
    let listPartsSyncOverride: S3ClientProtocol.ListPartsSyncType?
    let putBucketAccelerateConfigurationAsyncOverride: S3ClientProtocol.PutBucketAccelerateConfigurationAsyncType?
    let putBucketAccelerateConfigurationSyncOverride: S3ClientProtocol.PutBucketAccelerateConfigurationSyncType?
    let putBucketAclAsyncOverride: S3ClientProtocol.PutBucketAclAsyncType?
    let putBucketAclSyncOverride: S3ClientProtocol.PutBucketAclSyncType?
    let putBucketAnalyticsConfigurationAsyncOverride: S3ClientProtocol.PutBucketAnalyticsConfigurationAsyncType?
    let putBucketAnalyticsConfigurationSyncOverride: S3ClientProtocol.PutBucketAnalyticsConfigurationSyncType?
    let putBucketCorsAsyncOverride: S3ClientProtocol.PutBucketCorsAsyncType?
    let putBucketCorsSyncOverride: S3ClientProtocol.PutBucketCorsSyncType?
    let putBucketEncryptionAsyncOverride: S3ClientProtocol.PutBucketEncryptionAsyncType?
    let putBucketEncryptionSyncOverride: S3ClientProtocol.PutBucketEncryptionSyncType?
    let putBucketInventoryConfigurationAsyncOverride: S3ClientProtocol.PutBucketInventoryConfigurationAsyncType?
    let putBucketInventoryConfigurationSyncOverride: S3ClientProtocol.PutBucketInventoryConfigurationSyncType?
    let putBucketLifecycleAsyncOverride: S3ClientProtocol.PutBucketLifecycleAsyncType?
    let putBucketLifecycleSyncOverride: S3ClientProtocol.PutBucketLifecycleSyncType?
    let putBucketLifecycleConfigurationAsyncOverride: S3ClientProtocol.PutBucketLifecycleConfigurationAsyncType?
    let putBucketLifecycleConfigurationSyncOverride: S3ClientProtocol.PutBucketLifecycleConfigurationSyncType?
    let putBucketLoggingAsyncOverride: S3ClientProtocol.PutBucketLoggingAsyncType?
    let putBucketLoggingSyncOverride: S3ClientProtocol.PutBucketLoggingSyncType?
    let putBucketMetricsConfigurationAsyncOverride: S3ClientProtocol.PutBucketMetricsConfigurationAsyncType?
    let putBucketMetricsConfigurationSyncOverride: S3ClientProtocol.PutBucketMetricsConfigurationSyncType?
    let putBucketNotificationAsyncOverride: S3ClientProtocol.PutBucketNotificationAsyncType?
    let putBucketNotificationSyncOverride: S3ClientProtocol.PutBucketNotificationSyncType?
    let putBucketNotificationConfigurationAsyncOverride: S3ClientProtocol.PutBucketNotificationConfigurationAsyncType?
    let putBucketNotificationConfigurationSyncOverride: S3ClientProtocol.PutBucketNotificationConfigurationSyncType?
    let putBucketPolicyAsyncOverride: S3ClientProtocol.PutBucketPolicyAsyncType?
    let putBucketPolicySyncOverride: S3ClientProtocol.PutBucketPolicySyncType?
    let putBucketReplicationAsyncOverride: S3ClientProtocol.PutBucketReplicationAsyncType?
    let putBucketReplicationSyncOverride: S3ClientProtocol.PutBucketReplicationSyncType?
    let putBucketRequestPaymentAsyncOverride: S3ClientProtocol.PutBucketRequestPaymentAsyncType?
    let putBucketRequestPaymentSyncOverride: S3ClientProtocol.PutBucketRequestPaymentSyncType?
    let putBucketTaggingAsyncOverride: S3ClientProtocol.PutBucketTaggingAsyncType?
    let putBucketTaggingSyncOverride: S3ClientProtocol.PutBucketTaggingSyncType?
    let putBucketVersioningAsyncOverride: S3ClientProtocol.PutBucketVersioningAsyncType?
    let putBucketVersioningSyncOverride: S3ClientProtocol.PutBucketVersioningSyncType?
    let putBucketWebsiteAsyncOverride: S3ClientProtocol.PutBucketWebsiteAsyncType?
    let putBucketWebsiteSyncOverride: S3ClientProtocol.PutBucketWebsiteSyncType?
    let putObjectAsyncOverride: S3ClientProtocol.PutObjectAsyncType?
    let putObjectSyncOverride: S3ClientProtocol.PutObjectSyncType?
    let putObjectAclAsyncOverride: S3ClientProtocol.PutObjectAclAsyncType?
    let putObjectAclSyncOverride: S3ClientProtocol.PutObjectAclSyncType?
    let putObjectLegalHoldAsyncOverride: S3ClientProtocol.PutObjectLegalHoldAsyncType?
    let putObjectLegalHoldSyncOverride: S3ClientProtocol.PutObjectLegalHoldSyncType?
    let putObjectLockConfigurationAsyncOverride: S3ClientProtocol.PutObjectLockConfigurationAsyncType?
    let putObjectLockConfigurationSyncOverride: S3ClientProtocol.PutObjectLockConfigurationSyncType?
    let putObjectRetentionAsyncOverride: S3ClientProtocol.PutObjectRetentionAsyncType?
    let putObjectRetentionSyncOverride: S3ClientProtocol.PutObjectRetentionSyncType?
    let putObjectTaggingAsyncOverride: S3ClientProtocol.PutObjectTaggingAsyncType?
    let putObjectTaggingSyncOverride: S3ClientProtocol.PutObjectTaggingSyncType?
    let putPublicAccessBlockAsyncOverride: S3ClientProtocol.PutPublicAccessBlockAsyncType?
    let putPublicAccessBlockSyncOverride: S3ClientProtocol.PutPublicAccessBlockSyncType?
    let restoreObjectAsyncOverride: S3ClientProtocol.RestoreObjectAsyncType?
    let restoreObjectSyncOverride: S3ClientProtocol.RestoreObjectSyncType?
    let selectObjectContentAsyncOverride: S3ClientProtocol.SelectObjectContentAsyncType?
    let selectObjectContentSyncOverride: S3ClientProtocol.SelectObjectContentSyncType?
    let uploadPartAsyncOverride: S3ClientProtocol.UploadPartAsyncType?
    let uploadPartSyncOverride: S3ClientProtocol.UploadPartSyncType?
    let uploadPartCopyAsyncOverride: S3ClientProtocol.UploadPartCopyAsyncType?
    let uploadPartCopySyncOverride: S3ClientProtocol.UploadPartCopySyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(error: HTTPClientError,
            abortMultipartUploadAsync: S3ClientProtocol.AbortMultipartUploadAsyncType? = nil,
            abortMultipartUploadSync: S3ClientProtocol.AbortMultipartUploadSyncType? = nil,
            completeMultipartUploadAsync: S3ClientProtocol.CompleteMultipartUploadAsyncType? = nil,
            completeMultipartUploadSync: S3ClientProtocol.CompleteMultipartUploadSyncType? = nil,
            copyObjectAsync: S3ClientProtocol.CopyObjectAsyncType? = nil,
            copyObjectSync: S3ClientProtocol.CopyObjectSyncType? = nil,
            createBucketAsync: S3ClientProtocol.CreateBucketAsyncType? = nil,
            createBucketSync: S3ClientProtocol.CreateBucketSyncType? = nil,
            createMultipartUploadAsync: S3ClientProtocol.CreateMultipartUploadAsyncType? = nil,
            createMultipartUploadSync: S3ClientProtocol.CreateMultipartUploadSyncType? = nil,
            deleteBucketAsync: S3ClientProtocol.DeleteBucketAsyncType? = nil,
            deleteBucketSync: S3ClientProtocol.DeleteBucketSyncType? = nil,
            deleteBucketAnalyticsConfigurationAsync: S3ClientProtocol.DeleteBucketAnalyticsConfigurationAsyncType? = nil,
            deleteBucketAnalyticsConfigurationSync: S3ClientProtocol.DeleteBucketAnalyticsConfigurationSyncType? = nil,
            deleteBucketCorsAsync: S3ClientProtocol.DeleteBucketCorsAsyncType? = nil,
            deleteBucketCorsSync: S3ClientProtocol.DeleteBucketCorsSyncType? = nil,
            deleteBucketEncryptionAsync: S3ClientProtocol.DeleteBucketEncryptionAsyncType? = nil,
            deleteBucketEncryptionSync: S3ClientProtocol.DeleteBucketEncryptionSyncType? = nil,
            deleteBucketInventoryConfigurationAsync: S3ClientProtocol.DeleteBucketInventoryConfigurationAsyncType? = nil,
            deleteBucketInventoryConfigurationSync: S3ClientProtocol.DeleteBucketInventoryConfigurationSyncType? = nil,
            deleteBucketLifecycleAsync: S3ClientProtocol.DeleteBucketLifecycleAsyncType? = nil,
            deleteBucketLifecycleSync: S3ClientProtocol.DeleteBucketLifecycleSyncType? = nil,
            deleteBucketMetricsConfigurationAsync: S3ClientProtocol.DeleteBucketMetricsConfigurationAsyncType? = nil,
            deleteBucketMetricsConfigurationSync: S3ClientProtocol.DeleteBucketMetricsConfigurationSyncType? = nil,
            deleteBucketPolicyAsync: S3ClientProtocol.DeleteBucketPolicyAsyncType? = nil,
            deleteBucketPolicySync: S3ClientProtocol.DeleteBucketPolicySyncType? = nil,
            deleteBucketReplicationAsync: S3ClientProtocol.DeleteBucketReplicationAsyncType? = nil,
            deleteBucketReplicationSync: S3ClientProtocol.DeleteBucketReplicationSyncType? = nil,
            deleteBucketTaggingAsync: S3ClientProtocol.DeleteBucketTaggingAsyncType? = nil,
            deleteBucketTaggingSync: S3ClientProtocol.DeleteBucketTaggingSyncType? = nil,
            deleteBucketWebsiteAsync: S3ClientProtocol.DeleteBucketWebsiteAsyncType? = nil,
            deleteBucketWebsiteSync: S3ClientProtocol.DeleteBucketWebsiteSyncType? = nil,
            deleteObjectAsync: S3ClientProtocol.DeleteObjectAsyncType? = nil,
            deleteObjectSync: S3ClientProtocol.DeleteObjectSyncType? = nil,
            deleteObjectTaggingAsync: S3ClientProtocol.DeleteObjectTaggingAsyncType? = nil,
            deleteObjectTaggingSync: S3ClientProtocol.DeleteObjectTaggingSyncType? = nil,
            deleteObjectsAsync: S3ClientProtocol.DeleteObjectsAsyncType? = nil,
            deleteObjectsSync: S3ClientProtocol.DeleteObjectsSyncType? = nil,
            deletePublicAccessBlockAsync: S3ClientProtocol.DeletePublicAccessBlockAsyncType? = nil,
            deletePublicAccessBlockSync: S3ClientProtocol.DeletePublicAccessBlockSyncType? = nil,
            getBucketAccelerateConfigurationAsync: S3ClientProtocol.GetBucketAccelerateConfigurationAsyncType? = nil,
            getBucketAccelerateConfigurationSync: S3ClientProtocol.GetBucketAccelerateConfigurationSyncType? = nil,
            getBucketAclAsync: S3ClientProtocol.GetBucketAclAsyncType? = nil,
            getBucketAclSync: S3ClientProtocol.GetBucketAclSyncType? = nil,
            getBucketAnalyticsConfigurationAsync: S3ClientProtocol.GetBucketAnalyticsConfigurationAsyncType? = nil,
            getBucketAnalyticsConfigurationSync: S3ClientProtocol.GetBucketAnalyticsConfigurationSyncType? = nil,
            getBucketCorsAsync: S3ClientProtocol.GetBucketCorsAsyncType? = nil,
            getBucketCorsSync: S3ClientProtocol.GetBucketCorsSyncType? = nil,
            getBucketEncryptionAsync: S3ClientProtocol.GetBucketEncryptionAsyncType? = nil,
            getBucketEncryptionSync: S3ClientProtocol.GetBucketEncryptionSyncType? = nil,
            getBucketInventoryConfigurationAsync: S3ClientProtocol.GetBucketInventoryConfigurationAsyncType? = nil,
            getBucketInventoryConfigurationSync: S3ClientProtocol.GetBucketInventoryConfigurationSyncType? = nil,
            getBucketLifecycleAsync: S3ClientProtocol.GetBucketLifecycleAsyncType? = nil,
            getBucketLifecycleSync: S3ClientProtocol.GetBucketLifecycleSyncType? = nil,
            getBucketLifecycleConfigurationAsync: S3ClientProtocol.GetBucketLifecycleConfigurationAsyncType? = nil,
            getBucketLifecycleConfigurationSync: S3ClientProtocol.GetBucketLifecycleConfigurationSyncType? = nil,
            getBucketLocationAsync: S3ClientProtocol.GetBucketLocationAsyncType? = nil,
            getBucketLocationSync: S3ClientProtocol.GetBucketLocationSyncType? = nil,
            getBucketLoggingAsync: S3ClientProtocol.GetBucketLoggingAsyncType? = nil,
            getBucketLoggingSync: S3ClientProtocol.GetBucketLoggingSyncType? = nil,
            getBucketMetricsConfigurationAsync: S3ClientProtocol.GetBucketMetricsConfigurationAsyncType? = nil,
            getBucketMetricsConfigurationSync: S3ClientProtocol.GetBucketMetricsConfigurationSyncType? = nil,
            getBucketNotificationAsync: S3ClientProtocol.GetBucketNotificationAsyncType? = nil,
            getBucketNotificationSync: S3ClientProtocol.GetBucketNotificationSyncType? = nil,
            getBucketNotificationConfigurationAsync: S3ClientProtocol.GetBucketNotificationConfigurationAsyncType? = nil,
            getBucketNotificationConfigurationSync: S3ClientProtocol.GetBucketNotificationConfigurationSyncType? = nil,
            getBucketPolicyAsync: S3ClientProtocol.GetBucketPolicyAsyncType? = nil,
            getBucketPolicySync: S3ClientProtocol.GetBucketPolicySyncType? = nil,
            getBucketPolicyStatusAsync: S3ClientProtocol.GetBucketPolicyStatusAsyncType? = nil,
            getBucketPolicyStatusSync: S3ClientProtocol.GetBucketPolicyStatusSyncType? = nil,
            getBucketReplicationAsync: S3ClientProtocol.GetBucketReplicationAsyncType? = nil,
            getBucketReplicationSync: S3ClientProtocol.GetBucketReplicationSyncType? = nil,
            getBucketRequestPaymentAsync: S3ClientProtocol.GetBucketRequestPaymentAsyncType? = nil,
            getBucketRequestPaymentSync: S3ClientProtocol.GetBucketRequestPaymentSyncType? = nil,
            getBucketTaggingAsync: S3ClientProtocol.GetBucketTaggingAsyncType? = nil,
            getBucketTaggingSync: S3ClientProtocol.GetBucketTaggingSyncType? = nil,
            getBucketVersioningAsync: S3ClientProtocol.GetBucketVersioningAsyncType? = nil,
            getBucketVersioningSync: S3ClientProtocol.GetBucketVersioningSyncType? = nil,
            getBucketWebsiteAsync: S3ClientProtocol.GetBucketWebsiteAsyncType? = nil,
            getBucketWebsiteSync: S3ClientProtocol.GetBucketWebsiteSyncType? = nil,
            getObjectAsync: S3ClientProtocol.GetObjectAsyncType? = nil,
            getObjectSync: S3ClientProtocol.GetObjectSyncType? = nil,
            getObjectAclAsync: S3ClientProtocol.GetObjectAclAsyncType? = nil,
            getObjectAclSync: S3ClientProtocol.GetObjectAclSyncType? = nil,
            getObjectLegalHoldAsync: S3ClientProtocol.GetObjectLegalHoldAsyncType? = nil,
            getObjectLegalHoldSync: S3ClientProtocol.GetObjectLegalHoldSyncType? = nil,
            getObjectLockConfigurationAsync: S3ClientProtocol.GetObjectLockConfigurationAsyncType? = nil,
            getObjectLockConfigurationSync: S3ClientProtocol.GetObjectLockConfigurationSyncType? = nil,
            getObjectRetentionAsync: S3ClientProtocol.GetObjectRetentionAsyncType? = nil,
            getObjectRetentionSync: S3ClientProtocol.GetObjectRetentionSyncType? = nil,
            getObjectTaggingAsync: S3ClientProtocol.GetObjectTaggingAsyncType? = nil,
            getObjectTaggingSync: S3ClientProtocol.GetObjectTaggingSyncType? = nil,
            getObjectTorrentAsync: S3ClientProtocol.GetObjectTorrentAsyncType? = nil,
            getObjectTorrentSync: S3ClientProtocol.GetObjectTorrentSyncType? = nil,
            getPublicAccessBlockAsync: S3ClientProtocol.GetPublicAccessBlockAsyncType? = nil,
            getPublicAccessBlockSync: S3ClientProtocol.GetPublicAccessBlockSyncType? = nil,
            headBucketAsync: S3ClientProtocol.HeadBucketAsyncType? = nil,
            headBucketSync: S3ClientProtocol.HeadBucketSyncType? = nil,
            headObjectAsync: S3ClientProtocol.HeadObjectAsyncType? = nil,
            headObjectSync: S3ClientProtocol.HeadObjectSyncType? = nil,
            listBucketAnalyticsConfigurationsAsync: S3ClientProtocol.ListBucketAnalyticsConfigurationsAsyncType? = nil,
            listBucketAnalyticsConfigurationsSync: S3ClientProtocol.ListBucketAnalyticsConfigurationsSyncType? = nil,
            listBucketInventoryConfigurationsAsync: S3ClientProtocol.ListBucketInventoryConfigurationsAsyncType? = nil,
            listBucketInventoryConfigurationsSync: S3ClientProtocol.ListBucketInventoryConfigurationsSyncType? = nil,
            listBucketMetricsConfigurationsAsync: S3ClientProtocol.ListBucketMetricsConfigurationsAsyncType? = nil,
            listBucketMetricsConfigurationsSync: S3ClientProtocol.ListBucketMetricsConfigurationsSyncType? = nil,
            listBucketsAsync: S3ClientProtocol.ListBucketsAsyncType? = nil,
            listBucketsSync: S3ClientProtocol.ListBucketsSyncType? = nil,
            listMultipartUploadsAsync: S3ClientProtocol.ListMultipartUploadsAsyncType? = nil,
            listMultipartUploadsSync: S3ClientProtocol.ListMultipartUploadsSyncType? = nil,
            listObjectVersionsAsync: S3ClientProtocol.ListObjectVersionsAsyncType? = nil,
            listObjectVersionsSync: S3ClientProtocol.ListObjectVersionsSyncType? = nil,
            listObjectsAsync: S3ClientProtocol.ListObjectsAsyncType? = nil,
            listObjectsSync: S3ClientProtocol.ListObjectsSyncType? = nil,
            listObjectsV2Async: S3ClientProtocol.ListObjectsV2AsyncType? = nil,
            listObjectsV2Sync: S3ClientProtocol.ListObjectsV2SyncType? = nil,
            listPartsAsync: S3ClientProtocol.ListPartsAsyncType? = nil,
            listPartsSync: S3ClientProtocol.ListPartsSyncType? = nil,
            putBucketAccelerateConfigurationAsync: S3ClientProtocol.PutBucketAccelerateConfigurationAsyncType? = nil,
            putBucketAccelerateConfigurationSync: S3ClientProtocol.PutBucketAccelerateConfigurationSyncType? = nil,
            putBucketAclAsync: S3ClientProtocol.PutBucketAclAsyncType? = nil,
            putBucketAclSync: S3ClientProtocol.PutBucketAclSyncType? = nil,
            putBucketAnalyticsConfigurationAsync: S3ClientProtocol.PutBucketAnalyticsConfigurationAsyncType? = nil,
            putBucketAnalyticsConfigurationSync: S3ClientProtocol.PutBucketAnalyticsConfigurationSyncType? = nil,
            putBucketCorsAsync: S3ClientProtocol.PutBucketCorsAsyncType? = nil,
            putBucketCorsSync: S3ClientProtocol.PutBucketCorsSyncType? = nil,
            putBucketEncryptionAsync: S3ClientProtocol.PutBucketEncryptionAsyncType? = nil,
            putBucketEncryptionSync: S3ClientProtocol.PutBucketEncryptionSyncType? = nil,
            putBucketInventoryConfigurationAsync: S3ClientProtocol.PutBucketInventoryConfigurationAsyncType? = nil,
            putBucketInventoryConfigurationSync: S3ClientProtocol.PutBucketInventoryConfigurationSyncType? = nil,
            putBucketLifecycleAsync: S3ClientProtocol.PutBucketLifecycleAsyncType? = nil,
            putBucketLifecycleSync: S3ClientProtocol.PutBucketLifecycleSyncType? = nil,
            putBucketLifecycleConfigurationAsync: S3ClientProtocol.PutBucketLifecycleConfigurationAsyncType? = nil,
            putBucketLifecycleConfigurationSync: S3ClientProtocol.PutBucketLifecycleConfigurationSyncType? = nil,
            putBucketLoggingAsync: S3ClientProtocol.PutBucketLoggingAsyncType? = nil,
            putBucketLoggingSync: S3ClientProtocol.PutBucketLoggingSyncType? = nil,
            putBucketMetricsConfigurationAsync: S3ClientProtocol.PutBucketMetricsConfigurationAsyncType? = nil,
            putBucketMetricsConfigurationSync: S3ClientProtocol.PutBucketMetricsConfigurationSyncType? = nil,
            putBucketNotificationAsync: S3ClientProtocol.PutBucketNotificationAsyncType? = nil,
            putBucketNotificationSync: S3ClientProtocol.PutBucketNotificationSyncType? = nil,
            putBucketNotificationConfigurationAsync: S3ClientProtocol.PutBucketNotificationConfigurationAsyncType? = nil,
            putBucketNotificationConfigurationSync: S3ClientProtocol.PutBucketNotificationConfigurationSyncType? = nil,
            putBucketPolicyAsync: S3ClientProtocol.PutBucketPolicyAsyncType? = nil,
            putBucketPolicySync: S3ClientProtocol.PutBucketPolicySyncType? = nil,
            putBucketReplicationAsync: S3ClientProtocol.PutBucketReplicationAsyncType? = nil,
            putBucketReplicationSync: S3ClientProtocol.PutBucketReplicationSyncType? = nil,
            putBucketRequestPaymentAsync: S3ClientProtocol.PutBucketRequestPaymentAsyncType? = nil,
            putBucketRequestPaymentSync: S3ClientProtocol.PutBucketRequestPaymentSyncType? = nil,
            putBucketTaggingAsync: S3ClientProtocol.PutBucketTaggingAsyncType? = nil,
            putBucketTaggingSync: S3ClientProtocol.PutBucketTaggingSyncType? = nil,
            putBucketVersioningAsync: S3ClientProtocol.PutBucketVersioningAsyncType? = nil,
            putBucketVersioningSync: S3ClientProtocol.PutBucketVersioningSyncType? = nil,
            putBucketWebsiteAsync: S3ClientProtocol.PutBucketWebsiteAsyncType? = nil,
            putBucketWebsiteSync: S3ClientProtocol.PutBucketWebsiteSyncType? = nil,
            putObjectAsync: S3ClientProtocol.PutObjectAsyncType? = nil,
            putObjectSync: S3ClientProtocol.PutObjectSyncType? = nil,
            putObjectAclAsync: S3ClientProtocol.PutObjectAclAsyncType? = nil,
            putObjectAclSync: S3ClientProtocol.PutObjectAclSyncType? = nil,
            putObjectLegalHoldAsync: S3ClientProtocol.PutObjectLegalHoldAsyncType? = nil,
            putObjectLegalHoldSync: S3ClientProtocol.PutObjectLegalHoldSyncType? = nil,
            putObjectLockConfigurationAsync: S3ClientProtocol.PutObjectLockConfigurationAsyncType? = nil,
            putObjectLockConfigurationSync: S3ClientProtocol.PutObjectLockConfigurationSyncType? = nil,
            putObjectRetentionAsync: S3ClientProtocol.PutObjectRetentionAsyncType? = nil,
            putObjectRetentionSync: S3ClientProtocol.PutObjectRetentionSyncType? = nil,
            putObjectTaggingAsync: S3ClientProtocol.PutObjectTaggingAsyncType? = nil,
            putObjectTaggingSync: S3ClientProtocol.PutObjectTaggingSyncType? = nil,
            putPublicAccessBlockAsync: S3ClientProtocol.PutPublicAccessBlockAsyncType? = nil,
            putPublicAccessBlockSync: S3ClientProtocol.PutPublicAccessBlockSyncType? = nil,
            restoreObjectAsync: S3ClientProtocol.RestoreObjectAsyncType? = nil,
            restoreObjectSync: S3ClientProtocol.RestoreObjectSyncType? = nil,
            selectObjectContentAsync: S3ClientProtocol.SelectObjectContentAsyncType? = nil,
            selectObjectContentSync: S3ClientProtocol.SelectObjectContentSyncType? = nil,
            uploadPartAsync: S3ClientProtocol.UploadPartAsyncType? = nil,
            uploadPartSync: S3ClientProtocol.UploadPartSyncType? = nil,
            uploadPartCopyAsync: S3ClientProtocol.UploadPartCopyAsyncType? = nil,
            uploadPartCopySync: S3ClientProtocol.UploadPartCopySyncType? = nil) {
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
        self.deleteBucketInventoryConfigurationAsyncOverride = deleteBucketInventoryConfigurationAsync
        self.deleteBucketInventoryConfigurationSyncOverride = deleteBucketInventoryConfigurationSync
        self.deleteBucketLifecycleAsyncOverride = deleteBucketLifecycleAsync
        self.deleteBucketLifecycleSyncOverride = deleteBucketLifecycleSync
        self.deleteBucketMetricsConfigurationAsyncOverride = deleteBucketMetricsConfigurationAsync
        self.deleteBucketMetricsConfigurationSyncOverride = deleteBucketMetricsConfigurationSync
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.AbortMultipartUploadOutput, HTTPClientError>) -> ()) throws {
        if let abortMultipartUploadAsyncOverride = abortMultipartUploadAsyncOverride {
            return try abortMultipartUploadAsyncOverride(input, reporting, completion)
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
            input: S3Model.AbortMultipartUploadRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.AbortMultipartUploadOutput {
        if let abortMultipartUploadSyncOverride = abortMultipartUploadSyncOverride {
            return try abortMultipartUploadSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.CompleteMultipartUploadOutput, HTTPClientError>) -> ()) throws {
        if let completeMultipartUploadAsyncOverride = completeMultipartUploadAsyncOverride {
            return try completeMultipartUploadAsyncOverride(input, reporting, completion)
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
            input: S3Model.CompleteMultipartUploadRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.CompleteMultipartUploadOutput {
        if let completeMultipartUploadSyncOverride = completeMultipartUploadSyncOverride {
            return try completeMultipartUploadSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.CopyObjectOutput, HTTPClientError>) -> ()) throws {
        if let copyObjectAsyncOverride = copyObjectAsyncOverride {
            return try copyObjectAsyncOverride(input, reporting, completion)
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
            input: S3Model.CopyObjectRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.CopyObjectOutput {
        if let copyObjectSyncOverride = copyObjectSyncOverride {
            return try copyObjectSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.CreateBucketOutput, HTTPClientError>) -> ()) throws {
        if let createBucketAsyncOverride = createBucketAsyncOverride {
            return try createBucketAsyncOverride(input, reporting, completion)
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
            input: S3Model.CreateBucketRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.CreateBucketOutput {
        if let createBucketSyncOverride = createBucketSyncOverride {
            return try createBucketSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.CreateMultipartUploadOutput, HTTPClientError>) -> ()) throws {
        if let createMultipartUploadAsyncOverride = createMultipartUploadAsyncOverride {
            return try createMultipartUploadAsyncOverride(input, reporting, completion)
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
            input: S3Model.CreateMultipartUploadRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.CreateMultipartUploadOutput {
        if let createMultipartUploadSyncOverride = createMultipartUploadSyncOverride {
            return try createMultipartUploadSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteBucketAsyncOverride = deleteBucketAsyncOverride {
            return try deleteBucketAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteBucket operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketRequest object being passed to this operation.
     */
    public func deleteBucketSync(
            input: S3Model.DeleteBucketRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let deleteBucketSyncOverride = deleteBucketSyncOverride {
            return try deleteBucketSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteBucketAnalyticsConfigurationAsyncOverride = deleteBucketAnalyticsConfigurationAsyncOverride {
            return try deleteBucketAnalyticsConfigurationAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteBucketAnalyticsConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketAnalyticsConfigurationRequest object being passed to this operation.
     */
    public func deleteBucketAnalyticsConfigurationSync(
            input: S3Model.DeleteBucketAnalyticsConfigurationRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let deleteBucketAnalyticsConfigurationSyncOverride = deleteBucketAnalyticsConfigurationSyncOverride {
            return try deleteBucketAnalyticsConfigurationSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteBucketCorsAsyncOverride = deleteBucketCorsAsyncOverride {
            return try deleteBucketCorsAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteBucketCors operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketCorsRequest object being passed to this operation.
     */
    public func deleteBucketCorsSync(
            input: S3Model.DeleteBucketCorsRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let deleteBucketCorsSyncOverride = deleteBucketCorsSyncOverride {
            return try deleteBucketCorsSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteBucketEncryptionAsyncOverride = deleteBucketEncryptionAsyncOverride {
            return try deleteBucketEncryptionAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteBucketEncryption operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketEncryptionRequest object being passed to this operation.
     */
    public func deleteBucketEncryptionSync(
            input: S3Model.DeleteBucketEncryptionRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let deleteBucketEncryptionSyncOverride = deleteBucketEncryptionSyncOverride {
            return try deleteBucketEncryptionSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteBucketInventoryConfigurationAsyncOverride = deleteBucketInventoryConfigurationAsyncOverride {
            return try deleteBucketInventoryConfigurationAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteBucketInventoryConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketInventoryConfigurationRequest object being passed to this operation.
     */
    public func deleteBucketInventoryConfigurationSync(
            input: S3Model.DeleteBucketInventoryConfigurationRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let deleteBucketInventoryConfigurationSyncOverride = deleteBucketInventoryConfigurationSyncOverride {
            return try deleteBucketInventoryConfigurationSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteBucketLifecycleAsyncOverride = deleteBucketLifecycleAsyncOverride {
            return try deleteBucketLifecycleAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteBucketLifecycle operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketLifecycleRequest object being passed to this operation.
     */
    public func deleteBucketLifecycleSync(
            input: S3Model.DeleteBucketLifecycleRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let deleteBucketLifecycleSyncOverride = deleteBucketLifecycleSyncOverride {
            return try deleteBucketLifecycleSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteBucketMetricsConfigurationAsyncOverride = deleteBucketMetricsConfigurationAsyncOverride {
            return try deleteBucketMetricsConfigurationAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteBucketMetricsConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketMetricsConfigurationRequest object being passed to this operation.
     */
    public func deleteBucketMetricsConfigurationSync(
            input: S3Model.DeleteBucketMetricsConfigurationRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let deleteBucketMetricsConfigurationSyncOverride = deleteBucketMetricsConfigurationSyncOverride {
            return try deleteBucketMetricsConfigurationSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteBucketPolicyAsyncOverride = deleteBucketPolicyAsyncOverride {
            return try deleteBucketPolicyAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteBucketPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketPolicyRequest object being passed to this operation.
     */
    public func deleteBucketPolicySync(
            input: S3Model.DeleteBucketPolicyRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let deleteBucketPolicySyncOverride = deleteBucketPolicySyncOverride {
            return try deleteBucketPolicySyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteBucketReplicationAsyncOverride = deleteBucketReplicationAsyncOverride {
            return try deleteBucketReplicationAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteBucketReplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketReplicationRequest object being passed to this operation.
     */
    public func deleteBucketReplicationSync(
            input: S3Model.DeleteBucketReplicationRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let deleteBucketReplicationSyncOverride = deleteBucketReplicationSyncOverride {
            return try deleteBucketReplicationSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteBucketTaggingAsyncOverride = deleteBucketTaggingAsyncOverride {
            return try deleteBucketTaggingAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteBucketTagging operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketTaggingRequest object being passed to this operation.
     */
    public func deleteBucketTaggingSync(
            input: S3Model.DeleteBucketTaggingRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let deleteBucketTaggingSyncOverride = deleteBucketTaggingSyncOverride {
            return try deleteBucketTaggingSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteBucketWebsiteAsyncOverride = deleteBucketWebsiteAsyncOverride {
            return try deleteBucketWebsiteAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeleteBucketWebsite operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketWebsiteRequest object being passed to this operation.
     */
    public func deleteBucketWebsiteSync(
            input: S3Model.DeleteBucketWebsiteRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let deleteBucketWebsiteSyncOverride = deleteBucketWebsiteSyncOverride {
            return try deleteBucketWebsiteSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.DeleteObjectOutput, HTTPClientError>) -> ()) throws {
        if let deleteObjectAsyncOverride = deleteObjectAsyncOverride {
            return try deleteObjectAsyncOverride(input, reporting, completion)
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
            input: S3Model.DeleteObjectRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.DeleteObjectOutput {
        if let deleteObjectSyncOverride = deleteObjectSyncOverride {
            return try deleteObjectSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.DeleteObjectTaggingOutput, HTTPClientError>) -> ()) throws {
        if let deleteObjectTaggingAsyncOverride = deleteObjectTaggingAsyncOverride {
            return try deleteObjectTaggingAsyncOverride(input, reporting, completion)
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
            input: S3Model.DeleteObjectTaggingRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.DeleteObjectTaggingOutput {
        if let deleteObjectTaggingSyncOverride = deleteObjectTaggingSyncOverride {
            return try deleteObjectTaggingSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.DeleteObjectsOutput, HTTPClientError>) -> ()) throws {
        if let deleteObjectsAsyncOverride = deleteObjectsAsyncOverride {
            return try deleteObjectsAsyncOverride(input, reporting, completion)
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
            input: S3Model.DeleteObjectsRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.DeleteObjectsOutput {
        if let deleteObjectsSyncOverride = deleteObjectsSyncOverride {
            return try deleteObjectsSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deletePublicAccessBlockAsyncOverride = deletePublicAccessBlockAsyncOverride {
            return try deletePublicAccessBlockAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the DeletePublicAccessBlock operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeletePublicAccessBlockRequest object being passed to this operation.
     */
    public func deletePublicAccessBlockSync(
            input: S3Model.DeletePublicAccessBlockRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let deletePublicAccessBlockSyncOverride = deletePublicAccessBlockSyncOverride {
            return try deletePublicAccessBlockSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.GetBucketAccelerateConfigurationOutput, HTTPClientError>) -> ()) throws {
        if let getBucketAccelerateConfigurationAsyncOverride = getBucketAccelerateConfigurationAsyncOverride {
            return try getBucketAccelerateConfigurationAsyncOverride(input, reporting, completion)
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
            input: S3Model.GetBucketAccelerateConfigurationRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.GetBucketAccelerateConfigurationOutput {
        if let getBucketAccelerateConfigurationSyncOverride = getBucketAccelerateConfigurationSyncOverride {
            return try getBucketAccelerateConfigurationSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.GetBucketAclOutput, HTTPClientError>) -> ()) throws {
        if let getBucketAclAsyncOverride = getBucketAclAsyncOverride {
            return try getBucketAclAsyncOverride(input, reporting, completion)
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
            input: S3Model.GetBucketAclRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.GetBucketAclOutput {
        if let getBucketAclSyncOverride = getBucketAclSyncOverride {
            return try getBucketAclSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.GetBucketAnalyticsConfigurationOutput, HTTPClientError>) -> ()) throws {
        if let getBucketAnalyticsConfigurationAsyncOverride = getBucketAnalyticsConfigurationAsyncOverride {
            return try getBucketAnalyticsConfigurationAsyncOverride(input, reporting, completion)
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
            input: S3Model.GetBucketAnalyticsConfigurationRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.GetBucketAnalyticsConfigurationOutput {
        if let getBucketAnalyticsConfigurationSyncOverride = getBucketAnalyticsConfigurationSyncOverride {
            return try getBucketAnalyticsConfigurationSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.GetBucketCorsOutput, HTTPClientError>) -> ()) throws {
        if let getBucketCorsAsyncOverride = getBucketCorsAsyncOverride {
            return try getBucketCorsAsyncOverride(input, reporting, completion)
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
            input: S3Model.GetBucketCorsRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.GetBucketCorsOutput {
        if let getBucketCorsSyncOverride = getBucketCorsSyncOverride {
            return try getBucketCorsSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.GetBucketEncryptionOutput, HTTPClientError>) -> ()) throws {
        if let getBucketEncryptionAsyncOverride = getBucketEncryptionAsyncOverride {
            return try getBucketEncryptionAsyncOverride(input, reporting, completion)
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
            input: S3Model.GetBucketEncryptionRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.GetBucketEncryptionOutput {
        if let getBucketEncryptionSyncOverride = getBucketEncryptionSyncOverride {
            return try getBucketEncryptionSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.GetBucketInventoryConfigurationOutput, HTTPClientError>) -> ()) throws {
        if let getBucketInventoryConfigurationAsyncOverride = getBucketInventoryConfigurationAsyncOverride {
            return try getBucketInventoryConfigurationAsyncOverride(input, reporting, completion)
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
            input: S3Model.GetBucketInventoryConfigurationRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.GetBucketInventoryConfigurationOutput {
        if let getBucketInventoryConfigurationSyncOverride = getBucketInventoryConfigurationSyncOverride {
            return try getBucketInventoryConfigurationSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.GetBucketLifecycleOutput, HTTPClientError>) -> ()) throws {
        if let getBucketLifecycleAsyncOverride = getBucketLifecycleAsyncOverride {
            return try getBucketLifecycleAsyncOverride(input, reporting, completion)
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
            input: S3Model.GetBucketLifecycleRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.GetBucketLifecycleOutput {
        if let getBucketLifecycleSyncOverride = getBucketLifecycleSyncOverride {
            return try getBucketLifecycleSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.GetBucketLifecycleConfigurationOutput, HTTPClientError>) -> ()) throws {
        if let getBucketLifecycleConfigurationAsyncOverride = getBucketLifecycleConfigurationAsyncOverride {
            return try getBucketLifecycleConfigurationAsyncOverride(input, reporting, completion)
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
            input: S3Model.GetBucketLifecycleConfigurationRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.GetBucketLifecycleConfigurationOutput {
        if let getBucketLifecycleConfigurationSyncOverride = getBucketLifecycleConfigurationSyncOverride {
            return try getBucketLifecycleConfigurationSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.GetBucketLocationOutput, HTTPClientError>) -> ()) throws {
        if let getBucketLocationAsyncOverride = getBucketLocationAsyncOverride {
            return try getBucketLocationAsyncOverride(input, reporting, completion)
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
            input: S3Model.GetBucketLocationRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.GetBucketLocationOutput {
        if let getBucketLocationSyncOverride = getBucketLocationSyncOverride {
            return try getBucketLocationSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.GetBucketLoggingOutput, HTTPClientError>) -> ()) throws {
        if let getBucketLoggingAsyncOverride = getBucketLoggingAsyncOverride {
            return try getBucketLoggingAsyncOverride(input, reporting, completion)
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
            input: S3Model.GetBucketLoggingRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.GetBucketLoggingOutput {
        if let getBucketLoggingSyncOverride = getBucketLoggingSyncOverride {
            return try getBucketLoggingSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.GetBucketMetricsConfigurationOutput, HTTPClientError>) -> ()) throws {
        if let getBucketMetricsConfigurationAsyncOverride = getBucketMetricsConfigurationAsyncOverride {
            return try getBucketMetricsConfigurationAsyncOverride(input, reporting, completion)
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
            input: S3Model.GetBucketMetricsConfigurationRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.GetBucketMetricsConfigurationOutput {
        if let getBucketMetricsConfigurationSyncOverride = getBucketMetricsConfigurationSyncOverride {
            return try getBucketMetricsConfigurationSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.NotificationConfigurationDeprecated, HTTPClientError>) -> ()) throws {
        if let getBucketNotificationAsyncOverride = getBucketNotificationAsyncOverride {
            return try getBucketNotificationAsyncOverride(input, reporting, completion)
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
            input: S3Model.GetBucketNotificationConfigurationRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.NotificationConfigurationDeprecated {
        if let getBucketNotificationSyncOverride = getBucketNotificationSyncOverride {
            return try getBucketNotificationSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.NotificationConfiguration, HTTPClientError>) -> ()) throws {
        if let getBucketNotificationConfigurationAsyncOverride = getBucketNotificationConfigurationAsyncOverride {
            return try getBucketNotificationConfigurationAsyncOverride(input, reporting, completion)
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
            input: S3Model.GetBucketNotificationConfigurationRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.NotificationConfiguration {
        if let getBucketNotificationConfigurationSyncOverride = getBucketNotificationConfigurationSyncOverride {
            return try getBucketNotificationConfigurationSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.GetBucketPolicyOutput, HTTPClientError>) -> ()) throws {
        if let getBucketPolicyAsyncOverride = getBucketPolicyAsyncOverride {
            return try getBucketPolicyAsyncOverride(input, reporting, completion)
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
            input: S3Model.GetBucketPolicyRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.GetBucketPolicyOutput {
        if let getBucketPolicySyncOverride = getBucketPolicySyncOverride {
            return try getBucketPolicySyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.GetBucketPolicyStatusOutput, HTTPClientError>) -> ()) throws {
        if let getBucketPolicyStatusAsyncOverride = getBucketPolicyStatusAsyncOverride {
            return try getBucketPolicyStatusAsyncOverride(input, reporting, completion)
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
            input: S3Model.GetBucketPolicyStatusRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.GetBucketPolicyStatusOutput {
        if let getBucketPolicyStatusSyncOverride = getBucketPolicyStatusSyncOverride {
            return try getBucketPolicyStatusSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.GetBucketReplicationOutput, HTTPClientError>) -> ()) throws {
        if let getBucketReplicationAsyncOverride = getBucketReplicationAsyncOverride {
            return try getBucketReplicationAsyncOverride(input, reporting, completion)
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
            input: S3Model.GetBucketReplicationRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.GetBucketReplicationOutput {
        if let getBucketReplicationSyncOverride = getBucketReplicationSyncOverride {
            return try getBucketReplicationSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.GetBucketRequestPaymentOutput, HTTPClientError>) -> ()) throws {
        if let getBucketRequestPaymentAsyncOverride = getBucketRequestPaymentAsyncOverride {
            return try getBucketRequestPaymentAsyncOverride(input, reporting, completion)
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
            input: S3Model.GetBucketRequestPaymentRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.GetBucketRequestPaymentOutput {
        if let getBucketRequestPaymentSyncOverride = getBucketRequestPaymentSyncOverride {
            return try getBucketRequestPaymentSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.GetBucketTaggingOutput, HTTPClientError>) -> ()) throws {
        if let getBucketTaggingAsyncOverride = getBucketTaggingAsyncOverride {
            return try getBucketTaggingAsyncOverride(input, reporting, completion)
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
            input: S3Model.GetBucketTaggingRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.GetBucketTaggingOutput {
        if let getBucketTaggingSyncOverride = getBucketTaggingSyncOverride {
            return try getBucketTaggingSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.GetBucketVersioningOutput, HTTPClientError>) -> ()) throws {
        if let getBucketVersioningAsyncOverride = getBucketVersioningAsyncOverride {
            return try getBucketVersioningAsyncOverride(input, reporting, completion)
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
            input: S3Model.GetBucketVersioningRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.GetBucketVersioningOutput {
        if let getBucketVersioningSyncOverride = getBucketVersioningSyncOverride {
            return try getBucketVersioningSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.GetBucketWebsiteOutput, HTTPClientError>) -> ()) throws {
        if let getBucketWebsiteAsyncOverride = getBucketWebsiteAsyncOverride {
            return try getBucketWebsiteAsyncOverride(input, reporting, completion)
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
            input: S3Model.GetBucketWebsiteRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.GetBucketWebsiteOutput {
        if let getBucketWebsiteSyncOverride = getBucketWebsiteSyncOverride {
            return try getBucketWebsiteSyncOverride(input, reporting)
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
           The possible errors are: noSuchKey.
     */
    public func getObjectAsync(
            input: S3Model.GetObjectRequest, 
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.GetObjectOutput, HTTPClientError>) -> ()) throws {
        if let getObjectAsyncOverride = getObjectAsyncOverride {
            return try getObjectAsyncOverride(input, reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the GetObject operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetObjectRequest object being passed to this operation.
     - Returns: The GetObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchKey.
     */
    public func getObjectSync(
            input: S3Model.GetObjectRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.GetObjectOutput {
        if let getObjectSyncOverride = getObjectSyncOverride {
            return try getObjectSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.GetObjectAclOutput, HTTPClientError>) -> ()) throws {
        if let getObjectAclAsyncOverride = getObjectAclAsyncOverride {
            return try getObjectAclAsyncOverride(input, reporting, completion)
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
            input: S3Model.GetObjectAclRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.GetObjectAclOutput {
        if let getObjectAclSyncOverride = getObjectAclSyncOverride {
            return try getObjectAclSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.GetObjectLegalHoldOutput, HTTPClientError>) -> ()) throws {
        if let getObjectLegalHoldAsyncOverride = getObjectLegalHoldAsyncOverride {
            return try getObjectLegalHoldAsyncOverride(input, reporting, completion)
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
            input: S3Model.GetObjectLegalHoldRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.GetObjectLegalHoldOutput {
        if let getObjectLegalHoldSyncOverride = getObjectLegalHoldSyncOverride {
            return try getObjectLegalHoldSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.GetObjectLockConfigurationOutput, HTTPClientError>) -> ()) throws {
        if let getObjectLockConfigurationAsyncOverride = getObjectLockConfigurationAsyncOverride {
            return try getObjectLockConfigurationAsyncOverride(input, reporting, completion)
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
            input: S3Model.GetObjectLockConfigurationRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.GetObjectLockConfigurationOutput {
        if let getObjectLockConfigurationSyncOverride = getObjectLockConfigurationSyncOverride {
            return try getObjectLockConfigurationSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.GetObjectRetentionOutput, HTTPClientError>) -> ()) throws {
        if let getObjectRetentionAsyncOverride = getObjectRetentionAsyncOverride {
            return try getObjectRetentionAsyncOverride(input, reporting, completion)
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
            input: S3Model.GetObjectRetentionRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.GetObjectRetentionOutput {
        if let getObjectRetentionSyncOverride = getObjectRetentionSyncOverride {
            return try getObjectRetentionSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.GetObjectTaggingOutput, HTTPClientError>) -> ()) throws {
        if let getObjectTaggingAsyncOverride = getObjectTaggingAsyncOverride {
            return try getObjectTaggingAsyncOverride(input, reporting, completion)
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
            input: S3Model.GetObjectTaggingRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.GetObjectTaggingOutput {
        if let getObjectTaggingSyncOverride = getObjectTaggingSyncOverride {
            return try getObjectTaggingSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.GetObjectTorrentOutput, HTTPClientError>) -> ()) throws {
        if let getObjectTorrentAsyncOverride = getObjectTorrentAsyncOverride {
            return try getObjectTorrentAsyncOverride(input, reporting, completion)
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
            input: S3Model.GetObjectTorrentRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.GetObjectTorrentOutput {
        if let getObjectTorrentSyncOverride = getObjectTorrentSyncOverride {
            return try getObjectTorrentSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.GetPublicAccessBlockOutput, HTTPClientError>) -> ()) throws {
        if let getPublicAccessBlockAsyncOverride = getPublicAccessBlockAsyncOverride {
            return try getPublicAccessBlockAsyncOverride(input, reporting, completion)
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
            input: S3Model.GetPublicAccessBlockRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.GetPublicAccessBlockOutput {
        if let getPublicAccessBlockSyncOverride = getPublicAccessBlockSyncOverride {
            return try getPublicAccessBlockSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let headBucketAsyncOverride = headBucketAsyncOverride {
            return try headBucketAsyncOverride(input, reporting, completion)
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
            input: S3Model.HeadBucketRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let headBucketSyncOverride = headBucketSyncOverride {
            return try headBucketSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.HeadObjectOutput, HTTPClientError>) -> ()) throws {
        if let headObjectAsyncOverride = headObjectAsyncOverride {
            return try headObjectAsyncOverride(input, reporting, completion)
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
            input: S3Model.HeadObjectRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.HeadObjectOutput {
        if let headObjectSyncOverride = headObjectSyncOverride {
            return try headObjectSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.ListBucketAnalyticsConfigurationsOutput, HTTPClientError>) -> ()) throws {
        if let listBucketAnalyticsConfigurationsAsyncOverride = listBucketAnalyticsConfigurationsAsyncOverride {
            return try listBucketAnalyticsConfigurationsAsyncOverride(input, reporting, completion)
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
            input: S3Model.ListBucketAnalyticsConfigurationsRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.ListBucketAnalyticsConfigurationsOutput {
        if let listBucketAnalyticsConfigurationsSyncOverride = listBucketAnalyticsConfigurationsSyncOverride {
            return try listBucketAnalyticsConfigurationsSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.ListBucketInventoryConfigurationsOutput, HTTPClientError>) -> ()) throws {
        if let listBucketInventoryConfigurationsAsyncOverride = listBucketInventoryConfigurationsAsyncOverride {
            return try listBucketInventoryConfigurationsAsyncOverride(input, reporting, completion)
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
            input: S3Model.ListBucketInventoryConfigurationsRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.ListBucketInventoryConfigurationsOutput {
        if let listBucketInventoryConfigurationsSyncOverride = listBucketInventoryConfigurationsSyncOverride {
            return try listBucketInventoryConfigurationsSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.ListBucketMetricsConfigurationsOutput, HTTPClientError>) -> ()) throws {
        if let listBucketMetricsConfigurationsAsyncOverride = listBucketMetricsConfigurationsAsyncOverride {
            return try listBucketMetricsConfigurationsAsyncOverride(input, reporting, completion)
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
            input: S3Model.ListBucketMetricsConfigurationsRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.ListBucketMetricsConfigurationsOutput {
        if let listBucketMetricsConfigurationsSyncOverride = listBucketMetricsConfigurationsSyncOverride {
            return try listBucketMetricsConfigurationsSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.ListBucketsOutput, HTTPClientError>) -> ()) throws {
        if let listBucketsAsyncOverride = listBucketsAsyncOverride {
            return try listBucketsAsyncOverride(reporting, completion)
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListBuckets operation waiting for the response before returning.
     - Returns: The ListBucketsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listBucketsSync(
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.ListBucketsOutput {
        if let listBucketsSyncOverride = listBucketsSyncOverride {
            return try listBucketsSyncOverride(reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.ListMultipartUploadsOutput, HTTPClientError>) -> ()) throws {
        if let listMultipartUploadsAsyncOverride = listMultipartUploadsAsyncOverride {
            return try listMultipartUploadsAsyncOverride(input, reporting, completion)
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
            input: S3Model.ListMultipartUploadsRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.ListMultipartUploadsOutput {
        if let listMultipartUploadsSyncOverride = listMultipartUploadsSyncOverride {
            return try listMultipartUploadsSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.ListObjectVersionsOutput, HTTPClientError>) -> ()) throws {
        if let listObjectVersionsAsyncOverride = listObjectVersionsAsyncOverride {
            return try listObjectVersionsAsyncOverride(input, reporting, completion)
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
            input: S3Model.ListObjectVersionsRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.ListObjectVersionsOutput {
        if let listObjectVersionsSyncOverride = listObjectVersionsSyncOverride {
            return try listObjectVersionsSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.ListObjectsOutput, HTTPClientError>) -> ()) throws {
        if let listObjectsAsyncOverride = listObjectsAsyncOverride {
            return try listObjectsAsyncOverride(input, reporting, completion)
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
            input: S3Model.ListObjectsRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.ListObjectsOutput {
        if let listObjectsSyncOverride = listObjectsSyncOverride {
            return try listObjectsSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.ListObjectsV2Output, HTTPClientError>) -> ()) throws {
        if let listObjectsV2AsyncOverride = listObjectsV2AsyncOverride {
            return try listObjectsV2AsyncOverride(input, reporting, completion)
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
            input: S3Model.ListObjectsV2Request,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.ListObjectsV2Output {
        if let listObjectsV2SyncOverride = listObjectsV2SyncOverride {
            return try listObjectsV2SyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.ListPartsOutput, HTTPClientError>) -> ()) throws {
        if let listPartsAsyncOverride = listPartsAsyncOverride {
            return try listPartsAsyncOverride(input, reporting, completion)
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
            input: S3Model.ListPartsRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.ListPartsOutput {
        if let listPartsSyncOverride = listPartsSyncOverride {
            return try listPartsSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putBucketAccelerateConfigurationAsyncOverride = putBucketAccelerateConfigurationAsyncOverride {
            return try putBucketAccelerateConfigurationAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutBucketAccelerateConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketAccelerateConfigurationRequest object being passed to this operation.
     */
    public func putBucketAccelerateConfigurationSync(
            input: S3Model.PutBucketAccelerateConfigurationRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let putBucketAccelerateConfigurationSyncOverride = putBucketAccelerateConfigurationSyncOverride {
            return try putBucketAccelerateConfigurationSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putBucketAclAsyncOverride = putBucketAclAsyncOverride {
            return try putBucketAclAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutBucketAcl operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketAclRequest object being passed to this operation.
     */
    public func putBucketAclSync(
            input: S3Model.PutBucketAclRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let putBucketAclSyncOverride = putBucketAclSyncOverride {
            return try putBucketAclSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putBucketAnalyticsConfigurationAsyncOverride = putBucketAnalyticsConfigurationAsyncOverride {
            return try putBucketAnalyticsConfigurationAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutBucketAnalyticsConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketAnalyticsConfigurationRequest object being passed to this operation.
     */
    public func putBucketAnalyticsConfigurationSync(
            input: S3Model.PutBucketAnalyticsConfigurationRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let putBucketAnalyticsConfigurationSyncOverride = putBucketAnalyticsConfigurationSyncOverride {
            return try putBucketAnalyticsConfigurationSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putBucketCorsAsyncOverride = putBucketCorsAsyncOverride {
            return try putBucketCorsAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutBucketCors operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketCorsRequest object being passed to this operation.
     */
    public func putBucketCorsSync(
            input: S3Model.PutBucketCorsRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let putBucketCorsSyncOverride = putBucketCorsSyncOverride {
            return try putBucketCorsSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putBucketEncryptionAsyncOverride = putBucketEncryptionAsyncOverride {
            return try putBucketEncryptionAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutBucketEncryption operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketEncryptionRequest object being passed to this operation.
     */
    public func putBucketEncryptionSync(
            input: S3Model.PutBucketEncryptionRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let putBucketEncryptionSyncOverride = putBucketEncryptionSyncOverride {
            return try putBucketEncryptionSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putBucketInventoryConfigurationAsyncOverride = putBucketInventoryConfigurationAsyncOverride {
            return try putBucketInventoryConfigurationAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutBucketInventoryConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketInventoryConfigurationRequest object being passed to this operation.
     */
    public func putBucketInventoryConfigurationSync(
            input: S3Model.PutBucketInventoryConfigurationRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let putBucketInventoryConfigurationSyncOverride = putBucketInventoryConfigurationSyncOverride {
            return try putBucketInventoryConfigurationSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putBucketLifecycleAsyncOverride = putBucketLifecycleAsyncOverride {
            return try putBucketLifecycleAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutBucketLifecycle operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketLifecycleRequest object being passed to this operation.
     */
    public func putBucketLifecycleSync(
            input: S3Model.PutBucketLifecycleRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let putBucketLifecycleSyncOverride = putBucketLifecycleSyncOverride {
            return try putBucketLifecycleSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putBucketLifecycleConfigurationAsyncOverride = putBucketLifecycleConfigurationAsyncOverride {
            return try putBucketLifecycleConfigurationAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutBucketLifecycleConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketLifecycleConfigurationRequest object being passed to this operation.
     */
    public func putBucketLifecycleConfigurationSync(
            input: S3Model.PutBucketLifecycleConfigurationRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let putBucketLifecycleConfigurationSyncOverride = putBucketLifecycleConfigurationSyncOverride {
            return try putBucketLifecycleConfigurationSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putBucketLoggingAsyncOverride = putBucketLoggingAsyncOverride {
            return try putBucketLoggingAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutBucketLogging operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketLoggingRequest object being passed to this operation.
     */
    public func putBucketLoggingSync(
            input: S3Model.PutBucketLoggingRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let putBucketLoggingSyncOverride = putBucketLoggingSyncOverride {
            return try putBucketLoggingSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putBucketMetricsConfigurationAsyncOverride = putBucketMetricsConfigurationAsyncOverride {
            return try putBucketMetricsConfigurationAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutBucketMetricsConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketMetricsConfigurationRequest object being passed to this operation.
     */
    public func putBucketMetricsConfigurationSync(
            input: S3Model.PutBucketMetricsConfigurationRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let putBucketMetricsConfigurationSyncOverride = putBucketMetricsConfigurationSyncOverride {
            return try putBucketMetricsConfigurationSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putBucketNotificationAsyncOverride = putBucketNotificationAsyncOverride {
            return try putBucketNotificationAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutBucketNotification operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketNotificationRequest object being passed to this operation.
     */
    public func putBucketNotificationSync(
            input: S3Model.PutBucketNotificationRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let putBucketNotificationSyncOverride = putBucketNotificationSyncOverride {
            return try putBucketNotificationSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putBucketNotificationConfigurationAsyncOverride = putBucketNotificationConfigurationAsyncOverride {
            return try putBucketNotificationConfigurationAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutBucketNotificationConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketNotificationConfigurationRequest object being passed to this operation.
     */
    public func putBucketNotificationConfigurationSync(
            input: S3Model.PutBucketNotificationConfigurationRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let putBucketNotificationConfigurationSyncOverride = putBucketNotificationConfigurationSyncOverride {
            return try putBucketNotificationConfigurationSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putBucketPolicyAsyncOverride = putBucketPolicyAsyncOverride {
            return try putBucketPolicyAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutBucketPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketPolicyRequest object being passed to this operation.
     */
    public func putBucketPolicySync(
            input: S3Model.PutBucketPolicyRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let putBucketPolicySyncOverride = putBucketPolicySyncOverride {
            return try putBucketPolicySyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putBucketReplicationAsyncOverride = putBucketReplicationAsyncOverride {
            return try putBucketReplicationAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutBucketReplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketReplicationRequest object being passed to this operation.
     */
    public func putBucketReplicationSync(
            input: S3Model.PutBucketReplicationRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let putBucketReplicationSyncOverride = putBucketReplicationSyncOverride {
            return try putBucketReplicationSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putBucketRequestPaymentAsyncOverride = putBucketRequestPaymentAsyncOverride {
            return try putBucketRequestPaymentAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutBucketRequestPayment operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketRequestPaymentRequest object being passed to this operation.
     */
    public func putBucketRequestPaymentSync(
            input: S3Model.PutBucketRequestPaymentRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let putBucketRequestPaymentSyncOverride = putBucketRequestPaymentSyncOverride {
            return try putBucketRequestPaymentSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putBucketTaggingAsyncOverride = putBucketTaggingAsyncOverride {
            return try putBucketTaggingAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutBucketTagging operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketTaggingRequest object being passed to this operation.
     */
    public func putBucketTaggingSync(
            input: S3Model.PutBucketTaggingRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let putBucketTaggingSyncOverride = putBucketTaggingSyncOverride {
            return try putBucketTaggingSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putBucketVersioningAsyncOverride = putBucketVersioningAsyncOverride {
            return try putBucketVersioningAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutBucketVersioning operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketVersioningRequest object being passed to this operation.
     */
    public func putBucketVersioningSync(
            input: S3Model.PutBucketVersioningRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let putBucketVersioningSyncOverride = putBucketVersioningSyncOverride {
            return try putBucketVersioningSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putBucketWebsiteAsyncOverride = putBucketWebsiteAsyncOverride {
            return try putBucketWebsiteAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutBucketWebsite operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketWebsiteRequest object being passed to this operation.
     */
    public func putBucketWebsiteSync(
            input: S3Model.PutBucketWebsiteRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let putBucketWebsiteSyncOverride = putBucketWebsiteSyncOverride {
            return try putBucketWebsiteSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.PutObjectOutput, HTTPClientError>) -> ()) throws {
        if let putObjectAsyncOverride = putObjectAsyncOverride {
            return try putObjectAsyncOverride(input, reporting, completion)
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
            input: S3Model.PutObjectRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.PutObjectOutput {
        if let putObjectSyncOverride = putObjectSyncOverride {
            return try putObjectSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.PutObjectAclOutput, HTTPClientError>) -> ()) throws {
        if let putObjectAclAsyncOverride = putObjectAclAsyncOverride {
            return try putObjectAclAsyncOverride(input, reporting, completion)
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
            input: S3Model.PutObjectAclRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.PutObjectAclOutput {
        if let putObjectAclSyncOverride = putObjectAclSyncOverride {
            return try putObjectAclSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.PutObjectLegalHoldOutput, HTTPClientError>) -> ()) throws {
        if let putObjectLegalHoldAsyncOverride = putObjectLegalHoldAsyncOverride {
            return try putObjectLegalHoldAsyncOverride(input, reporting, completion)
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
            input: S3Model.PutObjectLegalHoldRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.PutObjectLegalHoldOutput {
        if let putObjectLegalHoldSyncOverride = putObjectLegalHoldSyncOverride {
            return try putObjectLegalHoldSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.PutObjectLockConfigurationOutput, HTTPClientError>) -> ()) throws {
        if let putObjectLockConfigurationAsyncOverride = putObjectLockConfigurationAsyncOverride {
            return try putObjectLockConfigurationAsyncOverride(input, reporting, completion)
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
            input: S3Model.PutObjectLockConfigurationRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.PutObjectLockConfigurationOutput {
        if let putObjectLockConfigurationSyncOverride = putObjectLockConfigurationSyncOverride {
            return try putObjectLockConfigurationSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.PutObjectRetentionOutput, HTTPClientError>) -> ()) throws {
        if let putObjectRetentionAsyncOverride = putObjectRetentionAsyncOverride {
            return try putObjectRetentionAsyncOverride(input, reporting, completion)
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
            input: S3Model.PutObjectRetentionRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.PutObjectRetentionOutput {
        if let putObjectRetentionSyncOverride = putObjectRetentionSyncOverride {
            return try putObjectRetentionSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.PutObjectTaggingOutput, HTTPClientError>) -> ()) throws {
        if let putObjectTaggingAsyncOverride = putObjectTaggingAsyncOverride {
            return try putObjectTaggingAsyncOverride(input, reporting, completion)
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
            input: S3Model.PutObjectTaggingRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.PutObjectTaggingOutput {
        if let putObjectTaggingSyncOverride = putObjectTaggingSyncOverride {
            return try putObjectTaggingSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putPublicAccessBlockAsyncOverride = putPublicAccessBlockAsyncOverride {
            return try putPublicAccessBlockAsyncOverride(input, reporting, completion)
        }

        completion(error)
    }

    /**
     Invokes the PutPublicAccessBlock operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutPublicAccessBlockRequest object being passed to this operation.
     */
    public func putPublicAccessBlockSync(
            input: S3Model.PutPublicAccessBlockRequest,
            reporting: SmokeAWSInvocationReporting) throws {
        if let putPublicAccessBlockSyncOverride = putPublicAccessBlockSyncOverride {
            return try putPublicAccessBlockSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.RestoreObjectOutput, HTTPClientError>) -> ()) throws {
        if let restoreObjectAsyncOverride = restoreObjectAsyncOverride {
            return try restoreObjectAsyncOverride(input, reporting, completion)
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
            input: S3Model.RestoreObjectRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.RestoreObjectOutput {
        if let restoreObjectSyncOverride = restoreObjectSyncOverride {
            return try restoreObjectSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.SelectObjectContentOutput, HTTPClientError>) -> ()) throws {
        if let selectObjectContentAsyncOverride = selectObjectContentAsyncOverride {
            return try selectObjectContentAsyncOverride(input, reporting, completion)
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
            input: S3Model.SelectObjectContentRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.SelectObjectContentOutput {
        if let selectObjectContentSyncOverride = selectObjectContentSyncOverride {
            return try selectObjectContentSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.UploadPartOutput, HTTPClientError>) -> ()) throws {
        if let uploadPartAsyncOverride = uploadPartAsyncOverride {
            return try uploadPartAsyncOverride(input, reporting, completion)
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
            input: S3Model.UploadPartRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.UploadPartOutput {
        if let uploadPartSyncOverride = uploadPartSyncOverride {
            return try uploadPartSyncOverride(input, reporting)
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
            reporting: SmokeAWSInvocationReporting,
            completion: @escaping (Result<S3Model.UploadPartCopyOutput, HTTPClientError>) -> ()) throws {
        if let uploadPartCopyAsyncOverride = uploadPartCopyAsyncOverride {
            return try uploadPartCopyAsyncOverride(input, reporting, completion)
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
            input: S3Model.UploadPartCopyRequest,
            reporting: SmokeAWSInvocationReporting) throws -> S3Model.UploadPartCopyOutput {
        if let uploadPartCopySyncOverride = uploadPartCopySyncOverride {
            return try uploadPartCopySyncOverride(input, reporting)
        }

        throw error
    }
}
