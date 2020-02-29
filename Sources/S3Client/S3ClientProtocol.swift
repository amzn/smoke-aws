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
// S3ClientProtocol.swift
// S3Client
//

import Foundation
import S3Model
import SmokeAWSCore
import SmokeHTTPClient

/**
 Client Protocol for the S3 service.
 */
public protocol S3ClientProtocol {
    typealias AbortMultipartUploadSyncType = (
            _ input: S3Model.AbortMultipartUploadRequest) throws -> S3Model.AbortMultipartUploadOutput
    typealias AbortMultipartUploadAsyncType = (
            _ input: S3Model.AbortMultipartUploadRequest, 
            _ completion: @escaping (Result<S3Model.AbortMultipartUploadOutput, S3Error>) -> ()) throws -> ()
    typealias CompleteMultipartUploadSyncType = (
            _ input: S3Model.CompleteMultipartUploadRequest) throws -> S3Model.CompleteMultipartUploadOutput
    typealias CompleteMultipartUploadAsyncType = (
            _ input: S3Model.CompleteMultipartUploadRequest, 
            _ completion: @escaping (Result<S3Model.CompleteMultipartUploadOutput, S3Error>) -> ()) throws -> ()
    typealias CopyObjectSyncType = (
            _ input: S3Model.CopyObjectRequest) throws -> S3Model.CopyObjectOutput
    typealias CopyObjectAsyncType = (
            _ input: S3Model.CopyObjectRequest, 
            _ completion: @escaping (Result<S3Model.CopyObjectOutput, S3Error>) -> ()) throws -> ()
    typealias CreateBucketSyncType = (
            _ input: S3Model.CreateBucketRequest) throws -> S3Model.CreateBucketOutput
    typealias CreateBucketAsyncType = (
            _ input: S3Model.CreateBucketRequest, 
            _ completion: @escaping (Result<S3Model.CreateBucketOutput, S3Error>) -> ()) throws -> ()
    typealias CreateMultipartUploadSyncType = (
            _ input: S3Model.CreateMultipartUploadRequest) throws -> S3Model.CreateMultipartUploadOutput
    typealias CreateMultipartUploadAsyncType = (
            _ input: S3Model.CreateMultipartUploadRequest, 
            _ completion: @escaping (Result<S3Model.CreateMultipartUploadOutput, S3Error>) -> ()) throws -> ()
    typealias DeleteBucketSyncType = (
            _ input: S3Model.DeleteBucketRequest) throws -> ()
    typealias DeleteBucketAsyncType = (
            _ input: S3Model.DeleteBucketRequest, 
            _ completion: @escaping (S3Error?) -> ()) throws -> ()
    typealias DeleteBucketAnalyticsConfigurationSyncType = (
            _ input: S3Model.DeleteBucketAnalyticsConfigurationRequest) throws -> ()
    typealias DeleteBucketAnalyticsConfigurationAsyncType = (
            _ input: S3Model.DeleteBucketAnalyticsConfigurationRequest, 
            _ completion: @escaping (S3Error?) -> ()) throws -> ()
    typealias DeleteBucketCorsSyncType = (
            _ input: S3Model.DeleteBucketCorsRequest) throws -> ()
    typealias DeleteBucketCorsAsyncType = (
            _ input: S3Model.DeleteBucketCorsRequest, 
            _ completion: @escaping (S3Error?) -> ()) throws -> ()
    typealias DeleteBucketEncryptionSyncType = (
            _ input: S3Model.DeleteBucketEncryptionRequest) throws -> ()
    typealias DeleteBucketEncryptionAsyncType = (
            _ input: S3Model.DeleteBucketEncryptionRequest, 
            _ completion: @escaping (S3Error?) -> ()) throws -> ()
    typealias DeleteBucketInventoryConfigurationSyncType = (
            _ input: S3Model.DeleteBucketInventoryConfigurationRequest) throws -> ()
    typealias DeleteBucketInventoryConfigurationAsyncType = (
            _ input: S3Model.DeleteBucketInventoryConfigurationRequest, 
            _ completion: @escaping (S3Error?) -> ()) throws -> ()
    typealias DeleteBucketLifecycleSyncType = (
            _ input: S3Model.DeleteBucketLifecycleRequest) throws -> ()
    typealias DeleteBucketLifecycleAsyncType = (
            _ input: S3Model.DeleteBucketLifecycleRequest, 
            _ completion: @escaping (S3Error?) -> ()) throws -> ()
    typealias DeleteBucketMetricsConfigurationSyncType = (
            _ input: S3Model.DeleteBucketMetricsConfigurationRequest) throws -> ()
    typealias DeleteBucketMetricsConfigurationAsyncType = (
            _ input: S3Model.DeleteBucketMetricsConfigurationRequest, 
            _ completion: @escaping (S3Error?) -> ()) throws -> ()
    typealias DeleteBucketPolicySyncType = (
            _ input: S3Model.DeleteBucketPolicyRequest) throws -> ()
    typealias DeleteBucketPolicyAsyncType = (
            _ input: S3Model.DeleteBucketPolicyRequest, 
            _ completion: @escaping (S3Error?) -> ()) throws -> ()
    typealias DeleteBucketReplicationSyncType = (
            _ input: S3Model.DeleteBucketReplicationRequest) throws -> ()
    typealias DeleteBucketReplicationAsyncType = (
            _ input: S3Model.DeleteBucketReplicationRequest, 
            _ completion: @escaping (S3Error?) -> ()) throws -> ()
    typealias DeleteBucketTaggingSyncType = (
            _ input: S3Model.DeleteBucketTaggingRequest) throws -> ()
    typealias DeleteBucketTaggingAsyncType = (
            _ input: S3Model.DeleteBucketTaggingRequest, 
            _ completion: @escaping (S3Error?) -> ()) throws -> ()
    typealias DeleteBucketWebsiteSyncType = (
            _ input: S3Model.DeleteBucketWebsiteRequest) throws -> ()
    typealias DeleteBucketWebsiteAsyncType = (
            _ input: S3Model.DeleteBucketWebsiteRequest, 
            _ completion: @escaping (S3Error?) -> ()) throws -> ()
    typealias DeleteObjectSyncType = (
            _ input: S3Model.DeleteObjectRequest) throws -> S3Model.DeleteObjectOutput
    typealias DeleteObjectAsyncType = (
            _ input: S3Model.DeleteObjectRequest, 
            _ completion: @escaping (Result<S3Model.DeleteObjectOutput, S3Error>) -> ()) throws -> ()
    typealias DeleteObjectTaggingSyncType = (
            _ input: S3Model.DeleteObjectTaggingRequest) throws -> S3Model.DeleteObjectTaggingOutput
    typealias DeleteObjectTaggingAsyncType = (
            _ input: S3Model.DeleteObjectTaggingRequest, 
            _ completion: @escaping (Result<S3Model.DeleteObjectTaggingOutput, S3Error>) -> ()) throws -> ()
    typealias DeleteObjectsSyncType = (
            _ input: S3Model.DeleteObjectsRequest) throws -> S3Model.DeleteObjectsOutput
    typealias DeleteObjectsAsyncType = (
            _ input: S3Model.DeleteObjectsRequest, 
            _ completion: @escaping (Result<S3Model.DeleteObjectsOutput, S3Error>) -> ()) throws -> ()
    typealias DeletePublicAccessBlockSyncType = (
            _ input: S3Model.DeletePublicAccessBlockRequest) throws -> ()
    typealias DeletePublicAccessBlockAsyncType = (
            _ input: S3Model.DeletePublicAccessBlockRequest, 
            _ completion: @escaping (S3Error?) -> ()) throws -> ()
    typealias GetBucketAccelerateConfigurationSyncType = (
            _ input: S3Model.GetBucketAccelerateConfigurationRequest) throws -> S3Model.GetBucketAccelerateConfigurationOutput
    typealias GetBucketAccelerateConfigurationAsyncType = (
            _ input: S3Model.GetBucketAccelerateConfigurationRequest, 
            _ completion: @escaping (Result<S3Model.GetBucketAccelerateConfigurationOutput, S3Error>) -> ()) throws -> ()
    typealias GetBucketAclSyncType = (
            _ input: S3Model.GetBucketAclRequest) throws -> S3Model.GetBucketAclOutput
    typealias GetBucketAclAsyncType = (
            _ input: S3Model.GetBucketAclRequest, 
            _ completion: @escaping (Result<S3Model.GetBucketAclOutput, S3Error>) -> ()) throws -> ()
    typealias GetBucketAnalyticsConfigurationSyncType = (
            _ input: S3Model.GetBucketAnalyticsConfigurationRequest) throws -> S3Model.GetBucketAnalyticsConfigurationOutput
    typealias GetBucketAnalyticsConfigurationAsyncType = (
            _ input: S3Model.GetBucketAnalyticsConfigurationRequest, 
            _ completion: @escaping (Result<S3Model.GetBucketAnalyticsConfigurationOutput, S3Error>) -> ()) throws -> ()
    typealias GetBucketCorsSyncType = (
            _ input: S3Model.GetBucketCorsRequest) throws -> S3Model.GetBucketCorsOutput
    typealias GetBucketCorsAsyncType = (
            _ input: S3Model.GetBucketCorsRequest, 
            _ completion: @escaping (Result<S3Model.GetBucketCorsOutput, S3Error>) -> ()) throws -> ()
    typealias GetBucketEncryptionSyncType = (
            _ input: S3Model.GetBucketEncryptionRequest) throws -> S3Model.GetBucketEncryptionOutput
    typealias GetBucketEncryptionAsyncType = (
            _ input: S3Model.GetBucketEncryptionRequest, 
            _ completion: @escaping (Result<S3Model.GetBucketEncryptionOutput, S3Error>) -> ()) throws -> ()
    typealias GetBucketInventoryConfigurationSyncType = (
            _ input: S3Model.GetBucketInventoryConfigurationRequest) throws -> S3Model.GetBucketInventoryConfigurationOutput
    typealias GetBucketInventoryConfigurationAsyncType = (
            _ input: S3Model.GetBucketInventoryConfigurationRequest, 
            _ completion: @escaping (Result<S3Model.GetBucketInventoryConfigurationOutput, S3Error>) -> ()) throws -> ()
    typealias GetBucketLifecycleSyncType = (
            _ input: S3Model.GetBucketLifecycleRequest) throws -> S3Model.GetBucketLifecycleOutput
    typealias GetBucketLifecycleAsyncType = (
            _ input: S3Model.GetBucketLifecycleRequest, 
            _ completion: @escaping (Result<S3Model.GetBucketLifecycleOutput, S3Error>) -> ()) throws -> ()
    typealias GetBucketLifecycleConfigurationSyncType = (
            _ input: S3Model.GetBucketLifecycleConfigurationRequest) throws -> S3Model.GetBucketLifecycleConfigurationOutput
    typealias GetBucketLifecycleConfigurationAsyncType = (
            _ input: S3Model.GetBucketLifecycleConfigurationRequest, 
            _ completion: @escaping (Result<S3Model.GetBucketLifecycleConfigurationOutput, S3Error>) -> ()) throws -> ()
    typealias GetBucketLocationSyncType = (
            _ input: S3Model.GetBucketLocationRequest) throws -> S3Model.GetBucketLocationOutput
    typealias GetBucketLocationAsyncType = (
            _ input: S3Model.GetBucketLocationRequest, 
            _ completion: @escaping (Result<S3Model.GetBucketLocationOutput, S3Error>) -> ()) throws -> ()
    typealias GetBucketLoggingSyncType = (
            _ input: S3Model.GetBucketLoggingRequest) throws -> S3Model.GetBucketLoggingOutput
    typealias GetBucketLoggingAsyncType = (
            _ input: S3Model.GetBucketLoggingRequest, 
            _ completion: @escaping (Result<S3Model.GetBucketLoggingOutput, S3Error>) -> ()) throws -> ()
    typealias GetBucketMetricsConfigurationSyncType = (
            _ input: S3Model.GetBucketMetricsConfigurationRequest) throws -> S3Model.GetBucketMetricsConfigurationOutput
    typealias GetBucketMetricsConfigurationAsyncType = (
            _ input: S3Model.GetBucketMetricsConfigurationRequest, 
            _ completion: @escaping (Result<S3Model.GetBucketMetricsConfigurationOutput, S3Error>) -> ()) throws -> ()
    typealias GetBucketNotificationSyncType = (
            _ input: S3Model.GetBucketNotificationConfigurationRequest) throws -> S3Model.NotificationConfigurationDeprecated
    typealias GetBucketNotificationAsyncType = (
            _ input: S3Model.GetBucketNotificationConfigurationRequest, 
            _ completion: @escaping (Result<S3Model.NotificationConfigurationDeprecated, S3Error>) -> ()) throws -> ()
    typealias GetBucketNotificationConfigurationSyncType = (
            _ input: S3Model.GetBucketNotificationConfigurationRequest) throws -> S3Model.NotificationConfiguration
    typealias GetBucketNotificationConfigurationAsyncType = (
            _ input: S3Model.GetBucketNotificationConfigurationRequest, 
            _ completion: @escaping (Result<S3Model.NotificationConfiguration, S3Error>) -> ()) throws -> ()
    typealias GetBucketPolicySyncType = (
            _ input: S3Model.GetBucketPolicyRequest) throws -> S3Model.GetBucketPolicyOutput
    typealias GetBucketPolicyAsyncType = (
            _ input: S3Model.GetBucketPolicyRequest, 
            _ completion: @escaping (Result<S3Model.GetBucketPolicyOutput, S3Error>) -> ()) throws -> ()
    typealias GetBucketPolicyStatusSyncType = (
            _ input: S3Model.GetBucketPolicyStatusRequest) throws -> S3Model.GetBucketPolicyStatusOutput
    typealias GetBucketPolicyStatusAsyncType = (
            _ input: S3Model.GetBucketPolicyStatusRequest, 
            _ completion: @escaping (Result<S3Model.GetBucketPolicyStatusOutput, S3Error>) -> ()) throws -> ()
    typealias GetBucketReplicationSyncType = (
            _ input: S3Model.GetBucketReplicationRequest) throws -> S3Model.GetBucketReplicationOutput
    typealias GetBucketReplicationAsyncType = (
            _ input: S3Model.GetBucketReplicationRequest, 
            _ completion: @escaping (Result<S3Model.GetBucketReplicationOutput, S3Error>) -> ()) throws -> ()
    typealias GetBucketRequestPaymentSyncType = (
            _ input: S3Model.GetBucketRequestPaymentRequest) throws -> S3Model.GetBucketRequestPaymentOutput
    typealias GetBucketRequestPaymentAsyncType = (
            _ input: S3Model.GetBucketRequestPaymentRequest, 
            _ completion: @escaping (Result<S3Model.GetBucketRequestPaymentOutput, S3Error>) -> ()) throws -> ()
    typealias GetBucketTaggingSyncType = (
            _ input: S3Model.GetBucketTaggingRequest) throws -> S3Model.GetBucketTaggingOutput
    typealias GetBucketTaggingAsyncType = (
            _ input: S3Model.GetBucketTaggingRequest, 
            _ completion: @escaping (Result<S3Model.GetBucketTaggingOutput, S3Error>) -> ()) throws -> ()
    typealias GetBucketVersioningSyncType = (
            _ input: S3Model.GetBucketVersioningRequest) throws -> S3Model.GetBucketVersioningOutput
    typealias GetBucketVersioningAsyncType = (
            _ input: S3Model.GetBucketVersioningRequest, 
            _ completion: @escaping (Result<S3Model.GetBucketVersioningOutput, S3Error>) -> ()) throws -> ()
    typealias GetBucketWebsiteSyncType = (
            _ input: S3Model.GetBucketWebsiteRequest) throws -> S3Model.GetBucketWebsiteOutput
    typealias GetBucketWebsiteAsyncType = (
            _ input: S3Model.GetBucketWebsiteRequest, 
            _ completion: @escaping (Result<S3Model.GetBucketWebsiteOutput, S3Error>) -> ()) throws -> ()
    typealias GetObjectSyncType = (
            _ input: S3Model.GetObjectRequest) throws -> S3Model.GetObjectOutput
    typealias GetObjectAsyncType = (
            _ input: S3Model.GetObjectRequest, 
            _ completion: @escaping (Result<S3Model.GetObjectOutput, S3Error>) -> ()) throws -> ()
    typealias GetObjectAclSyncType = (
            _ input: S3Model.GetObjectAclRequest) throws -> S3Model.GetObjectAclOutput
    typealias GetObjectAclAsyncType = (
            _ input: S3Model.GetObjectAclRequest, 
            _ completion: @escaping (Result<S3Model.GetObjectAclOutput, S3Error>) -> ()) throws -> ()
    typealias GetObjectLegalHoldSyncType = (
            _ input: S3Model.GetObjectLegalHoldRequest) throws -> S3Model.GetObjectLegalHoldOutput
    typealias GetObjectLegalHoldAsyncType = (
            _ input: S3Model.GetObjectLegalHoldRequest, 
            _ completion: @escaping (Result<S3Model.GetObjectLegalHoldOutput, S3Error>) -> ()) throws -> ()
    typealias GetObjectLockConfigurationSyncType = (
            _ input: S3Model.GetObjectLockConfigurationRequest) throws -> S3Model.GetObjectLockConfigurationOutput
    typealias GetObjectLockConfigurationAsyncType = (
            _ input: S3Model.GetObjectLockConfigurationRequest, 
            _ completion: @escaping (Result<S3Model.GetObjectLockConfigurationOutput, S3Error>) -> ()) throws -> ()
    typealias GetObjectRetentionSyncType = (
            _ input: S3Model.GetObjectRetentionRequest) throws -> S3Model.GetObjectRetentionOutput
    typealias GetObjectRetentionAsyncType = (
            _ input: S3Model.GetObjectRetentionRequest, 
            _ completion: @escaping (Result<S3Model.GetObjectRetentionOutput, S3Error>) -> ()) throws -> ()
    typealias GetObjectTaggingSyncType = (
            _ input: S3Model.GetObjectTaggingRequest) throws -> S3Model.GetObjectTaggingOutput
    typealias GetObjectTaggingAsyncType = (
            _ input: S3Model.GetObjectTaggingRequest, 
            _ completion: @escaping (Result<S3Model.GetObjectTaggingOutput, S3Error>) -> ()) throws -> ()
    typealias GetObjectTorrentSyncType = (
            _ input: S3Model.GetObjectTorrentRequest) throws -> S3Model.GetObjectTorrentOutput
    typealias GetObjectTorrentAsyncType = (
            _ input: S3Model.GetObjectTorrentRequest, 
            _ completion: @escaping (Result<S3Model.GetObjectTorrentOutput, S3Error>) -> ()) throws -> ()
    typealias GetPublicAccessBlockSyncType = (
            _ input: S3Model.GetPublicAccessBlockRequest) throws -> S3Model.GetPublicAccessBlockOutput
    typealias GetPublicAccessBlockAsyncType = (
            _ input: S3Model.GetPublicAccessBlockRequest, 
            _ completion: @escaping (Result<S3Model.GetPublicAccessBlockOutput, S3Error>) -> ()) throws -> ()
    typealias HeadBucketSyncType = (
            _ input: S3Model.HeadBucketRequest) throws -> ()
    typealias HeadBucketAsyncType = (
            _ input: S3Model.HeadBucketRequest, 
            _ completion: @escaping (S3Error?) -> ()) throws -> ()
    typealias HeadObjectSyncType = (
            _ input: S3Model.HeadObjectRequest) throws -> S3Model.HeadObjectOutput
    typealias HeadObjectAsyncType = (
            _ input: S3Model.HeadObjectRequest, 
            _ completion: @escaping (Result<S3Model.HeadObjectOutput, S3Error>) -> ()) throws -> ()
    typealias ListBucketAnalyticsConfigurationsSyncType = (
            _ input: S3Model.ListBucketAnalyticsConfigurationsRequest) throws -> S3Model.ListBucketAnalyticsConfigurationsOutput
    typealias ListBucketAnalyticsConfigurationsAsyncType = (
            _ input: S3Model.ListBucketAnalyticsConfigurationsRequest, 
            _ completion: @escaping (Result<S3Model.ListBucketAnalyticsConfigurationsOutput, S3Error>) -> ()) throws -> ()
    typealias ListBucketInventoryConfigurationsSyncType = (
            _ input: S3Model.ListBucketInventoryConfigurationsRequest) throws -> S3Model.ListBucketInventoryConfigurationsOutput
    typealias ListBucketInventoryConfigurationsAsyncType = (
            _ input: S3Model.ListBucketInventoryConfigurationsRequest, 
            _ completion: @escaping (Result<S3Model.ListBucketInventoryConfigurationsOutput, S3Error>) -> ()) throws -> ()
    typealias ListBucketMetricsConfigurationsSyncType = (
            _ input: S3Model.ListBucketMetricsConfigurationsRequest) throws -> S3Model.ListBucketMetricsConfigurationsOutput
    typealias ListBucketMetricsConfigurationsAsyncType = (
            _ input: S3Model.ListBucketMetricsConfigurationsRequest, 
            _ completion: @escaping (Result<S3Model.ListBucketMetricsConfigurationsOutput, S3Error>) -> ()) throws -> ()
    typealias ListBucketsSyncType = () throws -> S3Model.ListBucketsOutput
    typealias ListBucketsAsyncType = (
            _ completion: @escaping (Result<S3Model.ListBucketsOutput, S3Error>) -> ()) throws -> ()
    typealias ListMultipartUploadsSyncType = (
            _ input: S3Model.ListMultipartUploadsRequest) throws -> S3Model.ListMultipartUploadsOutput
    typealias ListMultipartUploadsAsyncType = (
            _ input: S3Model.ListMultipartUploadsRequest, 
            _ completion: @escaping (Result<S3Model.ListMultipartUploadsOutput, S3Error>) -> ()) throws -> ()
    typealias ListObjectVersionsSyncType = (
            _ input: S3Model.ListObjectVersionsRequest) throws -> S3Model.ListObjectVersionsOutput
    typealias ListObjectVersionsAsyncType = (
            _ input: S3Model.ListObjectVersionsRequest, 
            _ completion: @escaping (Result<S3Model.ListObjectVersionsOutput, S3Error>) -> ()) throws -> ()
    typealias ListObjectsSyncType = (
            _ input: S3Model.ListObjectsRequest) throws -> S3Model.ListObjectsOutput
    typealias ListObjectsAsyncType = (
            _ input: S3Model.ListObjectsRequest, 
            _ completion: @escaping (Result<S3Model.ListObjectsOutput, S3Error>) -> ()) throws -> ()
    typealias ListObjectsV2SyncType = (
            _ input: S3Model.ListObjectsV2Request) throws -> S3Model.ListObjectsV2Output
    typealias ListObjectsV2AsyncType = (
            _ input: S3Model.ListObjectsV2Request, 
            _ completion: @escaping (Result<S3Model.ListObjectsV2Output, S3Error>) -> ()) throws -> ()
    typealias ListPartsSyncType = (
            _ input: S3Model.ListPartsRequest) throws -> S3Model.ListPartsOutput
    typealias ListPartsAsyncType = (
            _ input: S3Model.ListPartsRequest, 
            _ completion: @escaping (Result<S3Model.ListPartsOutput, S3Error>) -> ()) throws -> ()
    typealias PutBucketAccelerateConfigurationSyncType = (
            _ input: S3Model.PutBucketAccelerateConfigurationRequest) throws -> ()
    typealias PutBucketAccelerateConfigurationAsyncType = (
            _ input: S3Model.PutBucketAccelerateConfigurationRequest, 
            _ completion: @escaping (S3Error?) -> ()) throws -> ()
    typealias PutBucketAclSyncType = (
            _ input: S3Model.PutBucketAclRequest) throws -> ()
    typealias PutBucketAclAsyncType = (
            _ input: S3Model.PutBucketAclRequest, 
            _ completion: @escaping (S3Error?) -> ()) throws -> ()
    typealias PutBucketAnalyticsConfigurationSyncType = (
            _ input: S3Model.PutBucketAnalyticsConfigurationRequest) throws -> ()
    typealias PutBucketAnalyticsConfigurationAsyncType = (
            _ input: S3Model.PutBucketAnalyticsConfigurationRequest, 
            _ completion: @escaping (S3Error?) -> ()) throws -> ()
    typealias PutBucketCorsSyncType = (
            _ input: S3Model.PutBucketCorsRequest) throws -> ()
    typealias PutBucketCorsAsyncType = (
            _ input: S3Model.PutBucketCorsRequest, 
            _ completion: @escaping (S3Error?) -> ()) throws -> ()
    typealias PutBucketEncryptionSyncType = (
            _ input: S3Model.PutBucketEncryptionRequest) throws -> ()
    typealias PutBucketEncryptionAsyncType = (
            _ input: S3Model.PutBucketEncryptionRequest, 
            _ completion: @escaping (S3Error?) -> ()) throws -> ()
    typealias PutBucketInventoryConfigurationSyncType = (
            _ input: S3Model.PutBucketInventoryConfigurationRequest) throws -> ()
    typealias PutBucketInventoryConfigurationAsyncType = (
            _ input: S3Model.PutBucketInventoryConfigurationRequest, 
            _ completion: @escaping (S3Error?) -> ()) throws -> ()
    typealias PutBucketLifecycleSyncType = (
            _ input: S3Model.PutBucketLifecycleRequest) throws -> ()
    typealias PutBucketLifecycleAsyncType = (
            _ input: S3Model.PutBucketLifecycleRequest, 
            _ completion: @escaping (S3Error?) -> ()) throws -> ()
    typealias PutBucketLifecycleConfigurationSyncType = (
            _ input: S3Model.PutBucketLifecycleConfigurationRequest) throws -> ()
    typealias PutBucketLifecycleConfigurationAsyncType = (
            _ input: S3Model.PutBucketLifecycleConfigurationRequest, 
            _ completion: @escaping (S3Error?) -> ()) throws -> ()
    typealias PutBucketLoggingSyncType = (
            _ input: S3Model.PutBucketLoggingRequest) throws -> ()
    typealias PutBucketLoggingAsyncType = (
            _ input: S3Model.PutBucketLoggingRequest, 
            _ completion: @escaping (S3Error?) -> ()) throws -> ()
    typealias PutBucketMetricsConfigurationSyncType = (
            _ input: S3Model.PutBucketMetricsConfigurationRequest) throws -> ()
    typealias PutBucketMetricsConfigurationAsyncType = (
            _ input: S3Model.PutBucketMetricsConfigurationRequest, 
            _ completion: @escaping (S3Error?) -> ()) throws -> ()
    typealias PutBucketNotificationSyncType = (
            _ input: S3Model.PutBucketNotificationRequest) throws -> ()
    typealias PutBucketNotificationAsyncType = (
            _ input: S3Model.PutBucketNotificationRequest, 
            _ completion: @escaping (S3Error?) -> ()) throws -> ()
    typealias PutBucketNotificationConfigurationSyncType = (
            _ input: S3Model.PutBucketNotificationConfigurationRequest) throws -> ()
    typealias PutBucketNotificationConfigurationAsyncType = (
            _ input: S3Model.PutBucketNotificationConfigurationRequest, 
            _ completion: @escaping (S3Error?) -> ()) throws -> ()
    typealias PutBucketPolicySyncType = (
            _ input: S3Model.PutBucketPolicyRequest) throws -> ()
    typealias PutBucketPolicyAsyncType = (
            _ input: S3Model.PutBucketPolicyRequest, 
            _ completion: @escaping (S3Error?) -> ()) throws -> ()
    typealias PutBucketReplicationSyncType = (
            _ input: S3Model.PutBucketReplicationRequest) throws -> ()
    typealias PutBucketReplicationAsyncType = (
            _ input: S3Model.PutBucketReplicationRequest, 
            _ completion: @escaping (S3Error?) -> ()) throws -> ()
    typealias PutBucketRequestPaymentSyncType = (
            _ input: S3Model.PutBucketRequestPaymentRequest) throws -> ()
    typealias PutBucketRequestPaymentAsyncType = (
            _ input: S3Model.PutBucketRequestPaymentRequest, 
            _ completion: @escaping (S3Error?) -> ()) throws -> ()
    typealias PutBucketTaggingSyncType = (
            _ input: S3Model.PutBucketTaggingRequest) throws -> ()
    typealias PutBucketTaggingAsyncType = (
            _ input: S3Model.PutBucketTaggingRequest, 
            _ completion: @escaping (S3Error?) -> ()) throws -> ()
    typealias PutBucketVersioningSyncType = (
            _ input: S3Model.PutBucketVersioningRequest) throws -> ()
    typealias PutBucketVersioningAsyncType = (
            _ input: S3Model.PutBucketVersioningRequest, 
            _ completion: @escaping (S3Error?) -> ()) throws -> ()
    typealias PutBucketWebsiteSyncType = (
            _ input: S3Model.PutBucketWebsiteRequest) throws -> ()
    typealias PutBucketWebsiteAsyncType = (
            _ input: S3Model.PutBucketWebsiteRequest, 
            _ completion: @escaping (S3Error?) -> ()) throws -> ()
    typealias PutObjectSyncType = (
            _ input: S3Model.PutObjectRequest) throws -> S3Model.PutObjectOutput
    typealias PutObjectAsyncType = (
            _ input: S3Model.PutObjectRequest, 
            _ completion: @escaping (Result<S3Model.PutObjectOutput, S3Error>) -> ()) throws -> ()
    typealias PutObjectAclSyncType = (
            _ input: S3Model.PutObjectAclRequest) throws -> S3Model.PutObjectAclOutput
    typealias PutObjectAclAsyncType = (
            _ input: S3Model.PutObjectAclRequest, 
            _ completion: @escaping (Result<S3Model.PutObjectAclOutput, S3Error>) -> ()) throws -> ()
    typealias PutObjectLegalHoldSyncType = (
            _ input: S3Model.PutObjectLegalHoldRequest) throws -> S3Model.PutObjectLegalHoldOutput
    typealias PutObjectLegalHoldAsyncType = (
            _ input: S3Model.PutObjectLegalHoldRequest, 
            _ completion: @escaping (Result<S3Model.PutObjectLegalHoldOutput, S3Error>) -> ()) throws -> ()
    typealias PutObjectLockConfigurationSyncType = (
            _ input: S3Model.PutObjectLockConfigurationRequest) throws -> S3Model.PutObjectLockConfigurationOutput
    typealias PutObjectLockConfigurationAsyncType = (
            _ input: S3Model.PutObjectLockConfigurationRequest, 
            _ completion: @escaping (Result<S3Model.PutObjectLockConfigurationOutput, S3Error>) -> ()) throws -> ()
    typealias PutObjectRetentionSyncType = (
            _ input: S3Model.PutObjectRetentionRequest) throws -> S3Model.PutObjectRetentionOutput
    typealias PutObjectRetentionAsyncType = (
            _ input: S3Model.PutObjectRetentionRequest, 
            _ completion: @escaping (Result<S3Model.PutObjectRetentionOutput, S3Error>) -> ()) throws -> ()
    typealias PutObjectTaggingSyncType = (
            _ input: S3Model.PutObjectTaggingRequest) throws -> S3Model.PutObjectTaggingOutput
    typealias PutObjectTaggingAsyncType = (
            _ input: S3Model.PutObjectTaggingRequest, 
            _ completion: @escaping (Result<S3Model.PutObjectTaggingOutput, S3Error>) -> ()) throws -> ()
    typealias PutPublicAccessBlockSyncType = (
            _ input: S3Model.PutPublicAccessBlockRequest) throws -> ()
    typealias PutPublicAccessBlockAsyncType = (
            _ input: S3Model.PutPublicAccessBlockRequest, 
            _ completion: @escaping (S3Error?) -> ()) throws -> ()
    typealias RestoreObjectSyncType = (
            _ input: S3Model.RestoreObjectRequest) throws -> S3Model.RestoreObjectOutput
    typealias RestoreObjectAsyncType = (
            _ input: S3Model.RestoreObjectRequest, 
            _ completion: @escaping (Result<S3Model.RestoreObjectOutput, S3Error>) -> ()) throws -> ()
    typealias SelectObjectContentSyncType = (
            _ input: S3Model.SelectObjectContentRequest) throws -> S3Model.SelectObjectContentOutput
    typealias SelectObjectContentAsyncType = (
            _ input: S3Model.SelectObjectContentRequest, 
            _ completion: @escaping (Result<S3Model.SelectObjectContentOutput, S3Error>) -> ()) throws -> ()
    typealias UploadPartSyncType = (
            _ input: S3Model.UploadPartRequest) throws -> S3Model.UploadPartOutput
    typealias UploadPartAsyncType = (
            _ input: S3Model.UploadPartRequest, 
            _ completion: @escaping (Result<S3Model.UploadPartOutput, S3Error>) -> ()) throws -> ()
    typealias UploadPartCopySyncType = (
            _ input: S3Model.UploadPartCopyRequest) throws -> S3Model.UploadPartCopyOutput
    typealias UploadPartCopyAsyncType = (
            _ input: S3Model.UploadPartCopyRequest, 
            _ completion: @escaping (Result<S3Model.UploadPartCopyOutput, S3Error>) -> ()) throws -> ()

    /**
     Invokes the AbortMultipartUpload operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AbortMultipartUploadRequest object being passed to this operation.
         - completion: The AbortMultipartUploadOutput object or an error will be passed to this 
           callback when the operation is complete. The AbortMultipartUploadOutput
           object will be validated before being returned to caller.
           The possible errors are: noSuchUpload.
     */
    func abortMultipartUploadAsync(
            input: S3Model.AbortMultipartUploadRequest, 
            completion: @escaping (Result<S3Model.AbortMultipartUploadOutput, S3Error>) -> ()) throws

    /**
     Invokes the AbortMultipartUpload operation waiting for the response before returning.

     - Parameters:
         - input: The validated AbortMultipartUploadRequest object being passed to this operation.
     - Returns: The AbortMultipartUploadOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchUpload.
     */
    func abortMultipartUploadSync(
            input: S3Model.AbortMultipartUploadRequest) throws -> S3Model.AbortMultipartUploadOutput

    /**
     Invokes the CompleteMultipartUpload operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CompleteMultipartUploadRequest object being passed to this operation.
         - completion: The CompleteMultipartUploadOutput object or an error will be passed to this 
           callback when the operation is complete. The CompleteMultipartUploadOutput
           object will be validated before being returned to caller.
     */
    func completeMultipartUploadAsync(
            input: S3Model.CompleteMultipartUploadRequest, 
            completion: @escaping (Result<S3Model.CompleteMultipartUploadOutput, S3Error>) -> ()) throws

    /**
     Invokes the CompleteMultipartUpload operation waiting for the response before returning.

     - Parameters:
         - input: The validated CompleteMultipartUploadRequest object being passed to this operation.
     - Returns: The CompleteMultipartUploadOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func completeMultipartUploadSync(
            input: S3Model.CompleteMultipartUploadRequest) throws -> S3Model.CompleteMultipartUploadOutput

    /**
     Invokes the CopyObject operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyObjectRequest object being passed to this operation.
         - completion: The CopyObjectOutput object or an error will be passed to this 
           callback when the operation is complete. The CopyObjectOutput
           object will be validated before being returned to caller.
           The possible errors are: objectNotInActiveTier.
     */
    func copyObjectAsync(
            input: S3Model.CopyObjectRequest, 
            completion: @escaping (Result<S3Model.CopyObjectOutput, S3Error>) -> ()) throws

    /**
     Invokes the CopyObject operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyObjectRequest object being passed to this operation.
     - Returns: The CopyObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: objectNotInActiveTier.
     */
    func copyObjectSync(
            input: S3Model.CopyObjectRequest) throws -> S3Model.CopyObjectOutput

    /**
     Invokes the CreateBucket operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateBucketRequest object being passed to this operation.
         - completion: The CreateBucketOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateBucketOutput
           object will be validated before being returned to caller.
           The possible errors are: bucketAlreadyExists, bucketAlreadyOwnedByYou.
     */
    func createBucketAsync(
            input: S3Model.CreateBucketRequest, 
            completion: @escaping (Result<S3Model.CreateBucketOutput, S3Error>) -> ()) throws

    /**
     Invokes the CreateBucket operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateBucketRequest object being passed to this operation.
     - Returns: The CreateBucketOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: bucketAlreadyExists, bucketAlreadyOwnedByYou.
     */
    func createBucketSync(
            input: S3Model.CreateBucketRequest) throws -> S3Model.CreateBucketOutput

    /**
     Invokes the CreateMultipartUpload operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateMultipartUploadRequest object being passed to this operation.
         - completion: The CreateMultipartUploadOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateMultipartUploadOutput
           object will be validated before being returned to caller.
     */
    func createMultipartUploadAsync(
            input: S3Model.CreateMultipartUploadRequest, 
            completion: @escaping (Result<S3Model.CreateMultipartUploadOutput, S3Error>) -> ()) throws

    /**
     Invokes the CreateMultipartUpload operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateMultipartUploadRequest object being passed to this operation.
     - Returns: The CreateMultipartUploadOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createMultipartUploadSync(
            input: S3Model.CreateMultipartUploadRequest) throws -> S3Model.CreateMultipartUploadOutput

    /**
     Invokes the DeleteBucket operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteBucketAsync(
            input: S3Model.DeleteBucketRequest, 
            completion: @escaping (S3Error?) -> ()) throws

    /**
     Invokes the DeleteBucket operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketRequest object being passed to this operation.
     */
    func deleteBucketSync(
            input: S3Model.DeleteBucketRequest) throws

    /**
     Invokes the DeleteBucketAnalyticsConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketAnalyticsConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteBucketAnalyticsConfigurationAsync(
            input: S3Model.DeleteBucketAnalyticsConfigurationRequest, 
            completion: @escaping (S3Error?) -> ()) throws

    /**
     Invokes the DeleteBucketAnalyticsConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketAnalyticsConfigurationRequest object being passed to this operation.
     */
    func deleteBucketAnalyticsConfigurationSync(
            input: S3Model.DeleteBucketAnalyticsConfigurationRequest) throws

    /**
     Invokes the DeleteBucketCors operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketCorsRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteBucketCorsAsync(
            input: S3Model.DeleteBucketCorsRequest, 
            completion: @escaping (S3Error?) -> ()) throws

    /**
     Invokes the DeleteBucketCors operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketCorsRequest object being passed to this operation.
     */
    func deleteBucketCorsSync(
            input: S3Model.DeleteBucketCorsRequest) throws

    /**
     Invokes the DeleteBucketEncryption operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketEncryptionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteBucketEncryptionAsync(
            input: S3Model.DeleteBucketEncryptionRequest, 
            completion: @escaping (S3Error?) -> ()) throws

    /**
     Invokes the DeleteBucketEncryption operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketEncryptionRequest object being passed to this operation.
     */
    func deleteBucketEncryptionSync(
            input: S3Model.DeleteBucketEncryptionRequest) throws

    /**
     Invokes the DeleteBucketInventoryConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketInventoryConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteBucketInventoryConfigurationAsync(
            input: S3Model.DeleteBucketInventoryConfigurationRequest, 
            completion: @escaping (S3Error?) -> ()) throws

    /**
     Invokes the DeleteBucketInventoryConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketInventoryConfigurationRequest object being passed to this operation.
     */
    func deleteBucketInventoryConfigurationSync(
            input: S3Model.DeleteBucketInventoryConfigurationRequest) throws

    /**
     Invokes the DeleteBucketLifecycle operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketLifecycleRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteBucketLifecycleAsync(
            input: S3Model.DeleteBucketLifecycleRequest, 
            completion: @escaping (S3Error?) -> ()) throws

    /**
     Invokes the DeleteBucketLifecycle operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketLifecycleRequest object being passed to this operation.
     */
    func deleteBucketLifecycleSync(
            input: S3Model.DeleteBucketLifecycleRequest) throws

    /**
     Invokes the DeleteBucketMetricsConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketMetricsConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteBucketMetricsConfigurationAsync(
            input: S3Model.DeleteBucketMetricsConfigurationRequest, 
            completion: @escaping (S3Error?) -> ()) throws

    /**
     Invokes the DeleteBucketMetricsConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketMetricsConfigurationRequest object being passed to this operation.
     */
    func deleteBucketMetricsConfigurationSync(
            input: S3Model.DeleteBucketMetricsConfigurationRequest) throws

    /**
     Invokes the DeleteBucketPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketPolicyRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteBucketPolicyAsync(
            input: S3Model.DeleteBucketPolicyRequest, 
            completion: @escaping (S3Error?) -> ()) throws

    /**
     Invokes the DeleteBucketPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketPolicyRequest object being passed to this operation.
     */
    func deleteBucketPolicySync(
            input: S3Model.DeleteBucketPolicyRequest) throws

    /**
     Invokes the DeleteBucketReplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketReplicationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteBucketReplicationAsync(
            input: S3Model.DeleteBucketReplicationRequest, 
            completion: @escaping (S3Error?) -> ()) throws

    /**
     Invokes the DeleteBucketReplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketReplicationRequest object being passed to this operation.
     */
    func deleteBucketReplicationSync(
            input: S3Model.DeleteBucketReplicationRequest) throws

    /**
     Invokes the DeleteBucketTagging operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketTaggingRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteBucketTaggingAsync(
            input: S3Model.DeleteBucketTaggingRequest, 
            completion: @escaping (S3Error?) -> ()) throws

    /**
     Invokes the DeleteBucketTagging operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketTaggingRequest object being passed to this operation.
     */
    func deleteBucketTaggingSync(
            input: S3Model.DeleteBucketTaggingRequest) throws

    /**
     Invokes the DeleteBucketWebsite operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketWebsiteRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteBucketWebsiteAsync(
            input: S3Model.DeleteBucketWebsiteRequest, 
            completion: @escaping (S3Error?) -> ()) throws

    /**
     Invokes the DeleteBucketWebsite operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketWebsiteRequest object being passed to this operation.
     */
    func deleteBucketWebsiteSync(
            input: S3Model.DeleteBucketWebsiteRequest) throws

    /**
     Invokes the DeleteObject operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteObjectRequest object being passed to this operation.
         - completion: The DeleteObjectOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteObjectOutput
           object will be validated before being returned to caller.
     */
    func deleteObjectAsync(
            input: S3Model.DeleteObjectRequest, 
            completion: @escaping (Result<S3Model.DeleteObjectOutput, S3Error>) -> ()) throws

    /**
     Invokes the DeleteObject operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteObjectRequest object being passed to this operation.
     - Returns: The DeleteObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteObjectSync(
            input: S3Model.DeleteObjectRequest) throws -> S3Model.DeleteObjectOutput

    /**
     Invokes the DeleteObjectTagging operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteObjectTaggingRequest object being passed to this operation.
         - completion: The DeleteObjectTaggingOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteObjectTaggingOutput
           object will be validated before being returned to caller.
     */
    func deleteObjectTaggingAsync(
            input: S3Model.DeleteObjectTaggingRequest, 
            completion: @escaping (Result<S3Model.DeleteObjectTaggingOutput, S3Error>) -> ()) throws

    /**
     Invokes the DeleteObjectTagging operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteObjectTaggingRequest object being passed to this operation.
     - Returns: The DeleteObjectTaggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteObjectTaggingSync(
            input: S3Model.DeleteObjectTaggingRequest) throws -> S3Model.DeleteObjectTaggingOutput

    /**
     Invokes the DeleteObjects operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteObjectsRequest object being passed to this operation.
         - completion: The DeleteObjectsOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteObjectsOutput
           object will be validated before being returned to caller.
     */
    func deleteObjectsAsync(
            input: S3Model.DeleteObjectsRequest, 
            completion: @escaping (Result<S3Model.DeleteObjectsOutput, S3Error>) -> ()) throws

    /**
     Invokes the DeleteObjects operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteObjectsRequest object being passed to this operation.
     - Returns: The DeleteObjectsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteObjectsSync(
            input: S3Model.DeleteObjectsRequest) throws -> S3Model.DeleteObjectsOutput

    /**
     Invokes the DeletePublicAccessBlock operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeletePublicAccessBlockRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deletePublicAccessBlockAsync(
            input: S3Model.DeletePublicAccessBlockRequest, 
            completion: @escaping (S3Error?) -> ()) throws

    /**
     Invokes the DeletePublicAccessBlock operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeletePublicAccessBlockRequest object being passed to this operation.
     */
    func deletePublicAccessBlockSync(
            input: S3Model.DeletePublicAccessBlockRequest) throws

    /**
     Invokes the GetBucketAccelerateConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketAccelerateConfigurationRequest object being passed to this operation.
         - completion: The GetBucketAccelerateConfigurationOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketAccelerateConfigurationOutput
           object will be validated before being returned to caller.
     */
    func getBucketAccelerateConfigurationAsync(
            input: S3Model.GetBucketAccelerateConfigurationRequest, 
            completion: @escaping (Result<S3Model.GetBucketAccelerateConfigurationOutput, S3Error>) -> ()) throws

    /**
     Invokes the GetBucketAccelerateConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketAccelerateConfigurationRequest object being passed to this operation.
     - Returns: The GetBucketAccelerateConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketAccelerateConfigurationSync(
            input: S3Model.GetBucketAccelerateConfigurationRequest) throws -> S3Model.GetBucketAccelerateConfigurationOutput

    /**
     Invokes the GetBucketAcl operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketAclRequest object being passed to this operation.
         - completion: The GetBucketAclOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketAclOutput
           object will be validated before being returned to caller.
     */
    func getBucketAclAsync(
            input: S3Model.GetBucketAclRequest, 
            completion: @escaping (Result<S3Model.GetBucketAclOutput, S3Error>) -> ()) throws

    /**
     Invokes the GetBucketAcl operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketAclRequest object being passed to this operation.
     - Returns: The GetBucketAclOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketAclSync(
            input: S3Model.GetBucketAclRequest) throws -> S3Model.GetBucketAclOutput

    /**
     Invokes the GetBucketAnalyticsConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketAnalyticsConfigurationRequest object being passed to this operation.
         - completion: The GetBucketAnalyticsConfigurationOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketAnalyticsConfigurationOutput
           object will be validated before being returned to caller.
     */
    func getBucketAnalyticsConfigurationAsync(
            input: S3Model.GetBucketAnalyticsConfigurationRequest, 
            completion: @escaping (Result<S3Model.GetBucketAnalyticsConfigurationOutput, S3Error>) -> ()) throws

    /**
     Invokes the GetBucketAnalyticsConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketAnalyticsConfigurationRequest object being passed to this operation.
     - Returns: The GetBucketAnalyticsConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketAnalyticsConfigurationSync(
            input: S3Model.GetBucketAnalyticsConfigurationRequest) throws -> S3Model.GetBucketAnalyticsConfigurationOutput

    /**
     Invokes the GetBucketCors operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketCorsRequest object being passed to this operation.
         - completion: The GetBucketCorsOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketCorsOutput
           object will be validated before being returned to caller.
     */
    func getBucketCorsAsync(
            input: S3Model.GetBucketCorsRequest, 
            completion: @escaping (Result<S3Model.GetBucketCorsOutput, S3Error>) -> ()) throws

    /**
     Invokes the GetBucketCors operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketCorsRequest object being passed to this operation.
     - Returns: The GetBucketCorsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketCorsSync(
            input: S3Model.GetBucketCorsRequest) throws -> S3Model.GetBucketCorsOutput

    /**
     Invokes the GetBucketEncryption operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketEncryptionRequest object being passed to this operation.
         - completion: The GetBucketEncryptionOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketEncryptionOutput
           object will be validated before being returned to caller.
     */
    func getBucketEncryptionAsync(
            input: S3Model.GetBucketEncryptionRequest, 
            completion: @escaping (Result<S3Model.GetBucketEncryptionOutput, S3Error>) -> ()) throws

    /**
     Invokes the GetBucketEncryption operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketEncryptionRequest object being passed to this operation.
     - Returns: The GetBucketEncryptionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketEncryptionSync(
            input: S3Model.GetBucketEncryptionRequest) throws -> S3Model.GetBucketEncryptionOutput

    /**
     Invokes the GetBucketInventoryConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketInventoryConfigurationRequest object being passed to this operation.
         - completion: The GetBucketInventoryConfigurationOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketInventoryConfigurationOutput
           object will be validated before being returned to caller.
     */
    func getBucketInventoryConfigurationAsync(
            input: S3Model.GetBucketInventoryConfigurationRequest, 
            completion: @escaping (Result<S3Model.GetBucketInventoryConfigurationOutput, S3Error>) -> ()) throws

    /**
     Invokes the GetBucketInventoryConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketInventoryConfigurationRequest object being passed to this operation.
     - Returns: The GetBucketInventoryConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketInventoryConfigurationSync(
            input: S3Model.GetBucketInventoryConfigurationRequest) throws -> S3Model.GetBucketInventoryConfigurationOutput

    /**
     Invokes the GetBucketLifecycle operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketLifecycleRequest object being passed to this operation.
         - completion: The GetBucketLifecycleOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketLifecycleOutput
           object will be validated before being returned to caller.
     */
    func getBucketLifecycleAsync(
            input: S3Model.GetBucketLifecycleRequest, 
            completion: @escaping (Result<S3Model.GetBucketLifecycleOutput, S3Error>) -> ()) throws

    /**
     Invokes the GetBucketLifecycle operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketLifecycleRequest object being passed to this operation.
     - Returns: The GetBucketLifecycleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketLifecycleSync(
            input: S3Model.GetBucketLifecycleRequest) throws -> S3Model.GetBucketLifecycleOutput

    /**
     Invokes the GetBucketLifecycleConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketLifecycleConfigurationRequest object being passed to this operation.
         - completion: The GetBucketLifecycleConfigurationOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketLifecycleConfigurationOutput
           object will be validated before being returned to caller.
     */
    func getBucketLifecycleConfigurationAsync(
            input: S3Model.GetBucketLifecycleConfigurationRequest, 
            completion: @escaping (Result<S3Model.GetBucketLifecycleConfigurationOutput, S3Error>) -> ()) throws

    /**
     Invokes the GetBucketLifecycleConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketLifecycleConfigurationRequest object being passed to this operation.
     - Returns: The GetBucketLifecycleConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketLifecycleConfigurationSync(
            input: S3Model.GetBucketLifecycleConfigurationRequest) throws -> S3Model.GetBucketLifecycleConfigurationOutput

    /**
     Invokes the GetBucketLocation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketLocationRequest object being passed to this operation.
         - completion: The GetBucketLocationOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketLocationOutput
           object will be validated before being returned to caller.
     */
    func getBucketLocationAsync(
            input: S3Model.GetBucketLocationRequest, 
            completion: @escaping (Result<S3Model.GetBucketLocationOutput, S3Error>) -> ()) throws

    /**
     Invokes the GetBucketLocation operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketLocationRequest object being passed to this operation.
     - Returns: The GetBucketLocationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketLocationSync(
            input: S3Model.GetBucketLocationRequest) throws -> S3Model.GetBucketLocationOutput

    /**
     Invokes the GetBucketLogging operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketLoggingRequest object being passed to this operation.
         - completion: The GetBucketLoggingOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketLoggingOutput
           object will be validated before being returned to caller.
     */
    func getBucketLoggingAsync(
            input: S3Model.GetBucketLoggingRequest, 
            completion: @escaping (Result<S3Model.GetBucketLoggingOutput, S3Error>) -> ()) throws

    /**
     Invokes the GetBucketLogging operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketLoggingRequest object being passed to this operation.
     - Returns: The GetBucketLoggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketLoggingSync(
            input: S3Model.GetBucketLoggingRequest) throws -> S3Model.GetBucketLoggingOutput

    /**
     Invokes the GetBucketMetricsConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketMetricsConfigurationRequest object being passed to this operation.
         - completion: The GetBucketMetricsConfigurationOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketMetricsConfigurationOutput
           object will be validated before being returned to caller.
     */
    func getBucketMetricsConfigurationAsync(
            input: S3Model.GetBucketMetricsConfigurationRequest, 
            completion: @escaping (Result<S3Model.GetBucketMetricsConfigurationOutput, S3Error>) -> ()) throws

    /**
     Invokes the GetBucketMetricsConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketMetricsConfigurationRequest object being passed to this operation.
     - Returns: The GetBucketMetricsConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketMetricsConfigurationSync(
            input: S3Model.GetBucketMetricsConfigurationRequest) throws -> S3Model.GetBucketMetricsConfigurationOutput

    /**
     Invokes the GetBucketNotification operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketNotificationConfigurationRequest object being passed to this operation.
         - completion: The NotificationConfigurationDeprecated object or an error will be passed to this 
           callback when the operation is complete. The NotificationConfigurationDeprecated
           object will be validated before being returned to caller.
     */
    func getBucketNotificationAsync(
            input: S3Model.GetBucketNotificationConfigurationRequest, 
            completion: @escaping (Result<S3Model.NotificationConfigurationDeprecated, S3Error>) -> ()) throws

    /**
     Invokes the GetBucketNotification operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketNotificationConfigurationRequest object being passed to this operation.
     - Returns: The NotificationConfigurationDeprecated object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketNotificationSync(
            input: S3Model.GetBucketNotificationConfigurationRequest) throws -> S3Model.NotificationConfigurationDeprecated

    /**
     Invokes the GetBucketNotificationConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketNotificationConfigurationRequest object being passed to this operation.
         - completion: The NotificationConfiguration object or an error will be passed to this 
           callback when the operation is complete. The NotificationConfiguration
           object will be validated before being returned to caller.
     */
    func getBucketNotificationConfigurationAsync(
            input: S3Model.GetBucketNotificationConfigurationRequest, 
            completion: @escaping (Result<S3Model.NotificationConfiguration, S3Error>) -> ()) throws

    /**
     Invokes the GetBucketNotificationConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketNotificationConfigurationRequest object being passed to this operation.
     - Returns: The NotificationConfiguration object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketNotificationConfigurationSync(
            input: S3Model.GetBucketNotificationConfigurationRequest) throws -> S3Model.NotificationConfiguration

    /**
     Invokes the GetBucketPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketPolicyRequest object being passed to this operation.
         - completion: The GetBucketPolicyOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketPolicyOutput
           object will be validated before being returned to caller.
     */
    func getBucketPolicyAsync(
            input: S3Model.GetBucketPolicyRequest, 
            completion: @escaping (Result<S3Model.GetBucketPolicyOutput, S3Error>) -> ()) throws

    /**
     Invokes the GetBucketPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketPolicyRequest object being passed to this operation.
     - Returns: The GetBucketPolicyOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketPolicySync(
            input: S3Model.GetBucketPolicyRequest) throws -> S3Model.GetBucketPolicyOutput

    /**
     Invokes the GetBucketPolicyStatus operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketPolicyStatusRequest object being passed to this operation.
         - completion: The GetBucketPolicyStatusOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketPolicyStatusOutput
           object will be validated before being returned to caller.
     */
    func getBucketPolicyStatusAsync(
            input: S3Model.GetBucketPolicyStatusRequest, 
            completion: @escaping (Result<S3Model.GetBucketPolicyStatusOutput, S3Error>) -> ()) throws

    /**
     Invokes the GetBucketPolicyStatus operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketPolicyStatusRequest object being passed to this operation.
     - Returns: The GetBucketPolicyStatusOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketPolicyStatusSync(
            input: S3Model.GetBucketPolicyStatusRequest) throws -> S3Model.GetBucketPolicyStatusOutput

    /**
     Invokes the GetBucketReplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketReplicationRequest object being passed to this operation.
         - completion: The GetBucketReplicationOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketReplicationOutput
           object will be validated before being returned to caller.
     */
    func getBucketReplicationAsync(
            input: S3Model.GetBucketReplicationRequest, 
            completion: @escaping (Result<S3Model.GetBucketReplicationOutput, S3Error>) -> ()) throws

    /**
     Invokes the GetBucketReplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketReplicationRequest object being passed to this operation.
     - Returns: The GetBucketReplicationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketReplicationSync(
            input: S3Model.GetBucketReplicationRequest) throws -> S3Model.GetBucketReplicationOutput

    /**
     Invokes the GetBucketRequestPayment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketRequestPaymentRequest object being passed to this operation.
         - completion: The GetBucketRequestPaymentOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketRequestPaymentOutput
           object will be validated before being returned to caller.
     */
    func getBucketRequestPaymentAsync(
            input: S3Model.GetBucketRequestPaymentRequest, 
            completion: @escaping (Result<S3Model.GetBucketRequestPaymentOutput, S3Error>) -> ()) throws

    /**
     Invokes the GetBucketRequestPayment operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketRequestPaymentRequest object being passed to this operation.
     - Returns: The GetBucketRequestPaymentOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketRequestPaymentSync(
            input: S3Model.GetBucketRequestPaymentRequest) throws -> S3Model.GetBucketRequestPaymentOutput

    /**
     Invokes the GetBucketTagging operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketTaggingRequest object being passed to this operation.
         - completion: The GetBucketTaggingOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketTaggingOutput
           object will be validated before being returned to caller.
     */
    func getBucketTaggingAsync(
            input: S3Model.GetBucketTaggingRequest, 
            completion: @escaping (Result<S3Model.GetBucketTaggingOutput, S3Error>) -> ()) throws

    /**
     Invokes the GetBucketTagging operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketTaggingRequest object being passed to this operation.
     - Returns: The GetBucketTaggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketTaggingSync(
            input: S3Model.GetBucketTaggingRequest) throws -> S3Model.GetBucketTaggingOutput

    /**
     Invokes the GetBucketVersioning operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketVersioningRequest object being passed to this operation.
         - completion: The GetBucketVersioningOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketVersioningOutput
           object will be validated before being returned to caller.
     */
    func getBucketVersioningAsync(
            input: S3Model.GetBucketVersioningRequest, 
            completion: @escaping (Result<S3Model.GetBucketVersioningOutput, S3Error>) -> ()) throws

    /**
     Invokes the GetBucketVersioning operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketVersioningRequest object being passed to this operation.
     - Returns: The GetBucketVersioningOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketVersioningSync(
            input: S3Model.GetBucketVersioningRequest) throws -> S3Model.GetBucketVersioningOutput

    /**
     Invokes the GetBucketWebsite operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketWebsiteRequest object being passed to this operation.
         - completion: The GetBucketWebsiteOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketWebsiteOutput
           object will be validated before being returned to caller.
     */
    func getBucketWebsiteAsync(
            input: S3Model.GetBucketWebsiteRequest, 
            completion: @escaping (Result<S3Model.GetBucketWebsiteOutput, S3Error>) -> ()) throws

    /**
     Invokes the GetBucketWebsite operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketWebsiteRequest object being passed to this operation.
     - Returns: The GetBucketWebsiteOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketWebsiteSync(
            input: S3Model.GetBucketWebsiteRequest) throws -> S3Model.GetBucketWebsiteOutput

    /**
     Invokes the GetObject operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetObjectRequest object being passed to this operation.
         - completion: The GetObjectOutput object or an error will be passed to this 
           callback when the operation is complete. The GetObjectOutput
           object will be validated before being returned to caller.
           The possible errors are: noSuchKey.
     */
    func getObjectAsync(
            input: S3Model.GetObjectRequest, 
            completion: @escaping (Result<S3Model.GetObjectOutput, S3Error>) -> ()) throws

    /**
     Invokes the GetObject operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetObjectRequest object being passed to this operation.
     - Returns: The GetObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchKey.
     */
    func getObjectSync(
            input: S3Model.GetObjectRequest) throws -> S3Model.GetObjectOutput

    /**
     Invokes the GetObjectAcl operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetObjectAclRequest object being passed to this operation.
         - completion: The GetObjectAclOutput object or an error will be passed to this 
           callback when the operation is complete. The GetObjectAclOutput
           object will be validated before being returned to caller.
           The possible errors are: noSuchKey.
     */
    func getObjectAclAsync(
            input: S3Model.GetObjectAclRequest, 
            completion: @escaping (Result<S3Model.GetObjectAclOutput, S3Error>) -> ()) throws

    /**
     Invokes the GetObjectAcl operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetObjectAclRequest object being passed to this operation.
     - Returns: The GetObjectAclOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchKey.
     */
    func getObjectAclSync(
            input: S3Model.GetObjectAclRequest) throws -> S3Model.GetObjectAclOutput

    /**
     Invokes the GetObjectLegalHold operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetObjectLegalHoldRequest object being passed to this operation.
         - completion: The GetObjectLegalHoldOutput object or an error will be passed to this 
           callback when the operation is complete. The GetObjectLegalHoldOutput
           object will be validated before being returned to caller.
     */
    func getObjectLegalHoldAsync(
            input: S3Model.GetObjectLegalHoldRequest, 
            completion: @escaping (Result<S3Model.GetObjectLegalHoldOutput, S3Error>) -> ()) throws

    /**
     Invokes the GetObjectLegalHold operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetObjectLegalHoldRequest object being passed to this operation.
     - Returns: The GetObjectLegalHoldOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getObjectLegalHoldSync(
            input: S3Model.GetObjectLegalHoldRequest) throws -> S3Model.GetObjectLegalHoldOutput

    /**
     Invokes the GetObjectLockConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetObjectLockConfigurationRequest object being passed to this operation.
         - completion: The GetObjectLockConfigurationOutput object or an error will be passed to this 
           callback when the operation is complete. The GetObjectLockConfigurationOutput
           object will be validated before being returned to caller.
     */
    func getObjectLockConfigurationAsync(
            input: S3Model.GetObjectLockConfigurationRequest, 
            completion: @escaping (Result<S3Model.GetObjectLockConfigurationOutput, S3Error>) -> ()) throws

    /**
     Invokes the GetObjectLockConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetObjectLockConfigurationRequest object being passed to this operation.
     - Returns: The GetObjectLockConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getObjectLockConfigurationSync(
            input: S3Model.GetObjectLockConfigurationRequest) throws -> S3Model.GetObjectLockConfigurationOutput

    /**
     Invokes the GetObjectRetention operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetObjectRetentionRequest object being passed to this operation.
         - completion: The GetObjectRetentionOutput object or an error will be passed to this 
           callback when the operation is complete. The GetObjectRetentionOutput
           object will be validated before being returned to caller.
     */
    func getObjectRetentionAsync(
            input: S3Model.GetObjectRetentionRequest, 
            completion: @escaping (Result<S3Model.GetObjectRetentionOutput, S3Error>) -> ()) throws

    /**
     Invokes the GetObjectRetention operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetObjectRetentionRequest object being passed to this operation.
     - Returns: The GetObjectRetentionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getObjectRetentionSync(
            input: S3Model.GetObjectRetentionRequest) throws -> S3Model.GetObjectRetentionOutput

    /**
     Invokes the GetObjectTagging operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetObjectTaggingRequest object being passed to this operation.
         - completion: The GetObjectTaggingOutput object or an error will be passed to this 
           callback when the operation is complete. The GetObjectTaggingOutput
           object will be validated before being returned to caller.
     */
    func getObjectTaggingAsync(
            input: S3Model.GetObjectTaggingRequest, 
            completion: @escaping (Result<S3Model.GetObjectTaggingOutput, S3Error>) -> ()) throws

    /**
     Invokes the GetObjectTagging operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetObjectTaggingRequest object being passed to this operation.
     - Returns: The GetObjectTaggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getObjectTaggingSync(
            input: S3Model.GetObjectTaggingRequest) throws -> S3Model.GetObjectTaggingOutput

    /**
     Invokes the GetObjectTorrent operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetObjectTorrentRequest object being passed to this operation.
         - completion: The GetObjectTorrentOutput object or an error will be passed to this 
           callback when the operation is complete. The GetObjectTorrentOutput
           object will be validated before being returned to caller.
     */
    func getObjectTorrentAsync(
            input: S3Model.GetObjectTorrentRequest, 
            completion: @escaping (Result<S3Model.GetObjectTorrentOutput, S3Error>) -> ()) throws

    /**
     Invokes the GetObjectTorrent operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetObjectTorrentRequest object being passed to this operation.
     - Returns: The GetObjectTorrentOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getObjectTorrentSync(
            input: S3Model.GetObjectTorrentRequest) throws -> S3Model.GetObjectTorrentOutput

    /**
     Invokes the GetPublicAccessBlock operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetPublicAccessBlockRequest object being passed to this operation.
         - completion: The GetPublicAccessBlockOutput object or an error will be passed to this 
           callback when the operation is complete. The GetPublicAccessBlockOutput
           object will be validated before being returned to caller.
     */
    func getPublicAccessBlockAsync(
            input: S3Model.GetPublicAccessBlockRequest, 
            completion: @escaping (Result<S3Model.GetPublicAccessBlockOutput, S3Error>) -> ()) throws

    /**
     Invokes the GetPublicAccessBlock operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetPublicAccessBlockRequest object being passed to this operation.
     - Returns: The GetPublicAccessBlockOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getPublicAccessBlockSync(
            input: S3Model.GetPublicAccessBlockRequest) throws -> S3Model.GetPublicAccessBlockOutput

    /**
     Invokes the HeadBucket operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated HeadBucketRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: noSuchBucket.
     */
    func headBucketAsync(
            input: S3Model.HeadBucketRequest, 
            completion: @escaping (S3Error?) -> ()) throws

    /**
     Invokes the HeadBucket operation waiting for the response before returning.

     - Parameters:
         - input: The validated HeadBucketRequest object being passed to this operation.
     - Throws: noSuchBucket.
     */
    func headBucketSync(
            input: S3Model.HeadBucketRequest) throws

    /**
     Invokes the HeadObject operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated HeadObjectRequest object being passed to this operation.
         - completion: The HeadObjectOutput object or an error will be passed to this 
           callback when the operation is complete. The HeadObjectOutput
           object will be validated before being returned to caller.
           The possible errors are: noSuchKey.
     */
    func headObjectAsync(
            input: S3Model.HeadObjectRequest, 
            completion: @escaping (Result<S3Model.HeadObjectOutput, S3Error>) -> ()) throws

    /**
     Invokes the HeadObject operation waiting for the response before returning.

     - Parameters:
         - input: The validated HeadObjectRequest object being passed to this operation.
     - Returns: The HeadObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchKey.
     */
    func headObjectSync(
            input: S3Model.HeadObjectRequest) throws -> S3Model.HeadObjectOutput

    /**
     Invokes the ListBucketAnalyticsConfigurations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListBucketAnalyticsConfigurationsRequest object being passed to this operation.
         - completion: The ListBucketAnalyticsConfigurationsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListBucketAnalyticsConfigurationsOutput
           object will be validated before being returned to caller.
     */
    func listBucketAnalyticsConfigurationsAsync(
            input: S3Model.ListBucketAnalyticsConfigurationsRequest, 
            completion: @escaping (Result<S3Model.ListBucketAnalyticsConfigurationsOutput, S3Error>) -> ()) throws

    /**
     Invokes the ListBucketAnalyticsConfigurations operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListBucketAnalyticsConfigurationsRequest object being passed to this operation.
     - Returns: The ListBucketAnalyticsConfigurationsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listBucketAnalyticsConfigurationsSync(
            input: S3Model.ListBucketAnalyticsConfigurationsRequest) throws -> S3Model.ListBucketAnalyticsConfigurationsOutput

    /**
     Invokes the ListBucketInventoryConfigurations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListBucketInventoryConfigurationsRequest object being passed to this operation.
         - completion: The ListBucketInventoryConfigurationsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListBucketInventoryConfigurationsOutput
           object will be validated before being returned to caller.
     */
    func listBucketInventoryConfigurationsAsync(
            input: S3Model.ListBucketInventoryConfigurationsRequest, 
            completion: @escaping (Result<S3Model.ListBucketInventoryConfigurationsOutput, S3Error>) -> ()) throws

    /**
     Invokes the ListBucketInventoryConfigurations operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListBucketInventoryConfigurationsRequest object being passed to this operation.
     - Returns: The ListBucketInventoryConfigurationsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listBucketInventoryConfigurationsSync(
            input: S3Model.ListBucketInventoryConfigurationsRequest) throws -> S3Model.ListBucketInventoryConfigurationsOutput

    /**
     Invokes the ListBucketMetricsConfigurations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListBucketMetricsConfigurationsRequest object being passed to this operation.
         - completion: The ListBucketMetricsConfigurationsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListBucketMetricsConfigurationsOutput
           object will be validated before being returned to caller.
     */
    func listBucketMetricsConfigurationsAsync(
            input: S3Model.ListBucketMetricsConfigurationsRequest, 
            completion: @escaping (Result<S3Model.ListBucketMetricsConfigurationsOutput, S3Error>) -> ()) throws

    /**
     Invokes the ListBucketMetricsConfigurations operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListBucketMetricsConfigurationsRequest object being passed to this operation.
     - Returns: The ListBucketMetricsConfigurationsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listBucketMetricsConfigurationsSync(
            input: S3Model.ListBucketMetricsConfigurationsRequest) throws -> S3Model.ListBucketMetricsConfigurationsOutput

    /**
     Invokes the ListBuckets operation returning immediately and passing the response to a callback.
         - completion: The ListBucketsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListBucketsOutput
           object will be validated before being returned to caller.
     */
    func listBucketsAsync(
            completion: @escaping (Result<S3Model.ListBucketsOutput, S3Error>) -> ()) throws

    /**
     Invokes the ListBuckets operation waiting for the response before returning.
     - Returns: The ListBucketsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listBucketsSync() throws -> S3Model.ListBucketsOutput

    /**
     Invokes the ListMultipartUploads operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListMultipartUploadsRequest object being passed to this operation.
         - completion: The ListMultipartUploadsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListMultipartUploadsOutput
           object will be validated before being returned to caller.
     */
    func listMultipartUploadsAsync(
            input: S3Model.ListMultipartUploadsRequest, 
            completion: @escaping (Result<S3Model.ListMultipartUploadsOutput, S3Error>) -> ()) throws

    /**
     Invokes the ListMultipartUploads operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListMultipartUploadsRequest object being passed to this operation.
     - Returns: The ListMultipartUploadsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listMultipartUploadsSync(
            input: S3Model.ListMultipartUploadsRequest) throws -> S3Model.ListMultipartUploadsOutput

    /**
     Invokes the ListObjectVersions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListObjectVersionsRequest object being passed to this operation.
         - completion: The ListObjectVersionsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListObjectVersionsOutput
           object will be validated before being returned to caller.
     */
    func listObjectVersionsAsync(
            input: S3Model.ListObjectVersionsRequest, 
            completion: @escaping (Result<S3Model.ListObjectVersionsOutput, S3Error>) -> ()) throws

    /**
     Invokes the ListObjectVersions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListObjectVersionsRequest object being passed to this operation.
     - Returns: The ListObjectVersionsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listObjectVersionsSync(
            input: S3Model.ListObjectVersionsRequest) throws -> S3Model.ListObjectVersionsOutput

    /**
     Invokes the ListObjects operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListObjectsRequest object being passed to this operation.
         - completion: The ListObjectsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListObjectsOutput
           object will be validated before being returned to caller.
           The possible errors are: noSuchBucket.
     */
    func listObjectsAsync(
            input: S3Model.ListObjectsRequest, 
            completion: @escaping (Result<S3Model.ListObjectsOutput, S3Error>) -> ()) throws

    /**
     Invokes the ListObjects operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListObjectsRequest object being passed to this operation.
     - Returns: The ListObjectsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchBucket.
     */
    func listObjectsSync(
            input: S3Model.ListObjectsRequest) throws -> S3Model.ListObjectsOutput

    /**
     Invokes the ListObjectsV2 operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListObjectsV2Request object being passed to this operation.
         - completion: The ListObjectsV2Output object or an error will be passed to this 
           callback when the operation is complete. The ListObjectsV2Output
           object will be validated before being returned to caller.
           The possible errors are: noSuchBucket.
     */
    func listObjectsV2Async(
            input: S3Model.ListObjectsV2Request, 
            completion: @escaping (Result<S3Model.ListObjectsV2Output, S3Error>) -> ()) throws

    /**
     Invokes the ListObjectsV2 operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListObjectsV2Request object being passed to this operation.
     - Returns: The ListObjectsV2Output object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchBucket.
     */
    func listObjectsV2Sync(
            input: S3Model.ListObjectsV2Request) throws -> S3Model.ListObjectsV2Output

    /**
     Invokes the ListParts operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListPartsRequest object being passed to this operation.
         - completion: The ListPartsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListPartsOutput
           object will be validated before being returned to caller.
     */
    func listPartsAsync(
            input: S3Model.ListPartsRequest, 
            completion: @escaping (Result<S3Model.ListPartsOutput, S3Error>) -> ()) throws

    /**
     Invokes the ListParts operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListPartsRequest object being passed to this operation.
     - Returns: The ListPartsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listPartsSync(
            input: S3Model.ListPartsRequest) throws -> S3Model.ListPartsOutput

    /**
     Invokes the PutBucketAccelerateConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketAccelerateConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func putBucketAccelerateConfigurationAsync(
            input: S3Model.PutBucketAccelerateConfigurationRequest, 
            completion: @escaping (S3Error?) -> ()) throws

    /**
     Invokes the PutBucketAccelerateConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketAccelerateConfigurationRequest object being passed to this operation.
     */
    func putBucketAccelerateConfigurationSync(
            input: S3Model.PutBucketAccelerateConfigurationRequest) throws

    /**
     Invokes the PutBucketAcl operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketAclRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func putBucketAclAsync(
            input: S3Model.PutBucketAclRequest, 
            completion: @escaping (S3Error?) -> ()) throws

    /**
     Invokes the PutBucketAcl operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketAclRequest object being passed to this operation.
     */
    func putBucketAclSync(
            input: S3Model.PutBucketAclRequest) throws

    /**
     Invokes the PutBucketAnalyticsConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketAnalyticsConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func putBucketAnalyticsConfigurationAsync(
            input: S3Model.PutBucketAnalyticsConfigurationRequest, 
            completion: @escaping (S3Error?) -> ()) throws

    /**
     Invokes the PutBucketAnalyticsConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketAnalyticsConfigurationRequest object being passed to this operation.
     */
    func putBucketAnalyticsConfigurationSync(
            input: S3Model.PutBucketAnalyticsConfigurationRequest) throws

    /**
     Invokes the PutBucketCors operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketCorsRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func putBucketCorsAsync(
            input: S3Model.PutBucketCorsRequest, 
            completion: @escaping (S3Error?) -> ()) throws

    /**
     Invokes the PutBucketCors operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketCorsRequest object being passed to this operation.
     */
    func putBucketCorsSync(
            input: S3Model.PutBucketCorsRequest) throws

    /**
     Invokes the PutBucketEncryption operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketEncryptionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func putBucketEncryptionAsync(
            input: S3Model.PutBucketEncryptionRequest, 
            completion: @escaping (S3Error?) -> ()) throws

    /**
     Invokes the PutBucketEncryption operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketEncryptionRequest object being passed to this operation.
     */
    func putBucketEncryptionSync(
            input: S3Model.PutBucketEncryptionRequest) throws

    /**
     Invokes the PutBucketInventoryConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketInventoryConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func putBucketInventoryConfigurationAsync(
            input: S3Model.PutBucketInventoryConfigurationRequest, 
            completion: @escaping (S3Error?) -> ()) throws

    /**
     Invokes the PutBucketInventoryConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketInventoryConfigurationRequest object being passed to this operation.
     */
    func putBucketInventoryConfigurationSync(
            input: S3Model.PutBucketInventoryConfigurationRequest) throws

    /**
     Invokes the PutBucketLifecycle operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketLifecycleRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func putBucketLifecycleAsync(
            input: S3Model.PutBucketLifecycleRequest, 
            completion: @escaping (S3Error?) -> ()) throws

    /**
     Invokes the PutBucketLifecycle operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketLifecycleRequest object being passed to this operation.
     */
    func putBucketLifecycleSync(
            input: S3Model.PutBucketLifecycleRequest) throws

    /**
     Invokes the PutBucketLifecycleConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketLifecycleConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func putBucketLifecycleConfigurationAsync(
            input: S3Model.PutBucketLifecycleConfigurationRequest, 
            completion: @escaping (S3Error?) -> ()) throws

    /**
     Invokes the PutBucketLifecycleConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketLifecycleConfigurationRequest object being passed to this operation.
     */
    func putBucketLifecycleConfigurationSync(
            input: S3Model.PutBucketLifecycleConfigurationRequest) throws

    /**
     Invokes the PutBucketLogging operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketLoggingRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func putBucketLoggingAsync(
            input: S3Model.PutBucketLoggingRequest, 
            completion: @escaping (S3Error?) -> ()) throws

    /**
     Invokes the PutBucketLogging operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketLoggingRequest object being passed to this operation.
     */
    func putBucketLoggingSync(
            input: S3Model.PutBucketLoggingRequest) throws

    /**
     Invokes the PutBucketMetricsConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketMetricsConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func putBucketMetricsConfigurationAsync(
            input: S3Model.PutBucketMetricsConfigurationRequest, 
            completion: @escaping (S3Error?) -> ()) throws

    /**
     Invokes the PutBucketMetricsConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketMetricsConfigurationRequest object being passed to this operation.
     */
    func putBucketMetricsConfigurationSync(
            input: S3Model.PutBucketMetricsConfigurationRequest) throws

    /**
     Invokes the PutBucketNotification operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketNotificationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func putBucketNotificationAsync(
            input: S3Model.PutBucketNotificationRequest, 
            completion: @escaping (S3Error?) -> ()) throws

    /**
     Invokes the PutBucketNotification operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketNotificationRequest object being passed to this operation.
     */
    func putBucketNotificationSync(
            input: S3Model.PutBucketNotificationRequest) throws

    /**
     Invokes the PutBucketNotificationConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketNotificationConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func putBucketNotificationConfigurationAsync(
            input: S3Model.PutBucketNotificationConfigurationRequest, 
            completion: @escaping (S3Error?) -> ()) throws

    /**
     Invokes the PutBucketNotificationConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketNotificationConfigurationRequest object being passed to this operation.
     */
    func putBucketNotificationConfigurationSync(
            input: S3Model.PutBucketNotificationConfigurationRequest) throws

    /**
     Invokes the PutBucketPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketPolicyRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func putBucketPolicyAsync(
            input: S3Model.PutBucketPolicyRequest, 
            completion: @escaping (S3Error?) -> ()) throws

    /**
     Invokes the PutBucketPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketPolicyRequest object being passed to this operation.
     */
    func putBucketPolicySync(
            input: S3Model.PutBucketPolicyRequest) throws

    /**
     Invokes the PutBucketReplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketReplicationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func putBucketReplicationAsync(
            input: S3Model.PutBucketReplicationRequest, 
            completion: @escaping (S3Error?) -> ()) throws

    /**
     Invokes the PutBucketReplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketReplicationRequest object being passed to this operation.
     */
    func putBucketReplicationSync(
            input: S3Model.PutBucketReplicationRequest) throws

    /**
     Invokes the PutBucketRequestPayment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketRequestPaymentRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func putBucketRequestPaymentAsync(
            input: S3Model.PutBucketRequestPaymentRequest, 
            completion: @escaping (S3Error?) -> ()) throws

    /**
     Invokes the PutBucketRequestPayment operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketRequestPaymentRequest object being passed to this operation.
     */
    func putBucketRequestPaymentSync(
            input: S3Model.PutBucketRequestPaymentRequest) throws

    /**
     Invokes the PutBucketTagging operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketTaggingRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func putBucketTaggingAsync(
            input: S3Model.PutBucketTaggingRequest, 
            completion: @escaping (S3Error?) -> ()) throws

    /**
     Invokes the PutBucketTagging operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketTaggingRequest object being passed to this operation.
     */
    func putBucketTaggingSync(
            input: S3Model.PutBucketTaggingRequest) throws

    /**
     Invokes the PutBucketVersioning operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketVersioningRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func putBucketVersioningAsync(
            input: S3Model.PutBucketVersioningRequest, 
            completion: @escaping (S3Error?) -> ()) throws

    /**
     Invokes the PutBucketVersioning operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketVersioningRequest object being passed to this operation.
     */
    func putBucketVersioningSync(
            input: S3Model.PutBucketVersioningRequest) throws

    /**
     Invokes the PutBucketWebsite operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketWebsiteRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func putBucketWebsiteAsync(
            input: S3Model.PutBucketWebsiteRequest, 
            completion: @escaping (S3Error?) -> ()) throws

    /**
     Invokes the PutBucketWebsite operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketWebsiteRequest object being passed to this operation.
     */
    func putBucketWebsiteSync(
            input: S3Model.PutBucketWebsiteRequest) throws

    /**
     Invokes the PutObject operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutObjectRequest object being passed to this operation.
         - completion: The PutObjectOutput object or an error will be passed to this 
           callback when the operation is complete. The PutObjectOutput
           object will be validated before being returned to caller.
     */
    func putObjectAsync(
            input: S3Model.PutObjectRequest, 
            completion: @escaping (Result<S3Model.PutObjectOutput, S3Error>) -> ()) throws

    /**
     Invokes the PutObject operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutObjectRequest object being passed to this operation.
     - Returns: The PutObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func putObjectSync(
            input: S3Model.PutObjectRequest) throws -> S3Model.PutObjectOutput

    /**
     Invokes the PutObjectAcl operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutObjectAclRequest object being passed to this operation.
         - completion: The PutObjectAclOutput object or an error will be passed to this 
           callback when the operation is complete. The PutObjectAclOutput
           object will be validated before being returned to caller.
           The possible errors are: noSuchKey.
     */
    func putObjectAclAsync(
            input: S3Model.PutObjectAclRequest, 
            completion: @escaping (Result<S3Model.PutObjectAclOutput, S3Error>) -> ()) throws

    /**
     Invokes the PutObjectAcl operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutObjectAclRequest object being passed to this operation.
     - Returns: The PutObjectAclOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchKey.
     */
    func putObjectAclSync(
            input: S3Model.PutObjectAclRequest) throws -> S3Model.PutObjectAclOutput

    /**
     Invokes the PutObjectLegalHold operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutObjectLegalHoldRequest object being passed to this operation.
         - completion: The PutObjectLegalHoldOutput object or an error will be passed to this 
           callback when the operation is complete. The PutObjectLegalHoldOutput
           object will be validated before being returned to caller.
     */
    func putObjectLegalHoldAsync(
            input: S3Model.PutObjectLegalHoldRequest, 
            completion: @escaping (Result<S3Model.PutObjectLegalHoldOutput, S3Error>) -> ()) throws

    /**
     Invokes the PutObjectLegalHold operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutObjectLegalHoldRequest object being passed to this operation.
     - Returns: The PutObjectLegalHoldOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func putObjectLegalHoldSync(
            input: S3Model.PutObjectLegalHoldRequest) throws -> S3Model.PutObjectLegalHoldOutput

    /**
     Invokes the PutObjectLockConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutObjectLockConfigurationRequest object being passed to this operation.
         - completion: The PutObjectLockConfigurationOutput object or an error will be passed to this 
           callback when the operation is complete. The PutObjectLockConfigurationOutput
           object will be validated before being returned to caller.
     */
    func putObjectLockConfigurationAsync(
            input: S3Model.PutObjectLockConfigurationRequest, 
            completion: @escaping (Result<S3Model.PutObjectLockConfigurationOutput, S3Error>) -> ()) throws

    /**
     Invokes the PutObjectLockConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutObjectLockConfigurationRequest object being passed to this operation.
     - Returns: The PutObjectLockConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func putObjectLockConfigurationSync(
            input: S3Model.PutObjectLockConfigurationRequest) throws -> S3Model.PutObjectLockConfigurationOutput

    /**
     Invokes the PutObjectRetention operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutObjectRetentionRequest object being passed to this operation.
         - completion: The PutObjectRetentionOutput object or an error will be passed to this 
           callback when the operation is complete. The PutObjectRetentionOutput
           object will be validated before being returned to caller.
     */
    func putObjectRetentionAsync(
            input: S3Model.PutObjectRetentionRequest, 
            completion: @escaping (Result<S3Model.PutObjectRetentionOutput, S3Error>) -> ()) throws

    /**
     Invokes the PutObjectRetention operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutObjectRetentionRequest object being passed to this operation.
     - Returns: The PutObjectRetentionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func putObjectRetentionSync(
            input: S3Model.PutObjectRetentionRequest) throws -> S3Model.PutObjectRetentionOutput

    /**
     Invokes the PutObjectTagging operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutObjectTaggingRequest object being passed to this operation.
         - completion: The PutObjectTaggingOutput object or an error will be passed to this 
           callback when the operation is complete. The PutObjectTaggingOutput
           object will be validated before being returned to caller.
     */
    func putObjectTaggingAsync(
            input: S3Model.PutObjectTaggingRequest, 
            completion: @escaping (Result<S3Model.PutObjectTaggingOutput, S3Error>) -> ()) throws

    /**
     Invokes the PutObjectTagging operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutObjectTaggingRequest object being passed to this operation.
     - Returns: The PutObjectTaggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func putObjectTaggingSync(
            input: S3Model.PutObjectTaggingRequest) throws -> S3Model.PutObjectTaggingOutput

    /**
     Invokes the PutPublicAccessBlock operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutPublicAccessBlockRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func putPublicAccessBlockAsync(
            input: S3Model.PutPublicAccessBlockRequest, 
            completion: @escaping (S3Error?) -> ()) throws

    /**
     Invokes the PutPublicAccessBlock operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutPublicAccessBlockRequest object being passed to this operation.
     */
    func putPublicAccessBlockSync(
            input: S3Model.PutPublicAccessBlockRequest) throws

    /**
     Invokes the RestoreObject operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreObjectRequest object being passed to this operation.
         - completion: The RestoreObjectOutput object or an error will be passed to this 
           callback when the operation is complete. The RestoreObjectOutput
           object will be validated before being returned to caller.
           The possible errors are: objectAlreadyInActiveTier.
     */
    func restoreObjectAsync(
            input: S3Model.RestoreObjectRequest, 
            completion: @escaping (Result<S3Model.RestoreObjectOutput, S3Error>) -> ()) throws

    /**
     Invokes the RestoreObject operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreObjectRequest object being passed to this operation.
     - Returns: The RestoreObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: objectAlreadyInActiveTier.
     */
    func restoreObjectSync(
            input: S3Model.RestoreObjectRequest) throws -> S3Model.RestoreObjectOutput

    /**
     Invokes the SelectObjectContent operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SelectObjectContentRequest object being passed to this operation.
         - completion: The SelectObjectContentOutput object or an error will be passed to this 
           callback when the operation is complete. The SelectObjectContentOutput
           object will be validated before being returned to caller.
     */
    func selectObjectContentAsync(
            input: S3Model.SelectObjectContentRequest, 
            completion: @escaping (Result<S3Model.SelectObjectContentOutput, S3Error>) -> ()) throws

    /**
     Invokes the SelectObjectContent operation waiting for the response before returning.

     - Parameters:
         - input: The validated SelectObjectContentRequest object being passed to this operation.
     - Returns: The SelectObjectContentOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func selectObjectContentSync(
            input: S3Model.SelectObjectContentRequest) throws -> S3Model.SelectObjectContentOutput

    /**
     Invokes the UploadPart operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UploadPartRequest object being passed to this operation.
         - completion: The UploadPartOutput object or an error will be passed to this 
           callback when the operation is complete. The UploadPartOutput
           object will be validated before being returned to caller.
     */
    func uploadPartAsync(
            input: S3Model.UploadPartRequest, 
            completion: @escaping (Result<S3Model.UploadPartOutput, S3Error>) -> ()) throws

    /**
     Invokes the UploadPart operation waiting for the response before returning.

     - Parameters:
         - input: The validated UploadPartRequest object being passed to this operation.
     - Returns: The UploadPartOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func uploadPartSync(
            input: S3Model.UploadPartRequest) throws -> S3Model.UploadPartOutput

    /**
     Invokes the UploadPartCopy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UploadPartCopyRequest object being passed to this operation.
         - completion: The UploadPartCopyOutput object or an error will be passed to this 
           callback when the operation is complete. The UploadPartCopyOutput
           object will be validated before being returned to caller.
     */
    func uploadPartCopyAsync(
            input: S3Model.UploadPartCopyRequest, 
            completion: @escaping (Result<S3Model.UploadPartCopyOutput, S3Error>) -> ()) throws

    /**
     Invokes the UploadPartCopy operation waiting for the response before returning.

     - Parameters:
         - input: The validated UploadPartCopyRequest object being passed to this operation.
     - Returns: The UploadPartCopyOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func uploadPartCopySync(
            input: S3Model.UploadPartCopyRequest) throws -> S3Model.UploadPartCopyOutput
}
