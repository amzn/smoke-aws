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
public struct ThrowingS3Client<ClientInvocationReportingType: SmokeAWSInvocationReporting>: S3ClientProtocol {
    let error: HTTPClientError
    let abortMultipartUploadAsyncOverride: AbortMultipartUploadAsyncType<ClientInvocationReportingType>?
    let abortMultipartUploadSyncOverride: AbortMultipartUploadSyncType<ClientInvocationReportingType>?
    let completeMultipartUploadAsyncOverride: CompleteMultipartUploadAsyncType<ClientInvocationReportingType>?
    let completeMultipartUploadSyncOverride: CompleteMultipartUploadSyncType<ClientInvocationReportingType>?
    let copyObjectAsyncOverride: CopyObjectAsyncType<ClientInvocationReportingType>?
    let copyObjectSyncOverride: CopyObjectSyncType<ClientInvocationReportingType>?
    let createBucketAsyncOverride: CreateBucketAsyncType<ClientInvocationReportingType>?
    let createBucketSyncOverride: CreateBucketSyncType<ClientInvocationReportingType>?
    let createMultipartUploadAsyncOverride: CreateMultipartUploadAsyncType<ClientInvocationReportingType>?
    let createMultipartUploadSyncOverride: CreateMultipartUploadSyncType<ClientInvocationReportingType>?
    let deleteBucketAsyncOverride: DeleteBucketAsyncType<ClientInvocationReportingType>?
    let deleteBucketSyncOverride: DeleteBucketSyncType<ClientInvocationReportingType>?
    let deleteBucketAnalyticsConfigurationAsyncOverride: DeleteBucketAnalyticsConfigurationAsyncType<ClientInvocationReportingType>?
    let deleteBucketAnalyticsConfigurationSyncOverride: DeleteBucketAnalyticsConfigurationSyncType<ClientInvocationReportingType>?
    let deleteBucketCorsAsyncOverride: DeleteBucketCorsAsyncType<ClientInvocationReportingType>?
    let deleteBucketCorsSyncOverride: DeleteBucketCorsSyncType<ClientInvocationReportingType>?
    let deleteBucketEncryptionAsyncOverride: DeleteBucketEncryptionAsyncType<ClientInvocationReportingType>?
    let deleteBucketEncryptionSyncOverride: DeleteBucketEncryptionSyncType<ClientInvocationReportingType>?
    let deleteBucketInventoryConfigurationAsyncOverride: DeleteBucketInventoryConfigurationAsyncType<ClientInvocationReportingType>?
    let deleteBucketInventoryConfigurationSyncOverride: DeleteBucketInventoryConfigurationSyncType<ClientInvocationReportingType>?
    let deleteBucketLifecycleAsyncOverride: DeleteBucketLifecycleAsyncType<ClientInvocationReportingType>?
    let deleteBucketLifecycleSyncOverride: DeleteBucketLifecycleSyncType<ClientInvocationReportingType>?
    let deleteBucketMetricsConfigurationAsyncOverride: DeleteBucketMetricsConfigurationAsyncType<ClientInvocationReportingType>?
    let deleteBucketMetricsConfigurationSyncOverride: DeleteBucketMetricsConfigurationSyncType<ClientInvocationReportingType>?
    let deleteBucketPolicyAsyncOverride: DeleteBucketPolicyAsyncType<ClientInvocationReportingType>?
    let deleteBucketPolicySyncOverride: DeleteBucketPolicySyncType<ClientInvocationReportingType>?
    let deleteBucketReplicationAsyncOverride: DeleteBucketReplicationAsyncType<ClientInvocationReportingType>?
    let deleteBucketReplicationSyncOverride: DeleteBucketReplicationSyncType<ClientInvocationReportingType>?
    let deleteBucketTaggingAsyncOverride: DeleteBucketTaggingAsyncType<ClientInvocationReportingType>?
    let deleteBucketTaggingSyncOverride: DeleteBucketTaggingSyncType<ClientInvocationReportingType>?
    let deleteBucketWebsiteAsyncOverride: DeleteBucketWebsiteAsyncType<ClientInvocationReportingType>?
    let deleteBucketWebsiteSyncOverride: DeleteBucketWebsiteSyncType<ClientInvocationReportingType>?
    let deleteObjectAsyncOverride: DeleteObjectAsyncType<ClientInvocationReportingType>?
    let deleteObjectSyncOverride: DeleteObjectSyncType<ClientInvocationReportingType>?
    let deleteObjectTaggingAsyncOverride: DeleteObjectTaggingAsyncType<ClientInvocationReportingType>?
    let deleteObjectTaggingSyncOverride: DeleteObjectTaggingSyncType<ClientInvocationReportingType>?
    let deleteObjectsAsyncOverride: DeleteObjectsAsyncType<ClientInvocationReportingType>?
    let deleteObjectsSyncOverride: DeleteObjectsSyncType<ClientInvocationReportingType>?
    let deletePublicAccessBlockAsyncOverride: DeletePublicAccessBlockAsyncType<ClientInvocationReportingType>?
    let deletePublicAccessBlockSyncOverride: DeletePublicAccessBlockSyncType<ClientInvocationReportingType>?
    let getBucketAccelerateConfigurationAsyncOverride: GetBucketAccelerateConfigurationAsyncType<ClientInvocationReportingType>?
    let getBucketAccelerateConfigurationSyncOverride: GetBucketAccelerateConfigurationSyncType<ClientInvocationReportingType>?
    let getBucketAclAsyncOverride: GetBucketAclAsyncType<ClientInvocationReportingType>?
    let getBucketAclSyncOverride: GetBucketAclSyncType<ClientInvocationReportingType>?
    let getBucketAnalyticsConfigurationAsyncOverride: GetBucketAnalyticsConfigurationAsyncType<ClientInvocationReportingType>?
    let getBucketAnalyticsConfigurationSyncOverride: GetBucketAnalyticsConfigurationSyncType<ClientInvocationReportingType>?
    let getBucketCorsAsyncOverride: GetBucketCorsAsyncType<ClientInvocationReportingType>?
    let getBucketCorsSyncOverride: GetBucketCorsSyncType<ClientInvocationReportingType>?
    let getBucketEncryptionAsyncOverride: GetBucketEncryptionAsyncType<ClientInvocationReportingType>?
    let getBucketEncryptionSyncOverride: GetBucketEncryptionSyncType<ClientInvocationReportingType>?
    let getBucketInventoryConfigurationAsyncOverride: GetBucketInventoryConfigurationAsyncType<ClientInvocationReportingType>?
    let getBucketInventoryConfigurationSyncOverride: GetBucketInventoryConfigurationSyncType<ClientInvocationReportingType>?
    let getBucketLifecycleAsyncOverride: GetBucketLifecycleAsyncType<ClientInvocationReportingType>?
    let getBucketLifecycleSyncOverride: GetBucketLifecycleSyncType<ClientInvocationReportingType>?
    let getBucketLifecycleConfigurationAsyncOverride: GetBucketLifecycleConfigurationAsyncType<ClientInvocationReportingType>?
    let getBucketLifecycleConfigurationSyncOverride: GetBucketLifecycleConfigurationSyncType<ClientInvocationReportingType>?
    let getBucketLocationAsyncOverride: GetBucketLocationAsyncType<ClientInvocationReportingType>?
    let getBucketLocationSyncOverride: GetBucketLocationSyncType<ClientInvocationReportingType>?
    let getBucketLoggingAsyncOverride: GetBucketLoggingAsyncType<ClientInvocationReportingType>?
    let getBucketLoggingSyncOverride: GetBucketLoggingSyncType<ClientInvocationReportingType>?
    let getBucketMetricsConfigurationAsyncOverride: GetBucketMetricsConfigurationAsyncType<ClientInvocationReportingType>?
    let getBucketMetricsConfigurationSyncOverride: GetBucketMetricsConfigurationSyncType<ClientInvocationReportingType>?
    let getBucketNotificationAsyncOverride: GetBucketNotificationAsyncType<ClientInvocationReportingType>?
    let getBucketNotificationSyncOverride: GetBucketNotificationSyncType<ClientInvocationReportingType>?
    let getBucketNotificationConfigurationAsyncOverride: GetBucketNotificationConfigurationAsyncType<ClientInvocationReportingType>?
    let getBucketNotificationConfigurationSyncOverride: GetBucketNotificationConfigurationSyncType<ClientInvocationReportingType>?
    let getBucketPolicyAsyncOverride: GetBucketPolicyAsyncType<ClientInvocationReportingType>?
    let getBucketPolicySyncOverride: GetBucketPolicySyncType<ClientInvocationReportingType>?
    let getBucketPolicyStatusAsyncOverride: GetBucketPolicyStatusAsyncType<ClientInvocationReportingType>?
    let getBucketPolicyStatusSyncOverride: GetBucketPolicyStatusSyncType<ClientInvocationReportingType>?
    let getBucketReplicationAsyncOverride: GetBucketReplicationAsyncType<ClientInvocationReportingType>?
    let getBucketReplicationSyncOverride: GetBucketReplicationSyncType<ClientInvocationReportingType>?
    let getBucketRequestPaymentAsyncOverride: GetBucketRequestPaymentAsyncType<ClientInvocationReportingType>?
    let getBucketRequestPaymentSyncOverride: GetBucketRequestPaymentSyncType<ClientInvocationReportingType>?
    let getBucketTaggingAsyncOverride: GetBucketTaggingAsyncType<ClientInvocationReportingType>?
    let getBucketTaggingSyncOverride: GetBucketTaggingSyncType<ClientInvocationReportingType>?
    let getBucketVersioningAsyncOverride: GetBucketVersioningAsyncType<ClientInvocationReportingType>?
    let getBucketVersioningSyncOverride: GetBucketVersioningSyncType<ClientInvocationReportingType>?
    let getBucketWebsiteAsyncOverride: GetBucketWebsiteAsyncType<ClientInvocationReportingType>?
    let getBucketWebsiteSyncOverride: GetBucketWebsiteSyncType<ClientInvocationReportingType>?
    let getObjectAsyncOverride: GetObjectAsyncType<ClientInvocationReportingType>?
    let getObjectSyncOverride: GetObjectSyncType<ClientInvocationReportingType>?
    let getObjectAclAsyncOverride: GetObjectAclAsyncType<ClientInvocationReportingType>?
    let getObjectAclSyncOverride: GetObjectAclSyncType<ClientInvocationReportingType>?
    let getObjectLegalHoldAsyncOverride: GetObjectLegalHoldAsyncType<ClientInvocationReportingType>?
    let getObjectLegalHoldSyncOverride: GetObjectLegalHoldSyncType<ClientInvocationReportingType>?
    let getObjectLockConfigurationAsyncOverride: GetObjectLockConfigurationAsyncType<ClientInvocationReportingType>?
    let getObjectLockConfigurationSyncOverride: GetObjectLockConfigurationSyncType<ClientInvocationReportingType>?
    let getObjectRetentionAsyncOverride: GetObjectRetentionAsyncType<ClientInvocationReportingType>?
    let getObjectRetentionSyncOverride: GetObjectRetentionSyncType<ClientInvocationReportingType>?
    let getObjectTaggingAsyncOverride: GetObjectTaggingAsyncType<ClientInvocationReportingType>?
    let getObjectTaggingSyncOverride: GetObjectTaggingSyncType<ClientInvocationReportingType>?
    let getObjectTorrentAsyncOverride: GetObjectTorrentAsyncType<ClientInvocationReportingType>?
    let getObjectTorrentSyncOverride: GetObjectTorrentSyncType<ClientInvocationReportingType>?
    let getPublicAccessBlockAsyncOverride: GetPublicAccessBlockAsyncType<ClientInvocationReportingType>?
    let getPublicAccessBlockSyncOverride: GetPublicAccessBlockSyncType<ClientInvocationReportingType>?
    let headBucketAsyncOverride: HeadBucketAsyncType<ClientInvocationReportingType>?
    let headBucketSyncOverride: HeadBucketSyncType<ClientInvocationReportingType>?
    let headObjectAsyncOverride: HeadObjectAsyncType<ClientInvocationReportingType>?
    let headObjectSyncOverride: HeadObjectSyncType<ClientInvocationReportingType>?
    let listBucketAnalyticsConfigurationsAsyncOverride: ListBucketAnalyticsConfigurationsAsyncType<ClientInvocationReportingType>?
    let listBucketAnalyticsConfigurationsSyncOverride: ListBucketAnalyticsConfigurationsSyncType<ClientInvocationReportingType>?
    let listBucketInventoryConfigurationsAsyncOverride: ListBucketInventoryConfigurationsAsyncType<ClientInvocationReportingType>?
    let listBucketInventoryConfigurationsSyncOverride: ListBucketInventoryConfigurationsSyncType<ClientInvocationReportingType>?
    let listBucketMetricsConfigurationsAsyncOverride: ListBucketMetricsConfigurationsAsyncType<ClientInvocationReportingType>?
    let listBucketMetricsConfigurationsSyncOverride: ListBucketMetricsConfigurationsSyncType<ClientInvocationReportingType>?
    let listBucketsAsyncOverride: ListBucketsAsyncType<ClientInvocationReportingType>?
    let listBucketsSyncOverride: ListBucketsSyncType<ClientInvocationReportingType>?
    let listMultipartUploadsAsyncOverride: ListMultipartUploadsAsyncType<ClientInvocationReportingType>?
    let listMultipartUploadsSyncOverride: ListMultipartUploadsSyncType<ClientInvocationReportingType>?
    let listObjectVersionsAsyncOverride: ListObjectVersionsAsyncType<ClientInvocationReportingType>?
    let listObjectVersionsSyncOverride: ListObjectVersionsSyncType<ClientInvocationReportingType>?
    let listObjectsAsyncOverride: ListObjectsAsyncType<ClientInvocationReportingType>?
    let listObjectsSyncOverride: ListObjectsSyncType<ClientInvocationReportingType>?
    let listObjectsV2AsyncOverride: ListObjectsV2AsyncType<ClientInvocationReportingType>?
    let listObjectsV2SyncOverride: ListObjectsV2SyncType<ClientInvocationReportingType>?
    let listPartsAsyncOverride: ListPartsAsyncType<ClientInvocationReportingType>?
    let listPartsSyncOverride: ListPartsSyncType<ClientInvocationReportingType>?
    let putBucketAccelerateConfigurationAsyncOverride: PutBucketAccelerateConfigurationAsyncType<ClientInvocationReportingType>?
    let putBucketAccelerateConfigurationSyncOverride: PutBucketAccelerateConfigurationSyncType<ClientInvocationReportingType>?
    let putBucketAclAsyncOverride: PutBucketAclAsyncType<ClientInvocationReportingType>?
    let putBucketAclSyncOverride: PutBucketAclSyncType<ClientInvocationReportingType>?
    let putBucketAnalyticsConfigurationAsyncOverride: PutBucketAnalyticsConfigurationAsyncType<ClientInvocationReportingType>?
    let putBucketAnalyticsConfigurationSyncOverride: PutBucketAnalyticsConfigurationSyncType<ClientInvocationReportingType>?
    let putBucketCorsAsyncOverride: PutBucketCorsAsyncType<ClientInvocationReportingType>?
    let putBucketCorsSyncOverride: PutBucketCorsSyncType<ClientInvocationReportingType>?
    let putBucketEncryptionAsyncOverride: PutBucketEncryptionAsyncType<ClientInvocationReportingType>?
    let putBucketEncryptionSyncOverride: PutBucketEncryptionSyncType<ClientInvocationReportingType>?
    let putBucketInventoryConfigurationAsyncOverride: PutBucketInventoryConfigurationAsyncType<ClientInvocationReportingType>?
    let putBucketInventoryConfigurationSyncOverride: PutBucketInventoryConfigurationSyncType<ClientInvocationReportingType>?
    let putBucketLifecycleAsyncOverride: PutBucketLifecycleAsyncType<ClientInvocationReportingType>?
    let putBucketLifecycleSyncOverride: PutBucketLifecycleSyncType<ClientInvocationReportingType>?
    let putBucketLifecycleConfigurationAsyncOverride: PutBucketLifecycleConfigurationAsyncType<ClientInvocationReportingType>?
    let putBucketLifecycleConfigurationSyncOverride: PutBucketLifecycleConfigurationSyncType<ClientInvocationReportingType>?
    let putBucketLoggingAsyncOverride: PutBucketLoggingAsyncType<ClientInvocationReportingType>?
    let putBucketLoggingSyncOverride: PutBucketLoggingSyncType<ClientInvocationReportingType>?
    let putBucketMetricsConfigurationAsyncOverride: PutBucketMetricsConfigurationAsyncType<ClientInvocationReportingType>?
    let putBucketMetricsConfigurationSyncOverride: PutBucketMetricsConfigurationSyncType<ClientInvocationReportingType>?
    let putBucketNotificationAsyncOverride: PutBucketNotificationAsyncType<ClientInvocationReportingType>?
    let putBucketNotificationSyncOverride: PutBucketNotificationSyncType<ClientInvocationReportingType>?
    let putBucketNotificationConfigurationAsyncOverride: PutBucketNotificationConfigurationAsyncType<ClientInvocationReportingType>?
    let putBucketNotificationConfigurationSyncOverride: PutBucketNotificationConfigurationSyncType<ClientInvocationReportingType>?
    let putBucketPolicyAsyncOverride: PutBucketPolicyAsyncType<ClientInvocationReportingType>?
    let putBucketPolicySyncOverride: PutBucketPolicySyncType<ClientInvocationReportingType>?
    let putBucketReplicationAsyncOverride: PutBucketReplicationAsyncType<ClientInvocationReportingType>?
    let putBucketReplicationSyncOverride: PutBucketReplicationSyncType<ClientInvocationReportingType>?
    let putBucketRequestPaymentAsyncOverride: PutBucketRequestPaymentAsyncType<ClientInvocationReportingType>?
    let putBucketRequestPaymentSyncOverride: PutBucketRequestPaymentSyncType<ClientInvocationReportingType>?
    let putBucketTaggingAsyncOverride: PutBucketTaggingAsyncType<ClientInvocationReportingType>?
    let putBucketTaggingSyncOverride: PutBucketTaggingSyncType<ClientInvocationReportingType>?
    let putBucketVersioningAsyncOverride: PutBucketVersioningAsyncType<ClientInvocationReportingType>?
    let putBucketVersioningSyncOverride: PutBucketVersioningSyncType<ClientInvocationReportingType>?
    let putBucketWebsiteAsyncOverride: PutBucketWebsiteAsyncType<ClientInvocationReportingType>?
    let putBucketWebsiteSyncOverride: PutBucketWebsiteSyncType<ClientInvocationReportingType>?
    let putObjectAsyncOverride: PutObjectAsyncType<ClientInvocationReportingType>?
    let putObjectSyncOverride: PutObjectSyncType<ClientInvocationReportingType>?
    let putObjectAclAsyncOverride: PutObjectAclAsyncType<ClientInvocationReportingType>?
    let putObjectAclSyncOverride: PutObjectAclSyncType<ClientInvocationReportingType>?
    let putObjectLegalHoldAsyncOverride: PutObjectLegalHoldAsyncType<ClientInvocationReportingType>?
    let putObjectLegalHoldSyncOverride: PutObjectLegalHoldSyncType<ClientInvocationReportingType>?
    let putObjectLockConfigurationAsyncOverride: PutObjectLockConfigurationAsyncType<ClientInvocationReportingType>?
    let putObjectLockConfigurationSyncOverride: PutObjectLockConfigurationSyncType<ClientInvocationReportingType>?
    let putObjectRetentionAsyncOverride: PutObjectRetentionAsyncType<ClientInvocationReportingType>?
    let putObjectRetentionSyncOverride: PutObjectRetentionSyncType<ClientInvocationReportingType>?
    let putObjectTaggingAsyncOverride: PutObjectTaggingAsyncType<ClientInvocationReportingType>?
    let putObjectTaggingSyncOverride: PutObjectTaggingSyncType<ClientInvocationReportingType>?
    let putPublicAccessBlockAsyncOverride: PutPublicAccessBlockAsyncType<ClientInvocationReportingType>?
    let putPublicAccessBlockSyncOverride: PutPublicAccessBlockSyncType<ClientInvocationReportingType>?
    let restoreObjectAsyncOverride: RestoreObjectAsyncType<ClientInvocationReportingType>?
    let restoreObjectSyncOverride: RestoreObjectSyncType<ClientInvocationReportingType>?
    let selectObjectContentAsyncOverride: SelectObjectContentAsyncType<ClientInvocationReportingType>?
    let selectObjectContentSyncOverride: SelectObjectContentSyncType<ClientInvocationReportingType>?
    let uploadPartAsyncOverride: UploadPartAsyncType<ClientInvocationReportingType>?
    let uploadPartSyncOverride: UploadPartSyncType<ClientInvocationReportingType>?
    let uploadPartCopyAsyncOverride: UploadPartCopyAsyncType<ClientInvocationReportingType>?
    let uploadPartCopySyncOverride: UploadPartCopySyncType<ClientInvocationReportingType>?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(error: HTTPClientError,
            abortMultipartUploadAsync: AbortMultipartUploadAsyncType<ClientInvocationReportingType>? = nil,
            abortMultipartUploadSync: AbortMultipartUploadSyncType<ClientInvocationReportingType>? = nil,
            completeMultipartUploadAsync: CompleteMultipartUploadAsyncType<ClientInvocationReportingType>? = nil,
            completeMultipartUploadSync: CompleteMultipartUploadSyncType<ClientInvocationReportingType>? = nil,
            copyObjectAsync: CopyObjectAsyncType<ClientInvocationReportingType>? = nil,
            copyObjectSync: CopyObjectSyncType<ClientInvocationReportingType>? = nil,
            createBucketAsync: CreateBucketAsyncType<ClientInvocationReportingType>? = nil,
            createBucketSync: CreateBucketSyncType<ClientInvocationReportingType>? = nil,
            createMultipartUploadAsync: CreateMultipartUploadAsyncType<ClientInvocationReportingType>? = nil,
            createMultipartUploadSync: CreateMultipartUploadSyncType<ClientInvocationReportingType>? = nil,
            deleteBucketAsync: DeleteBucketAsyncType<ClientInvocationReportingType>? = nil,
            deleteBucketSync: DeleteBucketSyncType<ClientInvocationReportingType>? = nil,
            deleteBucketAnalyticsConfigurationAsync: DeleteBucketAnalyticsConfigurationAsyncType<ClientInvocationReportingType>? = nil,
            deleteBucketAnalyticsConfigurationSync: DeleteBucketAnalyticsConfigurationSyncType<ClientInvocationReportingType>? = nil,
            deleteBucketCorsAsync: DeleteBucketCorsAsyncType<ClientInvocationReportingType>? = nil,
            deleteBucketCorsSync: DeleteBucketCorsSyncType<ClientInvocationReportingType>? = nil,
            deleteBucketEncryptionAsync: DeleteBucketEncryptionAsyncType<ClientInvocationReportingType>? = nil,
            deleteBucketEncryptionSync: DeleteBucketEncryptionSyncType<ClientInvocationReportingType>? = nil,
            deleteBucketInventoryConfigurationAsync: DeleteBucketInventoryConfigurationAsyncType<ClientInvocationReportingType>? = nil,
            deleteBucketInventoryConfigurationSync: DeleteBucketInventoryConfigurationSyncType<ClientInvocationReportingType>? = nil,
            deleteBucketLifecycleAsync: DeleteBucketLifecycleAsyncType<ClientInvocationReportingType>? = nil,
            deleteBucketLifecycleSync: DeleteBucketLifecycleSyncType<ClientInvocationReportingType>? = nil,
            deleteBucketMetricsConfigurationAsync: DeleteBucketMetricsConfigurationAsyncType<ClientInvocationReportingType>? = nil,
            deleteBucketMetricsConfigurationSync: DeleteBucketMetricsConfigurationSyncType<ClientInvocationReportingType>? = nil,
            deleteBucketPolicyAsync: DeleteBucketPolicyAsyncType<ClientInvocationReportingType>? = nil,
            deleteBucketPolicySync: DeleteBucketPolicySyncType<ClientInvocationReportingType>? = nil,
            deleteBucketReplicationAsync: DeleteBucketReplicationAsyncType<ClientInvocationReportingType>? = nil,
            deleteBucketReplicationSync: DeleteBucketReplicationSyncType<ClientInvocationReportingType>? = nil,
            deleteBucketTaggingAsync: DeleteBucketTaggingAsyncType<ClientInvocationReportingType>? = nil,
            deleteBucketTaggingSync: DeleteBucketTaggingSyncType<ClientInvocationReportingType>? = nil,
            deleteBucketWebsiteAsync: DeleteBucketWebsiteAsyncType<ClientInvocationReportingType>? = nil,
            deleteBucketWebsiteSync: DeleteBucketWebsiteSyncType<ClientInvocationReportingType>? = nil,
            deleteObjectAsync: DeleteObjectAsyncType<ClientInvocationReportingType>? = nil,
            deleteObjectSync: DeleteObjectSyncType<ClientInvocationReportingType>? = nil,
            deleteObjectTaggingAsync: DeleteObjectTaggingAsyncType<ClientInvocationReportingType>? = nil,
            deleteObjectTaggingSync: DeleteObjectTaggingSyncType<ClientInvocationReportingType>? = nil,
            deleteObjectsAsync: DeleteObjectsAsyncType<ClientInvocationReportingType>? = nil,
            deleteObjectsSync: DeleteObjectsSyncType<ClientInvocationReportingType>? = nil,
            deletePublicAccessBlockAsync: DeletePublicAccessBlockAsyncType<ClientInvocationReportingType>? = nil,
            deletePublicAccessBlockSync: DeletePublicAccessBlockSyncType<ClientInvocationReportingType>? = nil,
            getBucketAccelerateConfigurationAsync: GetBucketAccelerateConfigurationAsyncType<ClientInvocationReportingType>? = nil,
            getBucketAccelerateConfigurationSync: GetBucketAccelerateConfigurationSyncType<ClientInvocationReportingType>? = nil,
            getBucketAclAsync: GetBucketAclAsyncType<ClientInvocationReportingType>? = nil,
            getBucketAclSync: GetBucketAclSyncType<ClientInvocationReportingType>? = nil,
            getBucketAnalyticsConfigurationAsync: GetBucketAnalyticsConfigurationAsyncType<ClientInvocationReportingType>? = nil,
            getBucketAnalyticsConfigurationSync: GetBucketAnalyticsConfigurationSyncType<ClientInvocationReportingType>? = nil,
            getBucketCorsAsync: GetBucketCorsAsyncType<ClientInvocationReportingType>? = nil,
            getBucketCorsSync: GetBucketCorsSyncType<ClientInvocationReportingType>? = nil,
            getBucketEncryptionAsync: GetBucketEncryptionAsyncType<ClientInvocationReportingType>? = nil,
            getBucketEncryptionSync: GetBucketEncryptionSyncType<ClientInvocationReportingType>? = nil,
            getBucketInventoryConfigurationAsync: GetBucketInventoryConfigurationAsyncType<ClientInvocationReportingType>? = nil,
            getBucketInventoryConfigurationSync: GetBucketInventoryConfigurationSyncType<ClientInvocationReportingType>? = nil,
            getBucketLifecycleAsync: GetBucketLifecycleAsyncType<ClientInvocationReportingType>? = nil,
            getBucketLifecycleSync: GetBucketLifecycleSyncType<ClientInvocationReportingType>? = nil,
            getBucketLifecycleConfigurationAsync: GetBucketLifecycleConfigurationAsyncType<ClientInvocationReportingType>? = nil,
            getBucketLifecycleConfigurationSync: GetBucketLifecycleConfigurationSyncType<ClientInvocationReportingType>? = nil,
            getBucketLocationAsync: GetBucketLocationAsyncType<ClientInvocationReportingType>? = nil,
            getBucketLocationSync: GetBucketLocationSyncType<ClientInvocationReportingType>? = nil,
            getBucketLoggingAsync: GetBucketLoggingAsyncType<ClientInvocationReportingType>? = nil,
            getBucketLoggingSync: GetBucketLoggingSyncType<ClientInvocationReportingType>? = nil,
            getBucketMetricsConfigurationAsync: GetBucketMetricsConfigurationAsyncType<ClientInvocationReportingType>? = nil,
            getBucketMetricsConfigurationSync: GetBucketMetricsConfigurationSyncType<ClientInvocationReportingType>? = nil,
            getBucketNotificationAsync: GetBucketNotificationAsyncType<ClientInvocationReportingType>? = nil,
            getBucketNotificationSync: GetBucketNotificationSyncType<ClientInvocationReportingType>? = nil,
            getBucketNotificationConfigurationAsync: GetBucketNotificationConfigurationAsyncType<ClientInvocationReportingType>? = nil,
            getBucketNotificationConfigurationSync: GetBucketNotificationConfigurationSyncType<ClientInvocationReportingType>? = nil,
            getBucketPolicyAsync: GetBucketPolicyAsyncType<ClientInvocationReportingType>? = nil,
            getBucketPolicySync: GetBucketPolicySyncType<ClientInvocationReportingType>? = nil,
            getBucketPolicyStatusAsync: GetBucketPolicyStatusAsyncType<ClientInvocationReportingType>? = nil,
            getBucketPolicyStatusSync: GetBucketPolicyStatusSyncType<ClientInvocationReportingType>? = nil,
            getBucketReplicationAsync: GetBucketReplicationAsyncType<ClientInvocationReportingType>? = nil,
            getBucketReplicationSync: GetBucketReplicationSyncType<ClientInvocationReportingType>? = nil,
            getBucketRequestPaymentAsync: GetBucketRequestPaymentAsyncType<ClientInvocationReportingType>? = nil,
            getBucketRequestPaymentSync: GetBucketRequestPaymentSyncType<ClientInvocationReportingType>? = nil,
            getBucketTaggingAsync: GetBucketTaggingAsyncType<ClientInvocationReportingType>? = nil,
            getBucketTaggingSync: GetBucketTaggingSyncType<ClientInvocationReportingType>? = nil,
            getBucketVersioningAsync: GetBucketVersioningAsyncType<ClientInvocationReportingType>? = nil,
            getBucketVersioningSync: GetBucketVersioningSyncType<ClientInvocationReportingType>? = nil,
            getBucketWebsiteAsync: GetBucketWebsiteAsyncType<ClientInvocationReportingType>? = nil,
            getBucketWebsiteSync: GetBucketWebsiteSyncType<ClientInvocationReportingType>? = nil,
            getObjectAsync: GetObjectAsyncType<ClientInvocationReportingType>? = nil,
            getObjectSync: GetObjectSyncType<ClientInvocationReportingType>? = nil,
            getObjectAclAsync: GetObjectAclAsyncType<ClientInvocationReportingType>? = nil,
            getObjectAclSync: GetObjectAclSyncType<ClientInvocationReportingType>? = nil,
            getObjectLegalHoldAsync: GetObjectLegalHoldAsyncType<ClientInvocationReportingType>? = nil,
            getObjectLegalHoldSync: GetObjectLegalHoldSyncType<ClientInvocationReportingType>? = nil,
            getObjectLockConfigurationAsync: GetObjectLockConfigurationAsyncType<ClientInvocationReportingType>? = nil,
            getObjectLockConfigurationSync: GetObjectLockConfigurationSyncType<ClientInvocationReportingType>? = nil,
            getObjectRetentionAsync: GetObjectRetentionAsyncType<ClientInvocationReportingType>? = nil,
            getObjectRetentionSync: GetObjectRetentionSyncType<ClientInvocationReportingType>? = nil,
            getObjectTaggingAsync: GetObjectTaggingAsyncType<ClientInvocationReportingType>? = nil,
            getObjectTaggingSync: GetObjectTaggingSyncType<ClientInvocationReportingType>? = nil,
            getObjectTorrentAsync: GetObjectTorrentAsyncType<ClientInvocationReportingType>? = nil,
            getObjectTorrentSync: GetObjectTorrentSyncType<ClientInvocationReportingType>? = nil,
            getPublicAccessBlockAsync: GetPublicAccessBlockAsyncType<ClientInvocationReportingType>? = nil,
            getPublicAccessBlockSync: GetPublicAccessBlockSyncType<ClientInvocationReportingType>? = nil,
            headBucketAsync: HeadBucketAsyncType<ClientInvocationReportingType>? = nil,
            headBucketSync: HeadBucketSyncType<ClientInvocationReportingType>? = nil,
            headObjectAsync: HeadObjectAsyncType<ClientInvocationReportingType>? = nil,
            headObjectSync: HeadObjectSyncType<ClientInvocationReportingType>? = nil,
            listBucketAnalyticsConfigurationsAsync: ListBucketAnalyticsConfigurationsAsyncType<ClientInvocationReportingType>? = nil,
            listBucketAnalyticsConfigurationsSync: ListBucketAnalyticsConfigurationsSyncType<ClientInvocationReportingType>? = nil,
            listBucketInventoryConfigurationsAsync: ListBucketInventoryConfigurationsAsyncType<ClientInvocationReportingType>? = nil,
            listBucketInventoryConfigurationsSync: ListBucketInventoryConfigurationsSyncType<ClientInvocationReportingType>? = nil,
            listBucketMetricsConfigurationsAsync: ListBucketMetricsConfigurationsAsyncType<ClientInvocationReportingType>? = nil,
            listBucketMetricsConfigurationsSync: ListBucketMetricsConfigurationsSyncType<ClientInvocationReportingType>? = nil,
            listBucketsAsync: ListBucketsAsyncType<ClientInvocationReportingType>? = nil,
            listBucketsSync: ListBucketsSyncType<ClientInvocationReportingType>? = nil,
            listMultipartUploadsAsync: ListMultipartUploadsAsyncType<ClientInvocationReportingType>? = nil,
            listMultipartUploadsSync: ListMultipartUploadsSyncType<ClientInvocationReportingType>? = nil,
            listObjectVersionsAsync: ListObjectVersionsAsyncType<ClientInvocationReportingType>? = nil,
            listObjectVersionsSync: ListObjectVersionsSyncType<ClientInvocationReportingType>? = nil,
            listObjectsAsync: ListObjectsAsyncType<ClientInvocationReportingType>? = nil,
            listObjectsSync: ListObjectsSyncType<ClientInvocationReportingType>? = nil,
            listObjectsV2Async: ListObjectsV2AsyncType<ClientInvocationReportingType>? = nil,
            listObjectsV2Sync: ListObjectsV2SyncType<ClientInvocationReportingType>? = nil,
            listPartsAsync: ListPartsAsyncType<ClientInvocationReportingType>? = nil,
            listPartsSync: ListPartsSyncType<ClientInvocationReportingType>? = nil,
            putBucketAccelerateConfigurationAsync: PutBucketAccelerateConfigurationAsyncType<ClientInvocationReportingType>? = nil,
            putBucketAccelerateConfigurationSync: PutBucketAccelerateConfigurationSyncType<ClientInvocationReportingType>? = nil,
            putBucketAclAsync: PutBucketAclAsyncType<ClientInvocationReportingType>? = nil,
            putBucketAclSync: PutBucketAclSyncType<ClientInvocationReportingType>? = nil,
            putBucketAnalyticsConfigurationAsync: PutBucketAnalyticsConfigurationAsyncType<ClientInvocationReportingType>? = nil,
            putBucketAnalyticsConfigurationSync: PutBucketAnalyticsConfigurationSyncType<ClientInvocationReportingType>? = nil,
            putBucketCorsAsync: PutBucketCorsAsyncType<ClientInvocationReportingType>? = nil,
            putBucketCorsSync: PutBucketCorsSyncType<ClientInvocationReportingType>? = nil,
            putBucketEncryptionAsync: PutBucketEncryptionAsyncType<ClientInvocationReportingType>? = nil,
            putBucketEncryptionSync: PutBucketEncryptionSyncType<ClientInvocationReportingType>? = nil,
            putBucketInventoryConfigurationAsync: PutBucketInventoryConfigurationAsyncType<ClientInvocationReportingType>? = nil,
            putBucketInventoryConfigurationSync: PutBucketInventoryConfigurationSyncType<ClientInvocationReportingType>? = nil,
            putBucketLifecycleAsync: PutBucketLifecycleAsyncType<ClientInvocationReportingType>? = nil,
            putBucketLifecycleSync: PutBucketLifecycleSyncType<ClientInvocationReportingType>? = nil,
            putBucketLifecycleConfigurationAsync: PutBucketLifecycleConfigurationAsyncType<ClientInvocationReportingType>? = nil,
            putBucketLifecycleConfigurationSync: PutBucketLifecycleConfigurationSyncType<ClientInvocationReportingType>? = nil,
            putBucketLoggingAsync: PutBucketLoggingAsyncType<ClientInvocationReportingType>? = nil,
            putBucketLoggingSync: PutBucketLoggingSyncType<ClientInvocationReportingType>? = nil,
            putBucketMetricsConfigurationAsync: PutBucketMetricsConfigurationAsyncType<ClientInvocationReportingType>? = nil,
            putBucketMetricsConfigurationSync: PutBucketMetricsConfigurationSyncType<ClientInvocationReportingType>? = nil,
            putBucketNotificationAsync: PutBucketNotificationAsyncType<ClientInvocationReportingType>? = nil,
            putBucketNotificationSync: PutBucketNotificationSyncType<ClientInvocationReportingType>? = nil,
            putBucketNotificationConfigurationAsync: PutBucketNotificationConfigurationAsyncType<ClientInvocationReportingType>? = nil,
            putBucketNotificationConfigurationSync: PutBucketNotificationConfigurationSyncType<ClientInvocationReportingType>? = nil,
            putBucketPolicyAsync: PutBucketPolicyAsyncType<ClientInvocationReportingType>? = nil,
            putBucketPolicySync: PutBucketPolicySyncType<ClientInvocationReportingType>? = nil,
            putBucketReplicationAsync: PutBucketReplicationAsyncType<ClientInvocationReportingType>? = nil,
            putBucketReplicationSync: PutBucketReplicationSyncType<ClientInvocationReportingType>? = nil,
            putBucketRequestPaymentAsync: PutBucketRequestPaymentAsyncType<ClientInvocationReportingType>? = nil,
            putBucketRequestPaymentSync: PutBucketRequestPaymentSyncType<ClientInvocationReportingType>? = nil,
            putBucketTaggingAsync: PutBucketTaggingAsyncType<ClientInvocationReportingType>? = nil,
            putBucketTaggingSync: PutBucketTaggingSyncType<ClientInvocationReportingType>? = nil,
            putBucketVersioningAsync: PutBucketVersioningAsyncType<ClientInvocationReportingType>? = nil,
            putBucketVersioningSync: PutBucketVersioningSyncType<ClientInvocationReportingType>? = nil,
            putBucketWebsiteAsync: PutBucketWebsiteAsyncType<ClientInvocationReportingType>? = nil,
            putBucketWebsiteSync: PutBucketWebsiteSyncType<ClientInvocationReportingType>? = nil,
            putObjectAsync: PutObjectAsyncType<ClientInvocationReportingType>? = nil,
            putObjectSync: PutObjectSyncType<ClientInvocationReportingType>? = nil,
            putObjectAclAsync: PutObjectAclAsyncType<ClientInvocationReportingType>? = nil,
            putObjectAclSync: PutObjectAclSyncType<ClientInvocationReportingType>? = nil,
            putObjectLegalHoldAsync: PutObjectLegalHoldAsyncType<ClientInvocationReportingType>? = nil,
            putObjectLegalHoldSync: PutObjectLegalHoldSyncType<ClientInvocationReportingType>? = nil,
            putObjectLockConfigurationAsync: PutObjectLockConfigurationAsyncType<ClientInvocationReportingType>? = nil,
            putObjectLockConfigurationSync: PutObjectLockConfigurationSyncType<ClientInvocationReportingType>? = nil,
            putObjectRetentionAsync: PutObjectRetentionAsyncType<ClientInvocationReportingType>? = nil,
            putObjectRetentionSync: PutObjectRetentionSyncType<ClientInvocationReportingType>? = nil,
            putObjectTaggingAsync: PutObjectTaggingAsyncType<ClientInvocationReportingType>? = nil,
            putObjectTaggingSync: PutObjectTaggingSyncType<ClientInvocationReportingType>? = nil,
            putPublicAccessBlockAsync: PutPublicAccessBlockAsyncType<ClientInvocationReportingType>? = nil,
            putPublicAccessBlockSync: PutPublicAccessBlockSyncType<ClientInvocationReportingType>? = nil,
            restoreObjectAsync: RestoreObjectAsyncType<ClientInvocationReportingType>? = nil,
            restoreObjectSync: RestoreObjectSyncType<ClientInvocationReportingType>? = nil,
            selectObjectContentAsync: SelectObjectContentAsyncType<ClientInvocationReportingType>? = nil,
            selectObjectContentSync: SelectObjectContentSyncType<ClientInvocationReportingType>? = nil,
            uploadPartAsync: UploadPartAsyncType<ClientInvocationReportingType>? = nil,
            uploadPartSync: UploadPartSyncType<ClientInvocationReportingType>? = nil,
            uploadPartCopyAsync: UploadPartCopyAsyncType<ClientInvocationReportingType>? = nil,
            uploadPartCopySync: UploadPartCopySyncType<ClientInvocationReportingType>? = nil) {
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
    public func abortMultipartUploadAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.AbortMultipartUploadRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.AbortMultipartUploadOutput, HTTPClientError>) -> ()) throws {
        if let abortMultipartUploadAsyncOverrideNonOptional = abortMultipartUploadAsyncOverride {
            if let abortMultipartUploadAsyncOverrideTyped = abortMultipartUploadAsyncOverrideNonOptional
                    as? AbortMultipartUploadAsyncType<InvocationReportingType> {
                return try abortMultipartUploadAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func abortMultipartUploadSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.AbortMultipartUploadRequest,
            reporting: InvocationReportingType) throws -> S3Model.AbortMultipartUploadOutput {
        if let abortMultipartUploadSyncOverrideNonOptional = abortMultipartUploadSyncOverride {
            if let abortMultipartUploadSyncOverrideTyped = abortMultipartUploadSyncOverrideNonOptional
                    as? AbortMultipartUploadSyncType<InvocationReportingType> {
                return try abortMultipartUploadSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func completeMultipartUploadAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.CompleteMultipartUploadRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.CompleteMultipartUploadOutput, HTTPClientError>) -> ()) throws {
        if let completeMultipartUploadAsyncOverrideNonOptional = completeMultipartUploadAsyncOverride {
            if let completeMultipartUploadAsyncOverrideTyped = completeMultipartUploadAsyncOverrideNonOptional
                    as? CompleteMultipartUploadAsyncType<InvocationReportingType> {
                return try completeMultipartUploadAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func completeMultipartUploadSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.CompleteMultipartUploadRequest,
            reporting: InvocationReportingType) throws -> S3Model.CompleteMultipartUploadOutput {
        if let completeMultipartUploadSyncOverrideNonOptional = completeMultipartUploadSyncOverride {
            if let completeMultipartUploadSyncOverrideTyped = completeMultipartUploadSyncOverrideNonOptional
                    as? CompleteMultipartUploadSyncType<InvocationReportingType> {
                return try completeMultipartUploadSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func copyObjectAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.CopyObjectRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.CopyObjectOutput, HTTPClientError>) -> ()) throws {
        if let copyObjectAsyncOverrideNonOptional = copyObjectAsyncOverride {
            if let copyObjectAsyncOverrideTyped = copyObjectAsyncOverrideNonOptional
                    as? CopyObjectAsyncType<InvocationReportingType> {
                return try copyObjectAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func copyObjectSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.CopyObjectRequest,
            reporting: InvocationReportingType) throws -> S3Model.CopyObjectOutput {
        if let copyObjectSyncOverrideNonOptional = copyObjectSyncOverride {
            if let copyObjectSyncOverrideTyped = copyObjectSyncOverrideNonOptional
                    as? CopyObjectSyncType<InvocationReportingType> {
                return try copyObjectSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func createBucketAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.CreateBucketRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.CreateBucketOutput, HTTPClientError>) -> ()) throws {
        if let createBucketAsyncOverrideNonOptional = createBucketAsyncOverride {
            if let createBucketAsyncOverrideTyped = createBucketAsyncOverrideNonOptional
                    as? CreateBucketAsyncType<InvocationReportingType> {
                return try createBucketAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func createBucketSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.CreateBucketRequest,
            reporting: InvocationReportingType) throws -> S3Model.CreateBucketOutput {
        if let createBucketSyncOverrideNonOptional = createBucketSyncOverride {
            if let createBucketSyncOverrideTyped = createBucketSyncOverrideNonOptional
                    as? CreateBucketSyncType<InvocationReportingType> {
                return try createBucketSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func createMultipartUploadAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.CreateMultipartUploadRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.CreateMultipartUploadOutput, HTTPClientError>) -> ()) throws {
        if let createMultipartUploadAsyncOverrideNonOptional = createMultipartUploadAsyncOverride {
            if let createMultipartUploadAsyncOverrideTyped = createMultipartUploadAsyncOverrideNonOptional
                    as? CreateMultipartUploadAsyncType<InvocationReportingType> {
                return try createMultipartUploadAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func createMultipartUploadSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.CreateMultipartUploadRequest,
            reporting: InvocationReportingType) throws -> S3Model.CreateMultipartUploadOutput {
        if let createMultipartUploadSyncOverrideNonOptional = createMultipartUploadSyncOverride {
            if let createMultipartUploadSyncOverrideTyped = createMultipartUploadSyncOverrideNonOptional
                    as? CreateMultipartUploadSyncType<InvocationReportingType> {
                return try createMultipartUploadSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func deleteBucketAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteBucketAsyncOverrideNonOptional = deleteBucketAsyncOverride {
            if let deleteBucketAsyncOverrideTyped = deleteBucketAsyncOverrideNonOptional
                    as? DeleteBucketAsyncType<InvocationReportingType> {
                return try deleteBucketAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the DeleteBucket operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketRequest object being passed to this operation.
     */
    public func deleteBucketSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketRequest,
            reporting: InvocationReportingType) throws {
        if let deleteBucketSyncOverrideNonOptional = deleteBucketSyncOverride {
            if let deleteBucketSyncOverrideTyped = deleteBucketSyncOverrideNonOptional
                    as? DeleteBucketSyncType<InvocationReportingType> {
                return try deleteBucketSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func deleteBucketAnalyticsConfigurationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketAnalyticsConfigurationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteBucketAnalyticsConfigurationAsyncOverrideNonOptional = deleteBucketAnalyticsConfigurationAsyncOverride {
            if let deleteBucketAnalyticsConfigurationAsyncOverrideTyped = deleteBucketAnalyticsConfigurationAsyncOverrideNonOptional
                    as? DeleteBucketAnalyticsConfigurationAsyncType<InvocationReportingType> {
                return try deleteBucketAnalyticsConfigurationAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the DeleteBucketAnalyticsConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketAnalyticsConfigurationRequest object being passed to this operation.
     */
    public func deleteBucketAnalyticsConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketAnalyticsConfigurationRequest,
            reporting: InvocationReportingType) throws {
        if let deleteBucketAnalyticsConfigurationSyncOverrideNonOptional = deleteBucketAnalyticsConfigurationSyncOverride {
            if let deleteBucketAnalyticsConfigurationSyncOverrideTyped = deleteBucketAnalyticsConfigurationSyncOverrideNonOptional
                    as? DeleteBucketAnalyticsConfigurationSyncType<InvocationReportingType> {
                return try deleteBucketAnalyticsConfigurationSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func deleteBucketCorsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketCorsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteBucketCorsAsyncOverrideNonOptional = deleteBucketCorsAsyncOverride {
            if let deleteBucketCorsAsyncOverrideTyped = deleteBucketCorsAsyncOverrideNonOptional
                    as? DeleteBucketCorsAsyncType<InvocationReportingType> {
                return try deleteBucketCorsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the DeleteBucketCors operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketCorsRequest object being passed to this operation.
     */
    public func deleteBucketCorsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketCorsRequest,
            reporting: InvocationReportingType) throws {
        if let deleteBucketCorsSyncOverrideNonOptional = deleteBucketCorsSyncOverride {
            if let deleteBucketCorsSyncOverrideTyped = deleteBucketCorsSyncOverrideNonOptional
                    as? DeleteBucketCorsSyncType<InvocationReportingType> {
                return try deleteBucketCorsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func deleteBucketEncryptionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketEncryptionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteBucketEncryptionAsyncOverrideNonOptional = deleteBucketEncryptionAsyncOverride {
            if let deleteBucketEncryptionAsyncOverrideTyped = deleteBucketEncryptionAsyncOverrideNonOptional
                    as? DeleteBucketEncryptionAsyncType<InvocationReportingType> {
                return try deleteBucketEncryptionAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the DeleteBucketEncryption operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketEncryptionRequest object being passed to this operation.
     */
    public func deleteBucketEncryptionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketEncryptionRequest,
            reporting: InvocationReportingType) throws {
        if let deleteBucketEncryptionSyncOverrideNonOptional = deleteBucketEncryptionSyncOverride {
            if let deleteBucketEncryptionSyncOverrideTyped = deleteBucketEncryptionSyncOverrideNonOptional
                    as? DeleteBucketEncryptionSyncType<InvocationReportingType> {
                return try deleteBucketEncryptionSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func deleteBucketInventoryConfigurationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketInventoryConfigurationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteBucketInventoryConfigurationAsyncOverrideNonOptional = deleteBucketInventoryConfigurationAsyncOverride {
            if let deleteBucketInventoryConfigurationAsyncOverrideTyped = deleteBucketInventoryConfigurationAsyncOverrideNonOptional
                    as? DeleteBucketInventoryConfigurationAsyncType<InvocationReportingType> {
                return try deleteBucketInventoryConfigurationAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the DeleteBucketInventoryConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketInventoryConfigurationRequest object being passed to this operation.
     */
    public func deleteBucketInventoryConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketInventoryConfigurationRequest,
            reporting: InvocationReportingType) throws {
        if let deleteBucketInventoryConfigurationSyncOverrideNonOptional = deleteBucketInventoryConfigurationSyncOverride {
            if let deleteBucketInventoryConfigurationSyncOverrideTyped = deleteBucketInventoryConfigurationSyncOverrideNonOptional
                    as? DeleteBucketInventoryConfigurationSyncType<InvocationReportingType> {
                return try deleteBucketInventoryConfigurationSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func deleteBucketLifecycleAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketLifecycleRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteBucketLifecycleAsyncOverrideNonOptional = deleteBucketLifecycleAsyncOverride {
            if let deleteBucketLifecycleAsyncOverrideTyped = deleteBucketLifecycleAsyncOverrideNonOptional
                    as? DeleteBucketLifecycleAsyncType<InvocationReportingType> {
                return try deleteBucketLifecycleAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the DeleteBucketLifecycle operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketLifecycleRequest object being passed to this operation.
     */
    public func deleteBucketLifecycleSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketLifecycleRequest,
            reporting: InvocationReportingType) throws {
        if let deleteBucketLifecycleSyncOverrideNonOptional = deleteBucketLifecycleSyncOverride {
            if let deleteBucketLifecycleSyncOverrideTyped = deleteBucketLifecycleSyncOverrideNonOptional
                    as? DeleteBucketLifecycleSyncType<InvocationReportingType> {
                return try deleteBucketLifecycleSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func deleteBucketMetricsConfigurationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketMetricsConfigurationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteBucketMetricsConfigurationAsyncOverrideNonOptional = deleteBucketMetricsConfigurationAsyncOverride {
            if let deleteBucketMetricsConfigurationAsyncOverrideTyped = deleteBucketMetricsConfigurationAsyncOverrideNonOptional
                    as? DeleteBucketMetricsConfigurationAsyncType<InvocationReportingType> {
                return try deleteBucketMetricsConfigurationAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the DeleteBucketMetricsConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketMetricsConfigurationRequest object being passed to this operation.
     */
    public func deleteBucketMetricsConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketMetricsConfigurationRequest,
            reporting: InvocationReportingType) throws {
        if let deleteBucketMetricsConfigurationSyncOverrideNonOptional = deleteBucketMetricsConfigurationSyncOverride {
            if let deleteBucketMetricsConfigurationSyncOverrideTyped = deleteBucketMetricsConfigurationSyncOverrideNonOptional
                    as? DeleteBucketMetricsConfigurationSyncType<InvocationReportingType> {
                return try deleteBucketMetricsConfigurationSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func deleteBucketPolicyAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketPolicyRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteBucketPolicyAsyncOverrideNonOptional = deleteBucketPolicyAsyncOverride {
            if let deleteBucketPolicyAsyncOverrideTyped = deleteBucketPolicyAsyncOverrideNonOptional
                    as? DeleteBucketPolicyAsyncType<InvocationReportingType> {
                return try deleteBucketPolicyAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the DeleteBucketPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketPolicyRequest object being passed to this operation.
     */
    public func deleteBucketPolicySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketPolicyRequest,
            reporting: InvocationReportingType) throws {
        if let deleteBucketPolicySyncOverrideNonOptional = deleteBucketPolicySyncOverride {
            if let deleteBucketPolicySyncOverrideTyped = deleteBucketPolicySyncOverrideNonOptional
                    as? DeleteBucketPolicySyncType<InvocationReportingType> {
                return try deleteBucketPolicySyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func deleteBucketReplicationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketReplicationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteBucketReplicationAsyncOverrideNonOptional = deleteBucketReplicationAsyncOverride {
            if let deleteBucketReplicationAsyncOverrideTyped = deleteBucketReplicationAsyncOverrideNonOptional
                    as? DeleteBucketReplicationAsyncType<InvocationReportingType> {
                return try deleteBucketReplicationAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the DeleteBucketReplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketReplicationRequest object being passed to this operation.
     */
    public func deleteBucketReplicationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketReplicationRequest,
            reporting: InvocationReportingType) throws {
        if let deleteBucketReplicationSyncOverrideNonOptional = deleteBucketReplicationSyncOverride {
            if let deleteBucketReplicationSyncOverrideTyped = deleteBucketReplicationSyncOverrideNonOptional
                    as? DeleteBucketReplicationSyncType<InvocationReportingType> {
                return try deleteBucketReplicationSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func deleteBucketTaggingAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketTaggingRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteBucketTaggingAsyncOverrideNonOptional = deleteBucketTaggingAsyncOverride {
            if let deleteBucketTaggingAsyncOverrideTyped = deleteBucketTaggingAsyncOverrideNonOptional
                    as? DeleteBucketTaggingAsyncType<InvocationReportingType> {
                return try deleteBucketTaggingAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the DeleteBucketTagging operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketTaggingRequest object being passed to this operation.
     */
    public func deleteBucketTaggingSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketTaggingRequest,
            reporting: InvocationReportingType) throws {
        if let deleteBucketTaggingSyncOverrideNonOptional = deleteBucketTaggingSyncOverride {
            if let deleteBucketTaggingSyncOverrideTyped = deleteBucketTaggingSyncOverrideNonOptional
                    as? DeleteBucketTaggingSyncType<InvocationReportingType> {
                return try deleteBucketTaggingSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func deleteBucketWebsiteAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketWebsiteRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deleteBucketWebsiteAsyncOverrideNonOptional = deleteBucketWebsiteAsyncOverride {
            if let deleteBucketWebsiteAsyncOverrideTyped = deleteBucketWebsiteAsyncOverrideNonOptional
                    as? DeleteBucketWebsiteAsyncType<InvocationReportingType> {
                return try deleteBucketWebsiteAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the DeleteBucketWebsite operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketWebsiteRequest object being passed to this operation.
     */
    public func deleteBucketWebsiteSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketWebsiteRequest,
            reporting: InvocationReportingType) throws {
        if let deleteBucketWebsiteSyncOverrideNonOptional = deleteBucketWebsiteSyncOverride {
            if let deleteBucketWebsiteSyncOverrideTyped = deleteBucketWebsiteSyncOverrideNonOptional
                    as? DeleteBucketWebsiteSyncType<InvocationReportingType> {
                return try deleteBucketWebsiteSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func deleteObjectAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteObjectRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.DeleteObjectOutput, HTTPClientError>) -> ()) throws {
        if let deleteObjectAsyncOverrideNonOptional = deleteObjectAsyncOverride {
            if let deleteObjectAsyncOverrideTyped = deleteObjectAsyncOverrideNonOptional
                    as? DeleteObjectAsyncType<InvocationReportingType> {
                return try deleteObjectAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func deleteObjectSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteObjectRequest,
            reporting: InvocationReportingType) throws -> S3Model.DeleteObjectOutput {
        if let deleteObjectSyncOverrideNonOptional = deleteObjectSyncOverride {
            if let deleteObjectSyncOverrideTyped = deleteObjectSyncOverrideNonOptional
                    as? DeleteObjectSyncType<InvocationReportingType> {
                return try deleteObjectSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func deleteObjectTaggingAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteObjectTaggingRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.DeleteObjectTaggingOutput, HTTPClientError>) -> ()) throws {
        if let deleteObjectTaggingAsyncOverrideNonOptional = deleteObjectTaggingAsyncOverride {
            if let deleteObjectTaggingAsyncOverrideTyped = deleteObjectTaggingAsyncOverrideNonOptional
                    as? DeleteObjectTaggingAsyncType<InvocationReportingType> {
                return try deleteObjectTaggingAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func deleteObjectTaggingSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteObjectTaggingRequest,
            reporting: InvocationReportingType) throws -> S3Model.DeleteObjectTaggingOutput {
        if let deleteObjectTaggingSyncOverrideNonOptional = deleteObjectTaggingSyncOverride {
            if let deleteObjectTaggingSyncOverrideTyped = deleteObjectTaggingSyncOverrideNonOptional
                    as? DeleteObjectTaggingSyncType<InvocationReportingType> {
                return try deleteObjectTaggingSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func deleteObjectsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteObjectsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.DeleteObjectsOutput, HTTPClientError>) -> ()) throws {
        if let deleteObjectsAsyncOverrideNonOptional = deleteObjectsAsyncOverride {
            if let deleteObjectsAsyncOverrideTyped = deleteObjectsAsyncOverrideNonOptional
                    as? DeleteObjectsAsyncType<InvocationReportingType> {
                return try deleteObjectsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func deleteObjectsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteObjectsRequest,
            reporting: InvocationReportingType) throws -> S3Model.DeleteObjectsOutput {
        if let deleteObjectsSyncOverrideNonOptional = deleteObjectsSyncOverride {
            if let deleteObjectsSyncOverrideTyped = deleteObjectsSyncOverrideNonOptional
                    as? DeleteObjectsSyncType<InvocationReportingType> {
                return try deleteObjectsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func deletePublicAccessBlockAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeletePublicAccessBlockRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let deletePublicAccessBlockAsyncOverrideNonOptional = deletePublicAccessBlockAsyncOverride {
            if let deletePublicAccessBlockAsyncOverrideTyped = deletePublicAccessBlockAsyncOverrideNonOptional
                    as? DeletePublicAccessBlockAsyncType<InvocationReportingType> {
                return try deletePublicAccessBlockAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the DeletePublicAccessBlock operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeletePublicAccessBlockRequest object being passed to this operation.
     */
    public func deletePublicAccessBlockSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeletePublicAccessBlockRequest,
            reporting: InvocationReportingType) throws {
        if let deletePublicAccessBlockSyncOverrideNonOptional = deletePublicAccessBlockSyncOverride {
            if let deletePublicAccessBlockSyncOverrideTyped = deletePublicAccessBlockSyncOverrideNonOptional
                    as? DeletePublicAccessBlockSyncType<InvocationReportingType> {
                return try deletePublicAccessBlockSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketAccelerateConfigurationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketAccelerateConfigurationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetBucketAccelerateConfigurationOutput, HTTPClientError>) -> ()) throws {
        if let getBucketAccelerateConfigurationAsyncOverrideNonOptional = getBucketAccelerateConfigurationAsyncOverride {
            if let getBucketAccelerateConfigurationAsyncOverrideTyped = getBucketAccelerateConfigurationAsyncOverrideNonOptional
                    as? GetBucketAccelerateConfigurationAsyncType<InvocationReportingType> {
                return try getBucketAccelerateConfigurationAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketAccelerateConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketAccelerateConfigurationRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetBucketAccelerateConfigurationOutput {
        if let getBucketAccelerateConfigurationSyncOverrideNonOptional = getBucketAccelerateConfigurationSyncOverride {
            if let getBucketAccelerateConfigurationSyncOverrideTyped = getBucketAccelerateConfigurationSyncOverrideNonOptional
                    as? GetBucketAccelerateConfigurationSyncType<InvocationReportingType> {
                return try getBucketAccelerateConfigurationSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketAclAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketAclRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetBucketAclOutput, HTTPClientError>) -> ()) throws {
        if let getBucketAclAsyncOverrideNonOptional = getBucketAclAsyncOverride {
            if let getBucketAclAsyncOverrideTyped = getBucketAclAsyncOverrideNonOptional
                    as? GetBucketAclAsyncType<InvocationReportingType> {
                return try getBucketAclAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketAclSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketAclRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetBucketAclOutput {
        if let getBucketAclSyncOverrideNonOptional = getBucketAclSyncOverride {
            if let getBucketAclSyncOverrideTyped = getBucketAclSyncOverrideNonOptional
                    as? GetBucketAclSyncType<InvocationReportingType> {
                return try getBucketAclSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketAnalyticsConfigurationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketAnalyticsConfigurationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetBucketAnalyticsConfigurationOutput, HTTPClientError>) -> ()) throws {
        if let getBucketAnalyticsConfigurationAsyncOverrideNonOptional = getBucketAnalyticsConfigurationAsyncOverride {
            if let getBucketAnalyticsConfigurationAsyncOverrideTyped = getBucketAnalyticsConfigurationAsyncOverrideNonOptional
                    as? GetBucketAnalyticsConfigurationAsyncType<InvocationReportingType> {
                return try getBucketAnalyticsConfigurationAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketAnalyticsConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketAnalyticsConfigurationRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetBucketAnalyticsConfigurationOutput {
        if let getBucketAnalyticsConfigurationSyncOverrideNonOptional = getBucketAnalyticsConfigurationSyncOverride {
            if let getBucketAnalyticsConfigurationSyncOverrideTyped = getBucketAnalyticsConfigurationSyncOverrideNonOptional
                    as? GetBucketAnalyticsConfigurationSyncType<InvocationReportingType> {
                return try getBucketAnalyticsConfigurationSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketCorsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketCorsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetBucketCorsOutput, HTTPClientError>) -> ()) throws {
        if let getBucketCorsAsyncOverrideNonOptional = getBucketCorsAsyncOverride {
            if let getBucketCorsAsyncOverrideTyped = getBucketCorsAsyncOverrideNonOptional
                    as? GetBucketCorsAsyncType<InvocationReportingType> {
                return try getBucketCorsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketCorsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketCorsRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetBucketCorsOutput {
        if let getBucketCorsSyncOverrideNonOptional = getBucketCorsSyncOverride {
            if let getBucketCorsSyncOverrideTyped = getBucketCorsSyncOverrideNonOptional
                    as? GetBucketCorsSyncType<InvocationReportingType> {
                return try getBucketCorsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketEncryptionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketEncryptionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetBucketEncryptionOutput, HTTPClientError>) -> ()) throws {
        if let getBucketEncryptionAsyncOverrideNonOptional = getBucketEncryptionAsyncOverride {
            if let getBucketEncryptionAsyncOverrideTyped = getBucketEncryptionAsyncOverrideNonOptional
                    as? GetBucketEncryptionAsyncType<InvocationReportingType> {
                return try getBucketEncryptionAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketEncryptionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketEncryptionRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetBucketEncryptionOutput {
        if let getBucketEncryptionSyncOverrideNonOptional = getBucketEncryptionSyncOverride {
            if let getBucketEncryptionSyncOverrideTyped = getBucketEncryptionSyncOverrideNonOptional
                    as? GetBucketEncryptionSyncType<InvocationReportingType> {
                return try getBucketEncryptionSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketInventoryConfigurationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketInventoryConfigurationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetBucketInventoryConfigurationOutput, HTTPClientError>) -> ()) throws {
        if let getBucketInventoryConfigurationAsyncOverrideNonOptional = getBucketInventoryConfigurationAsyncOverride {
            if let getBucketInventoryConfigurationAsyncOverrideTyped = getBucketInventoryConfigurationAsyncOverrideNonOptional
                    as? GetBucketInventoryConfigurationAsyncType<InvocationReportingType> {
                return try getBucketInventoryConfigurationAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketInventoryConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketInventoryConfigurationRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetBucketInventoryConfigurationOutput {
        if let getBucketInventoryConfigurationSyncOverrideNonOptional = getBucketInventoryConfigurationSyncOverride {
            if let getBucketInventoryConfigurationSyncOverrideTyped = getBucketInventoryConfigurationSyncOverrideNonOptional
                    as? GetBucketInventoryConfigurationSyncType<InvocationReportingType> {
                return try getBucketInventoryConfigurationSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketLifecycleAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketLifecycleRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetBucketLifecycleOutput, HTTPClientError>) -> ()) throws {
        if let getBucketLifecycleAsyncOverrideNonOptional = getBucketLifecycleAsyncOverride {
            if let getBucketLifecycleAsyncOverrideTyped = getBucketLifecycleAsyncOverrideNonOptional
                    as? GetBucketLifecycleAsyncType<InvocationReportingType> {
                return try getBucketLifecycleAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketLifecycleSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketLifecycleRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetBucketLifecycleOutput {
        if let getBucketLifecycleSyncOverrideNonOptional = getBucketLifecycleSyncOverride {
            if let getBucketLifecycleSyncOverrideTyped = getBucketLifecycleSyncOverrideNonOptional
                    as? GetBucketLifecycleSyncType<InvocationReportingType> {
                return try getBucketLifecycleSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketLifecycleConfigurationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketLifecycleConfigurationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetBucketLifecycleConfigurationOutput, HTTPClientError>) -> ()) throws {
        if let getBucketLifecycleConfigurationAsyncOverrideNonOptional = getBucketLifecycleConfigurationAsyncOverride {
            if let getBucketLifecycleConfigurationAsyncOverrideTyped = getBucketLifecycleConfigurationAsyncOverrideNonOptional
                    as? GetBucketLifecycleConfigurationAsyncType<InvocationReportingType> {
                return try getBucketLifecycleConfigurationAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketLifecycleConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketLifecycleConfigurationRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetBucketLifecycleConfigurationOutput {
        if let getBucketLifecycleConfigurationSyncOverrideNonOptional = getBucketLifecycleConfigurationSyncOverride {
            if let getBucketLifecycleConfigurationSyncOverrideTyped = getBucketLifecycleConfigurationSyncOverrideNonOptional
                    as? GetBucketLifecycleConfigurationSyncType<InvocationReportingType> {
                return try getBucketLifecycleConfigurationSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketLocationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketLocationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetBucketLocationOutput, HTTPClientError>) -> ()) throws {
        if let getBucketLocationAsyncOverrideNonOptional = getBucketLocationAsyncOverride {
            if let getBucketLocationAsyncOverrideTyped = getBucketLocationAsyncOverrideNonOptional
                    as? GetBucketLocationAsyncType<InvocationReportingType> {
                return try getBucketLocationAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketLocationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketLocationRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetBucketLocationOutput {
        if let getBucketLocationSyncOverrideNonOptional = getBucketLocationSyncOverride {
            if let getBucketLocationSyncOverrideTyped = getBucketLocationSyncOverrideNonOptional
                    as? GetBucketLocationSyncType<InvocationReportingType> {
                return try getBucketLocationSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketLoggingAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketLoggingRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetBucketLoggingOutput, HTTPClientError>) -> ()) throws {
        if let getBucketLoggingAsyncOverrideNonOptional = getBucketLoggingAsyncOverride {
            if let getBucketLoggingAsyncOverrideTyped = getBucketLoggingAsyncOverrideNonOptional
                    as? GetBucketLoggingAsyncType<InvocationReportingType> {
                return try getBucketLoggingAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketLoggingSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketLoggingRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetBucketLoggingOutput {
        if let getBucketLoggingSyncOverrideNonOptional = getBucketLoggingSyncOverride {
            if let getBucketLoggingSyncOverrideTyped = getBucketLoggingSyncOverrideNonOptional
                    as? GetBucketLoggingSyncType<InvocationReportingType> {
                return try getBucketLoggingSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketMetricsConfigurationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketMetricsConfigurationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetBucketMetricsConfigurationOutput, HTTPClientError>) -> ()) throws {
        if let getBucketMetricsConfigurationAsyncOverrideNonOptional = getBucketMetricsConfigurationAsyncOverride {
            if let getBucketMetricsConfigurationAsyncOverrideTyped = getBucketMetricsConfigurationAsyncOverrideNonOptional
                    as? GetBucketMetricsConfigurationAsyncType<InvocationReportingType> {
                return try getBucketMetricsConfigurationAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketMetricsConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketMetricsConfigurationRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetBucketMetricsConfigurationOutput {
        if let getBucketMetricsConfigurationSyncOverrideNonOptional = getBucketMetricsConfigurationSyncOverride {
            if let getBucketMetricsConfigurationSyncOverrideTyped = getBucketMetricsConfigurationSyncOverrideNonOptional
                    as? GetBucketMetricsConfigurationSyncType<InvocationReportingType> {
                return try getBucketMetricsConfigurationSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketNotificationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketNotificationConfigurationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.NotificationConfigurationDeprecated, HTTPClientError>) -> ()) throws {
        if let getBucketNotificationAsyncOverrideNonOptional = getBucketNotificationAsyncOverride {
            if let getBucketNotificationAsyncOverrideTyped = getBucketNotificationAsyncOverrideNonOptional
                    as? GetBucketNotificationAsyncType<InvocationReportingType> {
                return try getBucketNotificationAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketNotificationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketNotificationConfigurationRequest,
            reporting: InvocationReportingType) throws -> S3Model.NotificationConfigurationDeprecated {
        if let getBucketNotificationSyncOverrideNonOptional = getBucketNotificationSyncOverride {
            if let getBucketNotificationSyncOverrideTyped = getBucketNotificationSyncOverrideNonOptional
                    as? GetBucketNotificationSyncType<InvocationReportingType> {
                return try getBucketNotificationSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketNotificationConfigurationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketNotificationConfigurationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.NotificationConfiguration, HTTPClientError>) -> ()) throws {
        if let getBucketNotificationConfigurationAsyncOverrideNonOptional = getBucketNotificationConfigurationAsyncOverride {
            if let getBucketNotificationConfigurationAsyncOverrideTyped = getBucketNotificationConfigurationAsyncOverrideNonOptional
                    as? GetBucketNotificationConfigurationAsyncType<InvocationReportingType> {
                return try getBucketNotificationConfigurationAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketNotificationConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketNotificationConfigurationRequest,
            reporting: InvocationReportingType) throws -> S3Model.NotificationConfiguration {
        if let getBucketNotificationConfigurationSyncOverrideNonOptional = getBucketNotificationConfigurationSyncOverride {
            if let getBucketNotificationConfigurationSyncOverrideTyped = getBucketNotificationConfigurationSyncOverrideNonOptional
                    as? GetBucketNotificationConfigurationSyncType<InvocationReportingType> {
                return try getBucketNotificationConfigurationSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketPolicyAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketPolicyRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetBucketPolicyOutput, HTTPClientError>) -> ()) throws {
        if let getBucketPolicyAsyncOverrideNonOptional = getBucketPolicyAsyncOverride {
            if let getBucketPolicyAsyncOverrideTyped = getBucketPolicyAsyncOverrideNonOptional
                    as? GetBucketPolicyAsyncType<InvocationReportingType> {
                return try getBucketPolicyAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketPolicySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketPolicyRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetBucketPolicyOutput {
        if let getBucketPolicySyncOverrideNonOptional = getBucketPolicySyncOverride {
            if let getBucketPolicySyncOverrideTyped = getBucketPolicySyncOverrideNonOptional
                    as? GetBucketPolicySyncType<InvocationReportingType> {
                return try getBucketPolicySyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketPolicyStatusAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketPolicyStatusRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetBucketPolicyStatusOutput, HTTPClientError>) -> ()) throws {
        if let getBucketPolicyStatusAsyncOverrideNonOptional = getBucketPolicyStatusAsyncOverride {
            if let getBucketPolicyStatusAsyncOverrideTyped = getBucketPolicyStatusAsyncOverrideNonOptional
                    as? GetBucketPolicyStatusAsyncType<InvocationReportingType> {
                return try getBucketPolicyStatusAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketPolicyStatusSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketPolicyStatusRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetBucketPolicyStatusOutput {
        if let getBucketPolicyStatusSyncOverrideNonOptional = getBucketPolicyStatusSyncOverride {
            if let getBucketPolicyStatusSyncOverrideTyped = getBucketPolicyStatusSyncOverrideNonOptional
                    as? GetBucketPolicyStatusSyncType<InvocationReportingType> {
                return try getBucketPolicyStatusSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketReplicationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketReplicationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetBucketReplicationOutput, HTTPClientError>) -> ()) throws {
        if let getBucketReplicationAsyncOverrideNonOptional = getBucketReplicationAsyncOverride {
            if let getBucketReplicationAsyncOverrideTyped = getBucketReplicationAsyncOverrideNonOptional
                    as? GetBucketReplicationAsyncType<InvocationReportingType> {
                return try getBucketReplicationAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketReplicationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketReplicationRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetBucketReplicationOutput {
        if let getBucketReplicationSyncOverrideNonOptional = getBucketReplicationSyncOverride {
            if let getBucketReplicationSyncOverrideTyped = getBucketReplicationSyncOverrideNonOptional
                    as? GetBucketReplicationSyncType<InvocationReportingType> {
                return try getBucketReplicationSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketRequestPaymentAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketRequestPaymentRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetBucketRequestPaymentOutput, HTTPClientError>) -> ()) throws {
        if let getBucketRequestPaymentAsyncOverrideNonOptional = getBucketRequestPaymentAsyncOverride {
            if let getBucketRequestPaymentAsyncOverrideTyped = getBucketRequestPaymentAsyncOverrideNonOptional
                    as? GetBucketRequestPaymentAsyncType<InvocationReportingType> {
                return try getBucketRequestPaymentAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketRequestPaymentSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketRequestPaymentRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetBucketRequestPaymentOutput {
        if let getBucketRequestPaymentSyncOverrideNonOptional = getBucketRequestPaymentSyncOverride {
            if let getBucketRequestPaymentSyncOverrideTyped = getBucketRequestPaymentSyncOverrideNonOptional
                    as? GetBucketRequestPaymentSyncType<InvocationReportingType> {
                return try getBucketRequestPaymentSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketTaggingAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketTaggingRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetBucketTaggingOutput, HTTPClientError>) -> ()) throws {
        if let getBucketTaggingAsyncOverrideNonOptional = getBucketTaggingAsyncOverride {
            if let getBucketTaggingAsyncOverrideTyped = getBucketTaggingAsyncOverrideNonOptional
                    as? GetBucketTaggingAsyncType<InvocationReportingType> {
                return try getBucketTaggingAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketTaggingSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketTaggingRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetBucketTaggingOutput {
        if let getBucketTaggingSyncOverrideNonOptional = getBucketTaggingSyncOverride {
            if let getBucketTaggingSyncOverrideTyped = getBucketTaggingSyncOverrideNonOptional
                    as? GetBucketTaggingSyncType<InvocationReportingType> {
                return try getBucketTaggingSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketVersioningAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketVersioningRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetBucketVersioningOutput, HTTPClientError>) -> ()) throws {
        if let getBucketVersioningAsyncOverrideNonOptional = getBucketVersioningAsyncOverride {
            if let getBucketVersioningAsyncOverrideTyped = getBucketVersioningAsyncOverrideNonOptional
                    as? GetBucketVersioningAsyncType<InvocationReportingType> {
                return try getBucketVersioningAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketVersioningSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketVersioningRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetBucketVersioningOutput {
        if let getBucketVersioningSyncOverrideNonOptional = getBucketVersioningSyncOverride {
            if let getBucketVersioningSyncOverrideTyped = getBucketVersioningSyncOverrideNonOptional
                    as? GetBucketVersioningSyncType<InvocationReportingType> {
                return try getBucketVersioningSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketWebsiteAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketWebsiteRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetBucketWebsiteOutput, HTTPClientError>) -> ()) throws {
        if let getBucketWebsiteAsyncOverrideNonOptional = getBucketWebsiteAsyncOverride {
            if let getBucketWebsiteAsyncOverrideTyped = getBucketWebsiteAsyncOverrideNonOptional
                    as? GetBucketWebsiteAsyncType<InvocationReportingType> {
                return try getBucketWebsiteAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getBucketWebsiteSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketWebsiteRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetBucketWebsiteOutput {
        if let getBucketWebsiteSyncOverrideNonOptional = getBucketWebsiteSyncOverride {
            if let getBucketWebsiteSyncOverrideTyped = getBucketWebsiteSyncOverrideNonOptional
                    as? GetBucketWebsiteSyncType<InvocationReportingType> {
                return try getBucketWebsiteSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getObjectAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetObjectRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetObjectOutput, HTTPClientError>) -> ()) throws {
        if let getObjectAsyncOverrideNonOptional = getObjectAsyncOverride {
            if let getObjectAsyncOverrideTyped = getObjectAsyncOverrideNonOptional
                    as? GetObjectAsyncType<InvocationReportingType> {
                return try getObjectAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getObjectSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetObjectRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetObjectOutput {
        if let getObjectSyncOverrideNonOptional = getObjectSyncOverride {
            if let getObjectSyncOverrideTyped = getObjectSyncOverrideNonOptional
                    as? GetObjectSyncType<InvocationReportingType> {
                return try getObjectSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getObjectAclAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetObjectAclRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetObjectAclOutput, HTTPClientError>) -> ()) throws {
        if let getObjectAclAsyncOverrideNonOptional = getObjectAclAsyncOverride {
            if let getObjectAclAsyncOverrideTyped = getObjectAclAsyncOverrideNonOptional
                    as? GetObjectAclAsyncType<InvocationReportingType> {
                return try getObjectAclAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getObjectAclSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetObjectAclRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetObjectAclOutput {
        if let getObjectAclSyncOverrideNonOptional = getObjectAclSyncOverride {
            if let getObjectAclSyncOverrideTyped = getObjectAclSyncOverrideNonOptional
                    as? GetObjectAclSyncType<InvocationReportingType> {
                return try getObjectAclSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getObjectLegalHoldAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetObjectLegalHoldRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetObjectLegalHoldOutput, HTTPClientError>) -> ()) throws {
        if let getObjectLegalHoldAsyncOverrideNonOptional = getObjectLegalHoldAsyncOverride {
            if let getObjectLegalHoldAsyncOverrideTyped = getObjectLegalHoldAsyncOverrideNonOptional
                    as? GetObjectLegalHoldAsyncType<InvocationReportingType> {
                return try getObjectLegalHoldAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getObjectLegalHoldSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetObjectLegalHoldRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetObjectLegalHoldOutput {
        if let getObjectLegalHoldSyncOverrideNonOptional = getObjectLegalHoldSyncOverride {
            if let getObjectLegalHoldSyncOverrideTyped = getObjectLegalHoldSyncOverrideNonOptional
                    as? GetObjectLegalHoldSyncType<InvocationReportingType> {
                return try getObjectLegalHoldSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getObjectLockConfigurationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetObjectLockConfigurationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetObjectLockConfigurationOutput, HTTPClientError>) -> ()) throws {
        if let getObjectLockConfigurationAsyncOverrideNonOptional = getObjectLockConfigurationAsyncOverride {
            if let getObjectLockConfigurationAsyncOverrideTyped = getObjectLockConfigurationAsyncOverrideNonOptional
                    as? GetObjectLockConfigurationAsyncType<InvocationReportingType> {
                return try getObjectLockConfigurationAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getObjectLockConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetObjectLockConfigurationRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetObjectLockConfigurationOutput {
        if let getObjectLockConfigurationSyncOverrideNonOptional = getObjectLockConfigurationSyncOverride {
            if let getObjectLockConfigurationSyncOverrideTyped = getObjectLockConfigurationSyncOverrideNonOptional
                    as? GetObjectLockConfigurationSyncType<InvocationReportingType> {
                return try getObjectLockConfigurationSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getObjectRetentionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetObjectRetentionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetObjectRetentionOutput, HTTPClientError>) -> ()) throws {
        if let getObjectRetentionAsyncOverrideNonOptional = getObjectRetentionAsyncOverride {
            if let getObjectRetentionAsyncOverrideTyped = getObjectRetentionAsyncOverrideNonOptional
                    as? GetObjectRetentionAsyncType<InvocationReportingType> {
                return try getObjectRetentionAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getObjectRetentionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetObjectRetentionRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetObjectRetentionOutput {
        if let getObjectRetentionSyncOverrideNonOptional = getObjectRetentionSyncOverride {
            if let getObjectRetentionSyncOverrideTyped = getObjectRetentionSyncOverrideNonOptional
                    as? GetObjectRetentionSyncType<InvocationReportingType> {
                return try getObjectRetentionSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getObjectTaggingAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetObjectTaggingRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetObjectTaggingOutput, HTTPClientError>) -> ()) throws {
        if let getObjectTaggingAsyncOverrideNonOptional = getObjectTaggingAsyncOverride {
            if let getObjectTaggingAsyncOverrideTyped = getObjectTaggingAsyncOverrideNonOptional
                    as? GetObjectTaggingAsyncType<InvocationReportingType> {
                return try getObjectTaggingAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getObjectTaggingSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetObjectTaggingRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetObjectTaggingOutput {
        if let getObjectTaggingSyncOverrideNonOptional = getObjectTaggingSyncOverride {
            if let getObjectTaggingSyncOverrideTyped = getObjectTaggingSyncOverrideNonOptional
                    as? GetObjectTaggingSyncType<InvocationReportingType> {
                return try getObjectTaggingSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getObjectTorrentAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetObjectTorrentRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetObjectTorrentOutput, HTTPClientError>) -> ()) throws {
        if let getObjectTorrentAsyncOverrideNonOptional = getObjectTorrentAsyncOverride {
            if let getObjectTorrentAsyncOverrideTyped = getObjectTorrentAsyncOverrideNonOptional
                    as? GetObjectTorrentAsyncType<InvocationReportingType> {
                return try getObjectTorrentAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getObjectTorrentSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetObjectTorrentRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetObjectTorrentOutput {
        if let getObjectTorrentSyncOverrideNonOptional = getObjectTorrentSyncOverride {
            if let getObjectTorrentSyncOverrideTyped = getObjectTorrentSyncOverrideNonOptional
                    as? GetObjectTorrentSyncType<InvocationReportingType> {
                return try getObjectTorrentSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getPublicAccessBlockAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetPublicAccessBlockRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetPublicAccessBlockOutput, HTTPClientError>) -> ()) throws {
        if let getPublicAccessBlockAsyncOverrideNonOptional = getPublicAccessBlockAsyncOverride {
            if let getPublicAccessBlockAsyncOverrideTyped = getPublicAccessBlockAsyncOverrideNonOptional
                    as? GetPublicAccessBlockAsyncType<InvocationReportingType> {
                return try getPublicAccessBlockAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func getPublicAccessBlockSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetPublicAccessBlockRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetPublicAccessBlockOutput {
        if let getPublicAccessBlockSyncOverrideNonOptional = getPublicAccessBlockSyncOverride {
            if let getPublicAccessBlockSyncOverrideTyped = getPublicAccessBlockSyncOverrideNonOptional
                    as? GetPublicAccessBlockSyncType<InvocationReportingType> {
                return try getPublicAccessBlockSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func headBucketAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.HeadBucketRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let headBucketAsyncOverrideNonOptional = headBucketAsyncOverride {
            if let headBucketAsyncOverrideTyped = headBucketAsyncOverrideNonOptional
                    as? HeadBucketAsyncType<InvocationReportingType> {
                return try headBucketAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the HeadBucket operation waiting for the response before returning.

     - Parameters:
         - input: The validated HeadBucketRequest object being passed to this operation.
     - Throws: noSuchBucket.
     */
    public func headBucketSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.HeadBucketRequest,
            reporting: InvocationReportingType) throws {
        if let headBucketSyncOverrideNonOptional = headBucketSyncOverride {
            if let headBucketSyncOverrideTyped = headBucketSyncOverrideNonOptional
                    as? HeadBucketSyncType<InvocationReportingType> {
                return try headBucketSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func headObjectAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.HeadObjectRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.HeadObjectOutput, HTTPClientError>) -> ()) throws {
        if let headObjectAsyncOverrideNonOptional = headObjectAsyncOverride {
            if let headObjectAsyncOverrideTyped = headObjectAsyncOverrideNonOptional
                    as? HeadObjectAsyncType<InvocationReportingType> {
                return try headObjectAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func headObjectSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.HeadObjectRequest,
            reporting: InvocationReportingType) throws -> S3Model.HeadObjectOutput {
        if let headObjectSyncOverrideNonOptional = headObjectSyncOverride {
            if let headObjectSyncOverrideTyped = headObjectSyncOverrideNonOptional
                    as? HeadObjectSyncType<InvocationReportingType> {
                return try headObjectSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listBucketAnalyticsConfigurationsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.ListBucketAnalyticsConfigurationsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.ListBucketAnalyticsConfigurationsOutput, HTTPClientError>) -> ()) throws {
        if let listBucketAnalyticsConfigurationsAsyncOverrideNonOptional = listBucketAnalyticsConfigurationsAsyncOverride {
            if let listBucketAnalyticsConfigurationsAsyncOverrideTyped = listBucketAnalyticsConfigurationsAsyncOverrideNonOptional
                    as? ListBucketAnalyticsConfigurationsAsyncType<InvocationReportingType> {
                return try listBucketAnalyticsConfigurationsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listBucketAnalyticsConfigurationsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.ListBucketAnalyticsConfigurationsRequest,
            reporting: InvocationReportingType) throws -> S3Model.ListBucketAnalyticsConfigurationsOutput {
        if let listBucketAnalyticsConfigurationsSyncOverrideNonOptional = listBucketAnalyticsConfigurationsSyncOverride {
            if let listBucketAnalyticsConfigurationsSyncOverrideTyped = listBucketAnalyticsConfigurationsSyncOverrideNonOptional
                    as? ListBucketAnalyticsConfigurationsSyncType<InvocationReportingType> {
                return try listBucketAnalyticsConfigurationsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listBucketInventoryConfigurationsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.ListBucketInventoryConfigurationsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.ListBucketInventoryConfigurationsOutput, HTTPClientError>) -> ()) throws {
        if let listBucketInventoryConfigurationsAsyncOverrideNonOptional = listBucketInventoryConfigurationsAsyncOverride {
            if let listBucketInventoryConfigurationsAsyncOverrideTyped = listBucketInventoryConfigurationsAsyncOverrideNonOptional
                    as? ListBucketInventoryConfigurationsAsyncType<InvocationReportingType> {
                return try listBucketInventoryConfigurationsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listBucketInventoryConfigurationsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.ListBucketInventoryConfigurationsRequest,
            reporting: InvocationReportingType) throws -> S3Model.ListBucketInventoryConfigurationsOutput {
        if let listBucketInventoryConfigurationsSyncOverrideNonOptional = listBucketInventoryConfigurationsSyncOverride {
            if let listBucketInventoryConfigurationsSyncOverrideTyped = listBucketInventoryConfigurationsSyncOverrideNonOptional
                    as? ListBucketInventoryConfigurationsSyncType<InvocationReportingType> {
                return try listBucketInventoryConfigurationsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listBucketMetricsConfigurationsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.ListBucketMetricsConfigurationsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.ListBucketMetricsConfigurationsOutput, HTTPClientError>) -> ()) throws {
        if let listBucketMetricsConfigurationsAsyncOverrideNonOptional = listBucketMetricsConfigurationsAsyncOverride {
            if let listBucketMetricsConfigurationsAsyncOverrideTyped = listBucketMetricsConfigurationsAsyncOverrideNonOptional
                    as? ListBucketMetricsConfigurationsAsyncType<InvocationReportingType> {
                return try listBucketMetricsConfigurationsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listBucketMetricsConfigurationsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.ListBucketMetricsConfigurationsRequest,
            reporting: InvocationReportingType) throws -> S3Model.ListBucketMetricsConfigurationsOutput {
        if let listBucketMetricsConfigurationsSyncOverrideNonOptional = listBucketMetricsConfigurationsSyncOverride {
            if let listBucketMetricsConfigurationsSyncOverrideTyped = listBucketMetricsConfigurationsSyncOverrideNonOptional
                    as? ListBucketMetricsConfigurationsSyncType<InvocationReportingType> {
                return try listBucketMetricsConfigurationsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }

    /**
     Invokes the ListBuckets operation returning immediately and passing the response to a callback.
         - completion: The ListBucketsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListBucketsOutput
           object will be validated before being returned to caller.
     */
    public func listBucketsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.ListBucketsOutput, HTTPClientError>) -> ()) throws {
        if let listBucketsAsyncOverrideNonOptional = listBucketsAsyncOverride {
            if let listBucketsAsyncOverrideTyped = listBucketsAsyncOverrideNonOptional
                    as? ListBucketsAsyncType<InvocationReportingType> {
                return try listBucketsAsyncOverrideTyped(reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(.failure(error))
    }

    /**
     Invokes the ListBuckets operation waiting for the response before returning.
     - Returns: The ListBucketsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listBucketsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            reporting: InvocationReportingType) throws -> S3Model.ListBucketsOutput {
        if let listBucketsSyncOverrideNonOptional = listBucketsSyncOverride {
            if let listBucketsSyncOverrideTyped = listBucketsSyncOverrideNonOptional
                    as? ListBucketsSyncType<InvocationReportingType> {
                return try listBucketsSyncOverrideTyped(reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listMultipartUploadsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.ListMultipartUploadsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.ListMultipartUploadsOutput, HTTPClientError>) -> ()) throws {
        if let listMultipartUploadsAsyncOverrideNonOptional = listMultipartUploadsAsyncOverride {
            if let listMultipartUploadsAsyncOverrideTyped = listMultipartUploadsAsyncOverrideNonOptional
                    as? ListMultipartUploadsAsyncType<InvocationReportingType> {
                return try listMultipartUploadsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listMultipartUploadsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.ListMultipartUploadsRequest,
            reporting: InvocationReportingType) throws -> S3Model.ListMultipartUploadsOutput {
        if let listMultipartUploadsSyncOverrideNonOptional = listMultipartUploadsSyncOverride {
            if let listMultipartUploadsSyncOverrideTyped = listMultipartUploadsSyncOverrideNonOptional
                    as? ListMultipartUploadsSyncType<InvocationReportingType> {
                return try listMultipartUploadsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listObjectVersionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.ListObjectVersionsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.ListObjectVersionsOutput, HTTPClientError>) -> ()) throws {
        if let listObjectVersionsAsyncOverrideNonOptional = listObjectVersionsAsyncOverride {
            if let listObjectVersionsAsyncOverrideTyped = listObjectVersionsAsyncOverrideNonOptional
                    as? ListObjectVersionsAsyncType<InvocationReportingType> {
                return try listObjectVersionsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listObjectVersionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.ListObjectVersionsRequest,
            reporting: InvocationReportingType) throws -> S3Model.ListObjectVersionsOutput {
        if let listObjectVersionsSyncOverrideNonOptional = listObjectVersionsSyncOverride {
            if let listObjectVersionsSyncOverrideTyped = listObjectVersionsSyncOverrideNonOptional
                    as? ListObjectVersionsSyncType<InvocationReportingType> {
                return try listObjectVersionsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listObjectsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.ListObjectsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.ListObjectsOutput, HTTPClientError>) -> ()) throws {
        if let listObjectsAsyncOverrideNonOptional = listObjectsAsyncOverride {
            if let listObjectsAsyncOverrideTyped = listObjectsAsyncOverrideNonOptional
                    as? ListObjectsAsyncType<InvocationReportingType> {
                return try listObjectsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listObjectsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.ListObjectsRequest,
            reporting: InvocationReportingType) throws -> S3Model.ListObjectsOutput {
        if let listObjectsSyncOverrideNonOptional = listObjectsSyncOverride {
            if let listObjectsSyncOverrideTyped = listObjectsSyncOverrideNonOptional
                    as? ListObjectsSyncType<InvocationReportingType> {
                return try listObjectsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listObjectsV2Async<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.ListObjectsV2Request, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.ListObjectsV2Output, HTTPClientError>) -> ()) throws {
        if let listObjectsV2AsyncOverrideNonOptional = listObjectsV2AsyncOverride {
            if let listObjectsV2AsyncOverrideTyped = listObjectsV2AsyncOverrideNonOptional
                    as? ListObjectsV2AsyncType<InvocationReportingType> {
                return try listObjectsV2AsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listObjectsV2Sync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.ListObjectsV2Request,
            reporting: InvocationReportingType) throws -> S3Model.ListObjectsV2Output {
        if let listObjectsV2SyncOverrideNonOptional = listObjectsV2SyncOverride {
            if let listObjectsV2SyncOverrideTyped = listObjectsV2SyncOverrideNonOptional
                    as? ListObjectsV2SyncType<InvocationReportingType> {
                return try listObjectsV2SyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listPartsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.ListPartsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.ListPartsOutput, HTTPClientError>) -> ()) throws {
        if let listPartsAsyncOverrideNonOptional = listPartsAsyncOverride {
            if let listPartsAsyncOverrideTyped = listPartsAsyncOverrideNonOptional
                    as? ListPartsAsyncType<InvocationReportingType> {
                return try listPartsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func listPartsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.ListPartsRequest,
            reporting: InvocationReportingType) throws -> S3Model.ListPartsOutput {
        if let listPartsSyncOverrideNonOptional = listPartsSyncOverride {
            if let listPartsSyncOverrideTyped = listPartsSyncOverrideNonOptional
                    as? ListPartsSyncType<InvocationReportingType> {
                return try listPartsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putBucketAccelerateConfigurationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketAccelerateConfigurationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putBucketAccelerateConfigurationAsyncOverrideNonOptional = putBucketAccelerateConfigurationAsyncOverride {
            if let putBucketAccelerateConfigurationAsyncOverrideTyped = putBucketAccelerateConfigurationAsyncOverrideNonOptional
                    as? PutBucketAccelerateConfigurationAsyncType<InvocationReportingType> {
                return try putBucketAccelerateConfigurationAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the PutBucketAccelerateConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketAccelerateConfigurationRequest object being passed to this operation.
     */
    public func putBucketAccelerateConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketAccelerateConfigurationRequest,
            reporting: InvocationReportingType) throws {
        if let putBucketAccelerateConfigurationSyncOverrideNonOptional = putBucketAccelerateConfigurationSyncOverride {
            if let putBucketAccelerateConfigurationSyncOverrideTyped = putBucketAccelerateConfigurationSyncOverrideNonOptional
                    as? PutBucketAccelerateConfigurationSyncType<InvocationReportingType> {
                return try putBucketAccelerateConfigurationSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putBucketAclAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketAclRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putBucketAclAsyncOverrideNonOptional = putBucketAclAsyncOverride {
            if let putBucketAclAsyncOverrideTyped = putBucketAclAsyncOverrideNonOptional
                    as? PutBucketAclAsyncType<InvocationReportingType> {
                return try putBucketAclAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the PutBucketAcl operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketAclRequest object being passed to this operation.
     */
    public func putBucketAclSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketAclRequest,
            reporting: InvocationReportingType) throws {
        if let putBucketAclSyncOverrideNonOptional = putBucketAclSyncOverride {
            if let putBucketAclSyncOverrideTyped = putBucketAclSyncOverrideNonOptional
                    as? PutBucketAclSyncType<InvocationReportingType> {
                return try putBucketAclSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putBucketAnalyticsConfigurationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketAnalyticsConfigurationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putBucketAnalyticsConfigurationAsyncOverrideNonOptional = putBucketAnalyticsConfigurationAsyncOverride {
            if let putBucketAnalyticsConfigurationAsyncOverrideTyped = putBucketAnalyticsConfigurationAsyncOverrideNonOptional
                    as? PutBucketAnalyticsConfigurationAsyncType<InvocationReportingType> {
                return try putBucketAnalyticsConfigurationAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the PutBucketAnalyticsConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketAnalyticsConfigurationRequest object being passed to this operation.
     */
    public func putBucketAnalyticsConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketAnalyticsConfigurationRequest,
            reporting: InvocationReportingType) throws {
        if let putBucketAnalyticsConfigurationSyncOverrideNonOptional = putBucketAnalyticsConfigurationSyncOverride {
            if let putBucketAnalyticsConfigurationSyncOverrideTyped = putBucketAnalyticsConfigurationSyncOverrideNonOptional
                    as? PutBucketAnalyticsConfigurationSyncType<InvocationReportingType> {
                return try putBucketAnalyticsConfigurationSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putBucketCorsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketCorsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putBucketCorsAsyncOverrideNonOptional = putBucketCorsAsyncOverride {
            if let putBucketCorsAsyncOverrideTyped = putBucketCorsAsyncOverrideNonOptional
                    as? PutBucketCorsAsyncType<InvocationReportingType> {
                return try putBucketCorsAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the PutBucketCors operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketCorsRequest object being passed to this operation.
     */
    public func putBucketCorsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketCorsRequest,
            reporting: InvocationReportingType) throws {
        if let putBucketCorsSyncOverrideNonOptional = putBucketCorsSyncOverride {
            if let putBucketCorsSyncOverrideTyped = putBucketCorsSyncOverrideNonOptional
                    as? PutBucketCorsSyncType<InvocationReportingType> {
                return try putBucketCorsSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putBucketEncryptionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketEncryptionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putBucketEncryptionAsyncOverrideNonOptional = putBucketEncryptionAsyncOverride {
            if let putBucketEncryptionAsyncOverrideTyped = putBucketEncryptionAsyncOverrideNonOptional
                    as? PutBucketEncryptionAsyncType<InvocationReportingType> {
                return try putBucketEncryptionAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the PutBucketEncryption operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketEncryptionRequest object being passed to this operation.
     */
    public func putBucketEncryptionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketEncryptionRequest,
            reporting: InvocationReportingType) throws {
        if let putBucketEncryptionSyncOverrideNonOptional = putBucketEncryptionSyncOverride {
            if let putBucketEncryptionSyncOverrideTyped = putBucketEncryptionSyncOverrideNonOptional
                    as? PutBucketEncryptionSyncType<InvocationReportingType> {
                return try putBucketEncryptionSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putBucketInventoryConfigurationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketInventoryConfigurationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putBucketInventoryConfigurationAsyncOverrideNonOptional = putBucketInventoryConfigurationAsyncOverride {
            if let putBucketInventoryConfigurationAsyncOverrideTyped = putBucketInventoryConfigurationAsyncOverrideNonOptional
                    as? PutBucketInventoryConfigurationAsyncType<InvocationReportingType> {
                return try putBucketInventoryConfigurationAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the PutBucketInventoryConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketInventoryConfigurationRequest object being passed to this operation.
     */
    public func putBucketInventoryConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketInventoryConfigurationRequest,
            reporting: InvocationReportingType) throws {
        if let putBucketInventoryConfigurationSyncOverrideNonOptional = putBucketInventoryConfigurationSyncOverride {
            if let putBucketInventoryConfigurationSyncOverrideTyped = putBucketInventoryConfigurationSyncOverrideNonOptional
                    as? PutBucketInventoryConfigurationSyncType<InvocationReportingType> {
                return try putBucketInventoryConfigurationSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putBucketLifecycleAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketLifecycleRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putBucketLifecycleAsyncOverrideNonOptional = putBucketLifecycleAsyncOverride {
            if let putBucketLifecycleAsyncOverrideTyped = putBucketLifecycleAsyncOverrideNonOptional
                    as? PutBucketLifecycleAsyncType<InvocationReportingType> {
                return try putBucketLifecycleAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the PutBucketLifecycle operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketLifecycleRequest object being passed to this operation.
     */
    public func putBucketLifecycleSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketLifecycleRequest,
            reporting: InvocationReportingType) throws {
        if let putBucketLifecycleSyncOverrideNonOptional = putBucketLifecycleSyncOverride {
            if let putBucketLifecycleSyncOverrideTyped = putBucketLifecycleSyncOverrideNonOptional
                    as? PutBucketLifecycleSyncType<InvocationReportingType> {
                return try putBucketLifecycleSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putBucketLifecycleConfigurationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketLifecycleConfigurationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putBucketLifecycleConfigurationAsyncOverrideNonOptional = putBucketLifecycleConfigurationAsyncOverride {
            if let putBucketLifecycleConfigurationAsyncOverrideTyped = putBucketLifecycleConfigurationAsyncOverrideNonOptional
                    as? PutBucketLifecycleConfigurationAsyncType<InvocationReportingType> {
                return try putBucketLifecycleConfigurationAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the PutBucketLifecycleConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketLifecycleConfigurationRequest object being passed to this operation.
     */
    public func putBucketLifecycleConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketLifecycleConfigurationRequest,
            reporting: InvocationReportingType) throws {
        if let putBucketLifecycleConfigurationSyncOverrideNonOptional = putBucketLifecycleConfigurationSyncOverride {
            if let putBucketLifecycleConfigurationSyncOverrideTyped = putBucketLifecycleConfigurationSyncOverrideNonOptional
                    as? PutBucketLifecycleConfigurationSyncType<InvocationReportingType> {
                return try putBucketLifecycleConfigurationSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putBucketLoggingAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketLoggingRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putBucketLoggingAsyncOverrideNonOptional = putBucketLoggingAsyncOverride {
            if let putBucketLoggingAsyncOverrideTyped = putBucketLoggingAsyncOverrideNonOptional
                    as? PutBucketLoggingAsyncType<InvocationReportingType> {
                return try putBucketLoggingAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the PutBucketLogging operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketLoggingRequest object being passed to this operation.
     */
    public func putBucketLoggingSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketLoggingRequest,
            reporting: InvocationReportingType) throws {
        if let putBucketLoggingSyncOverrideNonOptional = putBucketLoggingSyncOverride {
            if let putBucketLoggingSyncOverrideTyped = putBucketLoggingSyncOverrideNonOptional
                    as? PutBucketLoggingSyncType<InvocationReportingType> {
                return try putBucketLoggingSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putBucketMetricsConfigurationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketMetricsConfigurationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putBucketMetricsConfigurationAsyncOverrideNonOptional = putBucketMetricsConfigurationAsyncOverride {
            if let putBucketMetricsConfigurationAsyncOverrideTyped = putBucketMetricsConfigurationAsyncOverrideNonOptional
                    as? PutBucketMetricsConfigurationAsyncType<InvocationReportingType> {
                return try putBucketMetricsConfigurationAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the PutBucketMetricsConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketMetricsConfigurationRequest object being passed to this operation.
     */
    public func putBucketMetricsConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketMetricsConfigurationRequest,
            reporting: InvocationReportingType) throws {
        if let putBucketMetricsConfigurationSyncOverrideNonOptional = putBucketMetricsConfigurationSyncOverride {
            if let putBucketMetricsConfigurationSyncOverrideTyped = putBucketMetricsConfigurationSyncOverrideNonOptional
                    as? PutBucketMetricsConfigurationSyncType<InvocationReportingType> {
                return try putBucketMetricsConfigurationSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putBucketNotificationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketNotificationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putBucketNotificationAsyncOverrideNonOptional = putBucketNotificationAsyncOverride {
            if let putBucketNotificationAsyncOverrideTyped = putBucketNotificationAsyncOverrideNonOptional
                    as? PutBucketNotificationAsyncType<InvocationReportingType> {
                return try putBucketNotificationAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the PutBucketNotification operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketNotificationRequest object being passed to this operation.
     */
    public func putBucketNotificationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketNotificationRequest,
            reporting: InvocationReportingType) throws {
        if let putBucketNotificationSyncOverrideNonOptional = putBucketNotificationSyncOverride {
            if let putBucketNotificationSyncOverrideTyped = putBucketNotificationSyncOverrideNonOptional
                    as? PutBucketNotificationSyncType<InvocationReportingType> {
                return try putBucketNotificationSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putBucketNotificationConfigurationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketNotificationConfigurationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putBucketNotificationConfigurationAsyncOverrideNonOptional = putBucketNotificationConfigurationAsyncOverride {
            if let putBucketNotificationConfigurationAsyncOverrideTyped = putBucketNotificationConfigurationAsyncOverrideNonOptional
                    as? PutBucketNotificationConfigurationAsyncType<InvocationReportingType> {
                return try putBucketNotificationConfigurationAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the PutBucketNotificationConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketNotificationConfigurationRequest object being passed to this operation.
     */
    public func putBucketNotificationConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketNotificationConfigurationRequest,
            reporting: InvocationReportingType) throws {
        if let putBucketNotificationConfigurationSyncOverrideNonOptional = putBucketNotificationConfigurationSyncOverride {
            if let putBucketNotificationConfigurationSyncOverrideTyped = putBucketNotificationConfigurationSyncOverrideNonOptional
                    as? PutBucketNotificationConfigurationSyncType<InvocationReportingType> {
                return try putBucketNotificationConfigurationSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putBucketPolicyAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketPolicyRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putBucketPolicyAsyncOverrideNonOptional = putBucketPolicyAsyncOverride {
            if let putBucketPolicyAsyncOverrideTyped = putBucketPolicyAsyncOverrideNonOptional
                    as? PutBucketPolicyAsyncType<InvocationReportingType> {
                return try putBucketPolicyAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the PutBucketPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketPolicyRequest object being passed to this operation.
     */
    public func putBucketPolicySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketPolicyRequest,
            reporting: InvocationReportingType) throws {
        if let putBucketPolicySyncOverrideNonOptional = putBucketPolicySyncOverride {
            if let putBucketPolicySyncOverrideTyped = putBucketPolicySyncOverrideNonOptional
                    as? PutBucketPolicySyncType<InvocationReportingType> {
                return try putBucketPolicySyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putBucketReplicationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketReplicationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putBucketReplicationAsyncOverrideNonOptional = putBucketReplicationAsyncOverride {
            if let putBucketReplicationAsyncOverrideTyped = putBucketReplicationAsyncOverrideNonOptional
                    as? PutBucketReplicationAsyncType<InvocationReportingType> {
                return try putBucketReplicationAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the PutBucketReplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketReplicationRequest object being passed to this operation.
     */
    public func putBucketReplicationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketReplicationRequest,
            reporting: InvocationReportingType) throws {
        if let putBucketReplicationSyncOverrideNonOptional = putBucketReplicationSyncOverride {
            if let putBucketReplicationSyncOverrideTyped = putBucketReplicationSyncOverrideNonOptional
                    as? PutBucketReplicationSyncType<InvocationReportingType> {
                return try putBucketReplicationSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putBucketRequestPaymentAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketRequestPaymentRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putBucketRequestPaymentAsyncOverrideNonOptional = putBucketRequestPaymentAsyncOverride {
            if let putBucketRequestPaymentAsyncOverrideTyped = putBucketRequestPaymentAsyncOverrideNonOptional
                    as? PutBucketRequestPaymentAsyncType<InvocationReportingType> {
                return try putBucketRequestPaymentAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the PutBucketRequestPayment operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketRequestPaymentRequest object being passed to this operation.
     */
    public func putBucketRequestPaymentSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketRequestPaymentRequest,
            reporting: InvocationReportingType) throws {
        if let putBucketRequestPaymentSyncOverrideNonOptional = putBucketRequestPaymentSyncOverride {
            if let putBucketRequestPaymentSyncOverrideTyped = putBucketRequestPaymentSyncOverrideNonOptional
                    as? PutBucketRequestPaymentSyncType<InvocationReportingType> {
                return try putBucketRequestPaymentSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putBucketTaggingAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketTaggingRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putBucketTaggingAsyncOverrideNonOptional = putBucketTaggingAsyncOverride {
            if let putBucketTaggingAsyncOverrideTyped = putBucketTaggingAsyncOverrideNonOptional
                    as? PutBucketTaggingAsyncType<InvocationReportingType> {
                return try putBucketTaggingAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the PutBucketTagging operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketTaggingRequest object being passed to this operation.
     */
    public func putBucketTaggingSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketTaggingRequest,
            reporting: InvocationReportingType) throws {
        if let putBucketTaggingSyncOverrideNonOptional = putBucketTaggingSyncOverride {
            if let putBucketTaggingSyncOverrideTyped = putBucketTaggingSyncOverrideNonOptional
                    as? PutBucketTaggingSyncType<InvocationReportingType> {
                return try putBucketTaggingSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putBucketVersioningAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketVersioningRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putBucketVersioningAsyncOverrideNonOptional = putBucketVersioningAsyncOverride {
            if let putBucketVersioningAsyncOverrideTyped = putBucketVersioningAsyncOverrideNonOptional
                    as? PutBucketVersioningAsyncType<InvocationReportingType> {
                return try putBucketVersioningAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the PutBucketVersioning operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketVersioningRequest object being passed to this operation.
     */
    public func putBucketVersioningSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketVersioningRequest,
            reporting: InvocationReportingType) throws {
        if let putBucketVersioningSyncOverrideNonOptional = putBucketVersioningSyncOverride {
            if let putBucketVersioningSyncOverrideTyped = putBucketVersioningSyncOverrideNonOptional
                    as? PutBucketVersioningSyncType<InvocationReportingType> {
                return try putBucketVersioningSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putBucketWebsiteAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketWebsiteRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putBucketWebsiteAsyncOverrideNonOptional = putBucketWebsiteAsyncOverride {
            if let putBucketWebsiteAsyncOverrideTyped = putBucketWebsiteAsyncOverrideNonOptional
                    as? PutBucketWebsiteAsyncType<InvocationReportingType> {
                return try putBucketWebsiteAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the PutBucketWebsite operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketWebsiteRequest object being passed to this operation.
     */
    public func putBucketWebsiteSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketWebsiteRequest,
            reporting: InvocationReportingType) throws {
        if let putBucketWebsiteSyncOverrideNonOptional = putBucketWebsiteSyncOverride {
            if let putBucketWebsiteSyncOverrideTyped = putBucketWebsiteSyncOverrideNonOptional
                    as? PutBucketWebsiteSyncType<InvocationReportingType> {
                return try putBucketWebsiteSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putObjectAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutObjectRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.PutObjectOutput, HTTPClientError>) -> ()) throws {
        if let putObjectAsyncOverrideNonOptional = putObjectAsyncOverride {
            if let putObjectAsyncOverrideTyped = putObjectAsyncOverrideNonOptional
                    as? PutObjectAsyncType<InvocationReportingType> {
                return try putObjectAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putObjectSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutObjectRequest,
            reporting: InvocationReportingType) throws -> S3Model.PutObjectOutput {
        if let putObjectSyncOverrideNonOptional = putObjectSyncOverride {
            if let putObjectSyncOverrideTyped = putObjectSyncOverrideNonOptional
                    as? PutObjectSyncType<InvocationReportingType> {
                return try putObjectSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putObjectAclAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutObjectAclRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.PutObjectAclOutput, HTTPClientError>) -> ()) throws {
        if let putObjectAclAsyncOverrideNonOptional = putObjectAclAsyncOverride {
            if let putObjectAclAsyncOverrideTyped = putObjectAclAsyncOverrideNonOptional
                    as? PutObjectAclAsyncType<InvocationReportingType> {
                return try putObjectAclAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putObjectAclSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutObjectAclRequest,
            reporting: InvocationReportingType) throws -> S3Model.PutObjectAclOutput {
        if let putObjectAclSyncOverrideNonOptional = putObjectAclSyncOverride {
            if let putObjectAclSyncOverrideTyped = putObjectAclSyncOverrideNonOptional
                    as? PutObjectAclSyncType<InvocationReportingType> {
                return try putObjectAclSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putObjectLegalHoldAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutObjectLegalHoldRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.PutObjectLegalHoldOutput, HTTPClientError>) -> ()) throws {
        if let putObjectLegalHoldAsyncOverrideNonOptional = putObjectLegalHoldAsyncOverride {
            if let putObjectLegalHoldAsyncOverrideTyped = putObjectLegalHoldAsyncOverrideNonOptional
                    as? PutObjectLegalHoldAsyncType<InvocationReportingType> {
                return try putObjectLegalHoldAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putObjectLegalHoldSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutObjectLegalHoldRequest,
            reporting: InvocationReportingType) throws -> S3Model.PutObjectLegalHoldOutput {
        if let putObjectLegalHoldSyncOverrideNonOptional = putObjectLegalHoldSyncOverride {
            if let putObjectLegalHoldSyncOverrideTyped = putObjectLegalHoldSyncOverrideNonOptional
                    as? PutObjectLegalHoldSyncType<InvocationReportingType> {
                return try putObjectLegalHoldSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putObjectLockConfigurationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutObjectLockConfigurationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.PutObjectLockConfigurationOutput, HTTPClientError>) -> ()) throws {
        if let putObjectLockConfigurationAsyncOverrideNonOptional = putObjectLockConfigurationAsyncOverride {
            if let putObjectLockConfigurationAsyncOverrideTyped = putObjectLockConfigurationAsyncOverrideNonOptional
                    as? PutObjectLockConfigurationAsyncType<InvocationReportingType> {
                return try putObjectLockConfigurationAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putObjectLockConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutObjectLockConfigurationRequest,
            reporting: InvocationReportingType) throws -> S3Model.PutObjectLockConfigurationOutput {
        if let putObjectLockConfigurationSyncOverrideNonOptional = putObjectLockConfigurationSyncOverride {
            if let putObjectLockConfigurationSyncOverrideTyped = putObjectLockConfigurationSyncOverrideNonOptional
                    as? PutObjectLockConfigurationSyncType<InvocationReportingType> {
                return try putObjectLockConfigurationSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putObjectRetentionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutObjectRetentionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.PutObjectRetentionOutput, HTTPClientError>) -> ()) throws {
        if let putObjectRetentionAsyncOverrideNonOptional = putObjectRetentionAsyncOverride {
            if let putObjectRetentionAsyncOverrideTyped = putObjectRetentionAsyncOverrideNonOptional
                    as? PutObjectRetentionAsyncType<InvocationReportingType> {
                return try putObjectRetentionAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putObjectRetentionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutObjectRetentionRequest,
            reporting: InvocationReportingType) throws -> S3Model.PutObjectRetentionOutput {
        if let putObjectRetentionSyncOverrideNonOptional = putObjectRetentionSyncOverride {
            if let putObjectRetentionSyncOverrideTyped = putObjectRetentionSyncOverrideNonOptional
                    as? PutObjectRetentionSyncType<InvocationReportingType> {
                return try putObjectRetentionSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putObjectTaggingAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutObjectTaggingRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.PutObjectTaggingOutput, HTTPClientError>) -> ()) throws {
        if let putObjectTaggingAsyncOverrideNonOptional = putObjectTaggingAsyncOverride {
            if let putObjectTaggingAsyncOverrideTyped = putObjectTaggingAsyncOverrideNonOptional
                    as? PutObjectTaggingAsyncType<InvocationReportingType> {
                return try putObjectTaggingAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putObjectTaggingSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutObjectTaggingRequest,
            reporting: InvocationReportingType) throws -> S3Model.PutObjectTaggingOutput {
        if let putObjectTaggingSyncOverrideNonOptional = putObjectTaggingSyncOverride {
            if let putObjectTaggingSyncOverrideTyped = putObjectTaggingSyncOverrideNonOptional
                    as? PutObjectTaggingSyncType<InvocationReportingType> {
                return try putObjectTaggingSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func putPublicAccessBlockAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutPublicAccessBlockRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws {
        if let putPublicAccessBlockAsyncOverrideNonOptional = putPublicAccessBlockAsyncOverride {
            if let putPublicAccessBlockAsyncOverrideTyped = putPublicAccessBlockAsyncOverrideNonOptional
                    as? PutPublicAccessBlockAsyncType<InvocationReportingType> {
                return try putPublicAccessBlockAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        completion(error)
    }

    /**
     Invokes the PutPublicAccessBlock operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutPublicAccessBlockRequest object being passed to this operation.
     */
    public func putPublicAccessBlockSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutPublicAccessBlockRequest,
            reporting: InvocationReportingType) throws {
        if let putPublicAccessBlockSyncOverrideNonOptional = putPublicAccessBlockSyncOverride {
            if let putPublicAccessBlockSyncOverrideTyped = putPublicAccessBlockSyncOverrideNonOptional
                    as? PutPublicAccessBlockSyncType<InvocationReportingType> {
                return try putPublicAccessBlockSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func restoreObjectAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.RestoreObjectRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.RestoreObjectOutput, HTTPClientError>) -> ()) throws {
        if let restoreObjectAsyncOverrideNonOptional = restoreObjectAsyncOverride {
            if let restoreObjectAsyncOverrideTyped = restoreObjectAsyncOverrideNonOptional
                    as? RestoreObjectAsyncType<InvocationReportingType> {
                return try restoreObjectAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func restoreObjectSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.RestoreObjectRequest,
            reporting: InvocationReportingType) throws -> S3Model.RestoreObjectOutput {
        if let restoreObjectSyncOverrideNonOptional = restoreObjectSyncOverride {
            if let restoreObjectSyncOverrideTyped = restoreObjectSyncOverrideNonOptional
                    as? RestoreObjectSyncType<InvocationReportingType> {
                return try restoreObjectSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func selectObjectContentAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.SelectObjectContentRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.SelectObjectContentOutput, HTTPClientError>) -> ()) throws {
        if let selectObjectContentAsyncOverrideNonOptional = selectObjectContentAsyncOverride {
            if let selectObjectContentAsyncOverrideTyped = selectObjectContentAsyncOverrideNonOptional
                    as? SelectObjectContentAsyncType<InvocationReportingType> {
                return try selectObjectContentAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func selectObjectContentSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.SelectObjectContentRequest,
            reporting: InvocationReportingType) throws -> S3Model.SelectObjectContentOutput {
        if let selectObjectContentSyncOverrideNonOptional = selectObjectContentSyncOverride {
            if let selectObjectContentSyncOverrideTyped = selectObjectContentSyncOverrideNonOptional
                    as? SelectObjectContentSyncType<InvocationReportingType> {
                return try selectObjectContentSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func uploadPartAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.UploadPartRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.UploadPartOutput, HTTPClientError>) -> ()) throws {
        if let uploadPartAsyncOverrideNonOptional = uploadPartAsyncOverride {
            if let uploadPartAsyncOverrideTyped = uploadPartAsyncOverrideNonOptional
                    as? UploadPartAsyncType<InvocationReportingType> {
                return try uploadPartAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func uploadPartSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.UploadPartRequest,
            reporting: InvocationReportingType) throws -> S3Model.UploadPartOutput {
        if let uploadPartSyncOverrideNonOptional = uploadPartSyncOverride {
            if let uploadPartSyncOverrideTyped = uploadPartSyncOverrideNonOptional
                    as? UploadPartSyncType<InvocationReportingType> {
                return try uploadPartSyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func uploadPartCopyAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.UploadPartCopyRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.UploadPartCopyOutput, HTTPClientError>) -> ()) throws {
        if let uploadPartCopyAsyncOverrideNonOptional = uploadPartCopyAsyncOverride {
            if let uploadPartCopyAsyncOverrideTyped = uploadPartCopyAsyncOverrideNonOptional
                    as? UploadPartCopyAsyncType<InvocationReportingType> {
                return try uploadPartCopyAsyncOverrideTyped(input, reporting, completion)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
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
    public func uploadPartCopySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.UploadPartCopyRequest,
            reporting: InvocationReportingType) throws -> S3Model.UploadPartCopyOutput {
        if let uploadPartCopySyncOverrideNonOptional = uploadPartCopySyncOverride {
            if let uploadPartCopySyncOverrideTyped = uploadPartCopySyncOverrideNonOptional
                    as? UploadPartCopySyncType<InvocationReportingType> {
                return try uploadPartCopySyncOverrideTyped(input, reporting)
            } else {
                fatalError("Function reporting type '\(InvocationReportingType.self)' incompatible with client reporting type '\(ClientInvocationReportingType.self)'.")
            }
        }

        throw error
    }
}
