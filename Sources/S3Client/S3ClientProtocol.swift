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
    typealias AbortMultipartUploadSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.AbortMultipartUploadRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.AbortMultipartUploadOutput
    typealias AbortMultipartUploadAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.AbortMultipartUploadRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.AbortMultipartUploadOutput, HTTPClientError>) -> ()) throws -> ()
    typealias CompleteMultipartUploadSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.CompleteMultipartUploadRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.CompleteMultipartUploadOutput
    typealias CompleteMultipartUploadAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.CompleteMultipartUploadRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.CompleteMultipartUploadOutput, HTTPClientError>) -> ()) throws -> ()
    typealias CopyObjectSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.CopyObjectRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.CopyObjectOutput
    typealias CopyObjectAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.CopyObjectRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.CopyObjectOutput, HTTPClientError>) -> ()) throws -> ()
    typealias CreateBucketSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.CreateBucketRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.CreateBucketOutput
    typealias CreateBucketAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.CreateBucketRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.CreateBucketOutput, HTTPClientError>) -> ()) throws -> ()
    typealias CreateMultipartUploadSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.CreateMultipartUploadRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.CreateMultipartUploadOutput
    typealias CreateMultipartUploadAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.CreateMultipartUploadRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.CreateMultipartUploadOutput, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteBucketSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.DeleteBucketRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteBucketAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.DeleteBucketRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteBucketAnalyticsConfigurationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.DeleteBucketAnalyticsConfigurationRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteBucketAnalyticsConfigurationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.DeleteBucketAnalyticsConfigurationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteBucketCorsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.DeleteBucketCorsRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteBucketCorsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.DeleteBucketCorsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteBucketEncryptionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.DeleteBucketEncryptionRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteBucketEncryptionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.DeleteBucketEncryptionRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteBucketInventoryConfigurationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.DeleteBucketInventoryConfigurationRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteBucketInventoryConfigurationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.DeleteBucketInventoryConfigurationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteBucketLifecycleSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.DeleteBucketLifecycleRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteBucketLifecycleAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.DeleteBucketLifecycleRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteBucketMetricsConfigurationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.DeleteBucketMetricsConfigurationRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteBucketMetricsConfigurationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.DeleteBucketMetricsConfigurationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteBucketPolicySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.DeleteBucketPolicyRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteBucketPolicyAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.DeleteBucketPolicyRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteBucketReplicationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.DeleteBucketReplicationRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteBucketReplicationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.DeleteBucketReplicationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteBucketTaggingSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.DeleteBucketTaggingRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteBucketTaggingAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.DeleteBucketTaggingRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteBucketWebsiteSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.DeleteBucketWebsiteRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeleteBucketWebsiteAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.DeleteBucketWebsiteRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias DeleteObjectSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.DeleteObjectRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.DeleteObjectOutput
    typealias DeleteObjectAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.DeleteObjectRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.DeleteObjectOutput, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteObjectTaggingSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.DeleteObjectTaggingRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.DeleteObjectTaggingOutput
    typealias DeleteObjectTaggingAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.DeleteObjectTaggingRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.DeleteObjectTaggingOutput, HTTPClientError>) -> ()) throws -> ()
    typealias DeleteObjectsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.DeleteObjectsRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.DeleteObjectsOutput
    typealias DeleteObjectsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.DeleteObjectsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.DeleteObjectsOutput, HTTPClientError>) -> ()) throws -> ()
    typealias DeletePublicAccessBlockSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.DeletePublicAccessBlockRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias DeletePublicAccessBlockAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.DeletePublicAccessBlockRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias GetBucketAccelerateConfigurationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketAccelerateConfigurationRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.GetBucketAccelerateConfigurationOutput
    typealias GetBucketAccelerateConfigurationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketAccelerateConfigurationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.GetBucketAccelerateConfigurationOutput, HTTPClientError>) -> ()) throws -> ()
    typealias GetBucketAclSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketAclRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.GetBucketAclOutput
    typealias GetBucketAclAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketAclRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.GetBucketAclOutput, HTTPClientError>) -> ()) throws -> ()
    typealias GetBucketAnalyticsConfigurationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketAnalyticsConfigurationRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.GetBucketAnalyticsConfigurationOutput
    typealias GetBucketAnalyticsConfigurationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketAnalyticsConfigurationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.GetBucketAnalyticsConfigurationOutput, HTTPClientError>) -> ()) throws -> ()
    typealias GetBucketCorsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketCorsRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.GetBucketCorsOutput
    typealias GetBucketCorsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketCorsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.GetBucketCorsOutput, HTTPClientError>) -> ()) throws -> ()
    typealias GetBucketEncryptionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketEncryptionRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.GetBucketEncryptionOutput
    typealias GetBucketEncryptionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketEncryptionRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.GetBucketEncryptionOutput, HTTPClientError>) -> ()) throws -> ()
    typealias GetBucketInventoryConfigurationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketInventoryConfigurationRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.GetBucketInventoryConfigurationOutput
    typealias GetBucketInventoryConfigurationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketInventoryConfigurationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.GetBucketInventoryConfigurationOutput, HTTPClientError>) -> ()) throws -> ()
    typealias GetBucketLifecycleSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketLifecycleRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.GetBucketLifecycleOutput
    typealias GetBucketLifecycleAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketLifecycleRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.GetBucketLifecycleOutput, HTTPClientError>) -> ()) throws -> ()
    typealias GetBucketLifecycleConfigurationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketLifecycleConfigurationRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.GetBucketLifecycleConfigurationOutput
    typealias GetBucketLifecycleConfigurationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketLifecycleConfigurationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.GetBucketLifecycleConfigurationOutput, HTTPClientError>) -> ()) throws -> ()
    typealias GetBucketLocationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketLocationRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.GetBucketLocationOutput
    typealias GetBucketLocationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketLocationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.GetBucketLocationOutput, HTTPClientError>) -> ()) throws -> ()
    typealias GetBucketLoggingSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketLoggingRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.GetBucketLoggingOutput
    typealias GetBucketLoggingAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketLoggingRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.GetBucketLoggingOutput, HTTPClientError>) -> ()) throws -> ()
    typealias GetBucketMetricsConfigurationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketMetricsConfigurationRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.GetBucketMetricsConfigurationOutput
    typealias GetBucketMetricsConfigurationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketMetricsConfigurationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.GetBucketMetricsConfigurationOutput, HTTPClientError>) -> ()) throws -> ()
    typealias GetBucketNotificationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketNotificationConfigurationRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.NotificationConfigurationDeprecated
    typealias GetBucketNotificationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketNotificationConfigurationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.NotificationConfigurationDeprecated, HTTPClientError>) -> ()) throws -> ()
    typealias GetBucketNotificationConfigurationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketNotificationConfigurationRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.NotificationConfiguration
    typealias GetBucketNotificationConfigurationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketNotificationConfigurationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.NotificationConfiguration, HTTPClientError>) -> ()) throws -> ()
    typealias GetBucketPolicySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketPolicyRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.GetBucketPolicyOutput
    typealias GetBucketPolicyAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketPolicyRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.GetBucketPolicyOutput, HTTPClientError>) -> ()) throws -> ()
    typealias GetBucketPolicyStatusSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketPolicyStatusRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.GetBucketPolicyStatusOutput
    typealias GetBucketPolicyStatusAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketPolicyStatusRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.GetBucketPolicyStatusOutput, HTTPClientError>) -> ()) throws -> ()
    typealias GetBucketReplicationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketReplicationRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.GetBucketReplicationOutput
    typealias GetBucketReplicationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketReplicationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.GetBucketReplicationOutput, HTTPClientError>) -> ()) throws -> ()
    typealias GetBucketRequestPaymentSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketRequestPaymentRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.GetBucketRequestPaymentOutput
    typealias GetBucketRequestPaymentAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketRequestPaymentRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.GetBucketRequestPaymentOutput, HTTPClientError>) -> ()) throws -> ()
    typealias GetBucketTaggingSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketTaggingRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.GetBucketTaggingOutput
    typealias GetBucketTaggingAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketTaggingRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.GetBucketTaggingOutput, HTTPClientError>) -> ()) throws -> ()
    typealias GetBucketVersioningSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketVersioningRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.GetBucketVersioningOutput
    typealias GetBucketVersioningAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketVersioningRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.GetBucketVersioningOutput, HTTPClientError>) -> ()) throws -> ()
    typealias GetBucketWebsiteSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketWebsiteRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.GetBucketWebsiteOutput
    typealias GetBucketWebsiteAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetBucketWebsiteRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.GetBucketWebsiteOutput, HTTPClientError>) -> ()) throws -> ()
    typealias GetObjectSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetObjectRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.GetObjectOutput
    typealias GetObjectAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetObjectRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.GetObjectOutput, HTTPClientError>) -> ()) throws -> ()
    typealias GetObjectAclSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetObjectAclRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.GetObjectAclOutput
    typealias GetObjectAclAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetObjectAclRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.GetObjectAclOutput, HTTPClientError>) -> ()) throws -> ()
    typealias GetObjectLegalHoldSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetObjectLegalHoldRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.GetObjectLegalHoldOutput
    typealias GetObjectLegalHoldAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetObjectLegalHoldRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.GetObjectLegalHoldOutput, HTTPClientError>) -> ()) throws -> ()
    typealias GetObjectLockConfigurationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetObjectLockConfigurationRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.GetObjectLockConfigurationOutput
    typealias GetObjectLockConfigurationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetObjectLockConfigurationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.GetObjectLockConfigurationOutput, HTTPClientError>) -> ()) throws -> ()
    typealias GetObjectRetentionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetObjectRetentionRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.GetObjectRetentionOutput
    typealias GetObjectRetentionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetObjectRetentionRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.GetObjectRetentionOutput, HTTPClientError>) -> ()) throws -> ()
    typealias GetObjectTaggingSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetObjectTaggingRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.GetObjectTaggingOutput
    typealias GetObjectTaggingAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetObjectTaggingRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.GetObjectTaggingOutput, HTTPClientError>) -> ()) throws -> ()
    typealias GetObjectTorrentSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetObjectTorrentRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.GetObjectTorrentOutput
    typealias GetObjectTorrentAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetObjectTorrentRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.GetObjectTorrentOutput, HTTPClientError>) -> ()) throws -> ()
    typealias GetPublicAccessBlockSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetPublicAccessBlockRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.GetPublicAccessBlockOutput
    typealias GetPublicAccessBlockAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.GetPublicAccessBlockRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.GetPublicAccessBlockOutput, HTTPClientError>) -> ()) throws -> ()
    typealias HeadBucketSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.HeadBucketRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias HeadBucketAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.HeadBucketRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias HeadObjectSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.HeadObjectRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.HeadObjectOutput
    typealias HeadObjectAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.HeadObjectRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.HeadObjectOutput, HTTPClientError>) -> ()) throws -> ()
    typealias ListBucketAnalyticsConfigurationsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.ListBucketAnalyticsConfigurationsRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.ListBucketAnalyticsConfigurationsOutput
    typealias ListBucketAnalyticsConfigurationsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.ListBucketAnalyticsConfigurationsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.ListBucketAnalyticsConfigurationsOutput, HTTPClientError>) -> ()) throws -> ()
    typealias ListBucketInventoryConfigurationsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.ListBucketInventoryConfigurationsRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.ListBucketInventoryConfigurationsOutput
    typealias ListBucketInventoryConfigurationsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.ListBucketInventoryConfigurationsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.ListBucketInventoryConfigurationsOutput, HTTPClientError>) -> ()) throws -> ()
    typealias ListBucketMetricsConfigurationsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.ListBucketMetricsConfigurationsRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.ListBucketMetricsConfigurationsOutput
    typealias ListBucketMetricsConfigurationsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.ListBucketMetricsConfigurationsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.ListBucketMetricsConfigurationsOutput, HTTPClientError>) -> ()) throws -> ()
    typealias ListBucketsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ reporting: InvocationReportingType) throws -> S3Model.ListBucketsOutput
    typealias ListBucketsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.ListBucketsOutput, HTTPClientError>) -> ()) throws -> ()
    typealias ListMultipartUploadsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.ListMultipartUploadsRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.ListMultipartUploadsOutput
    typealias ListMultipartUploadsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.ListMultipartUploadsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.ListMultipartUploadsOutput, HTTPClientError>) -> ()) throws -> ()
    typealias ListObjectVersionsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.ListObjectVersionsRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.ListObjectVersionsOutput
    typealias ListObjectVersionsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.ListObjectVersionsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.ListObjectVersionsOutput, HTTPClientError>) -> ()) throws -> ()
    typealias ListObjectsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.ListObjectsRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.ListObjectsOutput
    typealias ListObjectsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.ListObjectsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.ListObjectsOutput, HTTPClientError>) -> ()) throws -> ()
    typealias ListObjectsV2SyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.ListObjectsV2Request,
            _ reporting: InvocationReportingType) throws -> S3Model.ListObjectsV2Output
    typealias ListObjectsV2AsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.ListObjectsV2Request, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.ListObjectsV2Output, HTTPClientError>) -> ()) throws -> ()
    typealias ListPartsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.ListPartsRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.ListPartsOutput
    typealias ListPartsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.ListPartsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.ListPartsOutput, HTTPClientError>) -> ()) throws -> ()
    typealias PutBucketAccelerateConfigurationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutBucketAccelerateConfigurationRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias PutBucketAccelerateConfigurationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutBucketAccelerateConfigurationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias PutBucketAclSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutBucketAclRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias PutBucketAclAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutBucketAclRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias PutBucketAnalyticsConfigurationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutBucketAnalyticsConfigurationRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias PutBucketAnalyticsConfigurationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutBucketAnalyticsConfigurationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias PutBucketCorsSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutBucketCorsRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias PutBucketCorsAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutBucketCorsRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias PutBucketEncryptionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutBucketEncryptionRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias PutBucketEncryptionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutBucketEncryptionRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias PutBucketInventoryConfigurationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutBucketInventoryConfigurationRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias PutBucketInventoryConfigurationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutBucketInventoryConfigurationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias PutBucketLifecycleSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutBucketLifecycleRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias PutBucketLifecycleAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutBucketLifecycleRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias PutBucketLifecycleConfigurationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutBucketLifecycleConfigurationRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias PutBucketLifecycleConfigurationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutBucketLifecycleConfigurationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias PutBucketLoggingSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutBucketLoggingRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias PutBucketLoggingAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutBucketLoggingRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias PutBucketMetricsConfigurationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutBucketMetricsConfigurationRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias PutBucketMetricsConfigurationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutBucketMetricsConfigurationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias PutBucketNotificationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutBucketNotificationRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias PutBucketNotificationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutBucketNotificationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias PutBucketNotificationConfigurationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutBucketNotificationConfigurationRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias PutBucketNotificationConfigurationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutBucketNotificationConfigurationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias PutBucketPolicySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutBucketPolicyRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias PutBucketPolicyAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutBucketPolicyRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias PutBucketReplicationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutBucketReplicationRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias PutBucketReplicationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutBucketReplicationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias PutBucketRequestPaymentSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutBucketRequestPaymentRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias PutBucketRequestPaymentAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutBucketRequestPaymentRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias PutBucketTaggingSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutBucketTaggingRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias PutBucketTaggingAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutBucketTaggingRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias PutBucketVersioningSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutBucketVersioningRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias PutBucketVersioningAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutBucketVersioningRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias PutBucketWebsiteSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutBucketWebsiteRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias PutBucketWebsiteAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutBucketWebsiteRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias PutObjectSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutObjectRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.PutObjectOutput
    typealias PutObjectAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutObjectRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.PutObjectOutput, HTTPClientError>) -> ()) throws -> ()
    typealias PutObjectAclSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutObjectAclRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.PutObjectAclOutput
    typealias PutObjectAclAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutObjectAclRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.PutObjectAclOutput, HTTPClientError>) -> ()) throws -> ()
    typealias PutObjectLegalHoldSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutObjectLegalHoldRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.PutObjectLegalHoldOutput
    typealias PutObjectLegalHoldAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutObjectLegalHoldRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.PutObjectLegalHoldOutput, HTTPClientError>) -> ()) throws -> ()
    typealias PutObjectLockConfigurationSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutObjectLockConfigurationRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.PutObjectLockConfigurationOutput
    typealias PutObjectLockConfigurationAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutObjectLockConfigurationRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.PutObjectLockConfigurationOutput, HTTPClientError>) -> ()) throws -> ()
    typealias PutObjectRetentionSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutObjectRetentionRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.PutObjectRetentionOutput
    typealias PutObjectRetentionAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutObjectRetentionRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.PutObjectRetentionOutput, HTTPClientError>) -> ()) throws -> ()
    typealias PutObjectTaggingSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutObjectTaggingRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.PutObjectTaggingOutput
    typealias PutObjectTaggingAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutObjectTaggingRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.PutObjectTaggingOutput, HTTPClientError>) -> ()) throws -> ()
    typealias PutPublicAccessBlockSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutPublicAccessBlockRequest,
            _ reporting: InvocationReportingType) throws -> ()
    typealias PutPublicAccessBlockAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.PutPublicAccessBlockRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Swift.Error?) -> ()) throws -> ()
    typealias RestoreObjectSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.RestoreObjectRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.RestoreObjectOutput
    typealias RestoreObjectAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.RestoreObjectRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.RestoreObjectOutput, HTTPClientError>) -> ()) throws -> ()
    typealias SelectObjectContentSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.SelectObjectContentRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.SelectObjectContentOutput
    typealias SelectObjectContentAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.SelectObjectContentRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.SelectObjectContentOutput, HTTPClientError>) -> ()) throws -> ()
    typealias UploadPartSyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.UploadPartRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.UploadPartOutput
    typealias UploadPartAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.UploadPartRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.UploadPartOutput, HTTPClientError>) -> ()) throws -> ()
    typealias UploadPartCopySyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.UploadPartCopyRequest,
            _ reporting: InvocationReportingType) throws -> S3Model.UploadPartCopyOutput
    typealias UploadPartCopyAsyncType<InvocationReportingType: SmokeAWSInvocationReporting> = (
            _ input: S3Model.UploadPartCopyRequest, 
            _ reporting: InvocationReportingType,
            _ completion: @escaping (Result<S3Model.UploadPartCopyOutput, HTTPClientError>) -> ()) throws -> ()

    /**
     Invokes the AbortMultipartUpload operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated AbortMultipartUploadRequest object being passed to this operation.
         - completion: The AbortMultipartUploadOutput object or an error will be passed to this 
           callback when the operation is complete. The AbortMultipartUploadOutput
           object will be validated before being returned to caller.
           The possible errors are: noSuchUpload.
     */
    func abortMultipartUploadAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.AbortMultipartUploadRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.AbortMultipartUploadOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the AbortMultipartUpload operation waiting for the response before returning.

     - Parameters:
         - input: The validated AbortMultipartUploadRequest object being passed to this operation.
     - Returns: The AbortMultipartUploadOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchUpload.
     */
    func abortMultipartUploadSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.AbortMultipartUploadRequest,
            reporting: InvocationReportingType) throws -> S3Model.AbortMultipartUploadOutput

    /**
     Invokes the CompleteMultipartUpload operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CompleteMultipartUploadRequest object being passed to this operation.
         - completion: The CompleteMultipartUploadOutput object or an error will be passed to this 
           callback when the operation is complete. The CompleteMultipartUploadOutput
           object will be validated before being returned to caller.
     */
    func completeMultipartUploadAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.CompleteMultipartUploadRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.CompleteMultipartUploadOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the CompleteMultipartUpload operation waiting for the response before returning.

     - Parameters:
         - input: The validated CompleteMultipartUploadRequest object being passed to this operation.
     - Returns: The CompleteMultipartUploadOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func completeMultipartUploadSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.CompleteMultipartUploadRequest,
            reporting: InvocationReportingType) throws -> S3Model.CompleteMultipartUploadOutput

    /**
     Invokes the CopyObject operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CopyObjectRequest object being passed to this operation.
         - completion: The CopyObjectOutput object or an error will be passed to this 
           callback when the operation is complete. The CopyObjectOutput
           object will be validated before being returned to caller.
           The possible errors are: objectNotInActiveTier.
     */
    func copyObjectAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.CopyObjectRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.CopyObjectOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the CopyObject operation waiting for the response before returning.

     - Parameters:
         - input: The validated CopyObjectRequest object being passed to this operation.
     - Returns: The CopyObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: objectNotInActiveTier.
     */
    func copyObjectSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.CopyObjectRequest,
            reporting: InvocationReportingType) throws -> S3Model.CopyObjectOutput

    /**
     Invokes the CreateBucket operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateBucketRequest object being passed to this operation.
         - completion: The CreateBucketOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateBucketOutput
           object will be validated before being returned to caller.
           The possible errors are: bucketAlreadyExists, bucketAlreadyOwnedByYou.
     */
    func createBucketAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.CreateBucketRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.CreateBucketOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateBucket operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateBucketRequest object being passed to this operation.
     - Returns: The CreateBucketOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: bucketAlreadyExists, bucketAlreadyOwnedByYou.
     */
    func createBucketSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.CreateBucketRequest,
            reporting: InvocationReportingType) throws -> S3Model.CreateBucketOutput

    /**
     Invokes the CreateMultipartUpload operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated CreateMultipartUploadRequest object being passed to this operation.
         - completion: The CreateMultipartUploadOutput object or an error will be passed to this 
           callback when the operation is complete. The CreateMultipartUploadOutput
           object will be validated before being returned to caller.
     */
    func createMultipartUploadAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.CreateMultipartUploadRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.CreateMultipartUploadOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the CreateMultipartUpload operation waiting for the response before returning.

     - Parameters:
         - input: The validated CreateMultipartUploadRequest object being passed to this operation.
     - Returns: The CreateMultipartUploadOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createMultipartUploadSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.CreateMultipartUploadRequest,
            reporting: InvocationReportingType) throws -> S3Model.CreateMultipartUploadOutput

    /**
     Invokes the DeleteBucket operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteBucketAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteBucket operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketRequest object being passed to this operation.
     */
    func deleteBucketSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeleteBucketAnalyticsConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketAnalyticsConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteBucketAnalyticsConfigurationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketAnalyticsConfigurationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteBucketAnalyticsConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketAnalyticsConfigurationRequest object being passed to this operation.
     */
    func deleteBucketAnalyticsConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketAnalyticsConfigurationRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeleteBucketCors operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketCorsRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteBucketCorsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketCorsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteBucketCors operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketCorsRequest object being passed to this operation.
     */
    func deleteBucketCorsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketCorsRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeleteBucketEncryption operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketEncryptionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteBucketEncryptionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketEncryptionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteBucketEncryption operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketEncryptionRequest object being passed to this operation.
     */
    func deleteBucketEncryptionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketEncryptionRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeleteBucketInventoryConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketInventoryConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteBucketInventoryConfigurationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketInventoryConfigurationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteBucketInventoryConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketInventoryConfigurationRequest object being passed to this operation.
     */
    func deleteBucketInventoryConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketInventoryConfigurationRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeleteBucketLifecycle operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketLifecycleRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteBucketLifecycleAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketLifecycleRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteBucketLifecycle operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketLifecycleRequest object being passed to this operation.
     */
    func deleteBucketLifecycleSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketLifecycleRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeleteBucketMetricsConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketMetricsConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteBucketMetricsConfigurationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketMetricsConfigurationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteBucketMetricsConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketMetricsConfigurationRequest object being passed to this operation.
     */
    func deleteBucketMetricsConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketMetricsConfigurationRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeleteBucketPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketPolicyRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteBucketPolicyAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketPolicyRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteBucketPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketPolicyRequest object being passed to this operation.
     */
    func deleteBucketPolicySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketPolicyRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeleteBucketReplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketReplicationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteBucketReplicationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketReplicationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteBucketReplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketReplicationRequest object being passed to this operation.
     */
    func deleteBucketReplicationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketReplicationRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeleteBucketTagging operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketTaggingRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteBucketTaggingAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketTaggingRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteBucketTagging operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketTaggingRequest object being passed to this operation.
     */
    func deleteBucketTaggingSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketTaggingRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeleteBucketWebsite operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteBucketWebsiteRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deleteBucketWebsiteAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketWebsiteRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeleteBucketWebsite operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteBucketWebsiteRequest object being passed to this operation.
     */
    func deleteBucketWebsiteSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteBucketWebsiteRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the DeleteObject operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteObjectRequest object being passed to this operation.
         - completion: The DeleteObjectOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteObjectOutput
           object will be validated before being returned to caller.
     */
    func deleteObjectAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteObjectRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.DeleteObjectOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteObject operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteObjectRequest object being passed to this operation.
     - Returns: The DeleteObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteObjectSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteObjectRequest,
            reporting: InvocationReportingType) throws -> S3Model.DeleteObjectOutput

    /**
     Invokes the DeleteObjectTagging operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteObjectTaggingRequest object being passed to this operation.
         - completion: The DeleteObjectTaggingOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteObjectTaggingOutput
           object will be validated before being returned to caller.
     */
    func deleteObjectTaggingAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteObjectTaggingRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.DeleteObjectTaggingOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteObjectTagging operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteObjectTaggingRequest object being passed to this operation.
     - Returns: The DeleteObjectTaggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteObjectTaggingSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteObjectTaggingRequest,
            reporting: InvocationReportingType) throws -> S3Model.DeleteObjectTaggingOutput

    /**
     Invokes the DeleteObjects operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeleteObjectsRequest object being passed to this operation.
         - completion: The DeleteObjectsOutput object or an error will be passed to this 
           callback when the operation is complete. The DeleteObjectsOutput
           object will be validated before being returned to caller.
     */
    func deleteObjectsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteObjectsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.DeleteObjectsOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the DeleteObjects operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeleteObjectsRequest object being passed to this operation.
     - Returns: The DeleteObjectsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteObjectsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeleteObjectsRequest,
            reporting: InvocationReportingType) throws -> S3Model.DeleteObjectsOutput

    /**
     Invokes the DeletePublicAccessBlock operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated DeletePublicAccessBlockRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func deletePublicAccessBlockAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeletePublicAccessBlockRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the DeletePublicAccessBlock operation waiting for the response before returning.

     - Parameters:
         - input: The validated DeletePublicAccessBlockRequest object being passed to this operation.
     */
    func deletePublicAccessBlockSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.DeletePublicAccessBlockRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the GetBucketAccelerateConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketAccelerateConfigurationRequest object being passed to this operation.
         - completion: The GetBucketAccelerateConfigurationOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketAccelerateConfigurationOutput
           object will be validated before being returned to caller.
     */
    func getBucketAccelerateConfigurationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketAccelerateConfigurationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetBucketAccelerateConfigurationOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetBucketAccelerateConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketAccelerateConfigurationRequest object being passed to this operation.
     - Returns: The GetBucketAccelerateConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketAccelerateConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketAccelerateConfigurationRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetBucketAccelerateConfigurationOutput

    /**
     Invokes the GetBucketAcl operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketAclRequest object being passed to this operation.
         - completion: The GetBucketAclOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketAclOutput
           object will be validated before being returned to caller.
     */
    func getBucketAclAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketAclRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetBucketAclOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetBucketAcl operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketAclRequest object being passed to this operation.
     - Returns: The GetBucketAclOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketAclSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketAclRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetBucketAclOutput

    /**
     Invokes the GetBucketAnalyticsConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketAnalyticsConfigurationRequest object being passed to this operation.
         - completion: The GetBucketAnalyticsConfigurationOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketAnalyticsConfigurationOutput
           object will be validated before being returned to caller.
     */
    func getBucketAnalyticsConfigurationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketAnalyticsConfigurationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetBucketAnalyticsConfigurationOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetBucketAnalyticsConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketAnalyticsConfigurationRequest object being passed to this operation.
     - Returns: The GetBucketAnalyticsConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketAnalyticsConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketAnalyticsConfigurationRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetBucketAnalyticsConfigurationOutput

    /**
     Invokes the GetBucketCors operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketCorsRequest object being passed to this operation.
         - completion: The GetBucketCorsOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketCorsOutput
           object will be validated before being returned to caller.
     */
    func getBucketCorsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketCorsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetBucketCorsOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetBucketCors operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketCorsRequest object being passed to this operation.
     - Returns: The GetBucketCorsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketCorsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketCorsRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetBucketCorsOutput

    /**
     Invokes the GetBucketEncryption operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketEncryptionRequest object being passed to this operation.
         - completion: The GetBucketEncryptionOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketEncryptionOutput
           object will be validated before being returned to caller.
     */
    func getBucketEncryptionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketEncryptionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetBucketEncryptionOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetBucketEncryption operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketEncryptionRequest object being passed to this operation.
     - Returns: The GetBucketEncryptionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketEncryptionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketEncryptionRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetBucketEncryptionOutput

    /**
     Invokes the GetBucketInventoryConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketInventoryConfigurationRequest object being passed to this operation.
         - completion: The GetBucketInventoryConfigurationOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketInventoryConfigurationOutput
           object will be validated before being returned to caller.
     */
    func getBucketInventoryConfigurationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketInventoryConfigurationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetBucketInventoryConfigurationOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetBucketInventoryConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketInventoryConfigurationRequest object being passed to this operation.
     - Returns: The GetBucketInventoryConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketInventoryConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketInventoryConfigurationRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetBucketInventoryConfigurationOutput

    /**
     Invokes the GetBucketLifecycle operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketLifecycleRequest object being passed to this operation.
         - completion: The GetBucketLifecycleOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketLifecycleOutput
           object will be validated before being returned to caller.
     */
    func getBucketLifecycleAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketLifecycleRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetBucketLifecycleOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetBucketLifecycle operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketLifecycleRequest object being passed to this operation.
     - Returns: The GetBucketLifecycleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketLifecycleSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketLifecycleRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetBucketLifecycleOutput

    /**
     Invokes the GetBucketLifecycleConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketLifecycleConfigurationRequest object being passed to this operation.
         - completion: The GetBucketLifecycleConfigurationOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketLifecycleConfigurationOutput
           object will be validated before being returned to caller.
     */
    func getBucketLifecycleConfigurationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketLifecycleConfigurationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetBucketLifecycleConfigurationOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetBucketLifecycleConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketLifecycleConfigurationRequest object being passed to this operation.
     - Returns: The GetBucketLifecycleConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketLifecycleConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketLifecycleConfigurationRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetBucketLifecycleConfigurationOutput

    /**
     Invokes the GetBucketLocation operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketLocationRequest object being passed to this operation.
         - completion: The GetBucketLocationOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketLocationOutput
           object will be validated before being returned to caller.
     */
    func getBucketLocationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketLocationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetBucketLocationOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetBucketLocation operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketLocationRequest object being passed to this operation.
     - Returns: The GetBucketLocationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketLocationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketLocationRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetBucketLocationOutput

    /**
     Invokes the GetBucketLogging operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketLoggingRequest object being passed to this operation.
         - completion: The GetBucketLoggingOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketLoggingOutput
           object will be validated before being returned to caller.
     */
    func getBucketLoggingAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketLoggingRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetBucketLoggingOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetBucketLogging operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketLoggingRequest object being passed to this operation.
     - Returns: The GetBucketLoggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketLoggingSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketLoggingRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetBucketLoggingOutput

    /**
     Invokes the GetBucketMetricsConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketMetricsConfigurationRequest object being passed to this operation.
         - completion: The GetBucketMetricsConfigurationOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketMetricsConfigurationOutput
           object will be validated before being returned to caller.
     */
    func getBucketMetricsConfigurationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketMetricsConfigurationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetBucketMetricsConfigurationOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetBucketMetricsConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketMetricsConfigurationRequest object being passed to this operation.
     - Returns: The GetBucketMetricsConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketMetricsConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketMetricsConfigurationRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetBucketMetricsConfigurationOutput

    /**
     Invokes the GetBucketNotification operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketNotificationConfigurationRequest object being passed to this operation.
         - completion: The NotificationConfigurationDeprecated object or an error will be passed to this 
           callback when the operation is complete. The NotificationConfigurationDeprecated
           object will be validated before being returned to caller.
     */
    func getBucketNotificationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketNotificationConfigurationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.NotificationConfigurationDeprecated, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetBucketNotification operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketNotificationConfigurationRequest object being passed to this operation.
     - Returns: The NotificationConfigurationDeprecated object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketNotificationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketNotificationConfigurationRequest,
            reporting: InvocationReportingType) throws -> S3Model.NotificationConfigurationDeprecated

    /**
     Invokes the GetBucketNotificationConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketNotificationConfigurationRequest object being passed to this operation.
         - completion: The NotificationConfiguration object or an error will be passed to this 
           callback when the operation is complete. The NotificationConfiguration
           object will be validated before being returned to caller.
     */
    func getBucketNotificationConfigurationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketNotificationConfigurationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.NotificationConfiguration, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetBucketNotificationConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketNotificationConfigurationRequest object being passed to this operation.
     - Returns: The NotificationConfiguration object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketNotificationConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketNotificationConfigurationRequest,
            reporting: InvocationReportingType) throws -> S3Model.NotificationConfiguration

    /**
     Invokes the GetBucketPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketPolicyRequest object being passed to this operation.
         - completion: The GetBucketPolicyOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketPolicyOutput
           object will be validated before being returned to caller.
     */
    func getBucketPolicyAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketPolicyRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetBucketPolicyOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetBucketPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketPolicyRequest object being passed to this operation.
     - Returns: The GetBucketPolicyOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketPolicySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketPolicyRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetBucketPolicyOutput

    /**
     Invokes the GetBucketPolicyStatus operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketPolicyStatusRequest object being passed to this operation.
         - completion: The GetBucketPolicyStatusOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketPolicyStatusOutput
           object will be validated before being returned to caller.
     */
    func getBucketPolicyStatusAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketPolicyStatusRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetBucketPolicyStatusOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetBucketPolicyStatus operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketPolicyStatusRequest object being passed to this operation.
     - Returns: The GetBucketPolicyStatusOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketPolicyStatusSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketPolicyStatusRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetBucketPolicyStatusOutput

    /**
     Invokes the GetBucketReplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketReplicationRequest object being passed to this operation.
         - completion: The GetBucketReplicationOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketReplicationOutput
           object will be validated before being returned to caller.
     */
    func getBucketReplicationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketReplicationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetBucketReplicationOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetBucketReplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketReplicationRequest object being passed to this operation.
     - Returns: The GetBucketReplicationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketReplicationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketReplicationRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetBucketReplicationOutput

    /**
     Invokes the GetBucketRequestPayment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketRequestPaymentRequest object being passed to this operation.
         - completion: The GetBucketRequestPaymentOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketRequestPaymentOutput
           object will be validated before being returned to caller.
     */
    func getBucketRequestPaymentAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketRequestPaymentRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetBucketRequestPaymentOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetBucketRequestPayment operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketRequestPaymentRequest object being passed to this operation.
     - Returns: The GetBucketRequestPaymentOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketRequestPaymentSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketRequestPaymentRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetBucketRequestPaymentOutput

    /**
     Invokes the GetBucketTagging operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketTaggingRequest object being passed to this operation.
         - completion: The GetBucketTaggingOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketTaggingOutput
           object will be validated before being returned to caller.
     */
    func getBucketTaggingAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketTaggingRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetBucketTaggingOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetBucketTagging operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketTaggingRequest object being passed to this operation.
     - Returns: The GetBucketTaggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketTaggingSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketTaggingRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetBucketTaggingOutput

    /**
     Invokes the GetBucketVersioning operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketVersioningRequest object being passed to this operation.
         - completion: The GetBucketVersioningOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketVersioningOutput
           object will be validated before being returned to caller.
     */
    func getBucketVersioningAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketVersioningRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetBucketVersioningOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetBucketVersioning operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketVersioningRequest object being passed to this operation.
     - Returns: The GetBucketVersioningOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketVersioningSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketVersioningRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetBucketVersioningOutput

    /**
     Invokes the GetBucketWebsite operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetBucketWebsiteRequest object being passed to this operation.
         - completion: The GetBucketWebsiteOutput object or an error will be passed to this 
           callback when the operation is complete. The GetBucketWebsiteOutput
           object will be validated before being returned to caller.
     */
    func getBucketWebsiteAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketWebsiteRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetBucketWebsiteOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetBucketWebsite operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetBucketWebsiteRequest object being passed to this operation.
     - Returns: The GetBucketWebsiteOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketWebsiteSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetBucketWebsiteRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetBucketWebsiteOutput

    /**
     Invokes the GetObject operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetObjectRequest object being passed to this operation.
         - completion: The GetObjectOutput object or an error will be passed to this 
           callback when the operation is complete. The GetObjectOutput
           object will be validated before being returned to caller.
           The possible errors are: noSuchKey.
     */
    func getObjectAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetObjectRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetObjectOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetObject operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetObjectRequest object being passed to this operation.
     - Returns: The GetObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchKey.
     */
    func getObjectSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetObjectRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetObjectOutput

    /**
     Invokes the GetObjectAcl operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetObjectAclRequest object being passed to this operation.
         - completion: The GetObjectAclOutput object or an error will be passed to this 
           callback when the operation is complete. The GetObjectAclOutput
           object will be validated before being returned to caller.
           The possible errors are: noSuchKey.
     */
    func getObjectAclAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetObjectAclRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetObjectAclOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetObjectAcl operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetObjectAclRequest object being passed to this operation.
     - Returns: The GetObjectAclOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchKey.
     */
    func getObjectAclSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetObjectAclRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetObjectAclOutput

    /**
     Invokes the GetObjectLegalHold operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetObjectLegalHoldRequest object being passed to this operation.
         - completion: The GetObjectLegalHoldOutput object or an error will be passed to this 
           callback when the operation is complete. The GetObjectLegalHoldOutput
           object will be validated before being returned to caller.
     */
    func getObjectLegalHoldAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetObjectLegalHoldRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetObjectLegalHoldOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetObjectLegalHold operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetObjectLegalHoldRequest object being passed to this operation.
     - Returns: The GetObjectLegalHoldOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getObjectLegalHoldSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetObjectLegalHoldRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetObjectLegalHoldOutput

    /**
     Invokes the GetObjectLockConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetObjectLockConfigurationRequest object being passed to this operation.
         - completion: The GetObjectLockConfigurationOutput object or an error will be passed to this 
           callback when the operation is complete. The GetObjectLockConfigurationOutput
           object will be validated before being returned to caller.
     */
    func getObjectLockConfigurationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetObjectLockConfigurationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetObjectLockConfigurationOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetObjectLockConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetObjectLockConfigurationRequest object being passed to this operation.
     - Returns: The GetObjectLockConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getObjectLockConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetObjectLockConfigurationRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetObjectLockConfigurationOutput

    /**
     Invokes the GetObjectRetention operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetObjectRetentionRequest object being passed to this operation.
         - completion: The GetObjectRetentionOutput object or an error will be passed to this 
           callback when the operation is complete. The GetObjectRetentionOutput
           object will be validated before being returned to caller.
     */
    func getObjectRetentionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetObjectRetentionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetObjectRetentionOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetObjectRetention operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetObjectRetentionRequest object being passed to this operation.
     - Returns: The GetObjectRetentionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getObjectRetentionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetObjectRetentionRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetObjectRetentionOutput

    /**
     Invokes the GetObjectTagging operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetObjectTaggingRequest object being passed to this operation.
         - completion: The GetObjectTaggingOutput object or an error will be passed to this 
           callback when the operation is complete. The GetObjectTaggingOutput
           object will be validated before being returned to caller.
     */
    func getObjectTaggingAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetObjectTaggingRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetObjectTaggingOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetObjectTagging operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetObjectTaggingRequest object being passed to this operation.
     - Returns: The GetObjectTaggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getObjectTaggingSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetObjectTaggingRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetObjectTaggingOutput

    /**
     Invokes the GetObjectTorrent operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetObjectTorrentRequest object being passed to this operation.
         - completion: The GetObjectTorrentOutput object or an error will be passed to this 
           callback when the operation is complete. The GetObjectTorrentOutput
           object will be validated before being returned to caller.
     */
    func getObjectTorrentAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetObjectTorrentRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetObjectTorrentOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetObjectTorrent operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetObjectTorrentRequest object being passed to this operation.
     - Returns: The GetObjectTorrentOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getObjectTorrentSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetObjectTorrentRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetObjectTorrentOutput

    /**
     Invokes the GetPublicAccessBlock operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated GetPublicAccessBlockRequest object being passed to this operation.
         - completion: The GetPublicAccessBlockOutput object or an error will be passed to this 
           callback when the operation is complete. The GetPublicAccessBlockOutput
           object will be validated before being returned to caller.
     */
    func getPublicAccessBlockAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetPublicAccessBlockRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.GetPublicAccessBlockOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the GetPublicAccessBlock operation waiting for the response before returning.

     - Parameters:
         - input: The validated GetPublicAccessBlockRequest object being passed to this operation.
     - Returns: The GetPublicAccessBlockOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getPublicAccessBlockSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.GetPublicAccessBlockRequest,
            reporting: InvocationReportingType) throws -> S3Model.GetPublicAccessBlockOutput

    /**
     Invokes the HeadBucket operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated HeadBucketRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
           The possible errors are: noSuchBucket.
     */
    func headBucketAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.HeadBucketRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the HeadBucket operation waiting for the response before returning.

     - Parameters:
         - input: The validated HeadBucketRequest object being passed to this operation.
     - Throws: noSuchBucket.
     */
    func headBucketSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.HeadBucketRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the HeadObject operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated HeadObjectRequest object being passed to this operation.
         - completion: The HeadObjectOutput object or an error will be passed to this 
           callback when the operation is complete. The HeadObjectOutput
           object will be validated before being returned to caller.
           The possible errors are: noSuchKey.
     */
    func headObjectAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.HeadObjectRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.HeadObjectOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the HeadObject operation waiting for the response before returning.

     - Parameters:
         - input: The validated HeadObjectRequest object being passed to this operation.
     - Returns: The HeadObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchKey.
     */
    func headObjectSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.HeadObjectRequest,
            reporting: InvocationReportingType) throws -> S3Model.HeadObjectOutput

    /**
     Invokes the ListBucketAnalyticsConfigurations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListBucketAnalyticsConfigurationsRequest object being passed to this operation.
         - completion: The ListBucketAnalyticsConfigurationsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListBucketAnalyticsConfigurationsOutput
           object will be validated before being returned to caller.
     */
    func listBucketAnalyticsConfigurationsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.ListBucketAnalyticsConfigurationsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.ListBucketAnalyticsConfigurationsOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListBucketAnalyticsConfigurations operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListBucketAnalyticsConfigurationsRequest object being passed to this operation.
     - Returns: The ListBucketAnalyticsConfigurationsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listBucketAnalyticsConfigurationsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.ListBucketAnalyticsConfigurationsRequest,
            reporting: InvocationReportingType) throws -> S3Model.ListBucketAnalyticsConfigurationsOutput

    /**
     Invokes the ListBucketInventoryConfigurations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListBucketInventoryConfigurationsRequest object being passed to this operation.
         - completion: The ListBucketInventoryConfigurationsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListBucketInventoryConfigurationsOutput
           object will be validated before being returned to caller.
     */
    func listBucketInventoryConfigurationsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.ListBucketInventoryConfigurationsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.ListBucketInventoryConfigurationsOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListBucketInventoryConfigurations operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListBucketInventoryConfigurationsRequest object being passed to this operation.
     - Returns: The ListBucketInventoryConfigurationsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listBucketInventoryConfigurationsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.ListBucketInventoryConfigurationsRequest,
            reporting: InvocationReportingType) throws -> S3Model.ListBucketInventoryConfigurationsOutput

    /**
     Invokes the ListBucketMetricsConfigurations operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListBucketMetricsConfigurationsRequest object being passed to this operation.
         - completion: The ListBucketMetricsConfigurationsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListBucketMetricsConfigurationsOutput
           object will be validated before being returned to caller.
     */
    func listBucketMetricsConfigurationsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.ListBucketMetricsConfigurationsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.ListBucketMetricsConfigurationsOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListBucketMetricsConfigurations operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListBucketMetricsConfigurationsRequest object being passed to this operation.
     - Returns: The ListBucketMetricsConfigurationsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listBucketMetricsConfigurationsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.ListBucketMetricsConfigurationsRequest,
            reporting: InvocationReportingType) throws -> S3Model.ListBucketMetricsConfigurationsOutput

    /**
     Invokes the ListBuckets operation returning immediately and passing the response to a callback.
         - completion: The ListBucketsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListBucketsOutput
           object will be validated before being returned to caller.
     */
    func listBucketsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.ListBucketsOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListBuckets operation waiting for the response before returning.
     - Returns: The ListBucketsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listBucketsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            reporting: InvocationReportingType) throws -> S3Model.ListBucketsOutput

    /**
     Invokes the ListMultipartUploads operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListMultipartUploadsRequest object being passed to this operation.
         - completion: The ListMultipartUploadsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListMultipartUploadsOutput
           object will be validated before being returned to caller.
     */
    func listMultipartUploadsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.ListMultipartUploadsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.ListMultipartUploadsOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListMultipartUploads operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListMultipartUploadsRequest object being passed to this operation.
     - Returns: The ListMultipartUploadsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listMultipartUploadsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.ListMultipartUploadsRequest,
            reporting: InvocationReportingType) throws -> S3Model.ListMultipartUploadsOutput

    /**
     Invokes the ListObjectVersions operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListObjectVersionsRequest object being passed to this operation.
         - completion: The ListObjectVersionsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListObjectVersionsOutput
           object will be validated before being returned to caller.
     */
    func listObjectVersionsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.ListObjectVersionsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.ListObjectVersionsOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListObjectVersions operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListObjectVersionsRequest object being passed to this operation.
     - Returns: The ListObjectVersionsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listObjectVersionsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.ListObjectVersionsRequest,
            reporting: InvocationReportingType) throws -> S3Model.ListObjectVersionsOutput

    /**
     Invokes the ListObjects operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListObjectsRequest object being passed to this operation.
         - completion: The ListObjectsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListObjectsOutput
           object will be validated before being returned to caller.
           The possible errors are: noSuchBucket.
     */
    func listObjectsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.ListObjectsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.ListObjectsOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListObjects operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListObjectsRequest object being passed to this operation.
     - Returns: The ListObjectsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchBucket.
     */
    func listObjectsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.ListObjectsRequest,
            reporting: InvocationReportingType) throws -> S3Model.ListObjectsOutput

    /**
     Invokes the ListObjectsV2 operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListObjectsV2Request object being passed to this operation.
         - completion: The ListObjectsV2Output object or an error will be passed to this 
           callback when the operation is complete. The ListObjectsV2Output
           object will be validated before being returned to caller.
           The possible errors are: noSuchBucket.
     */
    func listObjectsV2Async<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.ListObjectsV2Request, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.ListObjectsV2Output, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListObjectsV2 operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListObjectsV2Request object being passed to this operation.
     - Returns: The ListObjectsV2Output object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchBucket.
     */
    func listObjectsV2Sync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.ListObjectsV2Request,
            reporting: InvocationReportingType) throws -> S3Model.ListObjectsV2Output

    /**
     Invokes the ListParts operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated ListPartsRequest object being passed to this operation.
         - completion: The ListPartsOutput object or an error will be passed to this 
           callback when the operation is complete. The ListPartsOutput
           object will be validated before being returned to caller.
     */
    func listPartsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.ListPartsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.ListPartsOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the ListParts operation waiting for the response before returning.

     - Parameters:
         - input: The validated ListPartsRequest object being passed to this operation.
     - Returns: The ListPartsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listPartsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.ListPartsRequest,
            reporting: InvocationReportingType) throws -> S3Model.ListPartsOutput

    /**
     Invokes the PutBucketAccelerateConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketAccelerateConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func putBucketAccelerateConfigurationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketAccelerateConfigurationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the PutBucketAccelerateConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketAccelerateConfigurationRequest object being passed to this operation.
     */
    func putBucketAccelerateConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketAccelerateConfigurationRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the PutBucketAcl operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketAclRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func putBucketAclAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketAclRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the PutBucketAcl operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketAclRequest object being passed to this operation.
     */
    func putBucketAclSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketAclRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the PutBucketAnalyticsConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketAnalyticsConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func putBucketAnalyticsConfigurationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketAnalyticsConfigurationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the PutBucketAnalyticsConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketAnalyticsConfigurationRequest object being passed to this operation.
     */
    func putBucketAnalyticsConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketAnalyticsConfigurationRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the PutBucketCors operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketCorsRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func putBucketCorsAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketCorsRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the PutBucketCors operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketCorsRequest object being passed to this operation.
     */
    func putBucketCorsSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketCorsRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the PutBucketEncryption operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketEncryptionRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func putBucketEncryptionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketEncryptionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the PutBucketEncryption operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketEncryptionRequest object being passed to this operation.
     */
    func putBucketEncryptionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketEncryptionRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the PutBucketInventoryConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketInventoryConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func putBucketInventoryConfigurationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketInventoryConfigurationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the PutBucketInventoryConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketInventoryConfigurationRequest object being passed to this operation.
     */
    func putBucketInventoryConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketInventoryConfigurationRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the PutBucketLifecycle operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketLifecycleRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func putBucketLifecycleAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketLifecycleRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the PutBucketLifecycle operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketLifecycleRequest object being passed to this operation.
     */
    func putBucketLifecycleSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketLifecycleRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the PutBucketLifecycleConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketLifecycleConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func putBucketLifecycleConfigurationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketLifecycleConfigurationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the PutBucketLifecycleConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketLifecycleConfigurationRequest object being passed to this operation.
     */
    func putBucketLifecycleConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketLifecycleConfigurationRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the PutBucketLogging operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketLoggingRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func putBucketLoggingAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketLoggingRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the PutBucketLogging operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketLoggingRequest object being passed to this operation.
     */
    func putBucketLoggingSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketLoggingRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the PutBucketMetricsConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketMetricsConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func putBucketMetricsConfigurationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketMetricsConfigurationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the PutBucketMetricsConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketMetricsConfigurationRequest object being passed to this operation.
     */
    func putBucketMetricsConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketMetricsConfigurationRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the PutBucketNotification operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketNotificationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func putBucketNotificationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketNotificationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the PutBucketNotification operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketNotificationRequest object being passed to this operation.
     */
    func putBucketNotificationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketNotificationRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the PutBucketNotificationConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketNotificationConfigurationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func putBucketNotificationConfigurationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketNotificationConfigurationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the PutBucketNotificationConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketNotificationConfigurationRequest object being passed to this operation.
     */
    func putBucketNotificationConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketNotificationConfigurationRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the PutBucketPolicy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketPolicyRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func putBucketPolicyAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketPolicyRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the PutBucketPolicy operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketPolicyRequest object being passed to this operation.
     */
    func putBucketPolicySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketPolicyRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the PutBucketReplication operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketReplicationRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func putBucketReplicationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketReplicationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the PutBucketReplication operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketReplicationRequest object being passed to this operation.
     */
    func putBucketReplicationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketReplicationRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the PutBucketRequestPayment operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketRequestPaymentRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func putBucketRequestPaymentAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketRequestPaymentRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the PutBucketRequestPayment operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketRequestPaymentRequest object being passed to this operation.
     */
    func putBucketRequestPaymentSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketRequestPaymentRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the PutBucketTagging operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketTaggingRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func putBucketTaggingAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketTaggingRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the PutBucketTagging operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketTaggingRequest object being passed to this operation.
     */
    func putBucketTaggingSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketTaggingRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the PutBucketVersioning operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketVersioningRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func putBucketVersioningAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketVersioningRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the PutBucketVersioning operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketVersioningRequest object being passed to this operation.
     */
    func putBucketVersioningSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketVersioningRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the PutBucketWebsite operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutBucketWebsiteRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func putBucketWebsiteAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketWebsiteRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the PutBucketWebsite operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutBucketWebsiteRequest object being passed to this operation.
     */
    func putBucketWebsiteSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutBucketWebsiteRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the PutObject operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutObjectRequest object being passed to this operation.
         - completion: The PutObjectOutput object or an error will be passed to this 
           callback when the operation is complete. The PutObjectOutput
           object will be validated before being returned to caller.
     */
    func putObjectAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutObjectRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.PutObjectOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the PutObject operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutObjectRequest object being passed to this operation.
     - Returns: The PutObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func putObjectSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutObjectRequest,
            reporting: InvocationReportingType) throws -> S3Model.PutObjectOutput

    /**
     Invokes the PutObjectAcl operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutObjectAclRequest object being passed to this operation.
         - completion: The PutObjectAclOutput object or an error will be passed to this 
           callback when the operation is complete. The PutObjectAclOutput
           object will be validated before being returned to caller.
           The possible errors are: noSuchKey.
     */
    func putObjectAclAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutObjectAclRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.PutObjectAclOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the PutObjectAcl operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutObjectAclRequest object being passed to this operation.
     - Returns: The PutObjectAclOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: noSuchKey.
     */
    func putObjectAclSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutObjectAclRequest,
            reporting: InvocationReportingType) throws -> S3Model.PutObjectAclOutput

    /**
     Invokes the PutObjectLegalHold operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutObjectLegalHoldRequest object being passed to this operation.
         - completion: The PutObjectLegalHoldOutput object or an error will be passed to this 
           callback when the operation is complete. The PutObjectLegalHoldOutput
           object will be validated before being returned to caller.
     */
    func putObjectLegalHoldAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutObjectLegalHoldRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.PutObjectLegalHoldOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the PutObjectLegalHold operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutObjectLegalHoldRequest object being passed to this operation.
     - Returns: The PutObjectLegalHoldOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func putObjectLegalHoldSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutObjectLegalHoldRequest,
            reporting: InvocationReportingType) throws -> S3Model.PutObjectLegalHoldOutput

    /**
     Invokes the PutObjectLockConfiguration operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutObjectLockConfigurationRequest object being passed to this operation.
         - completion: The PutObjectLockConfigurationOutput object or an error will be passed to this 
           callback when the operation is complete. The PutObjectLockConfigurationOutput
           object will be validated before being returned to caller.
     */
    func putObjectLockConfigurationAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutObjectLockConfigurationRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.PutObjectLockConfigurationOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the PutObjectLockConfiguration operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutObjectLockConfigurationRequest object being passed to this operation.
     - Returns: The PutObjectLockConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func putObjectLockConfigurationSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutObjectLockConfigurationRequest,
            reporting: InvocationReportingType) throws -> S3Model.PutObjectLockConfigurationOutput

    /**
     Invokes the PutObjectRetention operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutObjectRetentionRequest object being passed to this operation.
         - completion: The PutObjectRetentionOutput object or an error will be passed to this 
           callback when the operation is complete. The PutObjectRetentionOutput
           object will be validated before being returned to caller.
     */
    func putObjectRetentionAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutObjectRetentionRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.PutObjectRetentionOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the PutObjectRetention operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutObjectRetentionRequest object being passed to this operation.
     - Returns: The PutObjectRetentionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func putObjectRetentionSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutObjectRetentionRequest,
            reporting: InvocationReportingType) throws -> S3Model.PutObjectRetentionOutput

    /**
     Invokes the PutObjectTagging operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutObjectTaggingRequest object being passed to this operation.
         - completion: The PutObjectTaggingOutput object or an error will be passed to this 
           callback when the operation is complete. The PutObjectTaggingOutput
           object will be validated before being returned to caller.
     */
    func putObjectTaggingAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutObjectTaggingRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.PutObjectTaggingOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the PutObjectTagging operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutObjectTaggingRequest object being passed to this operation.
     - Returns: The PutObjectTaggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func putObjectTaggingSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutObjectTaggingRequest,
            reporting: InvocationReportingType) throws -> S3Model.PutObjectTaggingOutput

    /**
     Invokes the PutPublicAccessBlock operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated PutPublicAccessBlockRequest object being passed to this operation.
         - completion: Nil or an error will be passed to this callback when the operation
           is complete.
     */
    func putPublicAccessBlockAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutPublicAccessBlockRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Swift.Error?) -> ()) throws

    /**
     Invokes the PutPublicAccessBlock operation waiting for the response before returning.

     - Parameters:
         - input: The validated PutPublicAccessBlockRequest object being passed to this operation.
     */
    func putPublicAccessBlockSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.PutPublicAccessBlockRequest,
            reporting: InvocationReportingType) throws

    /**
     Invokes the RestoreObject operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated RestoreObjectRequest object being passed to this operation.
         - completion: The RestoreObjectOutput object or an error will be passed to this 
           callback when the operation is complete. The RestoreObjectOutput
           object will be validated before being returned to caller.
           The possible errors are: objectAlreadyInActiveTier.
     */
    func restoreObjectAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.RestoreObjectRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.RestoreObjectOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the RestoreObject operation waiting for the response before returning.

     - Parameters:
         - input: The validated RestoreObjectRequest object being passed to this operation.
     - Returns: The RestoreObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     - Throws: objectAlreadyInActiveTier.
     */
    func restoreObjectSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.RestoreObjectRequest,
            reporting: InvocationReportingType) throws -> S3Model.RestoreObjectOutput

    /**
     Invokes the SelectObjectContent operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated SelectObjectContentRequest object being passed to this operation.
         - completion: The SelectObjectContentOutput object or an error will be passed to this 
           callback when the operation is complete. The SelectObjectContentOutput
           object will be validated before being returned to caller.
     */
    func selectObjectContentAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.SelectObjectContentRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.SelectObjectContentOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the SelectObjectContent operation waiting for the response before returning.

     - Parameters:
         - input: The validated SelectObjectContentRequest object being passed to this operation.
     - Returns: The SelectObjectContentOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func selectObjectContentSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.SelectObjectContentRequest,
            reporting: InvocationReportingType) throws -> S3Model.SelectObjectContentOutput

    /**
     Invokes the UploadPart operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UploadPartRequest object being passed to this operation.
         - completion: The UploadPartOutput object or an error will be passed to this 
           callback when the operation is complete. The UploadPartOutput
           object will be validated before being returned to caller.
     */
    func uploadPartAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.UploadPartRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.UploadPartOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the UploadPart operation waiting for the response before returning.

     - Parameters:
         - input: The validated UploadPartRequest object being passed to this operation.
     - Returns: The UploadPartOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func uploadPartSync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.UploadPartRequest,
            reporting: InvocationReportingType) throws -> S3Model.UploadPartOutput

    /**
     Invokes the UploadPartCopy operation returning immediately and passing the response to a callback.

     - Parameters:
         - input: The validated UploadPartCopyRequest object being passed to this operation.
         - completion: The UploadPartCopyOutput object or an error will be passed to this 
           callback when the operation is complete. The UploadPartCopyOutput
           object will be validated before being returned to caller.
     */
    func uploadPartCopyAsync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.UploadPartCopyRequest, 
            reporting: InvocationReportingType,
            completion: @escaping (Result<S3Model.UploadPartCopyOutput, HTTPClientError>) -> ()) throws

    /**
     Invokes the UploadPartCopy operation waiting for the response before returning.

     - Parameters:
         - input: The validated UploadPartCopyRequest object being passed to this operation.
     - Returns: The UploadPartCopyOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func uploadPartCopySync<InvocationReportingType: SmokeAWSInvocationReporting>(
            input: S3Model.UploadPartCopyRequest,
            reporting: InvocationReportingType) throws -> S3Model.UploadPartCopyOutput
}
